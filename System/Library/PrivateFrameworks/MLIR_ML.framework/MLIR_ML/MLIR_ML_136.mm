unint64_t mlir::affine::AffineApplyOp::fold(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15[0] = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v15);
  v4 = mlir::AffineMap::getResult(&Value, 0);
  v15[0] = v4;
  if (mlir::AffineExpr::getKind(v15) == 6)
  {
    mlir::AffineDimExpr::AffineDimExpr(v15, v4);
    v13 = v15[0];
    if (v15[0])
    {
LABEL_3:
      v5 = *(*a1 + 72) + 32 * mlir::AffineDimExpr::getPosition(&v13);
      return *(v5 + 24) | 4;
    }
  }

  else
  {
    mlir::AffineDimExpr::AffineDimExpr(v15, 0);
    v13 = v15[0];
    if (v15[0])
    {
      goto LABEL_3;
    }
  }

  v15[0] = v4;
  if (mlir::AffineExpr::getKind(v15) == 7)
  {
    mlir::AffineSymbolExpr::AffineSymbolExpr(v15, v4);
    v13 = v15[0];
    if (v15[0])
    {
LABEL_7:
      NumDims = mlir::AffineMap::getNumDims(&Value);
      v5 = *(*a1 + 72) + 32 * (mlir::AffineSymbolExpr::getPosition(&v13) + NumDims);
      return *(v5 + 24) | 4;
    }
  }

  else
  {
    mlir::AffineSymbolExpr::AffineSymbolExpr(v15, 0);
    v13 = v15[0];
    if (v15[0])
    {
      goto LABEL_7;
    }
  }

  v15[0] = v16;
  v15[1] = 0x100000000;
  LOBYTE(v13) = 0;
  v8 = mlir::AffineMap::constantFold(&Value, *(a2 + 48), *(a2 + 56), v15, &v13);
  if (v13 == 1)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    result = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id) & 0xFFFFFFFFFFFFFFFBLL;
    v11 = v15[0];
  }

  else
  {
    v11 = v15[0];
    if (v8)
    {
      result = *v15[0] & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      result = 0;
    }
  }

  if (v11 != v16)
  {
    v12 = result;
    free(v11);
    return v12;
  }

  return result;
}

void mlir::affine::fullyComposeAffineMapAndOperands(mlir::AffineMap *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v5 = *a2;
    v6 = *a2 + 8 * v2;
    do
    {
      while (1)
      {
        v9 = *v5;
        DefiningOp = mlir::Value::getDefiningOp(&v9);
        if (DefiningOp)
        {
          if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
          {
            break;
          }
        }

        if (++v5 == v6)
        {
          return;
        }
      }

      composeAffineMapAndOperands(a1, a2);
      v5 = *a2;
      v8 = *(a2 + 8);
      v6 = *a2 + 8 * v8;
    }

    while (v8);
  }
}

void composeAffineMapAndOperands(mlir::AffineMap *a1, uint64_t a2)
{
  v84[6] = *MEMORY[0x277D85DE8];
  if (mlir::AffineMap::getNumResults(a1))
  {
    Context = mlir::AffineMap::getContext(a1);
    v5 = *a2;
    NumDims = mlir::AffineMap::getNumDims(a1);
    v75 = v77;
    *v76 = 0x400000000;
    if (NumDims >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (NumDims)
    {
      memcpy(v75, v5, 8 * NumDims);
      v7 = v76[0];
    }

    else
    {
      v7 = 0;
    }

    v76[0] = v7 + NumDims;
    v8 = *a2;
    v9 = &v8[8 * mlir::AffineMap::getNumDims(a1)];
    v10 = (a2 + 8);
    v11 = *a2 + 8 * *(a2 + 8);
    v72 = v74;
    *v73 = 0x400000000;
    v12 = (v11 - v9) >> 3;
    if (v12 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = 0;
    if (v9 != v11)
    {
      memcpy(v72, v9, v11 - v9);
      v13 = v73[0];
    }

    v14 = v13 + ((v11 - v9) >> 3);
    v73[0] = v14;
    v15 = v76[0];
    if (v14 | v76[0])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        while (1)
        {
          v18 = mlir::AffineMap::getContext(a1);
          v19 = v76[0];
          v20 = (v17 - v76[0]);
          v21 = (v17 >= v76[0] ? v72 + 8 * v20 : v75 + 8 * v16);
          if (*v21)
          {
            v22 = v18;
            DefiningOp = mlir::Value::getDefiningOp(v21);
            if (DefiningOp)
            {
              if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
              {
                break;
              }
            }
          }

          v16 = (v17 + 1);
          v15 = v76[0];
          v14 = v73[0];
          v17 = v16;
          if ((v73[0] + v76[0]) == v16)
          {
            goto LABEL_56;
          }
        }

        *v21 = 0;
        v82 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
        v24 = DefiningOp;
        Value = mlir::AffineMapAttr::getValue(&v82);
        if ((*(v24 + 46) & 0x80) != 0)
        {
          v25 = v24;
          v26 = *(v24 + 72);
          v27 = *(v25 + 68);
          v82 = v84;
          v83 = 0x600000000;
          if (v27 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v27)
          {
            v28 = v84;
            v29 = v27;
            v30 = (v26 + 24);
            do
            {
              v31 = *v30;
              v30 += 4;
              *v28++ = v31;
              --v29;
            }

            while (v29);
            v32 = v83;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          LODWORD(v27) = 0;
          v32 = 0;
          v82 = v84;
          HIDWORD(v83) = 6;
        }

        LODWORD(v83) = v32 + v27;
        mlir::affine::canonicalizeMapAndOperands(&Value, &v82);
        v80 = mlir::AffineMap::shiftDims(&Value, v76[0], 0);
        v69 = mlir::AffineMap::shiftSymbols(&v80, v73[0], 0);
        Result = mlir::AffineMap::getResult(&v69, 0);
        v33 = v82;
        v34 = v83;
        v35 = mlir::AffineMap::getNumDims(&Value);
        if (v34 >= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = v34;
        }

        mlir::ValueRange::ValueRange(&v80, v33, v36);
        v37 = v82;
        v38 = v83;
        NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
        v40 = v38 - NumSymbols;
        if (v38 <= NumSymbols)
        {
          v40 = 0;
        }

        if (v38 >= NumSymbols)
        {
          v41 = NumSymbols;
        }

        else
        {
          v41 = v38;
        }

        mlir::ValueRange::ValueRange(&v78, v37 + 8 * v40, v41);
        if (v17 >= v19)
        {
          AffineSymbolExpr = mlir::getAffineSymbolExpr(v20, v22, v42);
          v45 = v80;
          v44 = v81;
          v46 = v76[0];
          if (v81 + v76[0] > v76[1])
          {
LABEL_39:
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        else
        {
          AffineSymbolExpr = mlir::getAffineDimExpr(v17, v22, v42);
          v45 = v80;
          v44 = v81;
          v46 = v76[0];
          if (v81 + v76[0] > v76[1])
          {
            goto LABEL_39;
          }
        }

        v69 = v45;
        v70 = 0;
        if (v44)
        {
          v47 = 0;
          v48 = (v75 + 8 * v46);
          do
          {
            *v48++ = mlir::ValueRange::dereference_iterator(&v69, v47);
            v47 = v70 + 1;
            v70 = v47;
          }

          while (v47 != v44);
          LODWORD(v46) = v76[0];
        }

        v76[0] = v46 + v44;
        v49 = v79;
        v50 = v73[0];
        if (v79 + v73[0] > v73[1])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v69 = v78;
        v70 = 0;
        if (v79)
        {
          v51 = 0;
          v52 = (v72 + 8 * v73[0]);
          do
          {
            *v52++ = mlir::ValueRange::dereference_iterator(&v69, v51);
            v51 = v70 + 1;
            v70 = v51;
          }

          while (v51 != v49);
          v50 = v73[0];
        }

        v73[0] = v50 + v49;
        *a1 = mlir::AffineMap::replace(a1, AffineSymbolExpr, Result, v76[0], v50 + v49);
        if (v82 != v84)
        {
          free(v82);
        }

        v16 = 0;
        v17 = 0;
        v15 = v76[0];
        v14 = v73[0];
      }

      while (v73[0] | v76[0]);
    }

LABEL_56:
    *v10 = 0;
    v82 = v84;
    v83 = 0x400000000;
    v69 = v71;
    v70 = 0x400000000;
    if (v15 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v14 > 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v76[0])
    {
      v53 = 0;
      v54 = v75;
      v55 = 8 * v76[0];
      do
      {
        while (1)
        {
          v56 = *v54;
          if (!*v54)
          {
            break;
          }

          AffineDimExpr = mlir::getAffineDimExpr(v53, Context, v12);
          if (v83 >= HIDWORD(v83))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v82[v83] = AffineDimExpr;
          LODWORD(v83) = v83 + 1;
          v58 = *(a2 + 8);
          if (v58 >= *(a2 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v53 = (v53 + 1);
          *(*a2 + 8 * v58) = v56;
          ++*v10;
          ++v54;
          v55 -= 8;
          if (!v55)
          {
            goto LABEL_73;
          }
        }

        AffineConstantExpr = mlir::getAffineConstantExpr(0, Context, v12);
        if (v83 >= HIDWORD(v83))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v82[v83] = AffineConstantExpr;
        LODWORD(v83) = v83 + 1;
        ++v54;
        v55 -= 8;
      }

      while (v55);
    }

    else
    {
      LODWORD(v53) = 0;
    }

LABEL_73:
    if (v73[0])
    {
      v60 = 0;
      v61 = v72;
      v62 = 8 * v73[0];
      do
      {
        while (1)
        {
          v63 = *v61;
          if (!*v61)
          {
            break;
          }

          v64 = mlir::getAffineSymbolExpr(v60, Context, v12);
          if (v70 >= HIDWORD(v70))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v69 + v70) = v64;
          LODWORD(v70) = v70 + 1;
          v65 = *(a2 + 8);
          if (v65 >= *(a2 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v60 = (v60 + 1);
          *(*a2 + 8 * v65) = v63;
          ++*v10;
          ++v61;
          v62 -= 8;
          if (!v62)
          {
            goto LABEL_87;
          }
        }

        v66 = mlir::getAffineConstantExpr(0, Context, v12);
        if (v70 >= HIDWORD(v70))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v69 + v70) = v66;
        LODWORD(v70) = v70 + 1;
        ++v61;
        v62 -= 8;
      }

      while (v62);
    }

    else
    {
      LODWORD(v60) = 0;
    }

LABEL_87:
    *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v82, v83, v69, v70, v53, v60);
    mlir::affine::canonicalizeMapAndOperands(a1, a2);
    *a1 = mlir::simplifyAffineMap(*a1);
    if (v69 != v71)
    {
      free(v69);
    }

    if (v82 != v84)
    {
      free(v82);
    }

    if (v72 != v74)
    {
      free(v72);
    }

    if (v75 != v77)
    {
      free(v75);
    }
  }

  else
  {
    mlir::affine::canonicalizeMapAndOperands(a1, a2);
    *a1 = mlir::simplifyAffineMap(*a1);
  }
}

uint64_t mlir::affine::makeComposedAffineApply(mlir::MLIRContext **a1, uint64_t a2, unsigned int *a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x600000000;
  v9 = mlir::foldAttributesIntoMap(a1, a3, a4, a5, v10);
  composeAffineMapAndOperands(&v9, v10);
  result = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(a1, a2, &v9, v10);
  if (v10[0] != v11)
  {
    v8 = result;
    free(v10[0]);
    return v8;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

uint64_t mlir::affine::makeComposedAffineApply(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v12[0] = &v14;
  v12[1] = 1;
  mlir::AffineMap::inferFromExprList(v12, 1uLL, *a1, &v15);
  v9 = *v15;
  v17[0] = v18;
  v17[1] = 0x600000000;
  v13 = mlir::foldAttributesIntoMap(a1, v9, a4, a5, v17);
  composeAffineMapAndOperands(&v13, v17);
  v10 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(a1, a2, &v13, v17);
  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  if (v15 != &v16)
  {
    free(v15);
  }

  return v10;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(uint64_t a1, uint64_t a2, unsigned int *a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v19[0] = *a1;
  v19[1] = 0;
  v20 = *(a1 + 16);
  v24 = v26;
  v25 = 0x600000000;
  v21 = mlir::foldAttributesIntoMap(v19, a3, a4, a5, &v24);
  composeAffineMapAndOperands(&v21, &v24);
  v7 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v19, a2, &v21, &v24);
  if (v24 != v26)
  {
    free(v24);
  }

  if ((*(v7 + 46) & 0x80) != 0)
  {
    v8 = *(v7 + 68);
    v24 = v26;
    v25 = 0x600000000;
    if (v8)
    {
      if (v8 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v24, 8 * v8);
      v10 = 0;
      LODWORD(v25) = v8;
      v11 = 24;
      do
      {
        v12 = *(*(v7 + 72) + v11);
        v18 = (v24 + v10);
        v21 = v12;
        DefiningOp = mlir::Value::getDefiningOp(&v21);
        if (DefiningOp)
        {
          mlir::detail::constant_op_binder<mlir::Attribute>::match(&v18, DefiningOp);
        }

        v11 += 32;
        v10 += 8;
        --v8;
      }

      while (v8);
      v9 = v25;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v24 = v26;
    v25 = 0x600000000;
  }

  v21 = v23;
  v22 = 0x600000000;
  if ((mlir::Operation::fold(v7, v24, v9, &v21) & 1) != 0 && v22)
  {
    mlir::Operation::erase(v7);
    v14 = v21;
    v15 = *v21;
    if (v21 == v23)
    {
      goto LABEL_21;
    }

LABEL_20:
    free(v14);
    goto LABEL_21;
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    (*(*v16 + 16))(v16, v7, 0, 0);
  }

  v15 = (v7 - 16) | 4;
  v14 = v21;
  if (v21 != v23)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v24 != v26)
  {
    free(v24);
  }

  return v15;
}

uint64_t mlir::affine::makeComposedFoldedAffineApply(void **a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v11[0] = &v12;
  v11[1] = 1;
  v12 = a3;
  mlir::AffineMap::inferFromExprList(v11, 1uLL, *a1, &v13);
  result = mlir::affine::makeComposedFoldedAffineApply(a1, a2, *v13, a4, a5);
  if (v13 != v14)
  {
    v10 = result;
    free(v13);
    return v10;
  }

  return result;
}

uint64_t mlir::affine::makeComposedFoldedMultiResultAffineApply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, mlir::MLIRContext *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v17 = a3;
  result = mlir::AffineMap::getNumResults(&v17);
  v12 = result;
  *a6 = a6 + 2;
  a6[1] = 0x600000000;
  if (result >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (result)
  {
    v13 = 0;
    v14 = *a6;
    do
    {
      v18 = v13;
      SubMap = mlir::AffineMap::getSubMap(&v17, &v18, 1uLL);
      result = mlir::affine::makeComposedFoldedAffineApply(a1, a2, SubMap, a4, a5);
      *(v14 + 8 * v13++) = result;
    }

    while (v12 != v13);
    v16 = *(a6 + 2);
  }

  else
  {
    v16 = 0;
  }

  *(a6 + 2) = v16 + v12;
  return result;
}

uint64_t mlir::affine::makeComposedAffineMin(mlir::MLIRContext **a1, uint64_t a2, unsigned int *a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x600000000;
  v11 = mlir::foldAttributesIntoMap(a1, a3, a4, a5, v12);
  composeMultiResultAffineMap(&v11, v12);
  IndexType = mlir::Builder::getIndexType(a1, v7);
  result = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(a1, a2, &IndexType, &v11, v12);
  if (v12[0] != v13)
  {
    v9 = result;
    free(v12[0]);
    return v9;
  }

  return result;
}

uint64_t mlir::affine::makeComposedFoldedAffineMin(uint64_t a1, uint64_t a2, unsigned int *a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v20[0] = *a1;
  v20[1] = 0;
  v21 = *(a1 + 16);
  v26 = v28;
  v27 = 0x600000000;
  v23 = mlir::foldAttributesIntoMap(v20, a3, a4, a5, &v26);
  composeMultiResultAffineMap(&v23, &v26);
  IndexType = mlir::Builder::getIndexType(v20, v7);
  v8 = mlir::OpBuilder::create<mlir::affine::AffineMinOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v20, a2, &IndexType, &v23, &v26);
  if (v26 != v28)
  {
    free(v26);
  }

  if ((*(v8 + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 68);
    v26 = v28;
    v27 = 0x600000000;
    if (v9)
    {
      if (v9 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v26, 8 * v9);
      v12 = 0;
      LODWORD(v27) = v9;
      v13 = 24;
      do
      {
        v14 = *(*(v8 + 72) + v13);
        IndexType = (v26 + v12);
        v23 = v14;
        DefiningOp = mlir::Value::getDefiningOp(&v23);
        if (DefiningOp)
        {
          mlir::detail::constant_op_binder<mlir::Attribute>::match(&IndexType, DefiningOp);
        }

        v12 += 8;
        v13 += 32;
        --v9;
      }

      while (v9);
      v10 = v27;
      v11 = v26;
    }

    else
    {
      v10 = 0;
      v11 = v28;
    }
  }

  else
  {
    v10 = 0;
    v11 = v28;
    v26 = v28;
    v27 = 0x600000000;
  }

  v23 = v25;
  v24 = 0x600000000;
  if ((mlir::Operation::fold(v8, v11, v10, &v23) & 1) != 0 && v24)
  {
    mlir::Operation::erase(v8);
    v16 = v23;
    v17 = *v23;
    if (v23 == v25)
    {
      goto LABEL_21;
    }

LABEL_20:
    free(v16);
    goto LABEL_21;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    (*(*v18 + 16))(v18, v8, 0, 0);
  }

  v17 = (v8 - 16) | 4;
  v16 = v23;
  if (v23 != v25)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v26 != v28)
  {
    free(v26);
  }

  return v17;
}

uint64_t mlir::affine::makeComposedFoldedAffineMax(uint64_t a1, uint64_t a2, unsigned int *a3, mlir::MLIRContext *a4, uint64_t a5)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v20[0] = *a1;
  v20[1] = 0;
  v21 = *(a1 + 16);
  v26 = v28;
  v27 = 0x600000000;
  v23 = mlir::foldAttributesIntoMap(v20, a3, a4, a5, &v26);
  composeMultiResultAffineMap(&v23, &v26);
  IndexType = mlir::Builder::getIndexType(v20, v7);
  v8 = mlir::OpBuilder::create<mlir::affine::AffineMaxOp,mlir::IndexType,mlir::AffineMap &,llvm::SmallVector<mlir::Value,6u> &>(v20, a2, &IndexType, &v23, &v26);
  if (v26 != v28)
  {
    free(v26);
  }

  if ((*(v8 + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 68);
    v26 = v28;
    v27 = 0x600000000;
    if (v9)
    {
      if (v9 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v26, 8 * v9);
      v12 = 0;
      LODWORD(v27) = v9;
      v13 = 24;
      do
      {
        v14 = *(*(v8 + 72) + v13);
        IndexType = (v26 + v12);
        v23 = v14;
        DefiningOp = mlir::Value::getDefiningOp(&v23);
        if (DefiningOp)
        {
          mlir::detail::constant_op_binder<mlir::Attribute>::match(&IndexType, DefiningOp);
        }

        v12 += 8;
        v13 += 32;
        --v9;
      }

      while (v9);
      v10 = v27;
      v11 = v26;
    }

    else
    {
      v10 = 0;
      v11 = v28;
    }
  }

  else
  {
    v10 = 0;
    v11 = v28;
    v26 = v28;
    v27 = 0x600000000;
  }

  v23 = v25;
  v24 = 0x600000000;
  if ((mlir::Operation::fold(v8, v11, v10, &v23) & 1) != 0 && v24)
  {
    mlir::Operation::erase(v8);
    v16 = v23;
    v17 = *v23;
    if (v23 == v25)
    {
      goto LABEL_21;
    }

LABEL_20:
    free(v16);
    goto LABEL_21;
  }

  v18 = *(a1 + 8);
  if (v18)
  {
    (*(*v18 + 16))(v18, v8, 0, 0);
  }

  v17 = (v8 - 16) | 4;
  v16 = v23;
  if (v23 != v25)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v26 != v28)
  {
    free(v26);
  }

  return v17;
}

void mlir::affine::canonicalizeMapAndOperands(mlir::AffineMap *a1, uint64_t a2)
{
  v131[8] = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a2 + 8))
  {
    return;
  }

  Context = mlir::AffineMap::getContext(a1);
  v119 = &v121;
  v120 = 0x800000000;
  if (*(a2 + 8) > 8u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __src = &v108;
  v107 = 0x800000000;
  NumSymbols = mlir::AffineMap::getNumSymbols(a1);
  NumDims = mlir::AffineMap::getNumDims(a1);
  v129 = v131;
  v130 = 0x800000000;
  if (NumDims)
  {
    v5 = NumDims;
    if (NumDims >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v129, 8 * NumDims);
    LODWORD(v130) = v5;
  }

  NumInputs = mlir::AffineMap::getNumInputs(a1);
  if (NumInputs)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = NumInputs;
    do
    {
      v16 = mlir::AffineMap::getNumDims(a1);
      v13 = *(*a2 + 8 * v7);
      if (v7 >= v16)
      {
        v14 = v120;
        p_src = &v119;
        if (v120 >= HIDWORD(v120))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v9;
      }

      else
      {
        v116 = *(*a2 + 8 * v7);
        if (v13 && (v103 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8), mlir::Type::isIndex(&v103)) && (mlir::affine::isTopLevelValue(v13) || (DefiningOp = mlir::Value::getDefiningOp(&v116)) != 0 && (v20 = v116, AffineScope = mlir::affine::getAffineScope(DefiningOp, v19), mlir::affine::isValidSymbol(v20, AffineScope))))
        {
          v11 = (v9 + 1);
          AffineSymbolExpr = mlir::getAffineSymbolExpr((v9 + NumSymbols), Context, v17);
          *&v129[8 * v7] = AffineSymbolExpr;
          v13 = *(*a2 + 8 * v7);
          v14 = v107;
          p_src = &__src;
          if (v107 >= HIDWORD(v107))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        else
        {
          AffineDimExpr = mlir::getAffineDimExpr(v8, Context, v17);
          *&v129[8 * v7] = AffineDimExpr;
          v13 = *(*a2 + 8 * v7);
          v14 = v120;
          p_src = &v119;
          if (v120 >= HIDWORD(v120))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v9;
          v8 = (v8 + 1);
        }
      }

      *(*p_src + v14) = v13;
      ++*(p_src + 2);
      ++v7;
      v9 = v11;
    }

    while (v10 != v7);
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v8) = 0;
  }

  v23 = v107;
  v24 = v120;
  if (v120 + v107 > HIDWORD(v120))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v107)
  {
    memcpy(v119 + 8 * v120, __src, 8 * v107);
    v24 = v120;
  }

  v25 = (v24 + v23);
  LODWORD(v120) = v25;
  if (&v119 != a2)
  {
    v26 = *(a2 + 8);
    if (v26 >= v25)
    {
      if (v25)
      {
        memmove(*a2, v119, 8 * v25);
      }

      goto LABEL_40;
    }

    if (*(a2 + 12) < v25)
    {
      *(a2 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v26)
    {
      memmove(*a2, v119, 8 * v26);
      v27 = v120 - v26;
      if (v120 == v26)
      {
LABEL_40:
        *(a2 + 8) = v25;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = 0;
      v27 = v120;
      if (!v120)
      {
        goto LABEL_40;
      }
    }

    memcpy((*a2 + 8 * v26), v119 + 8 * v26, 8 * v27);
    goto LABEL_40;
  }

LABEL_41:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v129, v130, 0, 0, v8, v11 + NumSymbols);
  if (v129 != v131)
  {
    free(v129);
  }

  if (__src != &v108)
  {
    free(__src);
  }

  if (v119 != &v121)
  {
    free(v119);
  }

  v28 = mlir::AffineMap::getNumDims(a1);
  v102 = 1;
  if (v28 > 0x39)
  {
    operator new();
  }

  v102 = (v28 << 58) | 1;
  v29 = mlir::AffineMap::getNumSymbols(a1);
  v101 = 1;
  if (v29 > 0x39)
  {
    operator new();
  }

  v101 = (v29 << 58) | 1;
  v119 = &v102;
  v120 = &v101;
  mlir::AffineMap::walkExprs(a1);
  v95 = mlir::AffineMap::getContext(a1);
  v129 = v131;
  v130 = 0x800000000;
  if (*(a2 + 8) >= 9u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v119 = 1;
  v120 = -4096;
  v122 = -4096;
  v123 = -4096;
  v124 = -4096;
  v125 = -4096;
  v126 = -4096;
  v127 = -4096;
  v128 = -4096;
  v30 = mlir::AffineMap::getNumDims(a1);
  v116 = v118;
  v117 = 0x800000000;
  if (v30)
  {
    v31 = v30;
    if (v30 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v116, 8 * v30);
    LODWORD(v117) = v31;
  }

  v32 = mlir::AffineMap::getNumDims(a1);
  if (v32)
  {
    v34 = 0;
    v35 = 0;
    v36 = v32;
    while (1)
    {
      if (v102)
      {
        if (((1 << v34) & (v102 >> 1) & ~(-1 << (v102 >> 58))) == 0)
        {
          goto LABEL_62;
        }
      }

      else if ((*(*v102 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_62;
      }

      if (v119)
      {
        v38 = 8;
        v37 = &v120;
      }

      else
      {
        v37 = v120;
        v38 = v121;
        if (!v121)
        {
          v39 = 0;
          v40 = 0;
          goto LABEL_70;
        }
      }

      v44 = *(*a2 + 8 * v34);
      v45 = 0x9DDFEA08EB382D69 * ((8 * v44 - 0xAE502812AA7333) ^ HIDWORD(v44));
      v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v44) ^ (v45 >> 47) ^ v45);
      LODWORD(v45) = -348639895 * ((v46 >> 47) ^ v46);
      v47 = v38 - 1;
      v48 = v45 & (v38 - 1);
      v49 = v37[2 * v48];
      if (v44 == v49)
      {
LABEL_77:
        v41 = &v37[2 * v48];
        if (v119)
        {
          v50 = &v129;
        }

        else
        {
          v50 = (v120 + 16 * v121);
        }

        if (v41 == v50)
        {
          goto LABEL_81;
        }

        goto LABEL_61;
      }

      v53 = 1;
      while (v49 != -4096)
      {
        v54 = v48 + v53++;
        v48 = v54 & v47;
        v49 = v37[2 * v48];
        if (v44 == v49)
        {
          goto LABEL_77;
        }
      }

      v37 = v120;
      v39 = v121;
      if (v119)
      {
LABEL_81:
        v51 = mlir::getAffineDimExpr(v35, v95, v33);
        *(v116 + v34) = v51;
        if (v130 >= HIDWORD(v130))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *&v129[8 * v130] = *(*a2 + 8 * v34);
        v35 = (v35 + 1);
        LODWORD(v130) = v130 + 1;
        v52 = *(v116 + v34);
        v103 = *(*a2 + 8 * v34);
        v104 = v52;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v119, &v103, &v104, &__src);
        goto LABEL_62;
      }

      v40 = v121;
LABEL_70:
      v41 = &v37[2 * v40];
      v42 = &v37[2 * v39];
      if (v119)
      {
        v43 = &v129;
      }

      else
      {
        v43 = v42;
      }

      if (v41 == v43)
      {
        goto LABEL_81;
      }

LABEL_61:
      *(v116 + v34) = v41[1];
LABEL_62:
      if (++v34 == v36)
      {
        goto LABEL_92;
      }
    }
  }

  LODWORD(v35) = 0;
LABEL_92:
  __src = 1;
  v107 = -4096;
  v109 = -4096;
  v110 = -4096;
  v111 = -4096;
  v112 = -4096;
  v113 = -4096;
  v114 = -4096;
  v115 = -4096;
  v55 = mlir::AffineMap::getNumSymbols(a1);
  v103 = v105;
  v104 = 0x800000000;
  if (v55)
  {
    v56 = v55;
    if (v55 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v103, 8 * v55);
    LODWORD(v104) = v56;
  }

  v57 = mlir::AffineMap::getNumSymbols(a1);
  if (v57)
  {
    v58 = 0;
    v59 = 0;
    v60 = v57;
    while (1)
    {
      if (v101)
      {
        if (((1 << v58) & (v101 >> 1) & ~(-1 << (v101 >> 58))) == 0)
        {
          goto LABEL_99;
        }
      }

      else if ((*(*v101 + 8 * (v58 >> 6)) & (1 << v58)) == 0)
      {
        goto LABEL_99;
      }

      v100 = 0;
      v61 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v58));
      v98 = &v100;
      v96 = v61;
      v62 = mlir::Value::getDefiningOp(&v96);
      if (v62 && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v98, v62))
      {
        mlir::IntegerAttr::getValue(&v100, &v96);
        if (v97 > 0x40)
        {
          v64 = *v96;
        }

        else if (v97)
        {
          v64 = (v96 << -v97) >> -v97;
        }

        else
        {
          v64 = 0;
        }

        AffineConstantExpr = mlir::getAffineConstantExpr(v64, v95, v63);
        *(v103 + v58) = AffineConstantExpr;
        if (v97 >= 0x41 && v96)
        {
          MEMORY[0x259C63150](v96, 0x1000C8000313F17);
        }

        goto LABEL_99;
      }

      v66 = mlir::AffineMap::getNumDims(a1) + v58;
      if (__src)
      {
        v68 = 8;
        v67 = &v107;
      }

      else
      {
        v67 = v107;
        v68 = v108;
        if (!v108)
        {
          v69 = 0;
          v70 = 0;
          goto LABEL_113;
        }
      }

      v74 = *(*a2 + 8 * v66);
      v75 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
      v76 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v75 >> 47) ^ v75);
      LODWORD(v75) = -348639895 * ((v76 >> 47) ^ v76);
      v77 = v68 - 1;
      v78 = v75 & (v68 - 1);
      v79 = v67[2 * v78];
      if (v74 == v79)
      {
LABEL_120:
        v71 = &v67[2 * v78];
        if (__src)
        {
          v80 = &v116;
        }

        else
        {
          v80 = (v107 + 16 * v108);
        }

        if (v71 == v80)
        {
          goto LABEL_124;
        }

        goto LABEL_98;
      }

      v86 = 1;
      while (v79 != -4096)
      {
        v87 = v78 + v86++;
        v78 = v87 & v77;
        v79 = v67[2 * v78];
        if (v74 == v79)
        {
          goto LABEL_120;
        }
      }

      v67 = v107;
      v69 = v108;
      if (__src)
      {
LABEL_124:
        v81 = mlir::getAffineSymbolExpr(v59, v95, v65);
        *(v103 + v58) = v81;
        v82 = *(*a2 + 8 * (mlir::AffineMap::getNumDims(a1) + v58));
        if (v130 >= HIDWORD(v130))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v59 = (v59 + 1);
        *&v129[8 * v130] = v82;
        LODWORD(v130) = v130 + 1;
        v83 = mlir::AffineMap::getNumDims(a1);
        v84 = *(v103 + v58);
        v98 = *(*a2 + 8 * (v83 + v58));
        v99 = v84;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v98, &v99, &v96);
        goto LABEL_99;
      }

      v70 = v108;
LABEL_113:
      v71 = &v67[2 * v70];
      v72 = &v67[2 * v69];
      if (__src)
      {
        v73 = &v116;
      }

      else
      {
        v73 = v72;
      }

      if (v71 == v73)
      {
        goto LABEL_124;
      }

LABEL_98:
      *(v103 + v58) = v71[1];
LABEL_99:
      if (++v58 == v60)
      {
        goto LABEL_139;
      }
    }
  }

  LODWORD(v59) = 0;
LABEL_139:
  *a1 = mlir::AffineMap::replaceDimsAndSymbols(a1, v116, v117, v103, v104, v35, v59);
  if (&v129 == a2)
  {
    goto LABEL_149;
  }

  v88 = v130;
  v89 = *(a2 + 8);
  if (v89 >= v130)
  {
    if (v130)
    {
      memmove(*a2, v129, 8 * v130);
    }

    goto LABEL_148;
  }

  if (*(a2 + 12) < v130)
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v89)
  {
    v89 = 0;
    v90 = v130;
    if (!v130)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  memmove(*a2, v129, 8 * v89);
  v90 = v130 - v89;
  if (v90)
  {
LABEL_147:
    memcpy((*a2 + 8 * v89), &v129[8 * v89], 8 * v90);
  }

LABEL_148:
  *(a2 + 8) = v88;
LABEL_149:
  if (v103 != v105)
  {
    free(v103);
  }

  if ((__src & 1) == 0)
  {
    llvm::deallocate_buffer(v107, (16 * v108));
  }

  if (v116 != v118)
  {
    free(v116);
  }

  if ((v119 & 1) == 0)
  {
    llvm::deallocate_buffer(v120, (16 * v121));
  }

  if (v129 != v131)
  {
    free(v129);
  }

  v91 = v101;
  if ((v101 & 1) == 0 && v101)
  {
    if (*v101 != v101 + 16)
    {
      free(*v101);
    }

    MEMORY[0x259C63180](v91, 0x1080C40EF38A13ELL);
  }

  v92 = v102;
  if ((v102 & 1) == 0 && v102)
  {
    if (*v102 != v102 + 16)
    {
      free(*v102);
    }

    MEMORY[0x259C63180](v92, 0x1080C40EF38A13ELL);
  }
}

void mlir::affine::canonicalizeSetAndOperands(mlir::IntegerSet *a1, uint64_t a2)
{
  v131[8] = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a2 + 8))
  {
    return;
  }

  Context = mlir::IntegerSet::getContext(a1);
  v119 = &v121;
  v120 = 0x800000000;
  if (*(a2 + 8) > 8u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __src = &v108;
  v107 = 0x800000000;
  NumSymbols = mlir::IntegerSet::getNumSymbols(a1);
  NumDims = mlir::IntegerSet::getNumDims(a1);
  v129 = v131;
  v130 = 0x800000000;
  if (NumDims)
  {
    v5 = NumDims;
    if (NumDims >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v129, 8 * NumDims);
    LODWORD(v130) = v5;
  }

  NumInputs = mlir::IntegerSet::getNumInputs(a1);
  if (NumInputs)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = NumInputs;
    do
    {
      v16 = mlir::IntegerSet::getNumDims(a1);
      v13 = *(*a2 + 8 * v7);
      if (v7 >= v16)
      {
        v14 = v120;
        p_src = &v119;
        if (v120 >= HIDWORD(v120))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v9;
      }

      else
      {
        v116 = *(*a2 + 8 * v7);
        if (v13 && (v103 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8), mlir::Type::isIndex(&v103)) && (mlir::affine::isTopLevelValue(v13) || (DefiningOp = mlir::Value::getDefiningOp(&v116)) != 0 && (v20 = v116, AffineScope = mlir::affine::getAffineScope(DefiningOp, v19), mlir::affine::isValidSymbol(v20, AffineScope))))
        {
          v11 = (v9 + 1);
          AffineSymbolExpr = mlir::getAffineSymbolExpr((v9 + NumSymbols), Context, v17);
          *&v129[8 * v7] = AffineSymbolExpr;
          v13 = *(*a2 + 8 * v7);
          v14 = v107;
          p_src = &__src;
          if (v107 >= HIDWORD(v107))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        else
        {
          AffineDimExpr = mlir::getAffineDimExpr(v8, Context, v17);
          *&v129[8 * v7] = AffineDimExpr;
          v13 = *(*a2 + 8 * v7);
          v14 = v120;
          p_src = &v119;
          if (v120 >= HIDWORD(v120))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v9;
          v8 = (v8 + 1);
        }
      }

      *(*p_src + v14) = v13;
      ++*(p_src + 2);
      ++v7;
      v9 = v11;
    }

    while (v10 != v7);
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v8) = 0;
  }

  v23 = v107;
  v24 = v120;
  if (v120 + v107 > HIDWORD(v120))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v107)
  {
    memcpy(v119 + 8 * v120, __src, 8 * v107);
    v24 = v120;
  }

  v25 = (v24 + v23);
  LODWORD(v120) = v25;
  if (&v119 != a2)
  {
    v26 = *(a2 + 8);
    if (v26 >= v25)
    {
      if (v25)
      {
        memmove(*a2, v119, 8 * v25);
      }

      goto LABEL_40;
    }

    if (*(a2 + 12) < v25)
    {
      *(a2 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v26)
    {
      memmove(*a2, v119, 8 * v26);
      v27 = v120 - v26;
      if (v120 == v26)
      {
LABEL_40:
        *(a2 + 8) = v25;
        goto LABEL_41;
      }
    }

    else
    {
      v26 = 0;
      v27 = v120;
      if (!v120)
      {
        goto LABEL_40;
      }
    }

    memcpy((*a2 + 8 * v26), v119 + 8 * v26, 8 * v27);
    goto LABEL_40;
  }

LABEL_41:
  *a1 = mlir::IntegerSet::replaceDimsAndSymbols(a1, v129, v130, 0, 0, v8, v11 + NumSymbols);
  if (v129 != v131)
  {
    free(v129);
  }

  if (__src != &v108)
  {
    free(__src);
  }

  if (v119 != &v121)
  {
    free(v119);
  }

  v28 = mlir::IntegerSet::getNumDims(a1);
  v102 = 1;
  if (v28 > 0x39)
  {
    operator new();
  }

  v102 = (v28 << 58) | 1;
  v29 = mlir::IntegerSet::getNumSymbols(a1);
  v101 = 1;
  if (v29 > 0x39)
  {
    operator new();
  }

  v101 = (v29 << 58) | 1;
  v119 = &v102;
  v120 = &v101;
  mlir::IntegerSet::walkExprs(a1);
  v95 = mlir::IntegerSet::getContext(a1);
  v129 = v131;
  v130 = 0x800000000;
  if (*(a2 + 8) >= 9u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v119 = 1;
  v120 = -4096;
  v122 = -4096;
  v123 = -4096;
  v124 = -4096;
  v125 = -4096;
  v126 = -4096;
  v127 = -4096;
  v128 = -4096;
  v30 = mlir::IntegerSet::getNumDims(a1);
  v116 = v118;
  v117 = 0x800000000;
  if (v30)
  {
    v31 = v30;
    if (v30 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v116, 8 * v30);
    LODWORD(v117) = v31;
  }

  v32 = mlir::IntegerSet::getNumDims(a1);
  if (v32)
  {
    v34 = 0;
    v35 = 0;
    v36 = v32;
    while (1)
    {
      if (v102)
      {
        if (((1 << v34) & (v102 >> 1) & ~(-1 << (v102 >> 58))) == 0)
        {
          goto LABEL_62;
        }
      }

      else if ((*(*v102 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_62;
      }

      if (v119)
      {
        v38 = 8;
        v37 = &v120;
      }

      else
      {
        v37 = v120;
        v38 = v121;
        if (!v121)
        {
          v39 = 0;
          v40 = 0;
          goto LABEL_70;
        }
      }

      v44 = *(*a2 + 8 * v34);
      v45 = 0x9DDFEA08EB382D69 * ((8 * v44 - 0xAE502812AA7333) ^ HIDWORD(v44));
      v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v44) ^ (v45 >> 47) ^ v45);
      LODWORD(v45) = -348639895 * ((v46 >> 47) ^ v46);
      v47 = v38 - 1;
      v48 = v45 & (v38 - 1);
      v49 = v37[2 * v48];
      if (v44 == v49)
      {
LABEL_77:
        v41 = &v37[2 * v48];
        if (v119)
        {
          v50 = &v129;
        }

        else
        {
          v50 = (v120 + 16 * v121);
        }

        if (v41 == v50)
        {
          goto LABEL_81;
        }

        goto LABEL_61;
      }

      v53 = 1;
      while (v49 != -4096)
      {
        v54 = v48 + v53++;
        v48 = v54 & v47;
        v49 = v37[2 * v48];
        if (v44 == v49)
        {
          goto LABEL_77;
        }
      }

      v37 = v120;
      v39 = v121;
      if (v119)
      {
LABEL_81:
        v51 = mlir::getAffineDimExpr(v35, v95, v33);
        *(v116 + v34) = v51;
        if (v130 >= HIDWORD(v130))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *&v129[8 * v130] = *(*a2 + 8 * v34);
        v35 = (v35 + 1);
        LODWORD(v130) = v130 + 1;
        v52 = *(v116 + v34);
        v103 = *(*a2 + 8 * v34);
        v104 = v52;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&v119, &v103, &v104, &__src);
        goto LABEL_62;
      }

      v40 = v121;
LABEL_70:
      v41 = &v37[2 * v40];
      v42 = &v37[2 * v39];
      if (v119)
      {
        v43 = &v129;
      }

      else
      {
        v43 = v42;
      }

      if (v41 == v43)
      {
        goto LABEL_81;
      }

LABEL_61:
      *(v116 + v34) = v41[1];
LABEL_62:
      if (++v34 == v36)
      {
        goto LABEL_92;
      }
    }
  }

  LODWORD(v35) = 0;
LABEL_92:
  __src = 1;
  v107 = -4096;
  v109 = -4096;
  v110 = -4096;
  v111 = -4096;
  v112 = -4096;
  v113 = -4096;
  v114 = -4096;
  v115 = -4096;
  v55 = mlir::IntegerSet::getNumSymbols(a1);
  v103 = v105;
  v104 = 0x800000000;
  if (v55)
  {
    v56 = v55;
    if (v55 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v103, 8 * v55);
    LODWORD(v104) = v56;
  }

  v57 = mlir::IntegerSet::getNumSymbols(a1);
  if (v57)
  {
    v58 = 0;
    v59 = 0;
    v60 = v57;
    while (1)
    {
      if (v101)
      {
        if (((1 << v58) & (v101 >> 1) & ~(-1 << (v101 >> 58))) == 0)
        {
          goto LABEL_99;
        }
      }

      else if ((*(*v101 + 8 * (v58 >> 6)) & (1 << v58)) == 0)
      {
        goto LABEL_99;
      }

      v100 = 0;
      v61 = *(*a2 + 8 * (mlir::IntegerSet::getNumDims(a1) + v58));
      v98 = &v100;
      v96 = v61;
      v62 = mlir::Value::getDefiningOp(&v96);
      if (v62 && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v98, v62))
      {
        mlir::IntegerAttr::getValue(&v100, &v96);
        if (v97 > 0x40)
        {
          v64 = *v96;
        }

        else if (v97)
        {
          v64 = (v96 << -v97) >> -v97;
        }

        else
        {
          v64 = 0;
        }

        AffineConstantExpr = mlir::getAffineConstantExpr(v64, v95, v63);
        *(v103 + v58) = AffineConstantExpr;
        if (v97 >= 0x41 && v96)
        {
          MEMORY[0x259C63150](v96, 0x1000C8000313F17);
        }

        goto LABEL_99;
      }

      v66 = mlir::IntegerSet::getNumDims(a1) + v58;
      if (__src)
      {
        v68 = 8;
        v67 = &v107;
      }

      else
      {
        v67 = v107;
        v68 = v108;
        if (!v108)
        {
          v69 = 0;
          v70 = 0;
          goto LABEL_113;
        }
      }

      v74 = *(*a2 + 8 * v66);
      v75 = 0x9DDFEA08EB382D69 * ((8 * v74 - 0xAE502812AA7333) ^ HIDWORD(v74));
      v76 = 0x9DDFEA08EB382D69 * (HIDWORD(v74) ^ (v75 >> 47) ^ v75);
      LODWORD(v75) = -348639895 * ((v76 >> 47) ^ v76);
      v77 = v68 - 1;
      v78 = v75 & (v68 - 1);
      v79 = v67[2 * v78];
      if (v74 == v79)
      {
LABEL_120:
        v71 = &v67[2 * v78];
        if (__src)
        {
          v80 = &v116;
        }

        else
        {
          v80 = (v107 + 16 * v108);
        }

        if (v71 == v80)
        {
          goto LABEL_124;
        }

        goto LABEL_98;
      }

      v86 = 1;
      while (v79 != -4096)
      {
        v87 = v78 + v86++;
        v78 = v87 & v77;
        v79 = v67[2 * v78];
        if (v74 == v79)
        {
          goto LABEL_120;
        }
      }

      v67 = v107;
      v69 = v108;
      if (__src)
      {
LABEL_124:
        v81 = mlir::getAffineSymbolExpr(v59, v95, v65);
        *(v103 + v58) = v81;
        v82 = *(*a2 + 8 * (mlir::IntegerSet::getNumDims(a1) + v58));
        if (v130 >= HIDWORD(v130))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v59 = (v59 + 1);
        *&v129[8 * v130] = v82;
        LODWORD(v130) = v130 + 1;
        v83 = mlir::IntegerSet::getNumDims(a1);
        v84 = *(v103 + v58);
        v98 = *(*a2 + 8 * (v83 + v58));
        v99 = v84;
        llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &v98, &v99, &v96);
        goto LABEL_99;
      }

      v70 = v108;
LABEL_113:
      v71 = &v67[2 * v70];
      v72 = &v67[2 * v69];
      if (__src)
      {
        v73 = &v116;
      }

      else
      {
        v73 = v72;
      }

      if (v71 == v73)
      {
        goto LABEL_124;
      }

LABEL_98:
      *(v103 + v58) = v71[1];
LABEL_99:
      if (++v58 == v60)
      {
        goto LABEL_139;
      }
    }
  }

  LODWORD(v59) = 0;
LABEL_139:
  *a1 = mlir::IntegerSet::replaceDimsAndSymbols(a1, v116, v117, v103, v104, v35, v59);
  if (&v129 == a2)
  {
    goto LABEL_149;
  }

  v88 = v130;
  v89 = *(a2 + 8);
  if (v89 >= v130)
  {
    if (v130)
    {
      memmove(*a2, v129, 8 * v130);
    }

    goto LABEL_148;
  }

  if (*(a2 + 12) < v130)
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v89)
  {
    v89 = 0;
    v90 = v130;
    if (!v130)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  memmove(*a2, v129, 8 * v89);
  v90 = v130 - v89;
  if (v90)
  {
LABEL_147:
    memcpy((*a2 + 8 * v89), &v129[8 * v89], 8 * v90);
  }

LABEL_148:
  *(a2 + 8) = v88;
LABEL_149:
  if (v103 != v105)
  {
    free(v103);
  }

  if ((__src & 1) == 0)
  {
    llvm::deallocate_buffer(v107, (16 * v108));
  }

  if (v116 != v118)
  {
    free(v116);
  }

  if ((v119 & 1) == 0)
  {
    llvm::deallocate_buffer(v120, (16 * v121));
  }

  if (v129 != v131)
  {
    free(v129);
  }

  v91 = v101;
  if ((v101 & 1) == 0 && v101)
  {
    if (*v101 != v101 + 16)
    {
      free(*v101);
    }

    MEMORY[0x259C63180](v91, 0x1080C40EF38A13ELL);
  }

  v92 = v102;
  if ((v102 & 1) == 0 && v102)
  {
    if (*v102 != v102 + 16)
    {
      free(*v102);
    }

    MEMORY[0x259C63180](v92, 0x1080C40EF38A13ELL);
  }
}

uint64_t mlir::affine::AffineDmaStartOp::build(uint64_t a1, mlir::Attribute *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v44 = *MEMORY[0x277D85DE8];
  v37 = a7;
  v38 = a3;
  v35 = a15;
  v36 = a11;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  v22 = mlir::AffineMapAttr::get(a4);
  Context = mlir::Attribute::getContext(a2);
  v41 = 261;
  v39 = "src_map";
  v40 = 7;
  v25 = mlir::StringAttr::get(Context, &v39, v24);
  mlir::NamedAttribute::NamedAttribute(&v42, v25, v22);
  mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  v26 = mlir::AffineMapAttr::get(a8);
  v27 = mlir::Attribute::getContext(a2);
  v41 = 261;
  v39 = "dst_map";
  v40 = 7;
  v29 = mlir::StringAttr::get(v27, &v39, v28);
  mlir::NamedAttribute::NamedAttribute(&v42, v29, v26);
  mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  v30 = mlir::AffineMapAttr::get(a12);
  v31 = mlir::Attribute::getContext(a2);
  v41 = 261;
  v39 = "tag_map";
  v40 = 7;
  v33 = mlir::StringAttr::get(v31, &v39, v32);
  mlir::NamedAttribute::NamedAttribute(&v42, v33, v30);
  mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
  mlir::OperationState::addOperands(a2, a13, a14);
  result = mlir::OperationState::addOperands(a2, &v35, 1uLL);
  if (a16)
  {
    v42 = a16;
    v43 = a17;
    mlir::ValueRange::ValueRange(&v39, &v42, 2uLL);
    return mlir::OperationState::addOperands(a2, v39, v40);
  }

  return result;
}

uint64_t mlir::affine::AffineDmaStartOp::getNumElements(mlir::affine::AffineDmaStartOp *this)
{
  InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
  InherentAttr = mlir::Operation::getInherentAttr(*this, "dst_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  v3 = mlir::AffineMap::getNumInputs(&InherentAttr);
  InherentAttr = mlir::Operation::getInherentAttr(*this, "tag_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  return *(*(*this + 72) + 32 * (NumInputs + v3 + mlir::AffineMap::getNumInputs(&InherentAttr) + 3) + 24);
}

BOOL mlir::affine::AffineDmaStartOp::parse(mlir::affine::AffineDmaStartOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v51[16] = *MEMORY[0x277D85DE8];
  memset(v35, 0, 24);
  v34 = 0;
  v49 = v51;
  v50 = 0x400000000;
  memset(v33, 0, 24);
  v32 = 0;
  v46 = v48;
  v47 = 0x400000000;
  memset(v31, 0, 24);
  v30 = 0;
  v43 = v45;
  v44 = 0x400000000;
  memset(v29, 0, 24);
  v40 = v42;
  v41 = 0x200000000;
  v37 = v39;
  v38 = 0x300000000;
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  if (((*(*this + 704))(this, v35, 1) & 1) == 0 || ((*(*this + 736))(this, &v49, &v34, "src_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 704))(this, v33, 1) & 1) == 0 || ((*(*this + 736))(this, &v46, &v32, "dst_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 704))(this, v31, 1) & 1) == 0 || ((*(*this + 736))(this, &v43, &v30, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 704))(this, v29, 1) & 1) == 0 || (mlir::OpAsmParser::parseTrailingOperandList(this, &v40, 0) & 1) == 0)
  {
    goto LABEL_44;
  }

  if ((v41 & 0xFFFFFFFD) != 0)
  {
    v8 = (*(*this + 16))(this);
    v9 = "expected two stride related operands";
    goto LABEL_14;
  }

  v25 = v41;
  if (((*(*this + 584))(this, &v37) & 1) == 0)
  {
LABEL_44:
    v10 = 0;
    v11 = v37;
    if (v37 == v39)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v38 != 3)
  {
    v8 = (*(*this + 16))(this);
    v9 = "expected three types";
LABEL_14:
    v27[0] = v9;
    v28 = 259;
    (*(*this + 24))(v36, this, v8, v27);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    v11 = v37;
    if (v37 == v39)
    {
      goto LABEL_46;
    }

LABEL_45:
    free(v11);
    goto LABEL_46;
  }

  if (((*(*this + 728))(this, v35, *v37, a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v50)
  {
    v12 = v49;
    v13 = 32 * v50;
    while (((*(*this + 728))(this, v12, IndexType, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_23;
      }
    }

LABEL_56:
    v10 = 0;
    v11 = v37;
    if (v37 != v39)
    {
      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_23:
  if (((*(*this + 728))(this, v33, *(v37 + 1), a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v47)
  {
    v14 = v46;
    v15 = 32 * v47;
    while (((*(*this + 728))(this, v14, IndexType, a2 + 16) & 1) != 0)
    {
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_56;
  }

LABEL_28:
  if (((*(*this + 728))(this, v31, *(v37 + 2), a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v44)
  {
    v16 = v43;
    v17 = 32 * v44;
    while (((*(*this + 728))(this, v16, IndexType, a2 + 16) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_56;
  }

LABEL_33:
  if (((*(*this + 728))(this, v29, IndexType, a2 + 16) & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v25 == 2 && v41)
  {
    v18 = v40;
    v19 = 32 * v41;
    while (((*(*this + 728))(this, v18, IndexType, a2 + 16) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_56;
  }

LABEL_39:
  v20 = v50;
  v36[0] = mlir::AffineMapAttr::getValue(&v34);
  if (v20 == mlir::AffineMap::getNumInputs(v36) && (v21 = v47, v27[0] = mlir::AffineMapAttr::getValue(&v32), v21 == mlir::AffineMap::getNumInputs(v27)) && (v22 = v44, Value = mlir::AffineMapAttr::getValue(&v30), v22 == mlir::AffineMap::getNumInputs(&Value)))
  {
    v10 = 1;
    v11 = v37;
    if (v37 != v39)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v24 = (*(*this + 16))(this);
    v27[0] = "memref operand count not equal to map.numInputs";
    v28 = 259;
    (*(*this + 24))(v36, this, v24, v27);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    v11 = v37;
    if (v37 != v39)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  return v10;
}

uint64_t mlir::OpAsmParser::parseTrailingOperandList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    return 1;
  }

  v6 = *(*a1 + 720);

  return v6(a1, a2, a3, 1, 0xFFFFFFFFLL);
}

BOOL mlir::affine::AffineDmaStartOp::verifyInvariantsImpl(mlir::affine::AffineDmaStartOp *this)
{
  v96 = *MEMORY[0x277D85DE8];
  if (*(*(*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    if (*(*(*(*(*(*this + 72) + 32 * (mlir::AffineMap::getNumInputs(&InherentAttr) + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v84[0] = "expected DMA destination to be of memref type";
      v85 = 259;
      mlir::OpState::emitOpError(this, v84, &InherentAttr);
      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
      if (InherentAttr)
      {
        mlir::InFlightDiagnostic::report(&InherentAttr);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v93;
          v13 = __p;
          if (v93 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v93 = v11;
          operator delete(v13);
        }

        v5 = v90;
        if (!v90)
        {
          goto LABEL_181;
        }

        v14 = v91;
        v7 = v90;
        if (v91 == v90)
        {
          goto LABEL_180;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v14 != v5);
        goto LABEL_179;
      }

      return v1;
    }

    InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
    InherentAttr = mlir::Operation::getInherentAttr(*this, "dst_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    if (*(*(*(*(*(*this + 72) + 32 * (NumInputs + mlir::AffineMap::getNumInputs(&InherentAttr) + 2) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v84[0] = "expected DMA tag to be of memref type";
      v85 = 259;
      mlir::OpState::emitOpError(this, v84, &InherentAttr);
      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
      if (InherentAttr)
      {
        mlir::InFlightDiagnostic::report(&InherentAttr);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v93;
          v20 = __p;
          if (v93 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v93 = v18;
          operator delete(v20);
        }

        v5 = v90;
        if (!v90)
        {
          goto LABEL_181;
        }

        v21 = v91;
        v7 = v90;
        if (v91 == v90)
        {
          goto LABEL_180;
        }

        do
        {
          v23 = *--v21;
          v22 = v23;
          *v21 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v21 != v5);
        goto LABEL_179;
      }

      return v1;
    }

    InherentAttr = mlir::Operation::getInherentAttr(*this, "src_map", 7);
    v84[0] = mlir::AffineMapAttr::getValue(&InherentAttr);
    v24 = mlir::AffineMap::getNumInputs(v84);
    InherentAttr = mlir::Operation::getInherentAttr(*this, "dst_map", 7);
    Value = mlir::AffineMapAttr::getValue(&InherentAttr);
    v25 = mlir::AffineMap::getNumInputs(&Value) + v24;
    InherentAttr = mlir::Operation::getInherentAttr(*this, "tag_map", 7);
    InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
    v27 = v25 + mlir::AffineMap::getNumInputs(&InherentAttr);
    if ((*(*this + 46) & 0x80) != 0)
    {
      v28 = *(*this + 68);
      if (v28 == v27 + 4 || v28 == v27 + 6)
      {
LABEL_55:
        AffineScope = mlir::affine::getAffineScope(*this, v26);
        v30 = *this;
        if ((*(*this + 46) & 0x80) != 0)
        {
          v31 = *(v30 + 72);
        }

        else
        {
          v31 = 0;
        }

        InherentAttr = mlir::Operation::getInherentAttr(v30, "src_map", 7);
        InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
        v32 = mlir::AffineMap::getNumInputs(&InherentAttr);
        if (v32)
        {
          v33 = v32;
          v34 = (v31 + 56);
          while (1)
          {
            v35 = *v34;
            InherentAttr = (*v34)[1] & 0xFFFFFFFFFFFFFFF8;
            if (!mlir::Type::isIndex(&InherentAttr))
            {
              break;
            }

            if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v35, AffineScope) & 1) == 0)
            {
              v84[0] = "src index must be a valid dimension or symbol identifier";
              v85 = 259;
              mlir::OpState::emitOpError(this, v84, &InherentAttr);
              v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
              if (InherentAttr)
              {
                mlir::InFlightDiagnostic::report(&InherentAttr);
              }

              if (v95 != 1)
              {
                return v1;
              }

              if (v94 != &v95)
              {
                free(v94);
              }

              v36 = __p;
              if (__p)
              {
                v37 = v93;
                v38 = __p;
                if (v93 != __p)
                {
                  do
                  {
                    v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
                  }

                  while (v37 != v36);
                  v38 = __p;
                }

                v93 = v36;
                operator delete(v38);
              }

              v5 = v90;
              if (!v90)
              {
                goto LABEL_181;
              }

              v39 = v91;
              v7 = v90;
              if (v91 == v90)
              {
                goto LABEL_180;
              }

              do
              {
                v47 = *--v39;
                v46 = v47;
                *v39 = 0;
                if (v47)
                {
                  MEMORY[0x259C63150](v46, 0x1000C8077774924);
                }
              }

              while (v39 != v5);
              goto LABEL_179;
            }

            v34 += 4;
            if (!--v33)
            {
              goto LABEL_95;
            }
          }

          v84[0] = "src index to dma_start must have 'index' type";
          v85 = 259;
          mlir::OpState::emitOpError(this, v84, &InherentAttr);
          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
          if (InherentAttr)
          {
            mlir::InFlightDiagnostic::report(&InherentAttr);
          }

          if (v95 != 1)
          {
            return v1;
          }

          if (v94 != &v95)
          {
            free(v94);
          }

          v40 = __p;
          if (__p)
          {
            v41 = v93;
            v42 = __p;
            if (v93 != __p)
            {
              do
              {
                v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
              }

              while (v41 != v40);
              v42 = __p;
            }

            v93 = v40;
            operator delete(v42);
          }

          v5 = v90;
          if (!v90)
          {
            goto LABEL_181;
          }

          v43 = v91;
          v7 = v90;
          if (v91 == v90)
          {
            goto LABEL_180;
          }

          do
          {
            v45 = *--v43;
            v44 = v45;
            *v43 = 0;
            if (v45)
            {
              MEMORY[0x259C63150](v44, 0x1000C8077774924);
            }
          }

          while (v43 != v5);
        }

        else
        {
LABEL_95:
          DstIndices = mlir::affine::AffineDmaStartOp::getDstIndices(this);
          if (v49)
          {
            v50 = v49;
            v51 = (DstIndices + 24);
            while (1)
            {
              v52 = *v51;
              InherentAttr = (*v51)[1] & 0xFFFFFFFFFFFFFFF8;
              if (!mlir::Type::isIndex(&InherentAttr))
              {
                break;
              }

              if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v52, AffineScope) & 1) == 0)
              {
                v84[0] = "dst index must be a valid dimension or symbol identifier";
                v85 = 259;
                mlir::OpState::emitOpError(this, v84, &InherentAttr);
                v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
                if (InherentAttr)
                {
                  mlir::InFlightDiagnostic::report(&InherentAttr);
                }

                if (v95 != 1)
                {
                  return v1;
                }

                if (v94 != &v95)
                {
                  free(v94);
                }

                v53 = __p;
                if (__p)
                {
                  v54 = v93;
                  v55 = __p;
                  if (v93 != __p)
                  {
                    do
                    {
                      v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
                    }

                    while (v54 != v53);
                    v55 = __p;
                  }

                  v93 = v53;
                  operator delete(v55);
                }

                v5 = v90;
                if (!v90)
                {
                  goto LABEL_181;
                }

                v56 = v91;
                v7 = v90;
                if (v91 == v90)
                {
                  goto LABEL_180;
                }

                do
                {
                  v64 = *--v56;
                  v63 = v64;
                  *v56 = 0;
                  if (v64)
                  {
                    MEMORY[0x259C63150](v63, 0x1000C8077774924);
                  }
                }

                while (v56 != v5);
                goto LABEL_179;
              }

              v51 += 4;
              if (!--v50)
              {
                goto LABEL_133;
              }
            }

            v84[0] = "dst index to dma_start must have 'index' type";
            v85 = 259;
            mlir::OpState::emitOpError(this, v84, &InherentAttr);
            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
            if (InherentAttr)
            {
              mlir::InFlightDiagnostic::report(&InherentAttr);
            }

            if (v95 != 1)
            {
              return v1;
            }

            if (v94 != &v95)
            {
              free(v94);
            }

            v57 = __p;
            if (__p)
            {
              v58 = v93;
              v59 = __p;
              if (v93 != __p)
              {
                do
                {
                  v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
                }

                while (v58 != v57);
                v59 = __p;
              }

              v93 = v57;
              operator delete(v59);
            }

            v5 = v90;
            if (!v90)
            {
              goto LABEL_181;
            }

            v60 = v91;
            v7 = v90;
            if (v91 == v90)
            {
              goto LABEL_180;
            }

            do
            {
              v62 = *--v60;
              v61 = v62;
              *v60 = 0;
              if (v62)
              {
                MEMORY[0x259C63150](v61, 0x1000C8077774924);
              }
            }

            while (v60 != v5);
          }

          else
          {
LABEL_133:
            TagIndices = mlir::affine::AffineDmaStartOp::getTagIndices(this);
            if (!v66)
            {
              return 1;
            }

            v67 = v66;
            for (i = (TagIndices + 24); ; i += 4)
            {
              v69 = *i;
              InherentAttr = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
              if (!mlir::Type::isIndex(&InherentAttr))
              {
                break;
              }

              if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v69, AffineScope) & 1) == 0)
              {
                v84[0] = "tag index must be a valid dimension or symbol identifier";
                v85 = 259;
                mlir::OpState::emitOpError(this, v84, &InherentAttr);
                v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
                if (InherentAttr)
                {
                  mlir::InFlightDiagnostic::report(&InherentAttr);
                }

                if (v95 != 1)
                {
                  return v1;
                }

                if (v94 != &v95)
                {
                  free(v94);
                }

                v70 = __p;
                if (__p)
                {
                  v71 = v93;
                  v72 = __p;
                  if (v93 != __p)
                  {
                    do
                    {
                      v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
                    }

                    while (v71 != v70);
                    v72 = __p;
                  }

                  v93 = v70;
                  operator delete(v72);
                }

                v5 = v90;
                if (!v90)
                {
                  goto LABEL_181;
                }

                v73 = v91;
                v7 = v90;
                if (v91 == v90)
                {
                  goto LABEL_180;
                }

                do
                {
                  v81 = *--v73;
                  v80 = v81;
                  *v73 = 0;
                  if (v81)
                  {
                    MEMORY[0x259C63150](v80, 0x1000C8077774924);
                  }
                }

                while (v73 != v5);
                goto LABEL_179;
              }

              v1 = 1;
              if (!--v67)
              {
                return v1;
              }
            }

            v84[0] = "tag index to dma_start must have 'index' type";
            v85 = 259;
            mlir::OpState::emitOpError(this, v84, &InherentAttr);
            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
            if (InherentAttr)
            {
              mlir::InFlightDiagnostic::report(&InherentAttr);
            }

            if (v95 != 1)
            {
              return v1;
            }

            if (v94 != &v95)
            {
              free(v94);
            }

            v74 = __p;
            if (__p)
            {
              v75 = v93;
              v76 = __p;
              if (v93 != __p)
              {
                do
                {
                  v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
                }

                while (v75 != v74);
                v76 = __p;
              }

              v93 = v74;
              operator delete(v76);
            }

            v5 = v90;
            if (!v90)
            {
              goto LABEL_181;
            }

            v77 = v91;
            v7 = v90;
            if (v91 == v90)
            {
              goto LABEL_180;
            }

            do
            {
              v79 = *--v77;
              v78 = v79;
              *v77 = 0;
              if (v79)
              {
                MEMORY[0x259C63150](v78, 0x1000C8077774924);
              }
            }

            while (v77 != v5);
          }
        }

        goto LABEL_179;
      }
    }

    else if (v27 == -4 || v27 == -6)
    {
      goto LABEL_55;
    }

    v84[0] = "incorrect number of operands";
    v85 = 259;
    mlir::OpState::emitOpError(this, v84, &InherentAttr);
    v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
    if (InherentAttr)
    {
      mlir::InFlightDiagnostic::report(&InherentAttr);
    }

    if (v95 == 1)
    {
      mlir::Diagnostic::~Diagnostic(&v87);
    }

    return v1;
  }

  v84[0] = "expected DMA source to be of memref type";
  v85 = 259;
  mlir::OpState::emitOpError(this, v84, &InherentAttr);
  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&InherentAttr);
  if (InherentAttr)
  {
    mlir::InFlightDiagnostic::report(&InherentAttr);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v93;
      v4 = __p;
      if (v93 != __p)
      {
        do
        {
          v3 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v93 = v2;
      operator delete(v4);
    }

    v5 = v90;
    if (!v90)
    {
      goto LABEL_181;
    }

    v6 = v91;
    v7 = v90;
    if (v91 == v90)
    {
LABEL_180:
      v91 = v5;
      operator delete(v7);
LABEL_181:
      if (v88 != &v89)
      {
        free(v88);
      }

      return v1;
    }

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
LABEL_179:
    v7 = v90;
    goto LABEL_180;
  }

  return v1;
}

void mlir::affine::AffineDmaStartOp::getEffects(uint64_t *a1, uint64_t a2)
{
  {
    mlir::mps::ReadVariableOp::getEffects();
  }

  v17 = *(*a1 + 72);
  InherentAttr = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v4 = *(a2 + 8);
    if (v4 < *(a2 + 12))
    {
      goto LABEL_5;
    }

LABEL_13:
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &InherentAttr, &v17, &v16);
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  mlir::mps::AssignVariableOp::getEffects();
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 12))
  {
    goto LABEL_13;
  }

LABEL_5:
  v5 = *a2 + 40 * v4;
  v6 = v17;
  *v5 = InherentAttr;
  *(v5 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v5 + 16) = v6 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  ++*(a2 + 8);
  {
    goto LABEL_6;
  }

LABEL_14:
  mlir::affine::AffineDmaStartOp::getEffects();
LABEL_6:
  v17 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v7 = *a1;
  InherentAttr = mlir::Operation::getInherentAttr(*a1, "src_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  InherentAttr = (*(v7 + 72) + 32 * (mlir::AffineMap::getNumInputs(&InherentAttr) + 1));
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v8 = *(a2 + 8);
    if (v8 < *(a2 + 12))
    {
      goto LABEL_8;
    }

LABEL_16:
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &v17, &InherentAttr, &v16);
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  mlir::affine::AffineDmaStartOp::getEffects();
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v8 = *(a2 + 8);
  if (v8 >= *(a2 + 12))
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = *a2 + 40 * v8;
  v10 = InherentAttr;
  *v9 = v17;
  *(v9 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v9 + 16) = v10 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 36) = 0;
  ++*(a2 + 8);
  {
    goto LABEL_9;
  }

LABEL_17:
  mlir::affine::AffineDmaStartOp::getEffects();
LABEL_9:
  v17 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v11 = *a1;
  InherentAttr = mlir::Operation::getInherentAttr(*a1, "src_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  NumInputs = mlir::AffineMap::getNumInputs(&InherentAttr);
  InherentAttr = mlir::Operation::getInherentAttr(*a1, "dst_map", 7);
  InherentAttr = mlir::AffineMapAttr::getValue(&InherentAttr);
  InherentAttr = (*(v11 + 72) + 32 * (NumInputs + mlir::AffineMap::getNumInputs(&InherentAttr) + 2));
  {
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v13 = *(a2 + 8);
    if (v13 < *(a2 + 12))
    {
LABEL_11:
      v14 = *a2 + 40 * v13;
      v15 = InherentAttr;
      *v14 = v17;
      *(v14 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v14 + 16) = v15 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 36) = 0;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    mlir::affine::AffineDmaStartOp::getEffects();
    v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v13 = *(a2 + 8);
    if (v13 < *(a2 + 12))
    {
      goto LABEL_11;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &v17, &InherentAttr, &v16);
}

uint64_t mlir::affine::AffineDmaWaitOp::build(uint64_t a1, mlir::Attribute *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v16 = a7;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v11 = mlir::AffineMapAttr::get(a4);
  Context = mlir::Attribute::getContext(a2);
  v19 = 261;
  v18[0] = "tag_map";
  v18[1] = 7;
  v14 = mlir::StringAttr::get(Context, v18, v13);
  mlir::NamedAttribute::NamedAttribute(v20, v14, v11);
  mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
  mlir::OperationState::addOperands(a2, a5, a6);
  return mlir::OperationState::addOperands(a2, &v16, 1uLL);
}

BOOL mlir::affine::AffineDmaWaitOp::parse(mlir::affine::AffineDmaWaitOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v24[8] = *MEMORY[0x277D85DE8];
  memset(v20, 0, 24);
  v18 = 0;
  v19 = 0;
  v22 = v24;
  v23 = 0x200000000;
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  memset(v17, 0, 24);
  if (((*(*this + 704))(this, v20, 1) & 1) == 0 || ((*(*this + 736))(this, &v22, &v19, "tag_map", 7, a2 + 112, 2) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 704))(this, v17, 1) & 1) == 0 || ((*(*this + 576))(this, &v18) & 1) == 0 || ((*(*this + 728))(this, v20, v18, a2 + 16) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v23)
  {
    v8 = v22;
    v9 = 32 * v23;
    while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_14;
  }

LABEL_11:
  if (((*(*this + 728))(this, v17, IndexType, a2 + 16) & 1) == 0)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v14 = v23;
    v21[0] = mlir::AffineMapAttr::getValue(&v19);
    if (v14 == mlir::AffineMap::getNumInputs(v21))
    {
      v12 = 1;
      goto LABEL_15;
    }

    v10 = (*(*this + 16))(this);
    v11 = "tag memref operand count != to map.numInputs";
  }

  else
  {
    v10 = (*(*this + 16))(this);
    v11 = "expected tag to be of memref type";
  }

  v15 = v11;
  v16 = 259;
  (*(*this + 24))(v21, this, v10, &v15);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
LABEL_15:
  if (v22 != v24)
  {
    free(v22);
  }

  return v12;
}

BOOL mlir::affine::AffineDmaWaitOp::verifyInvariantsImpl(mlir::affine **this, mlir::Operation *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    AffineScope = mlir::affine::getAffineScope(*this, a2);
    v13 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v14 = *(v13 + 9);
    }

    else
    {
      v14 = 0;
    }

    v34[0] = mlir::Operation::getInherentAttr(v13, "tag_map", 7);
    v34[0] = mlir::AffineMapAttr::getValue(v34);
    NumInputs = mlir::AffineMap::getNumInputs(v34);
    if (!NumInputs)
    {
      return 1;
    }

    v16 = NumInputs;
    for (i = (v14 + 56); ; i += 4)
    {
      v18 = *i;
      v34[0] = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::Type::isIndex(v34))
      {
        break;
      }

      if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v18, AffineScope) & 1) == 0)
      {
        v32[0] = "index must be a valid dimension or symbol identifier";
        v33 = 259;
        mlir::OpState::emitOpError(this, v32, v34);
        v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
        if (v34[0])
        {
          mlir::InFlightDiagnostic::report(v34);
        }

        if (v42 != 1)
        {
          return v2;
        }

        if (v41 != &v42)
        {
          free(v41);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v40;
          v21 = __p;
          if (v40 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v40 = v19;
          operator delete(v21);
        }

        v6 = v37;
        if (!v37)
        {
          goto LABEL_61;
        }

        v22 = v38;
        v8 = v37;
        if (v38 == v37)
        {
          goto LABEL_60;
        }

        do
        {
          v30 = *--v22;
          v29 = v30;
          *v22 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v22 != v6);
        goto LABEL_59;
      }

      v2 = 1;
      if (!--v16)
      {
        return v2;
      }
    }

    v32[0] = "index to dma_wait must have 'index' type";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, v34);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v42 != 1)
    {
      return v2;
    }

    if (v41 != &v42)
    {
      free(v41);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v40;
      v25 = __p;
      if (v40 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v40 = v23;
      operator delete(v25);
    }

    v6 = v37;
    if (!v37)
    {
      goto LABEL_61;
    }

    v26 = v38;
    v8 = v37;
    if (v38 == v37)
    {
      goto LABEL_60;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x259C63150](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v6);
    goto LABEL_59;
  }

  v32[0] = "expected DMA tag to be of memref type";
  v33 = 259;
  mlir::OpState::emitOpError(this, v32, v34);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v40;
      v5 = __p;
      if (v40 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v40 = v3;
      operator delete(v5);
    }

    v6 = v37;
    if (!v37)
    {
      goto LABEL_61;
    }

    v7 = v38;
    v8 = v37;
    if (v38 == v37)
    {
LABEL_60:
      v38 = v6;
      operator delete(v8);
LABEL_61:
      if (v35 != &v36)
      {
        free(v35);
      }

      return v2;
    }

    do
    {
      v10 = *--v7;
      v9 = v10;
      *v7 = 0;
      if (v10)
      {
        MEMORY[0x259C63150](v9, 0x1000C8077774924);
      }
    }

    while (v7 != v6);
LABEL_59:
    v8 = v37;
    goto LABEL_60;
  }

  return v2;
}

void mlir::affine::AffineDmaWaitOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v5 = a1;
    v6 = a2;
    mlir::mps::ReadVariableOp::getEffects();
    a1 = v5;
    a2 = v6;
  }

  v9 = *(*a1 + 72);
  v10 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  {
    v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v9;
      *v3 = v10;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = 0;
      *(v3 + 36) = 0;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v7 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a2 = v7;
    v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v7 + 8);
    if (v2 < *(v7 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a2, &v10, &v9, &v8);
}

void mlir::affine::AffineForOp::build(mlir::MLIRContext **a1, int a2, mlir::AffineMap *this, mlir::AffineMap *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v14[2] = *MEMORY[0x277D85DE8];
  mlir::AffineMap::getConstantMap(this, *a1, this);
  mlir::AffineMap::getConstantMap(a4, *a1, v12);
  mlir::ValueRange::ValueRange(v14, 0, 0);
  mlir::ValueRange::ValueRange(&v13, 0, 0);
  mlir::affine::AffineForOp::build();
}

BOOL mlir::affine::AffineForOp::verifyRegions(mlir::Operation **this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3 + 48;
  v4 = *(v3 + 48);
  if (((*(v5 + 8) - v4) & 0x7FFFFFFF8) == 0 || (Value = *(*v4 + 8) & 0xFFFFFFFFFFFFFFF8, !mlir::Type::isIndex(&Value)))
  {
    v27[0] = "expected body to have a single index argument for the induction variable";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &Value);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v39 != 1)
    {
      return v11;
    }

    if (v38 != &v39)
    {
      free(v38);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v37;
      v14 = __p;
      if (v37 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v37 = v12;
      operator delete(v14);
    }

    v15 = v34;
    if (v34)
    {
      v16 = v35;
      v17 = v34;
      if (v35 != v34)
      {
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
        goto LABEL_49;
      }

LABEL_50:
      v35 = v15;
      operator delete(v17);
    }

LABEL_51:
    if (v32 != &v33)
    {
      free(v32);
    }

    return v11;
  }

  Value = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::getNumInputs(&Value) && (mlir::affine::AffineForOp::verifyRegions(this) & 1) == 0)
  {
    return 0;
  }

  Value = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (mlir::AffineMap::getNumInputs(&Value))
  {
    if ((mlir::affine::AffineForOp::verifyRegions(this) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(*this + 9);
  if (!v6)
  {
    return 1;
  }

  v27[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(v27);
  v29 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  v27[0] = mlir::AffineMapAttr::getValue(&v29);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(*this + 17);
  }

  else
  {
    v7 = 0;
  }

  NumInputs = mlir::AffineMap::getNumInputs(&Value);
  if (v7 - (NumInputs + mlir::AffineMap::getNumInputs(v27)) != v6)
  {
    v27[0] = "mismatch between the number of loop-carried values and results";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &Value);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v39 != 1)
    {
      return v11;
    }

    if (v38 != &v39)
    {
      free(v38);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v37;
      v22 = __p;
      if (v37 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v37 = v20;
      operator delete(v22);
    }

    v15 = v34;
    if (v34)
    {
      v23 = v35;
      v17 = v34;
      if (v35 != v34)
      {
        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v15);
LABEL_49:
        v17 = v34;
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v9 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  if (((*(v10 + 56) - *(v10 + 48)) >> 3) - 1 == v6)
  {
    return 1;
  }

  v27[0] = "mismatch between the number of basic block args and results";
  v28 = 259;
  mlir::OpState::emitOpError(this, v27, &Value);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v39 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v31);
  }

  return v11;
}

uint64_t verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(mlir::affine **a1, mlir::Operation *a2, uint64_t a3, unsigned int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 1;
  }

  v7 = 0;
  for (i = (a2 + 24); ; i += 4)
  {
    v9 = *i;
    AffineScope = mlir::affine::getAffineScope(*a1, a2);
    if (v7 < a4)
    {
      break;
    }

    if ((mlir::affine::isValidSymbol(v9, AffineScope) & 1) == 0)
    {
      v27[0] = "operand cannot be used as a symbol";
      v28 = 259;
      mlir::OpState::emitOpError(a1, v27, v29);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v35;
          v21 = __p;
          if (v35 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v35 = v19;
          operator delete(v21);
        }

        v15 = v32;
        if (v32)
        {
          v22 = v33;
          v17 = v32;
          if (v33 != v32)
          {
            do
            {
              v24 = *--v22;
              v23 = v24;
              *v22 = 0;
              if (v24)
              {
                MEMORY[0x259C63150](v23, 0x1000C8077774924);
              }
            }

            while (v22 != v15);
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        goto LABEL_44;
      }

      return v11;
    }

LABEL_5:
    if (a3 == ++v7)
    {
      return 1;
    }
  }

  if (mlir::affine::isValidDim())
  {
    goto LABEL_5;
  }

  v27[0] = "operand cannot be used as a dimension id";
  v28 = 259;
  mlir::OpState::emitOpError(a1, v27, v29);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
  if (v29[0])
  {
    mlir::InFlightDiagnostic::report(v29);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v35;
      v14 = __p;
      if (v35 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v35 = v12;
      operator delete(v14);
    }

    v15 = v32;
    if (v32)
    {
      v16 = v33;
      v17 = v32;
      if (v33 != v32)
      {
        do
        {
          v26 = *--v16;
          v25 = v26;
          *v16 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
LABEL_42:
        v17 = v32;
      }

LABEL_43:
      v33 = v15;
      operator delete(v17);
    }

LABEL_44:
    if (v30 != &v31)
    {
      free(v30);
    }
  }

  return v11;
}

BOOL mlir::affine::AffineForOp::parse(mlir::affine::AffineForOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  memset(v37, 0, 24);
  v39 = 0;
  v37[5] = 0;
  v38 = 0;
  v37[4] = mlir::Builder::getIndexType(v5, v6);
  if (((*(*this + 752))(this, v37, 0, 0) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 136))(this) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 6);
  if (!parseBound(1, a2, this))
  {
    return 0;
  }

  v8 = *(a2 + 6);
  v46 = " between bounds";
  v48[8] = 259;
  if (((*(*this + 400))(this, "to", 2, &v46) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 6);
  if (!parseBound(0, a2, this))
  {
    return 0;
  }

  v10 = *(a2 + 6);
  if ((*(*this + 408))(this, "step", 4))
  {
    v12 = (*(*this + 40))(this);
    v43 = 0;
    IndexType = mlir::Builder::getIndexType(v5, v13);
    v46 = *(*(*(a2 + 1) + 96) + 8);
    Value = mlir::StringAttr::getValue(&v46);
    v16 = Value;
    if (Value)
    {
      v17 = strlen(Value);
    }

    else
    {
      v17 = 0;
    }

    if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v43, IndexType, v16, v17, a2 + 112))
    {
      mlir::IntegerAttr::getValue(&v43, &v46);
      v30 = v47 - 1;
      if (v47 > 0x40)
      {
        v32 = *(v46 + (v30 >> 6));
        MEMORY[0x259C63150]();
        if ((v32 >> v30))
        {
          goto LABEL_28;
        }
      }

      else if ((v46 >> v30))
      {
LABEL_28:
        v40 = "expected step to be representable as a positive signed integer";
        v42 = 259;
        (*(*this + 24))(&v46, this, v12, &v40);
        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
        return v31;
      }

      v35 = v10;
      v36 = v9;
      goto LABEL_10;
    }

    return 0;
  }

  v35 = v10;
  v36 = v9;
  v18 = *(*(*(a2 + 1) + 96) + 8);
  v19 = mlir::Builder::getIndexType(v5, v11);
  IntegerAttr = mlir::Builder::getIntegerAttr(v5, v19, 1uLL);
  mlir::OperationState::addAttribute(a2, v18, IntegerAttr);
LABEL_10:
  v46 = v48;
  v47 = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v21 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(&v46, v37);
  if (((*(*this + 408))(this, "iter_args", 9, v21) & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((mlir::OpAsmParser::parseAssignmentList(this) & 1) == 0 || ((*(*this + 560))(this, a2 + 64) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v47 == 1 || !v44 || (v22 = *(a2 + 18), !v22))
  {
LABEL_22:
    LODWORD(v40) = v8 - v7;
    HIDWORD(v40) = v35 - v36;
    v41 = v44;
    mlir::Builder::getDenseI32ArrayAttr();
  }

  v23 = 0;
  v24 = v43;
  v25 = *(a2 + 8);
  v33 = (v47 << 6) - 128;
  v34 = v46 + 96;
  v26 = (v22 << 6) - 64;
  v27 = (v44 << 6) - 64;
  while (1)
  {
    *&v34[v23] = *v25;
    if (((*(*this + 728))(this, v24) & 1) == 0)
    {
      break;
    }

    if (v33 != v23 && v27 != v23)
    {
      v24 += 32;
      ++v25;
      v28 = v26 == v23;
      v23 += 64;
      if (!v28)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  result = 0;
  if (v43 != v45)
  {
    free(v43);
    result = 0;
  }

  if (v46 != v48)
  {
    v31 = 0;
    free(v46);
    return v31;
  }

  return result;
}

BOOL parseBound(int a1, mlir::OperationState *a2, mlir::OpAsmParser *a3)
{
  v70[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = "max";
  }

  else
  {
    v6 = "min";
  }

  if (a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  v8 = (*(*a3 + 408))(a3, v6, 3);
  v9 = (*(*a3 + 32))(a3);
  v58 = *(*(*(a2 + 1) + 96) + v7);
  v68 = v70;
  v69 = 0x100000000;
  if (((*(*a3 + 720))(a3, &v68, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (v69)
  {
    if (v69 == 1)
    {
      v11 = v68;
      IndexType = mlir::Builder::getIndexType(v9, v10);
      if ((*(*a3 + 728))(a3, v11, IndexType, a2 + 16))
      {
        SymbolIdentityMap = mlir::Builder::getSymbolIdentityMap(v9, v13, v14);
        v16 = v58;
LABEL_12:
        v17 = mlir::AffineMapAttr::get(SymbolIdentityMap);
        mlir::NamedAttribute::NamedAttribute(v59, v16, v17);
        mlir::NamedAttrList::push_back(a2 + 112, v59[0], v59[1]);
        v18 = 1;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v37 = (*(*a3 + 16))(a3);
    v56[0] = "expected only one loop bound operand";
    v57 = 259;
    (*(*a3 + 24))(v59, a3, v37, v56);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
    if (v59[0])
    {
      mlir::InFlightDiagnostic::report(v59);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v38 = __p;
      if (__p)
      {
        v39 = v65;
        v40 = __p;
        if (v65 != __p)
        {
          do
          {
            v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
          }

          while (v39 != v38);
          v40 = __p;
        }

        v65 = v38;
        operator delete(v40);
      }

      v31 = v62;
      if (!v62)
      {
        goto LABEL_59;
      }

      v41 = v63;
      v33 = v62;
      if (v63 == v62)
      {
LABEL_58:
        v63 = v31;
        operator delete(v33);
LABEL_59:
        if (v60 != &v61)
        {
          free(v60);
        }

        goto LABEL_35;
      }

      do
      {
        v43 = *--v41;
        v42 = v43;
        *v41 = 0;
        if (v43)
        {
          MEMORY[0x259C63150](v42, 0x1000C8077774924);
        }
      }

      while (v41 != v31);
LABEL_57:
      v33 = v62;
      goto LABEL_58;
    }

    goto LABEL_35;
  }

  v19 = (*(*a3 + 40))(a3);
  v55 = 0;
  v21 = mlir::Builder::getIndexType(v9, v20);
  Value = mlir::StringAttr::getValue(&v58);
  if (!mlir::AsmParser::parseAttribute<mlir::Attribute>(a3, &v55, v21, Value, v23, a2 + 112))
  {
LABEL_34:
    v18 = 0;
    goto LABEL_35;
  }

  v24 = v55;
  v25 = *(*v55 + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v26 = v55;
  }

  else
  {
    v26 = 0;
  }

  v54 = v26;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v44 = *(a2 + 6);
    v53 = 0;
    v18 = 0;
    if ((mlir::affine::parseDimAndSymbolList(a3, a2 + 16, &v53) & 1) == 0)
    {
      goto LABEL_35;
    }

    v52 = mlir::AffineMapAttr::getValue(&v54);
    NumDims = mlir::AffineMap::getNumDims(&v52);
    if (NumDims == v53)
    {
      v46 = *(a2 + 6) - v44;
      if (mlir::AffineMap::getNumSymbols(&v52) + NumDims == v46)
      {
        v18 = 1;
        if (mlir::AffineMap::getNumResults(&v52) < 2 || (v8 & 1) != 0)
        {
          goto LABEL_35;
        }

        if (a1)
        {
          v47 = "lower loop bound affine map with multiple results requires 'max' prefix";
        }

        else
        {
          v47 = "upper loop bound affine map with multiple results requires 'min' prefix";
        }

        v56[0] = v47;
        v57 = 259;
        (*(*a3 + 24))(v59, a3, v19, v56);
LABEL_72:
        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
        goto LABEL_35;
      }

      v50 = (*(*a3 + 16))(a3);
      v51 = "symbol operand count and affine map symbol count must match";
    }

    else
    {
      v50 = (*(*a3 + 16))(a3);
      v51 = "dim operand count and affine map dim count must match";
    }

    v56[0] = v51;
    v57 = 259;
    (*(*a3 + 24))(v59, a3, v50, v56);
    goto LABEL_72;
  }

  if (v25 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v24 = 0;
  }

  v56[0] = v24;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    --*(a2 + 30);
    v16 = v58;
    Int = mlir::IntegerAttr::getInt(v56);
    SymbolIdentityMap = mlir::Builder::getConstantAffineMap(v9, Int, v49);
    goto LABEL_12;
  }

  v27 = (*(*a3 + 16))(a3);
  v56[0] = "expected valid affine map representation for loop bounds";
  v57 = 259;
  (*(*a3 + 24))(v59, a3, v27, v56);
  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v65;
      v30 = __p;
      if (v65 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v65 = v28;
      operator delete(v30);
    }

    v31 = v62;
    if (!v62)
    {
      goto LABEL_59;
    }

    v32 = v63;
    v33 = v62;
    if (v63 == v62)
    {
      goto LABEL_58;
    }

    do
    {
      v36 = *--v32;
      v35 = v36;
      *v32 = 0;
      if (v36)
      {
        MEMORY[0x259C63150](v35, 0x1000C8077774924);
      }
    }

    while (v32 != v31);
    goto LABEL_57;
  }

LABEL_35:
  if (v68 != v70)
  {
    free(v68);
  }

  return v18;
}

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

llvm::raw_ostream *printBound(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v23 = a1;
  Value = mlir::AffineMapAttr::getValue(&v23);
  if (mlir::AffineMap::getNumResults(&Value) != 1)
  {
    v10 = (*(*a5 + 16))(a5);
    if (a4)
    {
      v11 = v10;
      v12 = strlen(a4);
      v13 = v11[4];
      if (v12 <= v11[3] - v13)
      {
        if (v12)
        {
          memcpy(v13, a4, v12);
          v11[4] += v12;
        }
      }

      else
      {
        llvm::raw_ostream::write(v11, a4, v12);
      }
    }

    v14 = (*(*a5 + 16))(a5);
    v15 = *(v14 + 4);
    if (v15 >= *(v14 + 3))
    {
      llvm::raw_ostream::write(v14, 32);
    }

    else
    {
      *(v14 + 4) = v15 + 1;
      *v15 = 32;
    }

    goto LABEL_17;
  }

  v9 = mlir::AffineMap::getResult(&Value, 0);
  if (mlir::AffineMap::getNumDims(&Value) || mlir::AffineMap::getNumSymbols(&Value) || ((v24 = v9, mlir::AffineExpr::getKind(&v24) != 5) ? (v18 = 0) : (v18 = v9), mlir::AffineConstantExpr::AffineConstantExpr(&v24, v18), (v21 = v24) == 0))
  {
    if (mlir::AffineMap::getNumDims(&Value) || mlir::AffineMap::getNumSymbols(&Value) != 1)
    {
      goto LABEL_17;
    }

    v24 = v9;
    if (mlir::AffineExpr::getKind(&v24) == 7)
    {
      mlir::AffineSymbolExpr::AffineSymbolExpr(&v24, v9);
      if (!v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      mlir::AffineSymbolExpr::AffineSymbolExpr(&v24, 0);
      if (!v24)
      {
LABEL_17:
        (*(*a5 + 40))(a5, v23);
        NumDims = mlir::AffineMap::getNumDims(&Value);
        return printDimAndSymbolList(a2, 0, a2, a3, NumDims, a5);
      }
    }

    return (*(*a5 + 160))(a5, *(a2 + 24));
  }

  v19 = mlir::AffineConstantExpr::getValue(&v21);
  v20 = (*(*a5 + 16))(a5);
  return llvm::raw_ostream::operator<<(v20, v19);
}

unint64_t *mlir::affine::AffineForOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if ((v7 & (TrivialConstantTripCount == 1)) == 1)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    if (TrivialConstantTripCount)
    {
      v13 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
      if (v13)
      {
        v14 = v13 - 8;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(v14 + 48);
      v16 = ((*(v14 + 56) - v15) >> 3) - 1;
      *&v32 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      result = mlir::ValueRange::ValueRange(&v32 + 1, v15 + 8, v16);
      v11 = *(a3 + 8);
      v12 = *a3;
      if (v11 >= *(a3 + 12))
      {
        goto LABEL_25;
      }

LABEL_14:
      v17 = v12 + 24 * *(a3 + 8);
      v18 = v32;
      v19 = v33;
      goto LABEL_24;
    }

LABEL_3:
    v8 = *(*a1 + 36);
    if (v8)
    {
      v9 = *a1 - 16;
    }

    else
    {
      v9 = 0;
    }

    *&v32 = 0;
    result = mlir::ValueRange::ValueRange(&v32 + 1, v9, v8);
    v11 = *(a3 + 8);
    v12 = *a3;
    if (v11 >= *(a3 + 12))
    {
LABEL_25:
      if (v12 <= &v32 && v12 + 24 * v11 > &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    goto LABEL_14;
  }

  v20 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v20)
  {
    v21 = v20 - 8;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v21 + 48);
  v23 = ((*(v21 + 56) - v22) >> 3) - 1;
  *&v32 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  mlir::ValueRange::ValueRange(&v32 + 1, v22 + 8, v23);
  v24 = *(a3 + 8);
  v25 = *a3;
  if (v24 >= *(a3 + 12))
  {
    if (v25 > &v32 || v25 + 24 * v24 <= &v32)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = v25 + 24 * *(a3 + 8);
  v27 = v32;
  *(v26 + 16) = v33;
  *v26 = v27;
  ++*(a3 + 8);
  v28 = *(*a1 + 36);
  if (v28)
  {
    v29 = *a1 - 16;
  }

  else
  {
    v29 = 0;
  }

  *&v32 = 0;
  result = mlir::ValueRange::ValueRange(&v32 + 1, v29, v28);
  v30 = *(a3 + 8);
  v31 = *a3;
  if (v30 >= *(a3 + 12))
  {
    if (v31 > &v32 || v31 + 24 * v30 <= &v32)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v31 + 24 * *(a3 + 8);
  v18 = v32;
  v19 = v33;
LABEL_24:
  *(v17 + 16) = v19;
  *v17 = v18;
  ++*(a3 + 8);
  return result;
}

unint64_t anonymous namespace::getTrivialConstantTripCount(uint64_t a1)
{
  v2 = a1 + 64;
  v10 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v10, &Value);
  if (v9 > 0x40)
  {
    v3 = *Value;
    MEMORY[0x259C63150]();
  }

  else if (v9)
  {
    v3 = Value << -v9 >> -v9;
  }

  else
  {
    v3 = 0;
  }

  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (!mlir::AffineMap::isSingleConstant(&Value))
  {
    return 0;
  }

  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
  Value = mlir::AffineMapAttr::getValue(&Value);
  if (!mlir::AffineMap::isSingleConstant(&Value) || v3 < 1)
  {
    return 0;
  }

  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1));
  Value = mlir::AffineMapAttr::getValue(&Value);
  SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
  Value = *(v2 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
  Value = mlir::AffineMapAttr::getValue(&Value);
  v5 = mlir::AffineMap::getSingleConstantResult(&Value);
  if (v5 - SingleConstantResult < 1)
  {
    return 0;
  }

  else
  {
    return (v3 + v5 - SingleConstantResult - 1) / v3;
  }
}

void mlir::affine::AffineForOp::setLowerBound(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  mlir::Attribute::getContext((*a1 + 24));
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

uint64_t mlir::affine::AffineForOp::setLowerBoundMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::affine::AffineForOp::setUpperBound(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  mlir::Attribute::getContext((*a1 + 24));
  mlir::detail::DenseArrayAttrImpl<int>::get();
}

uint64_t mlir::affine::AffineForOp::setUpperBoundMap(uint64_t a1, unint64_t a2)
{
  result = mlir::AffineMapAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

BOOL mlir::affine::AffineForOp::hasConstantLowerBound(mlir::affine::AffineForOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::isSingleConstant(&Value);
}

BOOL mlir::affine::AffineForOp::hasConstantUpperBound(mlir::affine::AffineForOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::isSingleConstant(&Value);
}

uint64_t mlir::affine::AffineForOp::getConstantLowerBound(mlir::affine::AffineForOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::getSingleConstantResult(&Value);
}

uint64_t mlir::affine::AffineForOp::getConstantUpperBound(mlir::affine::AffineForOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::AffineMap::getSingleConstantResult(&Value);
}

void mlir::affine::AffineForOp::setConstantLowerBound(mlir::affine::AffineForOp *this, mlir::AffineMap *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v6, 0, 0);
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::AffineMap::getConstantMap(a2, Context, v5);
  mlir::affine::AffineForOp::setLowerBound(this);
}

void mlir::affine::AffineForOp::setConstantUpperBound(mlir::affine::AffineForOp *this, mlir::AffineMap *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v6, 0, 0);
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::AffineMap::getConstantMap(a2, Context, v5);
  mlir::affine::AffineForOp::setUpperBound(this);
}

BOOL mlir::affine::AffineForOp::matchingBoundOperandList(mlir::affine::AffineForOp *this)
{
  v16 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v16);
  v16 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v16 = mlir::AffineMapAttr::getValue(&v16);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (NumDims != mlir::AffineMap::getNumDims(&v16))
  {
    return 0;
  }

  NumSymbols = mlir::AffineMap::getNumSymbols(&Value);
  if (NumSymbols != mlir::AffineMap::getNumSymbols(&v16))
  {
    return 0;
  }

  NumInputs = mlir::AffineMap::getNumInputs(&Value);
  v5 = mlir::AffineMap::getNumInputs(&Value);
  if (!v5)
  {
    return 1;
  }

  v6 = *(*this + 72);
  v7 = v5 - 1;
  v8 = (v6 + 24);
  do
  {
    v10 = *v8;
    v8 += 4;
    v9 = v10;
    v11 = *(v6 + 32 * NumInputs + 24);
    v13 = v7-- != 0;
    result = v9 == v11;
    if (v9 != v11)
    {
      break;
    }

    ++NumInputs;
  }

  while (v13);
  return result;
}

double mlir::affine::AffineForOp::getLoopRegions@<D0>(mlir::affine::AffineForOp *this@<X0>, void *a2@<X8>)
{
  a2[2] = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

double mlir::affine::AffineForOp::getLoopInductionVars@<D0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 16) = **(v3 + 48);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::affine::AffineForOp::getLoopLowerBounds@<X0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v6[0] = mlir::AffineMapAttr::getValue(v6);
  result = mlir::AffineMap::isSingleConstant(v6);
  if (result)
  {
    v6[0] = mlir::Attribute::getContext((*this + 24));
    memset(&v6[1], 0, 24);
    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    Value = mlir::AffineMapAttr::getValue(&Value);
    SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
    result = mlir::Builder::getI64IntegerAttr(v6, SingleConstantResult);
    *(a2 + 16) = result & 0xFFFFFFFFFFFFFFFBLL;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000001;
    *(a2 + 64) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

double mlir::affine::AffineForOp::getLoopSteps@<D0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = mlir::Attribute::getContext((*this + 24));
  memset(&v6[1], 0, 24);
  v9 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v9, &v7);
  if (v8 > 0x40)
  {
    v4 = *v7;
    MEMORY[0x259C63150]();
  }

  else if (v8)
  {
    v4 = (v7 << -v8) >> -v8;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 16) = mlir::Builder::getI64IntegerAttr(v6, v4) & 0xFFFFFFFFFFFFFFFBLL;
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::affine::AffineForOp::getLoopUpperBounds@<X0>(mlir::affine::AffineForOp *this@<X0>, uint64_t a2@<X8>)
{
  v6[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v6[0] = mlir::AffineMapAttr::getValue(v6);
  result = mlir::AffineMap::isSingleConstant(v6);
  if (result)
  {
    v6[0] = mlir::Attribute::getContext((*this + 24));
    memset(&v6[1], 0, 24);
    Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
    Value = mlir::AffineMapAttr::getValue(&Value);
    SingleConstantResult = mlir::AffineMap::getSingleConstantResult(&Value);
    result = mlir::Builder::getI64IntegerAttr(v6, SingleConstantResult);
    *(a2 + 16) = result & 0xFFFFFFFFFFFFFFFBLL;
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000001;
    *(a2 + 64) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

void mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v17, a2, v13);
    mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
    mlir::ValueRange::ValueRange(&v18, *a5, *(a5 + 8));
    mlir::ValueRange::ValueRange(&v16, *a8, *(a8 + 8));
    mlir::affine::AffineForOp::build();
  }

  mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::OperandRange,mlir::AffineMap,mlir::OperandRange,mlir::AffineMap,long long,llvm::SmallVector<mlir::Value,6u> &>(v17, v19, &v18);
}

uint64_t mlir::affine::AffineForOp::getSpeculatability(mlir::affine::AffineForOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 > 0x40)
  {
    v1 = *v3;
    MEMORY[0x259C63150]();
  }

  else if (v4)
  {
    v1 = (v3 << -v4) >> -v4;
  }

  else
  {
    v1 = 0;
  }

  return 2 * (v1 == 1);
}

mlir::Block *mlir::affine::getForInductionVarOwner(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      result = *(a1 + 16);
      if (result)
      {
        result = mlir::Block::getParent(result);
        if (result)
        {
          result = mlir::Block::getParent(*(a1 + 16));
          while (1)
          {
            v3 = *(result + 2);
            if (v3)
            {
              if (*(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id)
              {
                break;
              }
            }

            result = mlir::Region::getParentRegion(result);
            if (!result)
            {
              return result;
            }
          }

          v4 = *(((v3 + 16 * ((*(v3 + 44) >> 23) & 1) + ((*(v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
          if (v4)
          {
            v5 = v4 - 8;
          }

          else
          {
            v5 = 0;
          }

          if (**(v5 + 48) == a1)
          {
            return *(result + 2);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

mlir::Block *mlir::affine::isAffineParallelInductionVar(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      result = *(a1 + 16);
      if (result)
      {
        v3 = a1;
        ParentOp = mlir::Block::getParentOp(result);
        if (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id || ParentOp == 0)
        {
          return 0;
        }

        v6 = *(((ParentOp + 16 * ((*(ParentOp + 44) >> 23) & 1) + ((*(ParentOp + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(ParentOp + 40) + 8);
        v7 = v6 - 8;
        if (!v6)
        {
          v7 = 0;
        }

        v8 = *(v7 + 48);
        v9 = *(v7 + 56);
        if (v9 != v8)
        {
          while (*v8 != v3)
          {
            if (++v8 == v9)
            {
              return 0;
            }
          }
        }

        return (v8 != v9);
      }
    }
  }

  return result;
}

uint64_t mlir::affine::getAffineParallelInductionVarOwner(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      result = *(a1 + 16);
      if (result)
      {
        result = mlir::Block::getParentOp(result);
        if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id)
        {
          result = 0;
        }

        if (!result)
        {
          return 0;
        }

        v3 = *(((result + 16 * ((*(result + 44) >> 23) & 1) + ((*(result + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(result + 40) + 8);
        v4 = v3 - 8;
        if (!v3)
        {
          v4 = 0;
        }

        v5 = *(v4 + 48);
        v6 = *(v4 + 56);
        if (v6 != v5)
        {
          while (*v5 != a1)
          {
            if (++v5 == v6)
            {
              return 0;
            }
          }
        }

        if (v5 == v6)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

mlir::Block *mlir::affine::isAffineInductionVar(uint64_t a1)
{
  result = mlir::affine::getForInductionVarOwner(a1);
  if (result)
  {
    return 1;
  }

  if (a1)
  {
    if ((*(a1 + 8) & 7) == 7)
    {
      result = *(a1 + 16);
      if (result)
      {
        ParentOp = mlir::Block::getParentOp(result);
        if (!ParentOp || *(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id)
        {
          return 0;
        }

        v4 = *(((ParentOp + 16 * ((*(ParentOp + 44) >> 23) & 1) + ((*(ParentOp + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(ParentOp + 40) + 8);
        v5 = v4 - 8;
        if (!v4)
        {
          v5 = 0;
        }

        v6 = *(v5 + 48);
        v7 = *(v5 + 56);
        if (v7 != v6)
        {
          while (*v6 != a1)
          {
            if (++v6 == v7)
            {
              return 0;
            }
          }
        }

        return (v6 != v7);
      }
    }
  }

  return result;
}

uint64_t mlir::affine::extractForInductionVars(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 > *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v4 = *(a3 + 8);
    v5 = 8 * a2;
    do
    {
      v6 = *(((*v3 + 16 * ((*(*v3 + 44) >> 23) & 1) + ((*(*v3 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*v3 + 40) + 8);
      if (v6)
      {
        v7 = v6 - 8;
      }

      else
      {
        v7 = 0;
      }

      if (v4 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v4) = **(v7 + 48);
      v4 = *(a3 + 8) + 1;
      *(a3 + 8) = v4;
      v3 += 8;
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t *mlir::affine::extractInductionVars(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 > *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    do
    {
      v8 = *v3;
      v9 = *(*(*v3 + 48) + 16);
      if (*v3)
      {
        v10 = v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v4 = *(((v8 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40) + 8);
        if (v4)
        {
          v5 = v4 - 8;
        }

        else
        {
          v5 = 0;
        }

        v6 = **(v5 + 48);
        v7 = *(a3 + 8);
        if (v7 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v7) = v6;
        ++*(a3 + 8);
      }

      else if (v9 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id && v8 != 0)
      {
        for (i = 0; ; ++i)
        {
          v13 = *(((v8 + 64 + 16 * ((*(v8 + 44) >> 23) & 1) + ((*(v8 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40) + 8);
          v14 = v13 ? v13 - 8 : 0;
          v16 = v14 + 48;
          v15 = *(v14 + 48);
          if (i >= ((*(v16 + 8) - v15) >> 3))
          {
            break;
          }

          v17 = *(v15 + 8 * i);
          v18 = *(a3 + 8);
          if (v18 >= *(a3 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a3 + 8 * v18) = v17;
          ++*(a3 + 8);
        }
      }

      ++v3;
    }

    while (v3 != &result[a2]);
  }

  return result;
}

uint64_t mlir::affine::AffineParallelOp::getBody(mlir::affine::AffineParallelOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

double mlir::affine::buildAffineLoopNest(uint64_t a1, uint64_t a2, mlir::AffineMap **a3, unint64_t a4, mlir::AffineMap **a5, uint64_t a6, uint64_t *a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a10)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v22[0] = a9;
  v22[1] = a10;
  v12 = a1 + 16;
  v13 = *(a1 + 16);
  if (a4)
  {
    v25 = v27;
    v26 = 0x400000000;
    if (a4 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = a4;
    v21 = 0;
    v19[0] = &v25;
    v19[1] = &v21;
    v19[2] = &v20;
    v19[3] = v22;
    v14 = *a3;
    v15 = *a5;
    v16 = *a7;
    v24[1] = llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<void buildAffineLoopNestImpl<llvm::ArrayRef<long long>,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,long long,long long,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>)>(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,long long,long long,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>) &&)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)#1}>;
    v24[2] = v19;
    v23 = v15;
    v24[0] = v14;
    v22[2] = v16;
    mlir::OpBuilder::create<mlir::affine::AffineForOp,long long &,long long &,long long &,std::nullopt_t const&,llvm::function_ref<void ()(mlir::OpBuilder&,mlir::Location,mlir::Value,mlir::ValueRange)> &>(a1, a2, v24, &v23);
  }

  if (a9)
  {
    v18 = *(a1 + 16);
    mlir::ValueRange::ValueRange(&v25, 0, 0);
    a9(a10, a1, a2, v25, v26);
    v13 = v18;
  }

  if (v13)
  {
    *v12 = v13;
  }

  else
  {
    *v12 = 0;
    *(v12 + 8) = 0;
  }

  return *&v13;
}

double mlir::affine::buildAffineLoopNest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, void *, uint64_t), uint64_t a10)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v27[0] = a3;
  v27[1] = a4;
  v26[0] = a5;
  v26[1] = a6;
  v22[0] = a9;
  v22[1] = a10;
  v12 = a1 + 16;
  v13 = *(a1 + 16);
  if (a4)
  {
    v23 = &v25;
    v24 = 0x400000000;
    if (a4 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = a4;
    v21 = 0;
    v19[0] = &v23;
    v19[1] = &v21;
    v19[2] = &v20;
    v19[3] = v22;
    v15 = mlir::ValueRange::dereference_iterator(v27, 0);
    v16 = mlir::ValueRange::dereference_iterator(v26, v21);
    buildAffineLoopFromValues(a1, a2, v15, v16, *(a7 + 8 * v21), llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<void buildAffineLoopNestImpl<mlir::ValueRange,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::Value,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>)>(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange,llvm::ArrayRef<long long>,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>,mlir::affine::AffineForOp (&)(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::Value,long long,llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>) &&)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)#1}>, v19);
  }

  if (a9)
  {
    v18 = *(a1 + 16);
    mlir::ValueRange::ValueRange(&v23, 0, 0);
    a9(a10, a1, a2, v23, v24);
    v13 = v18;
  }

  if (v13)
  {
    *v12 = v13;
  }

  else
  {
    *v12 = 0;
    *(v12 + 8) = 0;
  }

  return *&v13;
}

void buildAffineLoopFromValues(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ConstantIntValue = mlir::getConstantIntValue(a3 | 4);
  v14 = v13;
  v15 = mlir::getConstantIntValue(a4 | 4);
  if (v14 & 1) != 0 && (v16)
  {
    DimIdentityMap = a6;
    v23 = a7;
    v20 = v15;
    v21 = ConstantIntValue;
    mlir::OpBuilder::create<mlir::affine::AffineForOp,long long &,long long &,long long &,std::nullopt_t const&,llvm::function_ref<void ()(mlir::OpBuilder&,mlir::Location,mlir::Value,mlir::ValueRange)> &>(a1, a2, &v21, &v20);
  }

  DimIdentityMap = mlir::Builder::getDimIdentityMap(a1, v16, v17);
  v21 = mlir::Builder::getDimIdentityMap(a1, v18, v19);
  mlir::OpBuilder::create<mlir::affine::AffineForOp,mlir::Value &,mlir::AffineMap,mlir::Value &,mlir::AffineMap,long long &,std::nullopt_t const&,llvm::function_ref<void ()(mlir::OpBuilder&,mlir::Location,mlir::Value,mlir::ValueRange)> &>(a1, a2);
}

__n128 mlir::affine::AffineIfOp::getSuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    if (*(a3 + 12) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (*v11 == v11)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = v11[1];
      if (v12)
      {
        v13 = v12 - 8;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v13 + 48);
      v15 = (*(v13 + 56) - v14) >> 3;
    }

    v29.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    mlir::ValueRange::ValueRange(&v29.n128_u64[1], v14, v15);
    v16 = *(a3 + 8);
    v17 = *a3;
    if (v16 >= *(a3 + 12))
    {
      if (v17 > &v29 || v17 + 24 * v16 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v17 + 24 * *(a3 + 8));
    v19 = v29;
    v18[1].n128_u64[0] = v30;
    *v18 = v19;
    ++*(a3 + 8);
    v5 = *a1;
    v20 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v22 = *(v20 + 24);
    v21 = v20 + 24;
    if (v22 != v21)
    {
      v23 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 32);
      if (v23)
      {
        v24 = v23 - 8;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v24 + 48);
      v26 = (*(v24 + 56) - v25) >> 3;
      v29.n128_u64[0] = v21;
      mlir::ValueRange::ValueRange(&v29.n128_u64[1], v25, v26);
      v9 = *(a3 + 8);
      v10 = *a3;
      if (v9 >= *(a3 + 12))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v6 = *(v5 + 36);
  v7 = v5 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v29.n128_u64[0] = 0;
  mlir::ValueRange::ValueRange(&v29.n128_u64[1], v8, v6);
  v9 = *(a3 + 8);
  v10 = *a3;
  if (v9 >= *(a3 + 12))
  {
LABEL_23:
    if (v10 <= &v29 && v10 + 24 * v9 > &v29)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_22:
  v27 = (v10 + 24 * *(a3 + 8));
  result = v29;
  v27[1].n128_u64[0] = v30;
  *v27 = result;
  ++*(a3 + 8);
  return result;
}

BOOL mlir::affine::AffineIfOp::verify(mlir::affine::AffineIfOp *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "condition", 9), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "condition", 9uLL);
  }

  if (!InherentAttr)
  {
    v52 = 0;
    goto LABEL_33;
  }

  if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v5 = InherentAttr;
  }

  else
  {
    v5 = 0;
  }

  v52 = v5;
  if (!v5)
  {
LABEL_33:
    v53[0] = "requires an integer set attribute named 'condition'";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v24;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v61;
      v27 = __p;
      if (v61 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v61 = v25;
      operator delete(v27);
    }

    v28 = v58;
    if (v58)
    {
      v29 = v59;
      v30 = v58;
      if (v59 != v58)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            MEMORY[0x259C63150](v31, 0x1000C8077774924);
          }
        }

        while (v29 != v28);
        goto LABEL_97;
      }

LABEL_98:
      v59 = v28;
      operator delete(v30);
    }

LABEL_99:
    if (v56 != v57)
    {
      free(v56);
    }

    return v24;
  }

  Value = mlir::IntegerSetAttr::getValue(&v52);
  if ((*(*this + 46) & 0x80) == 0)
  {
    if (!mlir::IntegerSet::getNumInputs(&Value))
    {
      goto LABEL_11;
    }

LABEL_81:
    v53[0] = "operand count and condition integer set dimension and symbol count must match";
    v54 = 259;
    mlir::OpState::emitOpError(this, v53, v55);
    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 != 1)
    {
      return v24;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v61;
      v46 = __p;
      if (v61 != __p)
      {
        do
        {
          v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v61 = v44;
      operator delete(v46);
    }

    v28 = v58;
    if (v58)
    {
      v47 = v59;
      v30 = v58;
      if (v59 != v58)
      {
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

        while (v47 != v28);
LABEL_97:
        v30 = v58;
        goto LABEL_98;
      }

      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v6 = *(*this + 68);
  if (v6 != mlir::IntegerSet::getNumInputs(&Value))
  {
    goto LABEL_81;
  }

LABEL_11:
  v7 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    mlir::IntegerSet::getNumDims(&Value);
    return 1;
  }

  v8 = *(v7 + 72);
  v9 = *(v7 + 68);
  NumDims = mlir::IntegerSet::getNumDims(&Value);
  if (!v9)
  {
    return 1;
  }

  v12 = 0;
  v13 = NumDims;
  for (i = (v8 + 24); ; i += 4)
  {
    v15 = *i;
    AffineScope = mlir::affine::getAffineScope(*this, v11);
    if (v12 >= v13)
    {
      break;
    }

    if ((mlir::affine::isValidDim() & 1) == 0)
    {
      v53[0] = "operand cannot be used as a dimension id";
      v54 = 259;
      mlir::OpState::emitOpError(this, v53, v55);
      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v61;
          v20 = __p;
          if (v61 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v61 = v18;
          operator delete(v20);
        }

        v21 = v58;
        if (v58)
        {
          v22 = v59;
          v23 = v58;
          if (v59 != v58)
          {
            do
            {
              v43 = *--v22;
              v42 = v43;
              *v22 = 0;
              if (v43)
              {
                MEMORY[0x259C63150](v42, 0x1000C8077774924);
              }
            }

            while (v22 != v21);
            v23 = v58;
          }

          v59 = v21;
          operator delete(v23);
        }

        if (v56 != v57)
        {
          free(v56);
        }
      }

      return v17;
    }

LABEL_16:
    if (v9 == ++v12)
    {
      return 1;
    }
  }

  if (mlir::affine::isValidSymbol(v15, AffineScope))
  {
    goto LABEL_16;
  }

  v53[0] = "operand cannot be used as a symbol";
  v54 = 259;
  mlir::OpState::emitOpError(this, v53, v55);
  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v61;
      v36 = __p;
      if (v61 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v61 = v34;
      operator delete(v36);
    }

    v37 = v58;
    if (v58)
    {
      v38 = v59;
      v39 = v58;
      if (v59 != v58)
      {
        do
        {
          v41 = *--v38;
          v40 = v41;
          *v38 = 0;
          if (v41)
          {
            MEMORY[0x259C63150](v40, 0x1000C8077774924);
          }
        }

        while (v38 != v37);
        v39 = v58;
      }

      v59 = v37;
      operator delete(v39);
    }

    if (v56 != v57)
    {
      free(v56);
    }
  }

  return v33;
}

BOOL mlir::affine::AffineIfOp::parse(mlir::affine::AffineIfOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerSetAttr>(this, &v28, 0, "condition", 9uLL, a2 + 112))
  {
    return 0;
  }

  v27 = 0;
  if ((mlir::affine::parseDimAndSymbolList(this, a2 + 16, &v27) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::IntegerSetAttr::getValue(&v28);
  NumDims = mlir::IntegerSet::getNumDims(&Value);
  if (NumDims == v27)
  {
    if (*(a2 + 6) == mlir::IntegerSet::getNumSymbols(&Value) + NumDims)
    {
      if ((*(*this + 568))(this, a2 + 64))
      {
        llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::reserve(a2 + 224, 2uLL);
        mlir::OperationState::addRegion(a2);
      }

      return 0;
    }

    v17 = (*(*this + 16))(this);
    v24[0] = "symbol operand count and integer set symbol count must match";
    v25 = 259;
    (*(*this + 24))(v29, this, v17, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    v8 = result;
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
      result = v8;
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
        result = v8;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v35;
        v20 = __p;
        if (v35 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v35 = v18;
        operator delete(v20);
        result = v8;
      }

      v12 = v32;
      if (!v32)
      {
        goto LABEL_43;
      }

      v21 = v33;
      v14 = v32;
      if (v33 == v32)
      {
LABEL_42:
        v33 = v12;
        operator delete(v14);
        result = v8;
LABEL_43:
        if (v30 != &v31)
        {
          free(v30);
          return v8;
        }

        return result;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x259C63150](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v12);
LABEL_41:
      v14 = v32;
      goto LABEL_42;
    }
  }

  else
  {
    v7 = (*(*this + 16))(this);
    v24[0] = "dim operand count and integer set dim count must match";
    v25 = 259;
    (*(*this + 24))(v29, this, v7, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    v8 = result;
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
      result = v8;
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
        result = v8;
      }

      v9 = __p;
      if (__p)
      {
        v10 = v35;
        v11 = __p;
        if (v35 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v35 = v9;
        operator delete(v11);
        result = v8;
      }

      v12 = v32;
      if (!v32)
      {
        goto LABEL_43;
      }

      v13 = v33;
      v14 = v32;
      if (v33 == v32)
      {
        goto LABEL_42;
      }

      do
      {
        v16 = *--v13;
        v15 = v16;
        *v13 = 0;
        if (v16)
        {
          MEMORY[0x259C63150](v15, 0x1000C8077774924);
        }
      }

      while (v13 != v12);
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t mlir::affine::AffineIfOp::getIntegerSet(mlir::affine::AffineIfOp *this)
{
  v1 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "condition", 9), (v3 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v1 + 56, "condition", 9uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v4 = InherentAttr;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  return mlir::IntegerSetAttr::getValue(&v6);
}

void mlir::affine::AffineIfOp::setIntegerSet(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = mlir::IntegerSetAttr::get(a2);
  Context = mlir::Attribute::getContext((v2 + 24));
  v8 = 261;
  v7[0] = "condition";
  v7[1] = 9;
  v6 = mlir::StringAttr::get(Context, v7, v5);
  mlir::Operation::setAttr(v2, v6, v3);
}

uint64_t *mlir::affine::AffineIfOp::setConditional(uint64_t **a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *a1;
  v8 = mlir::IntegerSetAttr::get(a2);
  Context = mlir::Attribute::getContext((v7 + 3));
  v14 = 261;
  v13[0] = "condition";
  v13[1] = 9;
  v11 = mlir::StringAttr::get(Context, v13, v10);
  mlir::Operation::setAttr(v7, v11, v8);
  return mlir::Operation::setOperands(*a1, a3, a4);
}

void mlir::affine::AffineIfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v25 = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v13;
    do
    {
      *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(a3, v15);
      ++v15;
    }

    while (a4 != v15);
    LODWORD(v13) = *(a2 + 72);
    v7 = a7;
    v8 = a6;
  }

  *(a2 + 72) = v13 + a4;
  mlir::OperationState::addOperands(a2, v8, v7);
  v17 = mlir::IntegerSetAttr::get(a5);
  Context = mlir::Attribute::getContext(a2);
  v24 = 261;
  v23[0] = "condition";
  v23[1] = 9;
  v20 = mlir::StringAttr::get(Context, v23, v19);
  mlir::NamedAttribute::NamedAttribute(v22, v20, v17);
  mlir::NamedAttrList::push_back(a2 + 112, v22[0], v22[1]);
  mlir::OperationState::addRegion(a2);
}

void mlir::affine::AffineIfOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v10, 0, 0);
  mlir::affine::AffineIfOp::build(a1, a2, v10[0], v10[1], a3, a4, a5);
}

uint64_t mlir::affine::AffineIfOp::fold(uint64_t *a1)
{
  v60[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*(*a1 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*a1, "condition", 9), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "condition", 9uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v5 = InherentAttr;
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

  v58 = v5;
  Value = mlir::IntegerSetAttr::getValue(&v58);
  v6 = *a1;
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(v6 + 68);
    v58 = v60;
    v59 = 0x400000000;
    if (v8 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v9 = v60;
      v10 = v8;
      v11 = (v7 + 24);
      do
      {
        v12 = *v11;
        v11 += 4;
        *v9++ = v12;
        --v10;
      }

      while (v10);
      v13 = v59;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    v13 = 0;
    v58 = v60;
    HIDWORD(v59) = 4;
  }

  LODWORD(v59) = v13 + v8;
  NumDims = mlir::IntegerSet::getNumDims(&Value);
  NumSymbols = mlir::IntegerSet::getNumSymbols(&Value);
  Constraints = mlir::IntegerSet::getConstraints(&Value);
  v18 = v17;
  Context = mlir::IntegerSet::getContext(&Value);
  v56 = mlir::AffineMap::get(NumDims, NumSymbols, Constraints, v18, Context);
  if (v59)
  {
    v20 = v58;
    v21 = 8 * v59;
    while (1)
    {
      v54[0] = *v20;
      DefiningOp = mlir::Value::getDefiningOp(v54);
      if (DefiningOp)
      {
        if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
        {
          break;
        }
      }

      ++v20;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_22;
      }
    }

    composeAffineMapAndOperands(&v56, &v58);
    v23 = mlir::AffineMap::getNumDims(&v56);
    v24 = mlir::AffineMap::getNumSymbols(&v56);
    Results = mlir::AffineMap::getResults(&v56);
    v27 = v26;
    EqFlags = mlir::IntegerSet::getEqFlags(&Value);
    Value = mlir::IntegerSet::get(v23, v24, Results, v27, EqFlags, v29);
  }

LABEL_22:
  mlir::affine::canonicalizeSetAndOperands(&Value, &v58);
  v30 = *a1;
  if (!*(*a1 + 47) || (v31 = mlir::Operation::getInherentAttr(*a1, "condition", 9), (v32 & 1) == 0))
  {
    v31 = mlir::DictionaryAttr::get(v30 + 56, "condition", 9uLL);
  }

  if (v31)
  {
    if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    v54[0] = v33;
    v34 = mlir::IntegerSetAttr::getValue(v54);
    v35 = Value;
    if (Value != v34)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v54[0] = 0;
    v38 = mlir::IntegerSetAttr::getValue(v54);
    v35 = Value;
    if (Value != v38)
    {
LABEL_30:
      v36 = v58;
      v37 = v59;
      goto LABEL_47;
    }
  }

  v39 = *a1;
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v40 = *(v39 + 72);
    v41 = *(v39 + 68);
    v36 = v58;
    v37 = v59;
    if (v41 != v59)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v36 = v58;
    v37 = v59;
    if (v59)
    {
      goto LABEL_47;
    }
  }

  if (v37)
  {
    v42 = 0;
    v43 = (v40 + 24);
    while (v41 != v42 && v36[v42] == *v43)
    {
      ++v42;
      v43 += 4;
      if (v37 == v42)
      {
        if (((v41 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1 == v41)
        {
          goto LABEL_43;
        }

        break;
      }
    }
  }

  else if (!v41)
  {
LABEL_43:
    v44 = 0;
    if (v36 == v60)
    {
      return v44;
    }

    goto LABEL_48;
  }

LABEL_47:
  mlir::ValueRange::ValueRange(&v56, v36, v37);
  v45 = v56;
  v46 = v57;
  v47 = *a1;
  v48 = mlir::IntegerSetAttr::get(v35);
  v49 = mlir::Attribute::getContext((v47 + 24));
  v55 = 261;
  v54[0] = "condition";
  v54[1] = 9;
  v51 = mlir::StringAttr::get(v49, v54, v50);
  mlir::Operation::setAttr(v47, v51, v48);
  mlir::Operation::setOperands(*a1, v45, v46);
  v44 = 1;
  v36 = v58;
  if (v58 != v60)
  {
LABEL_48:
    free(v36);
  }

  return v44;
}

uint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = a4;
  v16[1] = a5;
  mlir::OperationState::addOperands(a2, a4, a5);
  if (a3)
  {
    v7 = mlir::AffineMapAttr::get(a3);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v13[0] = "map";
    v13[1] = 3;
    v10 = mlir::StringAttr::get(Context, v13, v9);
    mlir::NamedAttribute::NamedAttribute(v15, v10, v7);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
  }

  v13[0] = *(mlir::ValueRange::dereference_iterator(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::MemRefType::getElementType(v13);
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = result;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::affine::AffineLoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  v16 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::AffineMapAttr::get(a4);
  Context = mlir::Attribute::getContext(a2);
  v19 = 261;
  v18[0] = "map";
  v18[1] = 3;
  v13 = mlir::StringAttr::get(Context, v18, v12);
  mlir::NamedAttribute::NamedAttribute(v20, v13, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
  result = mlir::MemRefType::getElementType(&v16);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = result;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::affine::AffineLoadOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v14);
  if (v10)
  {
    MultiDimIdentityMap = mlir::Builder::getMultiDimIdentityMap(a1, v10, v11);
  }

  else
  {
    MultiDimIdentityMap = mlir::Builder::getEmptyAffineMap(a1, 0);
  }

  return mlir::affine::AffineLoadOp::build(MultiDimIdentityMap, a2, a3, MultiDimIdentityMap, a4, a5);
}

uint64_t mlir::affine::AffineLoadOp::parse(mlir::affine::AffineLoadOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  memset(v15, 0, 24);
  v14 = 0;
  v16 = 0;
  v17 = v19;
  v18 = 0x100000000;
  if ((*(*this + 704))(this, v15, 1) & 1) != 0 && ((*(*this + 736))(this, &v17, &v14, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*this + 488))(this, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(this, &v16) && ((*(*this + 728))(this, v15, v16, a2 + 16))
  {
    if (!v18)
    {
LABEL_10:
      ElementType = mlir::MemRefType::getElementType(&v16);
      v11 = mlir::AsmParser::addTypeToList(this, ElementType, a2 + 64);
      v12 = v17;
      if (v17 == v19)
      {
        return v11 & 1;
      }

      goto LABEL_13;
    }

    v8 = v17;
    v9 = 32 * v18;
    while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_10;
      }
    }
  }

  v11 = 0;
  v12 = v17;
  if (v17 != v19)
  {
LABEL_13:
    free(v12);
  }

  return v11 & 1;
}

BOOL mlir::AsmParser::parseColonType<mlir::MemRefType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 576))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::AsmParser::addTypeToList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a3 + 8 * v3) = a2;
  ++*(a3 + 8);
  return 1;
}

uint64_t mlir::affine::AffineLoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      InherentAttr = mlir::DictionaryAttr::get(v8 + 56, "map", 3uLL);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v8, "map", 3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = *(v11 + 9);
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, AttrDictionary, v23);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v23 = 3;
  (*(*a2 + 192))(a2, Value, v18, &AttrDictionary, 1);
  v19 = (*(*a2 + 16))(a2);
  v20 = v19[4];
  if ((v19[3] - v20) > 2)
  {
    *(v20 + 2) = 32;
    *v20 = 14880;
    v19[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v19, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineLoadOp::verify(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v16 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == mlir::MemRefType::getElementType(&v16))
  {
    mlir::affine::AffineLoadOp::verify();
    return LOBYTE(v17[0]);
  }

  else
  {
    v14 = "result type must match element type of memref";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v17);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
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
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v4;
}

uint64_t verifyMemoryOpIndexing(mlir::affine *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v59 = *MEMORY[0x277D85DE8];
  v48 = a5;
  v49 = a2;
  Value = mlir::AffineMapAttr::getValue(&v49);
  NumResults = mlir::AffineMap::getNumResults(&Value);
  mlir::MemRefType::getShape(&v48);
  if (v11 == NumResults)
  {
    if (mlir::AffineMap::getNumInputs(&Value) == a6)
    {
      AffineScope = mlir::affine::getAffineScope(a1, v12);
      if (!a4)
      {
        return 1;
      }

      v14 = AffineScope;
      for (i = (a3 + 24); ; i += 4)
      {
        v25 = *i;
        v50[0] = (*i)[1] & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::Type::isIndex(v50))
        {
          break;
        }

        if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v25, v14) & 1) == 0)
        {
          v45[0] = "index must be a valid dimension or symbol identifier";
          v46 = 259;
          mlir::Operation::emitOpError(v50, a1, v45);
          v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
          if (v50[0])
          {
            mlir::InFlightDiagnostic::report(v50);
          }

          if (v58 != 1)
          {
            return v16;
          }

          if (v57 != &v58)
          {
            free(v57);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v56;
            v28 = __p;
            if (v56 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v56 = v26;
            operator delete(v28);
          }

          v20 = v53;
          if (!v53)
          {
            goto LABEL_76;
          }

          v29 = v54;
          v22 = v53;
          if (v54 == v53)
          {
            goto LABEL_75;
          }

          do
          {
            v43 = *--v29;
            v42 = v43;
            *v29 = 0;
            if (v43)
            {
              MEMORY[0x259C63150](v42, 0x1000C8077774924);
            }
          }

          while (v29 != v20);
          goto LABEL_74;
        }

        v16 = 1;
        if (!--a4)
        {
          return v16;
        }
      }

      v45[0] = "index to load must have 'index' type";
      v46 = 259;
      mlir::Operation::emitOpError(v50, a1, v45);
      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
      if (v50[0])
      {
        mlir::InFlightDiagnostic::report(v50);
      }

      if (v58 != 1)
      {
        return v16;
      }

      if (v57 != &v58)
      {
        free(v57);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v56;
        v38 = __p;
        if (v56 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v56 = v36;
        operator delete(v38);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v39 = v54;
      v22 = v53;
      if (v54 == v53)
      {
        goto LABEL_75;
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

      while (v39 != v20);
      goto LABEL_74;
    }

    v45[0] = "expects as many subscripts as affine map inputs";
    v46 = 259;
    mlir::Operation::emitOpError(v50, a1, v45);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v56;
        v32 = __p;
        if (v56 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v56 = v30;
        operator delete(v32);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v33 = v54;
      v22 = v53;
      if (v54 == v53)
      {
LABEL_75:
        v54 = v20;
        operator delete(v22);
LABEL_76:
        if (v51 != &v52)
        {
          free(v51);
        }

        return v16;
      }

      do
      {
        v35 = *--v33;
        v34 = v35;
        *v33 = 0;
        if (v35)
        {
          MEMORY[0x259C63150](v34, 0x1000C8077774924);
        }
      }

      while (v33 != v20);
LABEL_74:
      v22 = v53;
      goto LABEL_75;
    }
  }

  else
  {
    v45[0] = "affine map num results must equal memref rank";
    v46 = 259;
    mlir::Operation::emitOpError(v50, a1, v45);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v56;
        v19 = __p;
        if (v56 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v56 = v17;
        operator delete(v19);
      }

      v20 = v53;
      if (!v53)
      {
        goto LABEL_76;
      }

      v21 = v54;
      v22 = v53;
      if (v54 == v53)
      {
        goto LABEL_75;
      }

      do
      {
        v24 = *--v21;
        v23 = v24;
        *v21 = 0;
        if (v24)
        {
          MEMORY[0x259C63150](v23, 0x1000C8077774924);
        }
      }

      while (v21 != v20);
      goto LABEL_74;
    }
  }

  return v16;
}

uint64_t mlir::affine::AffineLoadOp::fold(uint64_t a1)
{
  v22[4] = *MEMORY[0x277D85DE8];
  mlir::memref::foldMemRefCast();
  if (v2)
  {
    if (*(*a1 + 36))
    {
      v3 = *a1 - 16;
    }

    else
    {
      v3 = 0;
    }

    return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) | 4;
  }

  else
  {
    Value = *(*(*a1 + 72) + 24);
    result = mlir::Value::getDefiningOp(&Value);
    if (!result)
    {
      return result;
    }

    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::GetGlobalOp,void>::id)
    {
      return 0;
    }

    v5 = result;
    result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(result);
    if (!result)
    {
      return result;
    }

    result = mlir::SymbolTable::lookupSymbolIn(result, *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id;
    v8 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id ? result : 0;
    v17 = v8;
    if (!v7)
    {
      return 0;
    }

    result = mlir::memref::GlobalOp::getConstantInitValue(&v17);
    if (!result)
    {
      return result;
    }

    v9 = result;
    if (!mlir::DenseElementsAttr::classof(result))
    {
      v9 = 0;
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }

    if (mlir::DenseElementsAttr::classof(v9))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    Value = v10;
    if (v10)
    {
      isSplat = mlir::DenseElementsAttr::isSplat(&Value);
      v12 = isSplat ? v9 : 0;
      v21 = v12;
      if (isSplat)
      {
        return mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(&v21) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    Value = mlir::AffineMapAttr::getValue(&Value);
    if (!mlir::AffineMap::isConstant(&Value))
    {
      return 0;
    }

    Value = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    v14 = mlir::AffineMapAttr::getValue(&Value);
    mlir::AffineMap::getConstantResults(&v14, &Value);
    v15[0] = Value;
    v15[1] = 256;
    v15[2] = Value + 8 * v19;
    v15[3] = 256;
    llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(&v21, v15);
    if (Value != &v20)
    {
      free(Value);
    }

    mlir::DenseElementsAttr::getValues<mlir::Attribute>(&v16, &Value);
    result = mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](&Value, v21) & 0xFFFFFFFFFFFFFFFBLL;
    if (v21 != v22)
    {
      v13 = result;
      free(v21);
      return v13;
    }
  }

  return result;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(uint64_t ParentOp)
{
  while (1)
  {
    v2 = *(ParentOp + 16);
    if (!v2)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v2);
    if (ParentOp)
    {
      {
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

uint64_t mlir::DenseElementsAttr::getSplatValue<mlir::Attribute>(mlir::DenseElementsAttr *a1)
{
  mlir::DenseElementsAttr::getType(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v6, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v5, v2, NumElements);
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v6);
}

void *llvm::to_vector<4u,llvm::iterator_range<llvm::mapped_iterator<long long *,mlir::affine::AffineLoadOp::fold(mlir::affine::AffineLoadOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0,unsigned long long>>>(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *result = result + 2;
  result[1] = 0x400000000;
  if (((v3 - v2) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3 != v2)
  {
    v4 = *result;
    v5 = v3 - v2 - 8;
    if (v5 < 0x38)
    {
      v6 = v2;
      goto LABEL_11;
    }

    if ((*result - v2) < 0x20)
    {
      v6 = v2;
      do
      {
LABEL_11:
        v13 = *v6++;
        *v4++ = v13;
      }

      while (v6 != v3);
      goto LABEL_12;
    }

    v7 = (v5 >> 3) + 1;
    v8 = 8 * (v7 & 0x3FFFFFFFFFFFFFFCLL);
    v4 = (v4 + v8);
    v6 = (v2 + v8);
    v9 = (v2 + 16);
    v10 = (*result + 16);
    v11 = v7 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v7 != (v7 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  *(result + 2) = (v3 - v2) >> 3;
  return result;
}

double mlir::DenseElementsAttr::getValues<mlir::Attribute>@<D0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  Type = mlir::DenseElementsAttr::getType(a1);
  v6 = v5;
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v12, *a1, 0);
  v7 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v11, v7, NumElements);
  v10 = v11;
  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v10;
  *(a2 + 32) = Type;
  *(a2 + 40) = v6;
  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::DenseElementsAttr::AttributeElementIterator>::operator[](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8) + mlir::ElementsAttr::getFlattenedIndex(*(a1 + 32), a2);
  v5[0] = *a1;
  v5[1] = v3;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v5);
}

uint64_t mlir::affine::AffineStoreOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::AffineMapAttr::get(a5);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  return result;
}

uint64_t mlir::affine::AffineStoreOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v16 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v16);
  if (v12)
  {
    MultiDimIdentityMap = mlir::Builder::getMultiDimIdentityMap(a1, v12, v13);
  }

  else
  {
    MultiDimIdentityMap = mlir::Builder::getEmptyAffineMap(a1, 0);
  }

  return mlir::affine::AffineStoreOp::build(MultiDimIdentityMap, a2, a3, a4, MultiDimIdentityMap, a5, a6);
}

uint64_t mlir::affine::AffineStoreOp::parse(mlir::affine::AffineStoreOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  memset(v17, 0, 24);
  memset(v16, 0, 24);
  v15 = 0;
  v18 = 0;
  v19 = v21;
  v20 = 0x100000000;
  if ((*(*this + 704))(this, v17, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 704))(this, v16, 1) & 1) != 0 && ((*(*this + 736))(this, &v19, &v15, "map", 3, a2 + 112, 2) & 1) != 0 && ((*(*this + 488))(this, a2 + 112) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::MemRefType>(this, &v18) && (ElementType = mlir::MemRefType::getElementType(&v18), ((*(*this + 728))(this, v17, ElementType, a2 + 16)) && ((*(*this + 728))(this, v16, v18, a2 + 16))
  {
    if (!v20)
    {
      v11 = 1;
      v13 = v19;
      if (v19 == v21)
      {
        return v11 & 1;
      }

      goto LABEL_16;
    }

    v9 = v19;
    v10 = 32 * v20 - 32;
    do
    {
      v11 = (*(*this + 728))(this, v9, IndexType, a2 + 16);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v9 += 32;
      v12 = v10;
      v10 -= 32;
    }

    while (v12);
  }

  else
  {
    v11 = 0;
  }

  v13 = v19;
  if (v19 != v21)
  {
LABEL_16:
    free(v13);
  }

  return v11 & 1;
}

uint64_t mlir::affine::AffineStoreOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 8236;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 91);
    v10 = *this;
    if (!*(*this + 47))
    {
LABEL_12:
      InherentAttr = mlir::DictionaryAttr::get(v10 + 56, "map", 3uLL);
      goto LABEL_13;
    }
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 91;
    v10 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_12;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v10, "map", 3);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v13 = *this;
    v14 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v15 = *(v13 + 9);
      v16 = *(v13 + 17) - 2;
    }

    else
    {
      v15 = 0;
      v16 = -2;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v15 + 64, v16);
    (*(*a2 + 240))(a2, v14, AttrDictionary, v25);
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 93);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 93;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v25 = 3;
  (*(*a2 + 192))(a2, Value, v20, &AttrDictionary, 1);
  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if ((v21[3] - v22) > 2)
  {
    *(v22 + 2) = 32;
    *v22 = 14880;
    v21[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v21, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::affine::AffineStoreOp::verify(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 9);
  v16 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v3 == mlir::MemRefType::getElementType(&v16))
  {
    mlir::affine::AffineStoreOp::verify();
    return LOBYTE(v17[0]);
  }

  else
  {
    v14 = "value to store must have the same type as memref element type";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v17);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v23;
        v7 = __p;
        if (v23 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v23 = v5;
        operator delete(v7);
      }

      v8 = v20;
      if (v20)
      {
        v9 = v21;
        v10 = v20;
        if (v21 != v20)
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
          v10 = v20;
        }

        v21 = v8;
        operator delete(v10);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v4;
}

unint64_t mlir::affine::AffineMinOp::fold(uint64_t *a1, uint64_t a2)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 48);
  v26 = v28;
  v27 = 0x200000000;
  v24[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
  v24[0] = mlir::AffineMapAttr::getValue(v24);
  v23 = mlir::AffineMap::partialConstantFold(v24, v4, v3, &v26, 0);
  if (mlir::AffineMap::getNumSymbols(&v23) == 1 && mlir::AffineMap::isSymbolIdentity(&v23))
  {
    v5 = *(*(v2 + 72) + 24) | 4;
    v6 = v26;
    if (v26 == v28)
    {
      return v5;
    }

    goto LABEL_17;
  }

  if (!v27)
  {
    v24[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
    Value = mlir::AffineMapAttr::getValue(v24);
    if (v23 != Value)
    {
      v9 = mlir::AffineMapAttr::get(v23);
      Context = mlir::Attribute::getContext((v2 + 24));
      v25 = 261;
      v24[0] = "map";
      v24[1] = 3;
      v12 = mlir::StringAttr::get(Context, v24, v11);
      mlir::Operation::setAttr(v2, v12, v9);
      v5 = (v2 - 16) | 4;
      v6 = v26;
      if (v26 == v28)
      {
        return v5;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v27 == 1)
  {
    v7 = v26;
  }

  else
  {
    v14 = (v26 + 8);
    v13 = *v26;
    v15 = 8 * v27 - 8;
    v7 = v26;
    v16 = (v26 + 8);
    do
    {
      v18 = *v16++;
      v17 = v18;
      if (v18 < v13)
      {
        v13 = v17;
        v7 = v14;
      }

      v14 = v16;
      v15 -= 8;
    }

    while (v15);
  }

  if (v7 == (v26 + 8 * v27))
  {
LABEL_19:
    v5 = 0;
    v6 = v26;
    if (v26 == v28)
    {
      return v5;
    }

    goto LABEL_17;
  }

  v19 = mlir::Attribute::getContext((v2 + 24));
  v21 = mlir::IndexType::get(v19, v20);
  v5 = mlir::IntegerAttr::get(v21, *v7) & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v26;
  if (v26 != v28)
  {
LABEL_17:
    free(v6);
  }

  return v5;
}

uint64_t mlir::affine::AffineMinOp::parse(mlir::affine::AffineMinOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v21[32] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v19 = v21;
  v20 = 0x800000000;
  v15 = 0;
  v16 = v18;
  v17 = 0x800000000;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(this, &v15, 0, "map", 3uLL, a2 + 112) || ((*(*this + 720))(this, &v19, 1, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 720))(this, &v16, 6, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (v20)
  {
    v8 = v19;
    v9 = 32 * v20;
    while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_15;
  }

LABEL_9:
  if (v17)
  {
    v10 = v16;
    v11 = 32 * v17;
    while (((*(*this + 728))(this, v10, IndexType, a2 + 16) & 1) != 0)
    {
      v10 += 32;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  v12 = *(a2 + 18);
  if (v12 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v12) = IndexType;
  ++*(a2 + 18);
  v13 = 1;
LABEL_16:
  if (v16 != v18)
  {
    free(v16);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

unint64_t mlir::affine::AffineMaxOp::fold(uint64_t *a1, uint64_t a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 48);
  v27 = v29;
  v28 = 0x200000000;
  v25[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
  v25[0] = mlir::AffineMapAttr::getValue(v25);
  v24 = mlir::AffineMap::partialConstantFold(v25, v4, v3, &v27, 0);
  if (mlir::AffineMap::getNumSymbols(&v24) == 1 && mlir::AffineMap::isSymbolIdentity(&v24))
  {
    v5 = *(*(v2 + 72) + 24) | 4;
    v6 = v27;
    if (v27 == v29)
    {
      return v5;
    }

    goto LABEL_19;
  }

  if (!v28)
  {
    v25[0] = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
    Value = mlir::AffineMapAttr::getValue(v25);
    if (v24 != Value)
    {
      v9 = mlir::AffineMapAttr::get(v24);
      Context = mlir::Attribute::getContext((v2 + 24));
      v26 = 261;
      v25[0] = "map";
      v25[1] = 3;
      v12 = mlir::StringAttr::get(Context, v25, v11);
      mlir::Operation::setAttr(v2, v12, v9);
      v5 = (v2 - 16) | 4;
      v6 = v27;
      if (v27 == v29)
      {
        return v5;
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v28 == 1)
  {
    v7 = v27;
  }

  else
  {
    v14 = (v27 + 8);
    v13 = *v27;
    v15 = 8 * v28 - 8;
    v7 = v27;
    v16 = (v27 + 8);
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = v13 < v18;
      if (v13 <= v18)
      {
        v13 = v17;
      }

      if (v19)
      {
        v7 = v14;
      }

      v14 = v16;
      v15 -= 8;
    }

    while (v15);
  }

  if (v7 == (v27 + 8 * v28))
  {
LABEL_21:
    v5 = 0;
    v6 = v27;
    if (v27 == v29)
    {
      return v5;
    }

    goto LABEL_19;
  }

  v20 = mlir::Attribute::getContext((v2 + 24));
  v22 = mlir::IndexType::get(v20, v21);
  v5 = mlir::IntegerAttr::get(v22, *v7) & 0xFFFFFFFFFFFFFFFBLL;
  v6 = v27;
  if (v27 != v29)
  {
LABEL_19:
    free(v6);
  }

  return v5;
}

uint64_t mlir::affine::AffineMaxOp::parse(mlir::affine::AffineMaxOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v21[32] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v19 = v21;
  v20 = 0x800000000;
  v15 = 0;
  v16 = v18;
  v17 = 0x800000000;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(this, &v15, 0, "map", 3uLL, a2 + 112) || ((*(*this + 720))(this, &v19, 1, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 720))(this, &v16, 6, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (v20)
  {
    v8 = v19;
    v9 = 32 * v20;
    while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_15;
  }

LABEL_9:
  if (v17)
  {
    v10 = v16;
    v11 = 32 * v17;
    while (((*(*this + 728))(this, v10, IndexType, a2 + 16) & 1) != 0)
    {
      v10 += 32;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  v12 = *(a2 + 18);
  if (v12 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v12) = IndexType;
  ++*(a2 + 18);
  v13 = 1;
LABEL_16:
  if (v16 != v18)
  {
    free(v16);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

BOOL mlir::affine::AffinePrefetchOp::parse(mlir::affine::AffinePrefetchOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v55 = 0;
  memset(v54, 0, 24);
  v53 = 0;
  v8 = (*(*this + 32))(this);
  IntegerType = mlir::Builder::getIntegerType(v8, 32);
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v67 = v69;
  v68 = 0x100000000;
  if (((*(*this + 704))(this, v54, 1) & 1) == 0 || ((*(*this + 736))(this, &v67, &v48, "map", 3, a2 + 112, 2) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || !mlir::AsmParser::parseKeyword(this, &v51) || ((*(*this + 120))(this) & 1) == 0 || (v59 = 257, ((*(*this + 400))(this, "locality", 8, &v56) & 1) == 0) || ((*(*this + 152))(this) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v53, IntegerType, "localityHint", 0xCuLL, a2 + 112) || ((*(*this + 168))(this) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || !mlir::AsmParser::parseKeyword(this, &v49) || ((*(*this + 488))(this, a2 + 112) & 1) == 0 || !mlir::AsmParser::parseColonType<mlir::MemRefType>(this, &v55) || ((*(*this + 728))(this, v54, v55, a2 + 16) & 1) == 0)
  {
LABEL_35:
    v13 = 0;
    goto LABEL_36;
  }

  if (v68)
  {
    v10 = v67;
    v11 = 32 * v68;
    while (((*(*this + 728))(this, v10, IndexType, a2 + 16) & 1) != 0)
    {
      v10 += 32;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_35;
  }

LABEL_19:
  if (v52 == 5)
  {
    if (*v51 != 1953067639 || *(v51 + 4) != 101)
    {
LABEL_22:
      v12 = (*(*this + 16))(this);
      v45 = "rw specifier has to be 'read' or 'write'";
      v47 = 259;
      (*(*this + 24))(&v56, this, v12, &v45);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }

      if (v66 == 1)
      {
        if (v65 != &v66)
        {
          free(v65);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v64;
          v16 = __p;
          if (v64 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v64 = v14;
          operator delete(v16);
        }

        v17 = v61;
        if (!v61)
        {
          goto LABEL_76;
        }

        v18 = v62;
        v19 = v61;
        if (v62 == v61)
        {
LABEL_75:
          v62 = v17;
          operator delete(v19);
LABEL_76:
          if (v58 != &v60)
          {
            free(v58);
          }

          goto LABEL_36;
        }

        do
        {
          v22 = *--v18;
          v21 = v22;
          *v18 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
LABEL_74:
        v19 = v61;
        goto LABEL_75;
      }

      goto LABEL_36;
    }
  }

  else if (v52 != 4 || *v51 != 1684104562)
  {
    goto LABEL_22;
  }

  v24 = (*(*this + 32))(this);
  v26 = (v52 == 5 && *v51 == 1953067639 && *(v51 + 4) == 101);
  BoolAttr = mlir::Builder::getBoolAttr(v24, v26);
  Context = mlir::Attribute::getContext(a2);
  v59 = 261;
  v56 = "isWrite";
  v57 = 7;
  v30 = mlir::StringAttr::get(Context, &v56, v29);
  mlir::NamedAttribute::NamedAttribute(&v45, v30, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v45, v46);
  if (v50 != 5)
  {
    if (v50 != 4 || *v49 != 1635017060)
    {
      goto LABEL_58;
    }

LABEL_83:
    v39 = (*(*this + 32))(this);
    if (v50 == 4)
    {
      v40 = (*v49 == 1635017060);
    }

    else
    {
      v40 = 0;
    }

    v41 = mlir::Builder::getBoolAttr(v39, v40);
    v42 = mlir::Attribute::getContext(a2);
    v59 = 261;
    v56 = "isDataCache";
    v57 = 11;
    v44 = mlir::StringAttr::get(v42, &v56, v43);
    mlir::NamedAttribute::NamedAttribute(&v45, v44, v41);
    mlir::NamedAttrList::push_back(a2 + 112, v45, v46);
    v13 = 1;
    goto LABEL_36;
  }

  if (*v49 == 1953721961 && *(v49 + 4) == 114)
  {
    goto LABEL_83;
  }

LABEL_58:
  v31 = (*(*this + 16))(this);
  v45 = "cache type has to be 'data' or 'instr'";
  v47 = 259;
  (*(*this + 24))(&v56, this, v31, &v45);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v66 == 1)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v64;
      v34 = __p;
      if (v64 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v64 = v32;
      operator delete(v34);
    }

    v17 = v61;
    if (!v61)
    {
      goto LABEL_76;
    }

    v35 = v62;
    v19 = v61;
    if (v62 == v61)
    {
      goto LABEL_75;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        MEMORY[0x259C63150](v36, 0x1000C8077774924);
      }
    }

    while (v35 != v17);
    goto LABEL_74;
  }

LABEL_36:
  if (v67 != v69)
  {
    free(v67);
  }

  return v13;
}

uint64_t mlir::affine::AffinePrefetchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
    v8 = *this;
    if (!*(*this + 47))
    {
LABEL_9:
      InherentAttr = mlir::DictionaryAttr::get(v8 + 56, "map", 3uLL);
      goto LABEL_10;
    }
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
    v8 = *this;
    if (!*(*this + 47))
    {
      goto LABEL_9;
    }
  }

  InherentAttr = mlir::Operation::getInherentAttr(v8, "map", 3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (InherentAttr && *(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v11 = *this;
    v12 = InherentAttr;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v13 = *(v11 + 9);
      v14 = *(v11 + 17) - 1;
    }

    else
    {
      v13 = 0;
      v14 = -1;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v13 + 32, v14);
    (*(*a2 + 240))(a2, v12, AttrDictionary, v44);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 93);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 93;
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = v17[4];
  if (v17[3] - v18 > 1uLL)
  {
    *v18 = 8236;
    v17[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v17, ", ", 2uLL);
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Value = mlir::BoolAttr::getValue(&AttrDictionary);
  v20 = (*(*a2 + 16))(a2);
  if (Value)
  {
    v21 = "write";
  }

  else
  {
    v21 = "read";
  }

  if (Value)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  if (v22 <= *(v20 + 24) - *(v20 + 32))
  {
    v23 = v20;
    memcpy(*(v20 + 32), v21, v22);
    *(v23 + 32) += v22;
  }

  else
  {
    llvm::raw_ostream::write(v20, v21, v22);
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] - v25 > 1uLL)
  {
    *v25 = 8236;
    v24[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, ", ", 2uLL);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if ((v26[3] - v27) > 8)
  {
    *(v27 + 8) = 60;
    *v27 = *"locality<";
    v26[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v26, "locality<", 9uLL);
  }

  v42 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  mlir::IntegerAttr::getValue(&v42, &AttrDictionary);
  if (v44 > 0x40)
  {
    v28 = *AttrDictionary;
    MEMORY[0x259C63150]();
  }

  else
  {
    v28 = AttrDictionary;
  }

  v29 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v29, v28);
  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if ((v30[3] - v31) > 2)
  {
    *(v31 + 2) = 32;
    *v31 = 11326;
    v30[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v30, ">, ", 3uLL);
  }

  AttrDictionary = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v32 = mlir::BoolAttr::getValue(&AttrDictionary);
  v33 = (*(*a2 + 16))(a2);
  if (v32)
  {
    v34 = "data";
  }

  else
  {
    v34 = "instr";
  }

  if (v32)
  {
    v35 = 4;
  }

  else
  {
    v35 = 5;
  }

  if (v35 <= *(v33 + 24) - *(v33 + 32))
  {
    v36 = v33;
    memcpy(*(v33 + 32), v34, v35);
    *(v36 + 32) += v35;
  }

  else
  {
    llvm::raw_ostream::write(v33, v34, v35);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v37 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = "map";
  v44 = 3;
  v45 = "localityHint";
  v46 = 12;
  v47 = "isDataCache";
  v48 = 11;
  v49 = "isWrite";
  v50 = 7;
  (*(*a2 + 192))(a2, v37, v38, &AttrDictionary, 4);
  v39 = (*(*a2 + 16))(a2);
  v40 = v39[4];
  if ((v39[3] - v40) > 2)
  {
    *(v40 + 2) = 32;
    *v40 = 14880;
    v39[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v39, " : ", 3uLL);
  }

  return (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t *mlir::affine::AffinePrefetchOp::getLocalityHint(mlir::affine::AffinePrefetchOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::affine::AffinePrefetchOp::verify(mlir::affine::AffinePrefetchOp *this)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "map", 3), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "map", 3uLL);
  }

  if (!InherentAttr)
  {
    v47 = 0;
    goto LABEL_27;
  }

  v5 = *(*InherentAttr + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v7 = InherentAttr;
  }

  else
  {
    v7 = 0;
  }

  v47 = v7;
  if (v6)
  {
    Value = mlir::AffineMapAttr::getValue(&v47);
    NumResults = mlir::AffineMap::getNumResults(&Value);
    v48[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(v48);
    if (v9 == NumResults)
    {
      v10 = mlir::AffineMap::getNumInputs(&Value) + 1;
      v11 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        if (v10 == *(v11 + 17))
        {
          goto LABEL_29;
        }
      }

      else if (!v10)
      {
        goto LABEL_29;
      }

      v44[0] = "too few operands";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, v48);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      v13 = result;
      if (v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
        result = v13;
      }

      if (v56 != 1)
      {
        return result;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v54;
        v16 = __p;
        if (v54 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v54 = v14;
        operator delete(v16);
      }

      v17 = v51;
      result = v13;
      if (!v51)
      {
LABEL_60:
        v35 = v49;
        if (v49 == v50)
        {
          return result;
        }

LABEL_61:
        free(v35);
        return v13;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
LABEL_59:
        v52 = v17;
        operator delete(v19);
        result = v13;
        goto LABEL_60;
      }

      do
      {
        v28 = *--v18;
        v27 = v28;
        *v18 = 0;
        if (v28)
        {
          MEMORY[0x259C63150](v27, 0x1000C8077774924);
        }
      }

      while (v18 != v17);
    }

    else
    {
      v44[0] = "affine.prefetch affine map num results must equal memref rank";
      v45 = 259;
      mlir::OpState::emitOpError(this, v44, v48);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
      v13 = result;
      if (v48[0])
      {
        mlir::InFlightDiagnostic::report(v48);
        result = v13;
      }

      if (v56 != 1)
      {
        return result;
      }

      if (v55 != &v56)
      {
        free(v55);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v54;
        v31 = __p;
        if (v54 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v54 = v29;
        operator delete(v31);
      }

      v17 = v51;
      result = v13;
      if (!v51)
      {
        goto LABEL_60;
      }

      v32 = v52;
      v19 = v51;
      if (v52 == v51)
      {
        goto LABEL_59;
      }

      do
      {
        v34 = *--v32;
        v33 = v34;
        *v32 = 0;
        if (v34)
        {
          MEMORY[0x259C63150](v33, 0x1000C8077774924);
        }
      }

      while (v32 != v17);
    }

    v19 = v51;
    goto LABEL_59;
  }

LABEL_27:
  v11 = *this;
  if ((*(*this + 46) & 0x80) == 0 || *(v11 + 17) != 1)
  {
    mlir::affine::AffinePrefetchOp::verify(this, v48);
    return LOBYTE(v48[0]);
  }

LABEL_29:
  AffineScope = mlir::affine::getAffineScope(v11, v4);
  v21 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v22 = *(v21 + 68);
    v23 = v22 - 1;
    if (v22 == 1)
    {
      return 1;
    }

    v24 = *(v21 + 72) + 32;
  }

  else
  {
    v23 = -1;
    v24 = 32;
  }

  for (i = (v24 + 24); ; i += 4)
  {
    v26 = *i;
    if ((mlir::affine::isValidDim() & 1) == 0 && (mlir::affine::isValidSymbol(v26, AffineScope) & 1) == 0)
    {
      break;
    }

    if (!--v23)
    {
      return 1;
    }
  }

  v44[0] = "index must be a valid dimension or symbol identifier";
  v45 = 259;
  mlir::OpState::emitOpError(this, v44, v48);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
  v13 = result;
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
    result = v13;
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
      result = v13;
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
      result = v13;
    }

    v39 = v51;
    if (v51)
    {
      v40 = v52;
      v41 = v51;
      if (v52 != v51)
      {
        do
        {
          v43 = *--v40;
          v42 = v43;
          *v40 = 0;
          if (v43)
          {
            MEMORY[0x259C63150](v42, 0x1000C8077774924);
          }
        }

        while (v40 != v39);
        v41 = v51;
      }

      v52 = v39;
      operator delete(v41);
      result = v13;
    }

    v35 = v49;
    if (v49 != v50)
    {
      goto LABEL_61;
    }
  }

  return result;
}

void mlir::affine::AffineParallelOp::build(mlir::MLIRContext **a1, uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t *a5, uint64_t a6, mlir **a7, unint64_t a8)
{
  v45[6] = *MEMORY[0x277D85DE8];
  ConstantAffineMap = mlir::Builder::getConstantAffineMap(a1, 0, a3);
  v42 = v45;
  v44 = 6;
  if (a8 >= 7)
  {
    v43 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!a8)
  {
LABEL_20:
    v43 = a8;
    v39 = &v41;
    v40 = 0x400000000;
    v23 = (8 * a8) >> 3;
    v31 = a2;
    v32 = a3;
    if (v23 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a8)
    {
      v24 = v39;
      v25 = 8 * a8;
      do
      {
        v26 = *a7++;
        *v24++ = mlir::Builder::getConstantAffineMap(a1, v26, v23);
        v25 -= 8;
      }

      while (v25);
      LODWORD(v40) = v40 + a8;
      v35 = v38;
      v37 = 6;
      memset_pattern16(v38, &unk_257369660, 8 * a8);
    }

    else
    {
      LODWORD(v40) = 0;
      v35 = v38;
      v37 = 6;
    }

    v36 = a8;
    v27 = v42;
    v28 = v43;
    mlir::ValueRange::ValueRange(v34, 0, 0);
    v29 = v39;
    v30 = v40;
    mlir::ValueRange::ValueRange(v33, 0, 0);
    mlir::affine::AffineParallelOp::build(a1, v31, v32, a4, a5, a6, v27, v28, v34[0], v34[1], v29, v30, v33[0], v33[1], v35, v36);
  }

  v17 = vdupq_n_s64(a8 - 1);
  v18 = a8 + 1;
  v19 = vmovn_s64(vcgeq_u64(v17, xmmword_2573686A0));
  if (v19.i8[0])
  {
    v45[0] = ConstantAffineMap;
    v20 = v18 & 0xE;
    if ((v19.i8[4] & 1) == 0)
    {
LABEL_6:
      if (v20 == 2)
      {
        goto LABEL_20;
      }

LABEL_10:
      v21 = vmovn_s64(vcgtq_u64(v17, xmmword_2573686B0));
      if (v21.i8[0])
      {
        v45[2] = ConstantAffineMap;
        if ((v21.i8[4] & 1) == 0)
        {
LABEL_12:
          if (v20 == 4)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }
      }

      else if ((v21.i8[4] & 1) == 0)
      {
        goto LABEL_12;
      }

      v45[3] = ConstantAffineMap;
      if (v20 == 4)
      {
        goto LABEL_20;
      }

LABEL_16:
      v22 = vmovn_s64(vcgtq_u64(v17, xmmword_2573686C0));
      if (v22.i8[0])
      {
        v45[4] = ConstantAffineMap;
      }

      if (v22.i8[4])
      {
        v45[5] = ConstantAffineMap;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v20 = v18 & 0xE;
    if ((v19.i8[4] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v45[1] = ConstantAffineMap;
  if (v20 == 2)
  {
    goto LABEL_20;
  }

  goto LABEL_10;
}

void mlir::affine::AffineParallelOp::build(uint64_t **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, mlir::AffineMap *a7, unint64_t a8, uint64_t a9, unint64_t a10, mlir::AffineMap *a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t *a15, unint64_t a16)
{
  v71 = *MEMORY[0x277D85DE8];
  v22 = *(a2 + 72);
  if (a4 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v23 = 0;
    v24 = *(a2 + 64) + 8 * v22;
    do
    {
      *(v24 + 8 * v23) = mlir::TypeRange::dereference_iterator(a3, v23);
      ++v23;
    }

    while (a4 != v23);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + a4;
  v65 = v67;
  v66 = 0x400000000;
  if (a6)
  {
    v25 = 8 * a6;
    do
    {
      I64IntegerAttr = mlir::Builder::getI64IntegerAttr(this, *a5);
      if (v66 >= HIDWORD(v66))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *&v65[8 * v66] = I64IntegerAttr;
      v27 = (v66 + 1);
      LODWORD(v66) = v66 + 1;
      ++a5;
      v25 -= 8;
    }

    while (v25);
    v28 = v65;
  }

  else
  {
    v27 = 0;
    v28 = v67;
  }

  ArrayAttr = mlir::Builder::getArrayAttr(this, v28, v27);
  Context = mlir::Attribute::getContext(a2);
  v64[8] = 261;
  v62 = "reductions";
  v63 = 10;
  v32 = mlir::StringAttr::get(Context, &v62, v31);
  mlir::NamedAttribute::NamedAttribute(&v59, v32, ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v59, v60);
  v62 = v64;
  v63 = 0xC00000000;
  v59 = &v61;
  v60 = 0xC00000000;
  v33 = mlir::affine::AffineParallelOp::build(mlir::OpBuilder &,mlir::OperationState &,mlir::TypeRange,llvm::ArrayRef<mlir::arith::AtomicRMWKind>,llvm::ArrayRef<mlir::AffineMap>,mlir::ValueRange,llvm::ArrayRef<mlir::AffineMap>,mlir::ValueRange,llvm::ArrayRef<long long>)::$_0::operator()(this, a7, a8, &v62);
  v34 = mlir::affine::AffineParallelOp::build(mlir::OpBuilder &,mlir::OperationState &,mlir::TypeRange,llvm::ArrayRef<mlir::arith::AtomicRMWKind>,llvm::ArrayRef<mlir::AffineMap>,mlir::ValueRange,llvm::ArrayRef<mlir::AffineMap>,mlir::ValueRange,llvm::ArrayRef<long long>)::$_0::operator()(this, a11, a12, &v59);
  v35 = mlir::AffineMapAttr::get(v33);
  v36 = mlir::Attribute::getContext(a2);
  v70 = 261;
  v68 = "lowerBoundsMap";
  v69 = 14;
  v38 = mlir::StringAttr::get(v36, &v68, v37);
  mlir::NamedAttribute::NamedAttribute(&v57, v38, v35);
  mlir::NamedAttrList::push_back(a2 + 112, v57, v58);
  I32TensorAttr = mlir::Builder::getI32TensorAttr(this, v62, v63);
  v40 = mlir::Attribute::getContext(a2);
  v70 = 261;
  v68 = "lowerBoundsGroups";
  v69 = 17;
  v42 = mlir::StringAttr::get(v40, &v68, v41);
  mlir::NamedAttribute::NamedAttribute(&v57, v42, I32TensorAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v57, v58);
  v43 = mlir::AffineMapAttr::get(v34);
  v44 = mlir::Attribute::getContext(a2);
  v70 = 261;
  v68 = "upperBoundsMap";
  v69 = 14;
  v46 = mlir::StringAttr::get(v44, &v68, v45);
  mlir::NamedAttribute::NamedAttribute(&v57, v46, v43);
  mlir::NamedAttrList::push_back(a2 + 112, v57, v58);
  v47 = mlir::Builder::getI32TensorAttr(this, v59, v60);
  v48 = mlir::Attribute::getContext(a2);
  v70 = 261;
  v68 = "upperBoundsGroups";
  v69 = 17;
  v50 = mlir::StringAttr::get(v48, &v68, v49);
  mlir::NamedAttribute::NamedAttribute(&v57, v50, v47);
  mlir::NamedAttrList::push_back(a2 + 112, v57, v58);
  I64ArrayAttr = mlir::Builder::getI64ArrayAttr(this, a15, a16);
  v52 = mlir::Attribute::getContext(a2);
  v70 = 261;
  v68 = "steps";
  v69 = 5;
  v54 = mlir::StringAttr::get(v52, &v68, v53);
  mlir::NamedAttribute::NamedAttribute(&v57, v54, I64ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v57, v58);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a13, a14);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::affine::AffineParallelOp::build(mlir::OpBuilder &,mlir::OperationState &,mlir::TypeRange,llvm::ArrayRef<mlir::arith::AtomicRMWKind>,llvm::ArrayRef<mlir::AffineMap>,mlir::ValueRange,llvm::ArrayRef<mlir::AffineMap>,mlir::ValueRange,llvm::ArrayRef<long long>)::$_0::operator()(mlir::AffineMap **a1, mlir::AffineMap *a2, unint64_t a3, uint64_t a4)
{
  v23[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v21 = v23;
    v22 = 0x600000000;
    if (a3 + *(a4 + 8) > *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a3 > 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = 0;
    v9 = 8 * a3;
    do
    {
      v20 = *(a2 + v8);
      Results = mlir::AffineMap::getResults(&v20);
      llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v21, v21 + 8 * v22, Results, &Results[8 * v11]);
      NumResults = mlir::AffineMap::getNumResults(&v20);
      v13 = *(a4 + 8);
      if (v13 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 4 * v13) = NumResults;
      ++*(a4 + 8);
      v8 += 8;
    }

    while (v9 != v8);
    NumDims = mlir::AffineMap::getNumDims(a2);
    NumSymbols = mlir::AffineMap::getNumSymbols(a2);
    v16 = v21;
    v17 = v22;
    Context = mlir::AffineMap::getContext(a2);
    result = mlir::AffineMap::get(NumDims, NumSymbols, v16, v17, Context);
    if (v21 != v23)
    {
      v19 = result;
      free(v21);
      return v19;
    }
  }

  else
  {
    v6 = *a1;

    return mlir::AffineMap::get(v6, a2);
  }

  return result;
}

double mlir::affine::AffineParallelOp::getLoopRegions@<D0>(mlir::affine::AffineParallelOp *this@<X0>, void *a2@<X8>)
{
  a2[2] = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

uint64_t mlir::affine::AffineParallelOp::getNumDims(mlir::affine::AffineParallelOp *this)
{
  v5[8] = *MEMORY[0x277D85DE8];
  mlir::affine::AffineParallelOp::getSteps(this, &v3);
  v1 = v4;
  if (v3 != v5)
  {
    free(v3);
  }

  return v1;
}

void mlir::affine::AffineParallelOp::getSteps(mlir::affine::AffineParallelOp *this@<X0>, uint64_t a2@<X8>)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v14 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  Value = mlir::ArrayAttr::getValue(&v14);
  v4 = mlir::ArrayAttr::getValue(&v14);
  v6 = (v4 + 8 * v5);
  __src = v18;
  v17 = 0x400000000;
  v7 = v6 - Value;
  if (((v6 - Value) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = 0;
  v9 = v18;
  if (v6 != Value)
  {
    v10 = v18;
    do
    {
      v11 = *Value;
      Value += 8;
      v15 = v11;
      *v10++ = mlir::IntegerAttr::getInt(&v15);
    }

    while (Value != v6);
    v8 = v17;
    v9 = __src;
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x800000000;
  v12 = v8 + (v7 >> 3);
  LODWORD(v17) = v12;
  if (v12 && &__src != a2)
  {
    if (v9 == v18)
    {
      if (v12 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a2, v9, 8 * (v8 + (v7 >> 3)));
      v9 = __src;
      *(a2 + 8) = v12;
    }

    else
    {
      *a2 = v9;
      v13 = HIDWORD(v17);
      *(a2 + 8) = v12;
      *(a2 + 12) = v13;
      __src = v18;
      HIDWORD(v17) = 0;
      v9 = v18;
    }

    LODWORD(v17) = 0;
  }

  if (v9 != v18)
  {
    free(v9);
  }
}