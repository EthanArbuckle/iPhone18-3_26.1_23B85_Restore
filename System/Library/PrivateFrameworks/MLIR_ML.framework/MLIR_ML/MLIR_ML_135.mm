uint64_t mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::Type,mlir::tensor::ExtractOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::IndexCastOp::build(a1, v17, *a3, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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

void anonymous namespace::ExtractFromTensorGenerate::~ExtractFromTensorGenerate(_anonymous_namespace_::ExtractFromTensorGenerate *this)
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

uint64_t anonymous namespace::ExtractFromTensorGenerate::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v34);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
    {
      v7 = DefiningOp;
      if (mlir::wouldOpBeTriviallyDead(DefiningOp, v6))
      {
        v35 = 0;
        v34[0] = 0;
        v34[1] = 0;
        v38 = 0;
        v36 = 0;
        v37 = 0;
        v41 = 0;
        v39 = 0;
        v40 = 0;
        v8 = *(((v7 + 16 * ((*(v7 + 11) >> 23) & 1) + ((*(v7 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 10) + 8);
        if (v8)
        {
          v9 = (v8 - 8);
        }

        else
        {
          v9 = 0;
        }

        v10 = v9[6];
        v11 = v9[7];
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v12 = *(a2 + 72);
          v13 = *(a2 + 68) - 1;
          if (v11 == v10 || *(a2 + 68) == 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
          v13 = -1;
          if (v11 == v10)
          {
            goto LABEL_18;
          }
        }

        v15 = v13 - 1;
        v16 = (v12 + 56);
        v17 = v10 + 8;
        do
        {
          v18 = *v16;
          v16 += 4;
          v42 = *(v17 - 8);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v34, &v42) = v18;
          v20 = v15-- != 0;
          if (v17 == v11)
          {
            break;
          }

          v17 += 8;
        }

        while (v20);
LABEL_18:
        v21 = v9[5];
        v22 = v9 + 4;
        if (v21 != v9 + 4)
        {
          for (i = *v22; v21 != i; v21 = v21[1])
          {
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v21);
            mlir::OpBuilder::clone((a3 + 8), ValuePtr, v34);
          }
        }

        Terminator = mlir::Block::getTerminator(v9);
        v26 = *(*(Terminator + 72) + 24);
        if (v35)
        {
          v27 = 0x9DDFEA08EB382D69 * ((8 * *(*(Terminator + 72) + 24) - 0xAE502812AA7333) ^ HIDWORD(*(*(Terminator + 72) + 24)));
          v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
          v29 = (-348639895 * ((v28 >> 47) ^ v28)) & (v35 - 1);
          v30 = *(v34[0] + 2 * v29);
          if (v30 == v26)
          {
LABEL_23:
            if (v29 != v35)
            {
              v26 = *(v34[0] + 2 * v29 + 1);
            }
          }

          else
          {
            v32 = 1;
            while (v30 != -4096)
            {
              v33 = v29 + v32++;
              v29 = v33 & (v35 - 1);
              v30 = *(v34[0] + 2 * v29);
              if (v30 == v26)
              {
                goto LABEL_23;
              }
            }
          }
        }

        v42 = v26;
        (**a3)(a3, a2, &v42, 1);
        llvm::deallocate_buffer(v39, (16 * v41));
      }
    }
  }

  return 0;
}

void anonymous namespace::StaticTensorGenerate::~StaticTensorGenerate(_anonymous_namespace_::StaticTensorGenerate *this)
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

void mlir::OpBuilder::create<mlir::tensor::GenerateOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v11, a2, v7);
    mlir::ValueRange::ValueRange(v12, *a4, *(a4 + 8));
    mlir::OperationState::addOperands(v11, v12[0], v12[1]);
    mlir::OperationState::addRegion(v11);
  }

  mlir::OpBuilder::create<mlir::tensor::GenerateOp,mlir::RankedTensorType &,llvm::SmallVector<mlir::Value,6u> &>(v11, v12, v10);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 16;
    v5 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = 32 * v7;
        v9 = v6 + v8 - 16;
        v10 = -v8;
        do
        {
          v11 = *(v9 - 16);
          if (v9 != v11)
          {
            free(v11);
          }

          v9 -= 32;
          v10 += 32;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v12 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 12) = 0;
LABEL_12:
      *v12 = 0;
      return a1;
    }

    v12 = (a2 + 8);
    v14 = *(a2 + 8);
    v15 = *(a1 + 8);
    if (v15 < v14)
    {
      if (*(a1 + 12) < v14)
      {
        if (v15)
        {
          v16 = 32 * v15 + *a1 - 16;
          v17 = -32 * v15;
          do
          {
            v18 = *(v16 - 16);
            if (v16 != v18)
            {
              free(v18);
            }

            v16 -= 32;
            v17 += 32;
          }

          while (v17);
        }

        *(a1 + 8) = 0;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow();
      }

      if (v15)
      {
        v22 = *a1;
        v23 = 32 * v15;
        do
        {
          llvm::SmallVectorImpl<unsigned long>::operator=(v22, v5);
          v5 += 4;
          v22 += 32;
          v23 -= 32;
        }

        while (v23);
        v24 = *a2;
        v25 = *(a2 + 8);
        if (v15 != v25)
        {
LABEL_32:
          v26 = *a1;
          v27 = 32 * v15;
          v28 = 32 * v25;
          do
          {
            v29 = (v26 + v27);
            *v29 = v26 + v27 + 16;
            v29[1] = 0x200000000;
            if (LODWORD(v24[v27 / 8 + 1]))
            {
              llvm::SmallVectorImpl<unsigned long>::operator=(v29, &v24[v27 / 8]);
            }

            v26 += 32;
            v28 -= 32;
            v24 += 4;
          }

          while (v27 != v28);
          v24 = *a2;
        }
      }

      else
      {
        v15 = 0;
        v24 = *a2;
        v25 = *(a2 + 8);
        if (*(a2 + 8))
        {
          goto LABEL_32;
        }
      }

      *(a1 + 8) = v14;
      v30 = *v12;
      if (v30)
      {
        v31 = 4 * v30;
        v32 = &v24[v31 - 2];
        v33 = -(v31 * 8);
        do
        {
          v34 = *(v32 - 16);
          if (v32 != v34)
          {
            free(v34);
          }

          v32 -= 32;
          v33 += 32;
        }

        while (v33);
      }

      goto LABEL_12;
    }

    v19 = *a1;
    if (v14)
    {
      v20 = 32 * v14;
      do
      {
        llvm::SmallVectorImpl<unsigned long>::operator=(v19, v5);
        v5 += 4;
        v19 += 32;
        v20 -= 32;
      }

      while (v20);
      v21 = *a1 + 32 * *(a1 + 8);
      if (v21 == v19)
      {
LABEL_47:
        *(a1 + 8) = v14;
        v38 = *(a2 + 8);
        if (v38)
        {
          v39 = 32 * v38;
          v40 = v39 + *a2 - 16;
          v41 = -v39;
          do
          {
            v42 = *(v40 - 16);
            if (v40 != v42)
            {
              free(v42);
            }

            v40 -= 32;
            v41 += 32;
          }

          while (v41);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v21 = v19 + 32 * v15;
      if (v21 == v19)
      {
        goto LABEL_47;
      }
    }

    v35 = (v21 - 16);
    do
    {
      v37 = *(v35 - 2);
      if (v35 != v37)
      {
        free(v37);
      }

      v36 = v35 - 16;
      v35 -= 32;
    }

    while (v36 != v19);
    goto LABEL_47;
  }

  return a1;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(mlir::Operation ***a1, void ***a2)
{
  v21 = *MEMORY[0x277D85DE8];
  mlir::Operation::emitOpError(v12, **a1, a2);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v12[0])
  {
    mlir::InFlightDiagnostic::report(v12);
  }

  if (v20 == 1)
  {
    if (v19 != &v20)
    {
      free(v19);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v18;
      v5 = __p;
      if (v18 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v18 = v3;
      operator delete(v5);
    }

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v8 = v15;
      if (v16 != v15)
      {
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
        v8 = v15;
      }

      v16 = v6;
      operator delete(v8);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }

  return v2;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(mlir::Operation ***a1, void ***a2)
{
  v21 = *MEMORY[0x277D85DE8];
  mlir::Operation::emitOpError(v12, **a1, a2);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v12[0])
  {
    mlir::InFlightDiagnostic::report(v12);
  }

  if (v20 == 1)
  {
    if (v19 != &v20)
    {
      free(v19);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v18;
      v5 = __p;
      if (v18 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v18 = v3;
      operator delete(v5);
    }

    v6 = v15;
    if (v15)
    {
      v7 = v16;
      v8 = v15;
      if (v16 != v15)
      {
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
        v8 = v15;
      }

      v16 = v6;
      operator delete(v8);
    }

    if (v13 != &v14)
    {
      free(v13);
    }
  }

  return v2;
}

void *mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v25 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v25);
  if (result)
  {
    v4 = *(*(result + 48) + 16);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v6 = result;
    }

    else
    {
      v6 = 0;
    }

    v20 = v6;
    if (v5)
    {
      v7 = *(a2 + 36) ? a2 - 16 : 0;
      v25 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::TensorType::operator mlir::ShapedType(&v25);
      if ((mlir::hasNonIdentityLayout(*(*(*(v20 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) == 0 && (mlir::hasNonIdentityLayout(*(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
      {
        v8 = *(v21 + 36) ? v21 - 16 : 0;
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
        if ((mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
        {
          mlir::tensor::ExpandShapeOp::getReassociationIndices(&v20, &v25);
          v10 = v25;
          v11 = v26;
          mlir::tensor::ExpandShapeOp::getReassociationIndices(&v21, &v22);
          mlir::composeReassociationIndices(v10, v11, v22, v23, &v28);
          v12 = v22;
          if (v23)
          {
            v13 = v22 + 32 * v23 - 16;
            v14 = -32 * v23;
            do
            {
              v15 = *(v13 - 2);
              if (v13 != v15)
              {
                free(v15);
              }

              v13 -= 32;
              v14 += 32;
            }

            while (v14);
            v12 = v22;
          }

          if (v12 != &v24)
          {
            free(v12);
          }

          v16 = v25;
          if (v26)
          {
            v17 = v25 + 32 * v26 - 16;
            v18 = -32 * v26;
            do
            {
              v19 = *(v17 - 2);
              if (v17 != v19)
              {
                free(v19);
              }

              v17 -= 32;
              v18 += 32;
            }

            while (v18);
            v16 = v25;
          }

          if (v16 != &v27)
          {
            free(v16);
          }

          if (v29 == 1)
          {
            v25 = *(v21 + 16 * ((*(v21 + 44) >> 23) & 1) + 72);
            mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t std::optional<llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 32 * v3;
      v5 = v2 + v4 - 16;
      v6 = -v4;
      do
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }

        v5 -= 32;
        v6 += 32;
      }

      while (v6);
      v2 = *a1;
    }

    if (v2 != (a1 + 16))
    {
      free(v2);
    }
  }

  return a1;
}

void mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v18, a2, v13);
    mlir::tensor::ExpandShapeOp::build(a1, v18, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v18, v17, v16);
}

void *mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v61[16] = *MEMORY[0x277D85DE8];
  v51 = a2;
  v59 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v59);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v8 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id ? DefiningOp : 0;
  v50 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = DefiningOp;
  v59 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v49[0] = mlir::TensorType::operator mlir::ShapedType(&v59);
  v49[1] = v10;
  v11 = *(a2 + 36) ? a2 - 16 : 0;
  v59 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v48[0] = mlir::TensorType::operator mlir::ShapedType(&v59);
  v48[1] = v12;
  if (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v9 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v13 = *(v9 + 36) ? v9 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v49);
  v16 = v15;
  mlir::ShapedType::getShape(v48);
  if (v49[0] == v48[0])
  {
    return 0;
  }

  v18 = v17;
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v50, &v59);
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v51, &v56);
  if (v16 <= v18)
  {
    v31 = v56;
    v32 = v57;
    v33 = v59;
    v34 = v60;
    Shape = mlir::ShapedType::getShape(v48);
    v37 = v36;
    v38 = mlir::ShapedType::getShape(v49);
    mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(v31, v32, v33, v34, Shape, v37, v54, v38, v39);
    if (v55 == 1)
    {
      v52[0] = *(v51 + 16 * ((*(v51 + 44) >> 23) & 1) + 72);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }

    v28 = 0;
    v29 = v54;
  }

  else
  {
    v19 = v59;
    v20 = v60;
    v21 = v56;
    v22 = v57;
    v23 = mlir::ShapedType::getShape(v49);
    v25 = v24;
    v26 = mlir::ShapedType::getShape(v48);
    mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(v19, v20, v21, v22, v23, v25, v52, v26, v27);
    if (v53 == 1)
    {
      v54[0] = *(*(v50 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v51, v48, v54, v52);
      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v52;
  }

  std::optional<llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>>::~optional(v29);
  v40 = v56;
  if (v57)
  {
    v41 = v56 + 32 * v57 - 16;
    v42 = -32 * v57;
    do
    {
      v43 = *(v41 - 2);
      if (v41 != v43)
      {
        free(v43);
      }

      v41 -= 32;
      v42 += 32;
    }

    while (v42);
    v40 = v56;
  }

  if (v40 != &v58)
  {
    free(v40);
  }

  v44 = v59;
  if (v60)
  {
    v45 = &v59[4 * v60 - 2];
    v46 = -32 * v60;
    do
    {
      v47 = *(v45 - 2);
      if (v45 != v47)
      {
        free(v47);
      }

      v45 -= 4;
      v46 += 32;
    }

    while (v46);
    v44 = v59;
  }

  if (v44 != v61)
  {
    free(v44);
  }

  return v28;
}

void mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, unint64_t a9)
{
  v9 = a5;
  v10 = a8;
  v61[16] = *MEMORY[0x277D85DE8];
  v59 = v61;
  v60 = 0x400000000;
  if (!a2)
  {
    mlir::getReassociationIndicesForCollapse(a5, a6, a8, a9, a7);
    v40 = v59;
    goto LABEL_64;
  }

  v11 = a3;
  v12 = a1;
  v50 = a1 + 32 * a2;
  v51 = a3 + 32 * a4;
  v48 = a5 + 16;
  v47 = vnegq_f64(0);
  while (v11 != v51)
  {
    v13 = **v12;
    v14 = *(v12 + 8);
    v15 = v9 + 8 * v13;
    v16 = *(v11 + 8);
    v17 = (v10 + 8 * **v11);
    if (v14 != v16)
    {
      goto LABEL_18;
    }

    if (memcmp((v9 + 8 * v13), v17, 8 * v14))
    {
      goto LABEL_58;
    }

    if (v14)
    {
      v18 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v18 >= 3)
      {
        v21 = v18 + 1;
        v22 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v20 = (v15 + 8 * v22);
        v23 = (v48 + 8 * v13);
        v24 = 0uLL;
        v25 = v22;
        v26 = 0uLL;
        do
        {
          v24 = vsubq_s64(v24, vceqq_s64(v23[-1], v47));
          v26 = vsubq_s64(v26, vceqq_s64(*v23, v47));
          v23 += 2;
          v25 -= 4;
        }

        while (v25);
        v19 = vaddvq_s64(vaddq_s64(v26, v24));
        if (v21 != v22)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = 0;
        v20 = (v9 + 8 * v13);
        do
        {
LABEL_13:
          v27 = *v20++;
          if (v27 == 0x8000000000000000)
          {
            ++v19;
          }
        }

        while (v20 != (v15 + 8 * v14));
      }

      if (v19 > 1)
      {
        goto LABEL_58;
      }
    }

    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v59, v12);
LABEL_18:
    mlir::getReassociationIndicesForCollapse(v9 + 8 * v13, v14, v17, v16, &v55);
    if ((v58 & 1) == 0)
    {
LABEL_58:
      *a7 = 0;
      *(a7 + 48) = 0;
      v40 = v59;
      v41 = v60;
      if (!v60)
      {
        goto LABEL_64;
      }

      goto LABEL_59;
    }

    v28 = v55;
    if (!v56)
    {
      v10 = a8;
      v9 = a5;
LABEL_49:
      if (v28 == v57)
      {
        goto LABEL_3;
      }

      goto LABEL_52;
    }

    v29 = v55 + 32 * v56;
    do
    {
      v52 = v54;
      v53 = 0x200000000;
      v30 = *(v28 + 2);
      if (v30)
      {
        v31 = 0;
        v32 = *v28;
        v33 = 8 * v30;
        do
        {
          if (v31 >= HIDWORD(v53))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v52 + v31) = **v12 + *v32;
          v31 = v53 + 1;
          LODWORD(v53) = v53 + 1;
          ++v32;
          v33 -= 8;
        }

        while (v33);
      }

      if (v60 >= HIDWORD(v60))
      {
        if (v59 > &v52 || v59 + 32 * v60 <= &v52)
        {
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
        }

        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
      }

      v34 = (v59 + 32 * v60);
      *v34 = v34 + 2;
      v34[1] = 0x200000000;
      v35 = v53;
      if (v34 != &v52 && v53 != 0)
      {
        if (v53 >= 3uLL)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v34 + 2, v52, 8 * v53);
        *(v34 + 2) = v35;
      }

      LODWORD(v60) = v60 + 1;
      if (v52 != v54)
      {
        free(v52);
      }

      v28 += 32;
    }

    while (v28 != v29);
    v10 = a8;
    v9 = a5;
    if ((v58 & 1) == 0)
    {
      goto LABEL_3;
    }

    v28 = v55;
    if (!v56)
    {
      goto LABEL_49;
    }

    v37 = v55 + 32 * v56 - 16;
    v38 = -32 * v56;
    do
    {
      v39 = *(v37 - 2);
      if (v37 != v39)
      {
        free(v39);
      }

      v37 -= 32;
      v38 += 32;
    }

    while (v38);
    v28 = v55;
    if (v55 == v57)
    {
      goto LABEL_3;
    }

LABEL_52:
    free(v28);
LABEL_3:
    v12 += 32;
    v11 += 32;
    if (v12 == v50)
    {
      break;
    }
  }

  *a7 = a7 + 16;
  *(a7 + 8) = 0x100000000;
  if (v60)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a7, &v59);
  }

  *(a7 + 48) = 1;
  v40 = v59;
  v41 = v60;
  if (v60)
  {
LABEL_59:
    v42 = 4 * v41;
    v43 = &v40[v42 - 2];
    v44 = -(v42 * 8);
    do
    {
      v45 = *(v43 - 16);
      if (v43 != v45)
      {
        free(v45);
      }

      v43 -= 32;
      v44 += 32;
    }

    while (v44);
    v40 = v59;
  }

LABEL_64:
  if (v40 != v61)
  {
    free(v40);
  }
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  ((*a1)[1])(a1, a2, v7);
  return v7;
}

unsigned int *llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(unsigned int *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2];
  v4 = *result;
  if (v3 >= result[3])
  {
    if (v4 > a2 || v4 + 32 * v3 <= a2)
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
  }

  v5 = (v4 + 32 * result[2]);
  *v5 = v5 + 2;
  v5[1] = 0x200000000;
  v6 = *(a2 + 8);
  if (v5 != a2 && v6 != 0)
  {
    if (v6 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    result = memcpy(v5 + 2, *a2, 8 * *(a2 + 8));
    *(v5 + 2) = v6;
  }

  ++v2[2];
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v28, &v30, v25);
  }

  mlir::OperationState::OperationState(v28, a2, v11);
  v13 = *a3;
  v14 = *a5;
  v15 = *(a5 + 8);
  v26 = *a4;
  v27 = v13;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, v14, v15);
  v17 = mlir::Attribute::getContext(v28);
  v32 = 261;
  v30 = "reassociation";
  v31 = 13;
  v19 = mlir::StringAttr::get(v17, &v30, v18);
  mlir::NamedAttribute::NamedAttribute(v25, v19, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(&v29, v25[0], v25[1]);
  v20 = mlir::TypeRange::TypeRange(&v30, &v27, 1uLL);
  mlir::tensor::CollapseShapeOp::build(v20, v28, v30, v31, &v26, 1uLL, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v22;
}

void *anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v15 = &v16;
  v16 = 0;
  v17 = v5;
  result = mlir::Value::getDefiningOp(&v17);
  if (result)
  {
    v7 = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v15, result);
    result = 0;
    if (v7)
    {
      if (v16)
      {
        result = mlir::DenseElementsAttr::isSplat(&v16);
        if (result)
        {
          if (*(a2 + 36))
          {
            v8 = a2 - 16;
          }

          else
          {
            v8 = 0;
          }

          v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
          v11 = v10;
          RawData = mlir::DenseElementsAttr::getRawData(&v16);
          v17 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, RawData, v13);
          v14 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &v17);
          (*(*a3 + 8))(a3, a2, v14);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  {
    AncestorKey::AncestorKey();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v7);
  v10 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v10)
  {
    v11 = *(v9 + 24);
  }

  else
  {
    v11 = 0;
  }

  mlir::arith::ConstantOp::build(a1, v18, v10, v11);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

void *anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id ? DefiningOp : 0;
  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    return 0;
  }

  v8 = *(DefiningOp + 36) ? DefiningOp - 16 : 0;
  v17 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v17))
  {
    return 0;
  }

  Shape = mlir::RankedTensorType::getShape(&v17);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v7 + 72) + 24);
  v17 = v13;
  v14 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v17, &v16);
  (*(*a3 + 8))(a3, a2, v14);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::TypeRange::TypeRange(v18, a3, 1uLL);
  mlir::tensor::SplatOp::build(v11, v17, v18[0], v18[1], a4, 1uLL, 0, 0);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
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

void *anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v30);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v8 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v8;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = v9;
    v27 = v8;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v8 = v27;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v26 + 8);
    v12 = *(v26 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v25 = v13[1];
    v30 = v8;
    v31 = v25;
    result = mlir::ShapedType::hasRank(&v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  v30 = v8;
  v31 = 0;
  result = mlir::ShapedType::hasRank(&v30);
  if (!result)
  {
    return result;
  }

LABEL_21:
  Shape = mlir::ShapedType::getShape(&v30);
  if (v20)
  {
    v21 = 8 * v20;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  else
  {
LABEL_25:
    v29 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v7 + 46) & 0x80) != 0)
    {
      v22 = *(v7 + 68);
      v23 = *(v7 + 72);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v28[0] = v23;
    v28[1] = v22;
    v24 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v29, v28);
    (*(*a3 + 8))(a3, a2, v24);
    return 1;
  }
}

uint64_t mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(v17, v20, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v20, *a4, *(a4 + 8));
  mlir::OperationState::addOperands(v17, v20[0], v20[1]);
  if (v18 >= v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v17[8] + 8 * v18++) = v11;
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
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

void anonymous namespace::FoldDimOfExpandShape::~FoldDimOfExpandShape(_anonymous_namespace_::FoldDimOfExpandShape *this)
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

uint64_t anonymous namespace::FoldDimOfExpandShape::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v34 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v34);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v33 = v8;
    if (v7 && (v9 = result, ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4), (v11 & 1) != 0) && ((v12 = ConstantIntValue, *(v9 + 36)) ? (v13 = v9 - 16) : (v13 = 0), v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8, *(mlir::RankedTensorType::getShape(&v32) + 8 * v12) == 0x8000000000000000))
    {
      CorrespondingSourceDim = mlir::tensor::ExpandShapeOp::getCorrespondingSourceDim(&v33, v12);
      mlir::tensor::ExpandShapeOp::getReassociationIndices(&v33, &v34);
      v14 = v34;
      v15 = (v34 + 32 * CorrespondingSourceDim);
      v37 = v39;
      v38 = 0x200000000;
      v16 = *(v15 + 2);
      if (&v37 != v15 && v16 != 0)
      {
        if (v16 >= 3)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v39, *v15, 8 * *(v15 + 2));
        LODWORD(v38) = v16;
        v14 = v34;
      }

      if (v35)
      {
        v18 = &v14[4 * v35 - 2];
        v19 = -32 * v35;
        do
        {
          v20 = *(v18 - 16);
          if (v18 != v20)
          {
            free(v20);
          }

          v18 -= 32;
          v19 += 32;
        }

        while (v19);
        v14 = v34;
      }

      if (v14 != &v36)
      {
        free(v14);
      }

      if (v38)
      {
        v21 = v37;
        v22 = 8 * v38;
        v23 = 1;
        do
        {
          if (*v21 != v12)
          {
            v24 = *v21;
            v23 *= *(mlir::RankedTensorType::getShape(&v32) + 8 * v24);
          }

          ++v21;
          v22 -= 8;
        }

        while (v22);
      }

      else
      {
        v23 = 1;
      }

      v25 = *(a2 + 24);
      AffineSymbolExpr = *(*(v33 + 72) + 24);
      v34 = (mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(a3 + 1, v25, &AffineSymbolExpr, &CorrespondingSourceDim) - 16);
      Context = mlir::Attribute::getContext((a2 + 24));
      AffineSymbolExpr = mlir::getAffineSymbolExpr(0, Context, v27);
      v29 = mlir::AffineExpr::floorDiv(&AffineSymbolExpr, v23);
      v28 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(a3 + 1, *(a2 + 24), &v29, &v34);
      (*(*a3 + 1))(a3, a2, v28);
      if (v37 != v39)
      {
        free(v37);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::affine::AffineApplyOp::build(a1, v17, a3, 1, a4, 1uLL);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
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

void anonymous namespace::FoldDimOfCollapseShape::~FoldDimOfCollapseShape(_anonymous_namespace_::FoldDimOfCollapseShape *this)
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

uint64_t anonymous namespace::FoldDimOfCollapseShape::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v32 = v8;
    if (v7 && (ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4), (v10 & 1) != 0) && ((v11 = ConstantIntValue, *(v32 + 36)) ? (v12 = v32 - 16) : (v12 = 0), v31 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8, *(mlir::RankedTensorType::getShape(&v31) + 8 * v11) == 0x8000000000000000))
    {
      mlir::tensor::ExpandShapeOp::getReassociationIndices(&v32, &v36);
      v13 = v36;
      v14 = (v36 + 32 * v11);
      v39 = v41;
      v40 = 0x200000000;
      v15 = *(v14 + 2);
      if (&v39 != v14 && v15 != 0)
      {
        if (v15 >= 3)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v41, *v14, 8 * *(v14 + 2));
        LODWORD(v40) = v15;
        v13 = v36;
      }

      if (v37)
      {
        v17 = &v13[32 * v37 - 16];
        v18 = -32 * v37;
        do
        {
          v19 = *(v17 - 16);
          if (v17 != v19)
          {
            free(v19);
          }

          v17 -= 32;
          v18 += 32;
        }

        while (v18);
        v13 = v36;
      }

      if (v13 != v38)
      {
        free(v13);
      }

      v36 = v38;
      v37 = 0x600000000;
      v33 = v35;
      v34 = 0x600000000;
      v30 = 0;
      if (v40)
      {
        v20 = 0;
        v21 = v39;
        v22 = 8 * v40;
        do
        {
          v23 = *(a2 + 24);
          v29 = *(*(v32 + 72) + 24);
          v24 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(a3 + 1, v23, &v29, v21);
          if (v37 >= HIDWORD(v37))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v36 + v37) = v24 - 16;
          LODWORD(v37) = v37 + 1;
          AffineSymbolExpr = mlir::Builder::getAffineSymbolExpr(a3 + 1, v20, v25);
          if (v34 >= HIDWORD(v34))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v33 + v34) = AffineSymbolExpr;
          LODWORD(v34) = v34 + 1;
          v27 = *(v33 + v34 - 1);
          if (v30)
          {
            v27 = mlir::AffineExpr::operator*(&v30, v27);
          }

          v30 = v27;
          v20 = (v20 + 1);
          ++v21;
          v22 -= 8;
        }

        while (v22);
      }

      v28 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(a3 + 1, *(a2 + 24), &v30, &v36);
      (*(*a3 + 1))(a3, a2, v28);
      if (v33 != v35)
      {
        free(v33);
      }

      if (v36 != v38)
      {
        free(v36);
      }

      if (v39 != v41)
      {
        free(v39);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr,mlir::Value &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a4, *(a4 + 8));
  mlir::affine::AffineApplyOp::build(a1, v16, a3, 1, v17[0], v17[1]);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
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

void *mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    v31 = v8;
    if (!v7)
    {
      return 0;
    }

    v9 = *(a2 + 36) ? a2 - 16 : 0;
    v10 = result;
    v36 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = mlir::TensorType::operator mlir::ShapedType(&v36);
    v30[1] = v11;
    if (mlir::hasNonIdentityLayout(*(*(*(v10 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    v12 = *(a2 + 36) ? a2 - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
    if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 0;
    }

    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v31, &v36);
    v14 = v36;
    v15 = v37;
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v32, &v33);
    mlir::composeReassociationIndices(v14, v15, v33, v34, &v39);
    v16 = v33;
    if (v34)
    {
      v17 = v33 + 32 * v34 - 16;
      v18 = -32 * v34;
      do
      {
        v19 = *(v17 - 2);
        if (v17 != v19)
        {
          free(v19);
        }

        v17 -= 32;
        v18 += 32;
      }

      while (v18);
      v16 = v33;
    }

    if (v16 != &v35)
    {
      free(v16);
    }

    v20 = v36;
    if (v37)
    {
      v21 = v36 + 32 * v37 - 16;
      v22 = -32 * v37;
      do
      {
        v23 = *(v21 - 2);
        if (v21 != v23)
        {
          free(v23);
        }

        v21 -= 32;
        v22 += 32;
      }

      while (v22);
      v20 = v36;
    }

    if (v20 != &v38)
    {
      free(v20);
    }

    if (v42 != 1)
    {
      return 0;
    }

    else
    {
      v24 = v32;
      v36 = *(*(v31 + 72) + 24);
      v25 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3 + 1, *(v32 + 24), v30, &v36, &v39);
      ((*a3)[1])(a3, v24, v25);
      if (v42)
      {
        v26 = v39;
        if (v40)
        {
          v27 = &v39[4 * v40 - 2];
          v28 = -32 * v40;
          do
          {
            v29 = *(v27 - 16);
            if (v27 != v29)
            {
              free(v29);
            }

            v27 -= 32;
            v28 += 32;
          }

          while (v28);
          v26 = v39;
        }

        if (v26 != &v41)
        {
          free(v26);
        }
      }

      return 1;
    }
  }

  return result;
}

void *mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v54[16] = *MEMORY[0x277D85DE8];
  v42 = a2;
  v52 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v52);
  if (!DefiningOp)
  {
    return 0;
  }

  v5 = *(*(DefiningOp + 48) + 16);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v7 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id ? DefiningOp : 0;
  v41 = v7;
  if (!v6)
  {
    return 0;
  }

  v52 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v40[0] = mlir::TensorType::operator mlir::ShapedType(&v52);
  v40[1] = v8;
  v9 = *(v42 + 36) ? v42 - 16 : 0;
  v52 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v39[0] = mlir::TensorType::operator mlir::ShapedType(&v52);
  v39[1] = v10;
  if (mlir::hasNonIdentityLayout(*(*(*(v42 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0 || (mlir::hasNonIdentityLayout(*(*(*(v41 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  v11 = *(v41 + 36) ? v41 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
  if (mlir::hasNonIdentityLayout(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  mlir::ShapedType::getShape(v40);
  v14 = v13;
  mlir::ShapedType::getShape(v39);
  if (v40[0] == v39[0])
  {
    return 0;
  }

  v16 = v15;
  v52 = v54;
  v53 = 0x400000000;
  v49 = v51;
  v50 = 0x400000000;
  if (v14 <= v15)
  {
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v42, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v41, &v46);
  }

  else
  {
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v41, &v46);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v52, &v46);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v42, &v46);
  }

  llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v49, &v46);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v46);
  v46 = v48;
  v47 = 0x400000000;
  if (v50)
  {
    v19 = 0;
    v20 = v49;
    v21 = v49 + 32 * v50;
    while (1)
    {
      v22 = 0;
      v43 = v45;
      v44 = 0x200000000;
      v23 = 4 * v19;
      while (1)
      {
        if (v19 >= v53)
        {
LABEL_31:
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v46, &v43);
          v25 = 1;
          v26 = v43;
          if (v43 == v45)
          {
            goto LABEL_33;
          }

LABEL_32:
          free(v26);
          goto LABEL_33;
        }

        v24 = *(v52[v23] + 8 * LODWORD(v52[v23 + 1]) - 8);
        if (v24 > *(*v20 + 8 * *(v20 + 2) - 8))
        {
          break;
        }

        if (v22 >= HIDWORD(v44))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v43 + v22) = v19;
        v22 = v44 + 1;
        LODWORD(v44) = v44 + 1;
        v23 += 4;
        ++v19;
        if (v24 == *(*v20 + 8 * *(v20 + 2) - 8))
        {
          goto LABEL_31;
        }
      }

      v25 = 0;
      v26 = v43;
      if (v43 != v45)
      {
        goto LABEL_32;
      }

LABEL_33:
      if ((v25 & 1) == 0)
      {
        break;
      }

      v20 += 32;
      if (v20 == v21)
      {
        goto LABEL_38;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_38:
    if (v14 <= v16)
    {
      if (v14 < v16)
      {
        v43 = *(*(v41 + 72) + 24);
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, v42, v39, &v43, &v46);
      }

      v43 = *(*(v41 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(a3, v42, v39, &v43);
    }

    else
    {
      v43 = *(*(v41 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v42, v39, &v43, &v46);
    }

    v17 = 1;
  }

  v27 = v46;
  if (v47)
  {
    v28 = v46 + 32 * v47 - 16;
    v29 = -32 * v47;
    do
    {
      v30 = *(v28 - 2);
      if (v28 != v30)
      {
        free(v30);
      }

      v28 -= 32;
      v29 += 32;
    }

    while (v29);
    v27 = v46;
  }

  if (v27 != v48)
  {
    free(v27);
  }

  v31 = v49;
  if (v50)
  {
    v32 = v49 + 32 * v50 - 16;
    v33 = -32 * v50;
    do
    {
      v34 = *(v32 - 2);
      if (v32 != v34)
      {
        free(v34);
      }

      v32 -= 32;
      v33 += 32;
    }

    while (v33);
    v31 = v49;
  }

  if (v31 != v51)
  {
    free(v31);
  }

  v35 = v52;
  if (v53)
  {
    v36 = &v52[4 * v53 - 2];
    v37 = -32 * v53;
    do
    {
      v38 = *(v36 - 2);
      if (v36 != v38)
      {
        free(v38);
      }

      v36 -= 4;
      v37 += 32;
    }

    while (v37);
    v35 = v52;
  }

  if (v35 != v54)
  {
    free(v35);
  }

  return v17;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

void mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v16[38] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v16, a2, v11);
    mlir::tensor::ExpandShapeOp::build(a1, v16, *a3, *a4, *a5, *(a5 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v16, v15, v14);
}

void *anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  v15 = &v16;
  v16 = 0;
  v17 = v5;
  result = mlir::Value::getDefiningOp(&v17);
  if (result)
  {
    v7 = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v15, result);
    result = 0;
    if (v7)
    {
      if (v16)
      {
        result = mlir::DenseElementsAttr::isSplat(&v16);
        if (result)
        {
          if (*(a2 + 36))
          {
            v8 = a2 - 16;
          }

          else
          {
            v8 = 0;
          }

          v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
          v11 = v10;
          RawData = mlir::DenseElementsAttr::getRawData(&v16);
          v17 = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, RawData, v13);
          v14 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &v17);
          (*(*a3 + 8))(a3, a2, v14);
          return 1;
        }
      }
    }
  }

  return result;
}

void *anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v17);
  if (!DefiningOp)
  {
    return 0;
  }

  v6 = *(*(DefiningOp + 48) + 16);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id ? DefiningOp : 0;
  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    return 0;
  }

  v8 = *(DefiningOp + 36) ? DefiningOp - 16 : 0;
  v17 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v17))
  {
    return 0;
  }

  Shape = mlir::RankedTensorType::getShape(&v17);
  if (v10)
  {
    v11 = 8 * v10;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  if (*(a2 + 36))
  {
    v12 = a2 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*(v7 + 72) + 24);
  v17 = v13;
  v14 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v17, &v16);
  (*(*a3 + 8))(a3, a2, v14);
  return 1;
}

void *anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v30);
  if (!result)
  {
    return result;
  }

  v6 = *(*(result + 48) + 16);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v8 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *v8;
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = v9;
    v27 = v8;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v8 = v27;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v26 + 8);
    v12 = *(v26 + 16);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v25 = v13[1];
    v30 = v8;
    v31 = v25;
    result = mlir::ShapedType::hasRank(&v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_20:
  v30 = v8;
  v31 = 0;
  result = mlir::ShapedType::hasRank(&v30);
  if (!result)
  {
    return result;
  }

LABEL_21:
  Shape = mlir::ShapedType::getShape(&v30);
  if (v20)
  {
    v21 = 8 * v20;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  else
  {
LABEL_25:
    v29 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v7 + 46) & 0x80) != 0)
    {
      v22 = *(v7 + 68);
      v23 = *(v7 + 72);
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    v28[0] = v23;
    v28[1] = v22;
    v24 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v29, v28);
    (*(*a3 + 8))(a3, a2, v24);
    return 1;
  }
}

void anonymous namespace::FoldCollapseOfCastOp::~FoldCollapseOfCastOp(_anonymous_namespace_::FoldCollapseOfCastOp *this)
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

uint64_t anonymous namespace::FoldCollapseOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[16] = *MEMORY[0x277D85DE8];
  v26 = a2;
  v30 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v30);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  v6 = DefiningOp;
  result = mlir::tensor::preservesStaticInformation(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v7 = *(*(*(v6 + 72) + 24) + 8);
    mlir::tensor::CollapseShapeOp::getReassociationExprs(&v26, &v30);
    mlir::getSymbolLessAffineMaps(v30, v31, &v27);
    v8 = v30;
    if (v31)
    {
      v9 = v30 + 32 * v31 - 16;
      v10 = -32 * v31;
      do
      {
        v11 = *(v9 - 2);
        if (v9 != v11)
        {
          free(v11);
        }

        v9 -= 32;
        v10 += 32;
      }

      while (v10);
      v8 = v30;
    }

    if (v8 != v32)
    {
      free(v8);
    }

    v12 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v7 & 0xFFFFFFFFFFFFFFF8, v27, v28);
    v30 = v12;
    if (v27 != &v29)
    {
      free(v27);
    }

    if (*(v26 + 36))
    {
      v13 = v26 - 16;
    }

    else
    {
      v13 = 0;
    }

    if (v12 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v14 = v26;
      (*(*a3 + 40))(a3, v26);
      v15 = *(v26 + 72);
      v16 = *(*(v6 + 72) + 24);
      v17 = v15[1];
      if (v17)
      {
        v18 = *v15;
        *v17 = *v15;
        if (v18)
        {
          *(v18 + 8) = v17;
        }
      }

      v15[3] = v16;
      v15[1] = v16;
      v19 = *v16;
      *v15 = *v16;
      if (v19)
      {
        *(v19 + 8) = v15;
      }

      *v16 = v15;
      (*(*a3 + 48))(a3, v14);
    }

    else
    {
      v20 = *(v26 + 24);
      v25 = *(*(v6 + 72) + 24);
      v24 = *(v26 + 16 * ((*(v26 + 44) >> 23) & 1) + 64);
      v27 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::TensorType>,mlir::ArrayAttr>((a3 + 8), v20, &v30, &v25, &v24);
      v21 = v26;
      if (*(v26 + 36))
      {
        v22 = v26 - 16;
      }

      else
      {
        v22 = 0;
      }

      v25 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v23 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>((a3 + 8), *(v21 + 24), &v25, &v27);
      (*(*a3 + 8))(a3, v21, v23);
    }

    return 1;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::TensorType>,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  mlir::tensor::CollapseShapeOp::build(v13, v20, *a3, *a4, *a5);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

BOOL llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>(mlir::tensor::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::ExpandShapeOp)#1}>(uint64_t a1, unsigned int a2, mlir::RankedTensorType *this)
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a1;
    v5 = a1 + 32 * a2;
    v23 = vnegq_f64(0);
    while (1)
    {
      __dst = v26;
      v25 = 0x200000000;
      v7 = *(v4 + 8);
      if (&__dst != v4 && v7 != 0)
      {
        if (v7 >= 3)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v26, *v4, 8 * *(v4 + 8));
        LODWORD(v25) = v7;
      }

      Shape = mlir::RankedTensorType::getShape(this);
      if (!v25)
      {
        v14 = 1;
        if (__dst == v26)
        {
          goto LABEL_3;
        }

LABEL_26:
        free(__dst);
        goto LABEL_3;
      }

      v10 = (Shape + 8 * *__dst);
      v11 = (v25 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v11 >= 3)
      {
        v15 = v11 + 1;
        v16 = (v11 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v13 = &v10->i64[v16];
        v17 = v10 + 1;
        v18 = 0uLL;
        v19 = v16;
        v20 = 0uLL;
        do
        {
          v18 = vsubq_s64(v18, vceqq_s64(v17[-1], v23));
          v20 = vsubq_s64(v20, vceqq_s64(*v17, v23));
          v17 += 2;
          v19 -= 4;
        }

        while (v19);
        v12 = vaddvq_s64(vaddq_s64(v20, v18));
        if (v15 == v16)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0;
        v13 = v10;
      }

      do
      {
        v21 = *v13++;
        if (v21 == 0x8000000000000000)
        {
          ++v12;
        }
      }

      while (v13 != (v10 + 8 * v25));
LABEL_25:
      v14 = v12 < 2;
      if (__dst != v26)
      {
        goto LABEL_26;
      }

LABEL_3:
      v4 += 32;
      if (v4 == v5 || !v14)
      {
        return v14;
      }
    }
  }

  return 1;
}

void anonymous namespace::ConstantOpExtractSliceFolder::~ConstantOpExtractSliceFolder(_anonymous_namespace_::ConstantOpExtractSliceFolder *this)
{
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 10);
    if (v4 != v2)
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

    v4 = *(this + 10);
    if (v4 != v2)
    {
      goto LABEL_5;
    }
  }

  v5 = *(this + 4);
  if (v5 != this + 48)
  {
    free(v5);
  }
}

{
  v2 = this + 96;
  v3 = *(this + 15);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 10);
    if (v4 != v2)
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

    v4 = *(this + 10);
    if (v4 != v2)
    {
      goto LABEL_5;
    }
  }

  v5 = *(this + 4);
  if (v5 != this + 48)
  {
    free(v5);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ConstantOpExtractSliceFolder::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v4 = *(*(a2 + 72) + 24);
  v46 = &v45;
  *&v47 = v4;
  result = mlir::Value::getDefiningOp(&v47);
  if (!result)
  {
    return result;
  }

  result = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v46, result);
  if (!result)
  {
    return result;
  }

  if (mlir::DenseElementsAttr::isSplat(&v45))
  {
    return 0;
  }

  v6 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = *v6;
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_8:
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
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_18;
  }

  v17 = v11[1];
LABEL_19:
  v44[0] = v6;
  v44[1] = v17;
  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19)
  {
    v20 = *v19;
    {
      v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    v24 = v22;
    v25 = v23;
    do
    {
      v26 = v25 >> 1;
      v27 = &v24[2 * (v25 >> 1)];
      v29 = *v27;
      v28 = v27 + 2;
      v25 += ~(v25 >> 1);
      if (v29 < v21)
      {
        v24 = v28;
      }

      else
      {
        v25 = v26;
      }
    }

    while (v25);
    if (v24 != &v22[2 * v23] && *v24 == v21)
    {
      v39 = v24[1];
      v42 = v19;
      v43 = v39;
      result = mlir::ShapedType::hasRank(v44);
      if (!result)
      {
        return result;
      }

      goto LABEL_37;
    }
  }

LABEL_36:
  v42 = v19;
  v43 = 0;
  result = mlir::ShapedType::hasRank(v44);
  if (!result)
  {
    return result;
  }

LABEL_37:
  Shape = mlir::ShapedType::getShape(v44);
  if (v31)
  {
    v32 = 8 * v31;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v32 -= 8;
      if (!v32)
      {
        goto LABEL_41;
      }
    }

    return 0;
  }

LABEL_41:
  result = mlir::ShapedType::hasRank(&v42);
  if (result)
  {
    v33 = mlir::ShapedType::getShape(&v42);
    if (v34)
    {
      v35 = 8 * v34;
      while (*v33 != 0x8000000000000000)
      {
        ++v33;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_46;
        }
      }

      return 0;
    }

LABEL_46:
    *&v47 = a2;
    v36 = *(a1 + 120);
    if (v36)
    {
      result = (*(*v36 + 48))(v36, &v47);
      if (result)
      {
        v37 = mlir::ShapedType::getShape(v44);
        result = mlir::ShapedType::getNumElements(v37, v38);
        if (result)
        {
          *&v47 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
          mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
        }
      }
    }

    else
    {
      v40 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::SmallVectorImpl<llvm::APInt>::reserve(v40, v41);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::APInt>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 12) < a2)
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  return result;
}

uint64_t *anonymous namespace::sliceElements<mlir::DenseElementsAttr::IntElementIterator,llvm::APInt>(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  if (a5)
  {
    v13 = result;
    v14 = *a4;
    v15 = *a6;
    v26 = *a9;
    v16 = a5 - 1;
    if (a5 == 1)
    {
      if (v15 >= 1)
      {
        do
        {
          v17 = *(v13 + 1);
          v27 = *v13;
          v29 = *(&v17 + 1);
          v28 = v14 + v17;
          result = mlir::DenseElementsAttr::IntElementIterator::operator*(&v27, &v30);
          v18 = *(a11 + 8);
          v19 = *a11;
          if (v18 >= *(a11 + 12))
          {
            if (v19 > &v30 || v19 + 16 * v18 <= &v30)
            {
              llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
            }

            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
          }

          v20 = v19 + 16 * *(a11 + 8);
          *(v20 + 8) = v31;
          *v20 = v30;
          v31 = 0;
          ++*(a11 + 8);
          if (v31 >= 0x41)
          {
            result = v30;
            if (v30)
            {
              result = MEMORY[0x259C63150](v30, 0x1000C8000313F17);
            }
          }

          v14 += v26;
          --v15;
        }

        while (v15);
      }
    }

    else if (v15 >= 1)
    {
      v24 = a7 - 1;
      v25 = a3 - 1;
      do
      {
        v22 = *a2;
        v27 = *v13;
        v23 = v13[3];
        v28 = v13[2] + v22 * v14;
        v29 = v23;
        v14 += v26;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::APFloat>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 12) < a2)
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  return result;
}

void anonymous namespace::sliceElements<mlir::DenseElementsAttr::FloatElementIterator,llvm::APFloat>(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, unsigned int *a11)
{
  v32[3] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v14 = *a4;
    v15 = *a6;
    v26 = *a9;
    v16 = a5 - 1;
    if (a5 == 1)
    {
      if (v15 >= 1)
      {
        do
        {
          while (1)
          {
            v17 = a1[1];
            v27 = *a1;
            *v28 = v17;
            *&v28[16] = *(a1 + 4);
            *v28 = v14 + v17;
            v18 = mlir::DenseElementsAttr::IntElementIterator::operator*(&v27, &v29);
            v19 = *&v28[16];
            v20 = llvm::APFloatBase::PPCDoubleDouble(v18);
            if (v20 == v19)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(v32, v19);
            }

            llvm::detail::IEEEFloat::IEEEFloat(v32, v19, &v29);
            if (v30 >= 0x41)
            {
              if (v29)
              {
                MEMORY[0x259C63150](v29, 0x1000C8000313F17);
              }
            }

            llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(a11, v31);
            if (v20 != v32[0])
            {
              break;
            }

            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v32);
            v14 += v26;
            if (!--v15)
            {
              return;
            }
          }

          llvm::detail::IEEEFloat::~IEEEFloat(v32);
          v14 += v26;
          --v15;
        }

        while (v15);
      }
    }

    else if (v15 >= 1)
    {
      v25 = a3 - 1;
      v22 = a7 - 1;
      do
      {
        v23 = *a2;
        v27 = *a1;
        v24 = *(a1 + 2);
        *&v28[8] = *(a1 + 24);
        *v28 = v24 + v23 * v14;
        v14 += v26;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::ShapedType &,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v11 = *a3;
  v13 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a4);
  if (v13)
  {
    v14 = *(v12 + 24);
  }

  else
  {
    v14 = 0;
  }

  mlir::arith::ConstantOp::build(a1, v21, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void *mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t SliceCanonicalizer::operator()(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (*(a4 + 36))
  {
    v6 = a4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if (*(a3 + 36))
  {
    v8 = a3 - 16;
  }

  else
  {
    v8 = 0;
  }

  v7 = *(NextResultAtOffset + 8);
  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) ^ v7) >= 8)
  {
    v9 = *(a3 + 24);
    if (*(a3 + 36))
    {
      v10 = a3 - 16;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    NextResultAtOffset = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 1), v9, &v12, &NextResultAtOffset) - 16;
  }

  return (**a2)(a2, a3, &NextResultAtOffset, 1);
}

void anonymous namespace::ExtractSliceOpCastFolder::~ExtractSliceOpCastFolder(_anonymous_namespace_::ExtractSliceOpCastFolder *this)
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

uint64_t anonymous namespace::ExtractSliceOpCastFolder::matchAndRewrite(uint64_t DefiningOp, uint64_t a2)
{
  v3 = *(a2 + 68);
  if (v3)
  {
    v4 = (*(a2 + 72) + 24);
    while (1)
    {
      v5 = *v4;
      mlir::matchConstantIndex(DefiningOp);
      v27 = v5;
      DefiningOp = mlir::Value::getDefiningOp(&v27);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, v6);
        if (DefiningOp)
        {
          break;
        }
      }

      v4 += 4;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v27 = *(*(a2 + 72) + 24);
    v7 = mlir::Value::getDefiningOp(&v27);
    if (v7)
    {
      if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        v8 = v7;
        if (mlir::tensor::preservesStaticInformation(*(v7 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          if (*(a2 + 36))
          {
            v9 = a2 - 16;
          }

          else
          {
            v9 = 0;
          }

          v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = *(*(v8 + 72) + 24);
          v30 = v10;
          v11 = *(a2 + 44);
          v12 = a2 + 64 + 16 * ((v11 >> 23) & 1);
          v13 = *(v12 + 24);
          v14 = *(v12 + 28);
          if ((v11 & 0x800000) != 0)
          {
            v15 = (v14 + v13);
            v27 = *(a2 + 72) + 32 * v13;
            v28 = v15 - v13;
            v16 = (*(v12 + 32) + v15);
            v25 = *(a2 + 72) + 32 * v15;
            v26 = v16 - v15;
            v17 = *(a2 + 72);
          }

          else
          {
            v17 = 0;
            v21 = (v14 + v13);
            v27 = 32 * v13;
            v28 = v21 - v13;
            v16 = (*(v12 + 32) + v21);
            v25 = 32 * v21;
            v26 = v16 - v21;
          }

          v18 = v17 + 32 * v16;
          v19 = (*(v12 + 36) + v16) - v16;
          v23 = v18;
          v24 = v19;
          v22 = *v12;
          mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
        }
      }
    }
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v21, a2, v15);
    v17 = *a3;
    v18 = *a4;
    mlir::ValueRange::ValueRange(v23, *a5, *(a5 + 8));
    mlir::ValueRange::ValueRange(v22, *a6, *(a6 + 8));
    mlir::ValueRange::ValueRange(v20, *a7, *(a7 + 8));
    mlir::tensor::ExtractSliceOp::build(a1, v21, v17, v18, v23[0], v23[1], v22[0], v22[1], v20[0], v20[1]);
  }

  mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v21, v23, v22);
}

void mlir::OpBuilder::createOrFold<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a3;
  Context = mlir::Attribute::getContext(&v18);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if (v17)
  {
    mlir::OperationState::OperationState(v21, a3, v16);
    mlir::tensor::ExtractSliceOp::build(a1, v21, *a4, *a5, *a6, *(a6 + 8), *a7, *(a7 + 8), *a8, *(a8 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v21, v20, v19);
}

void *anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(int a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v20, a2, v15);
    mlir::tensor::InsertSliceOp::build(a1, v20, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(v20, v19, v18);
}

void *anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t DefiningOp, uint64_t a2)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v19 = a2;
  v2 = *(a2 + 68);
  if (v2)
  {
    v3 = (*(a2 + 72) + 24);
    while (1)
    {
      v4 = *v3;
      mlir::matchConstantIndex(DefiningOp);
      v20[0] = v4;
      DefiningOp = mlir::Value::getDefiningOp(v20);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, v5);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v3 += 4;
      if (!--v2)
      {
        a2 = v19;
        break;
      }
    }
  }

  v20[0] = *(*(a2 + 72) + 24);
  v6 = mlir::Value::getDefiningOp(v20);
  if (v6 && *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v7 = v6, mlir::tensor::preservesStaticInformation(*(v6 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v6 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v8 = *(*(v7 + 72) + 24) & 0xFFFFFFFFFFFFFF00;
    v9 = *(*(v7 + 72) + 24);
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  v11 = v8 | v9;
  v20[0] = *(*(v19 + 72) + 32 * *(v19 + 104) + 24);
  v12 = mlir::Value::getDefiningOp(v20);
  if (v12 && *(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v13 = v12, (mlir::tensor::preservesStaticInformation(*(v12 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v12 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0))
  {
    v14 = *(*(v13 + 72) + 24);
    if (!v10)
    {
      v11 = *(*(v19 + 72) + 24);
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v14 = *(*(v19 + 72) + 32 * *(v19 + 104) + 24);
  }

  result = 0;
  v16 = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  v17 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    if (v18)
    {
      v20[0] = *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 72);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }
  }

  return result;
}

void *anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47[6] = *MEMORY[0x277D85DE8];
  v34 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v35[0] = a2;
  mlir::RankedTensorType::getShape(&v34);
  v6 = v5;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v45 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&v45);
  if (v6 != v8)
  {
    return 0;
  }

  Shape = mlir::RankedTensorType::getShape(&v34);
  v45 = v47;
  v46 = 0x600000000;
  if (((8 * v9) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = 0;
  v13 = 8 * v9;
  if (v9)
  {
    memcpy(v45, Shape, v13);
    v12 = v46;
  }

  LODWORD(v46) = v12 + (v13 >> 3);
  mlir::RankedTensorType::getShape(&v34);
  if (v19 >= 1)
  {
  }

  v42 = v44;
  v43 = 0x600000000;
  v20 = v46;
  if (v46)
  {
    if (v46 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v44, v45, 8 * v46);
    LODWORD(v43) = v20;
  }

  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v42);
  if (v42 != v44)
  {
    free(v42);
  }

  if (!hasValidSizesOffsets || (v22 = v45, v23 = v46, ElementType = mlir::RankedTensorType::getElementType(&v34), Encoding = mlir::RankedTensorType::getEncoding(&v34), v26 = mlir::RankedTensorType::get(v22, v23, ElementType, Encoding), v33 = v26, v34 == v26))
  {
    result = 0;
  }

  else
  {
    result = mlir::tensor::preservesStaticInformation(v34, v26);
    if (result)
    {
      mlir::TypeRange::TypeRange(v41, &v34, 1uLL);
      mlir::TypeRange::TypeRange(&v36, &v33, 1uLL);
      result = mlir::tensor::CastOp::areCastCompatible(v41[0], v41[1], v36, v37);
      if (result)
      {
        v27 = *(v35[0] + 24);
        v41[0] = *(*(v35[0] + 72) + 24);
        mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 8), v27, &v33, v41);
        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(v35);
      }
    }
  }

  if (v45 != v47)
  {
    v28 = result;
    free(v45);
    return v28;
  }

  return result;
}

void mlir::OpBuilder::createOrFold<mlir::tensor::InsertSliceOp,mlir::Value &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a3;
  Context = mlir::Attribute::getContext(&v18);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, Context);
  if (v17)
  {
    mlir::OperationState::OperationState(v21, a3, v16);
    mlir::tensor::InsertSliceOp::build(a1, v21, *a4, *a5, *a6, *(a6 + 8), *a7, *(a7 + 8), *a8, *(a8 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(v21, v20, v19);
}

void anonymous namespace::FoldStaticZeroPadding::~FoldStaticZeroPadding(_anonymous_namespace_::FoldStaticZeroPadding *this)
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

void anonymous namespace::FoldSourceTensorCast::~FoldSourceTensorCast(_anonymous_namespace_::FoldSourceTensorCast *this)
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

uint64_t anonymous namespace::FoldSourceTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v5[9] = *MEMORY[0x277D85DE8];
  v5[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v5);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    return 0;
  }

  result = mlir::tensor::preservesStaticInformation(*(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v5[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  return result;
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10)
{
  v32[5] = *MEMORY[0x277D85DE8];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v30, a2, v19);
    v21 = *a3;
    v22 = *a4;
    v24 = *a5;
    v23 = a5[1];
    v25 = *a6;
    v26 = a6[1];
    v28 = v25;
    mlir::ValueRange::ValueRange(v32, *a7, *(a7 + 8));
    mlir::ValueRange::ValueRange(v31, *a8, *(a8 + 8));
    LOBYTE(v27) = *a9;
    mlir::tensor::PadOp::build(a1, v30, v21, v22, v24, v23, v28, v26, v32[0], v32[1], v31[0], v31[1], v27, *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v30, v32, v31);
}

void anonymous namespace::FoldTargetTensorCast::~FoldTargetTensorCast(_anonymous_namespace_::FoldTargetTensorCast *this)
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

uint64_t anonymous namespace::FoldTargetTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2 - 16;
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (*NextResultAtOffset && !**NextResultAtOffset)
  {
    v7 = *(a2 + 36);
    v8 = v7 ? v3 : 0;
    v20[0] = v8;
    v20[1] = v7;
    mlir::ResultRange::use_begin(v20, v17);
    v9 = *(a2 + 36);
    v10 = v9 ? v3 : 0;
    v19.n128_u64[0] = v10;
    v19.n128_u64[1] = v9;
    mlir::ResultRange::use_end(&v19, v23);
    v22 = v18;
    *v20 = v17[0];
    v21 = v17[1];
    v11 = *(v18 + 16);
    if (v11)
    {
      if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        v12 = *(a2 + 36) ? v3 : 0;
        v13 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8);
        v14 = *(v11 + 36) ? v11 - 16 : 0;
        v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
        if (mlir::tensor::preservesStaticInformation(v13 & 0xFFFFFFFFFFFFFFF8, *(v15 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          if (*(v11 + 36))
          {
            v16 = v11 - 16;
          }

          else
          {
            v16 = 0;
          }

          mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
          v20[0] = *(a2 + 96);
          mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
        }
      }
    }
  }

  return 0;
}

void anonymous namespace::FoldOrthogonalPaddings::~FoldOrthogonalPaddings(_anonymous_namespace_::FoldOrthogonalPaddings *this)
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

uint64_t anonymous namespace::FoldOrthogonalPaddings::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v19[0] = *(*(a2 + 9) + 24);
  result = mlir::Value::getDefiningOp(v19);
  if (result)
  {
    v5 = *(*(result + 48) + 16);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v7 = result;
    }

    else
    {
      v7 = 0;
    }

    v16 = v7;
    if (!v6)
    {
      return 0;
    }

    v19[0] = *(*(result + 72) + 24);
    result = mlir::Value::getDefiningOp(v19);
    if (result)
    {
      if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id || *(result + 16 * ((*(result + 44) >> 23) & 1) + 64))
      {
        return 0;
      }

      v19[0] = *(*(result + 72) + 24);
      result = mlir::Value::getDefiningOp(v19);
      if (result)
      {
        v8 = *(*(result + 48) + 16);
        v9 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
        if (v8 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
        {
          v10 = result;
        }

        else
        {
          v10 = 0;
        }

        v15 = v10;
        if (v9)
        {
          v19[0] = *(*(*(v17 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          mlir::RankedTensorType::getShape(v19);
          v12 = v11;
          v19[0] = *(*(*(v15 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          mlir::RankedTensorType::getShape(v19);
          if (v13 == v12)
          {
            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(&v16);
          }

          v19[0] = "cannot fold rank-reducing chain";
          v20 = 259;
          v18 = v19;
          v14 = *(a3 + 16);
          if (v14)
          {
            if (mlir::RewriterBase::Listener::classof(v14))
            {
              (*(*v14 + 88))(v14, *(v17 + 3), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v18);
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

uint64_t mlir::matchPattern<mlir::detail::constant_op_binder<mlir::Attribute>>(uint64_t a1, unint64_t **a2)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::Attribute>::match(a2, result);
  }

  return result;
}

BOOL llvm::SmallBitVector::anyCommon(llvm::SmallBitVector *this, const llvm::SmallBitVector *a2)
{
  v2 = *this;
  v3 = *a2;
  if (*this)
  {
    v15 = v2 >> 58;
    if (v3)
    {
      return (~((-1 << v15) | (-1 << (v3 >> 58))) & ((v2 & v3) >> 1)) != 0;
    }
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      v4 = *(v2 + 8);
      LODWORD(v5) = *(v3 + 8);
      if (v5 >= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v5;
      }

      if (v5)
      {
        v6 = *v2;
        v7 = *v3;
        v8 = v5 - 1;
        do
        {
          v10 = *v6++;
          v9 = v10;
          v11 = *v7++;
          v12 = v11 & v9;
          result = v12 != 0;
          if (v12)
          {
            v14 = 1;
          }

          else
          {
            v14 = v8 == 0;
          }

          --v8;
        }

        while (!v14);
        return result;
      }

      return 0;
    }

    v15 = *(v2 + 64);
  }

  if (v3)
  {
    if (v3 >> 58 < v15)
    {
      v15 = v3 >> 58;
    }

    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 64) < v15)
    {
      v15 = *(v3 + 64);
    }

    if (!v15)
    {
      return 0;
    }
  }

  v16 = (v3 >> 1) & ~(-1 << (v3 >> 58));
  if (v2)
  {
    v19 = (v2 >> 1) & ~(-1 << (v2 >> 58));
    if (v3)
    {
      v22 = 0;
      do
      {
        v23 = (v19 & (1 << v22)) == 0 || (v16 & (1 << v22)) == 0;
        result = !v23;
        if (!v23)
        {
          break;
        }

        v14 = v15 - 1 == v22++;
      }

      while (!v14);
    }

    else
    {
      v20 = 0;
      while (((v19 >> v20) & 1) == 0 || ((*(*v3 + 8 * (v20 >> 6)) >> v20) & 1) == 0)
      {
        if (v15 == ++v20)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v17 = *v2;
    if (v3)
    {
      v21 = 0;
      while (((v17[v21 >> 6] >> v21) & 1) == 0 || ((v16 >> v21) & 1) == 0)
      {
        if (v15 == ++v21)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      v18 = 0;
      while ((v17[v18 >> 6] & (1 << v18)) == 0 || (*(*v3 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        if (v15 == ++v18)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,4u>>(int a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v18, a2, v13);
    mlir::tensor::ExtractSliceOp::build(a1, v18, 0, *a3, *a4, *(a4 + 8), *a5, *(a5 + 8), *a6, *(a6 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,4u>,llvm::SmallVector<mlir::OpFoldResult,4u>&,llvm::SmallVector<mlir::OpFoldResult,4u>>(v18, v17, v16);
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::SmallVector<mlir::OpFoldResult,6u>&,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(int a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v22[38] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if (v18)
  {
    mlir::OperationState::OperationState(v22, a2, v17);
    mlir::tensor::PadOp::build(a1, v22, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *a8, *(a8 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v22, v21, v20);
}

void anonymous namespace::FoldStaticPadding::~FoldStaticPadding(_anonymous_namespace_::FoldStaticPadding *this)
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

uint64_t anonymous namespace::FoldStaticPadding::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v62[6] = *MEMORY[0x277D85DE8];
  v44 = *(*(a2 + 72) + 24);
  if (*(*(*(v44 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
    __s1 = (*(v44 + 8) & 0xFFFFFFFFFFFFFFF8);
    mlir::RankedTensorType::getShape(&__s1);
    v4 = *(v3 + 36) ? v3 - 16 : 0;
    v43 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v43)
    {
      mlir::RankedTensorType::getShape(&v43);
      v60 = v62;
      v61 = 0x600000000;
      v57 = &v59;
      v58 = 0x600000000;
      v5 = v3 + 64;
      v6 = *(v3 + 44);
      v7 = (v6 >> 23) & 1;
      v8 = v3 + 64 + 16 * v7;
      v9 = *(v8 + 28);
      if ((v6 & 0x800000) != 0)
      {
        v10 = *(v3 + 72);
        v40 = v3;
        v41 = v3 + 64;
        if (v9)
        {
LABEL_9:
          v11 = *(v8 + 24);
          v12 = (v9 + v11) - v11;
          v13 = (v10 + 32 * v11 + 24);
          while (1)
          {
            v14 = *v13;
            v46 = 1;
            __s1 = 0;
            v47 = 0;
            v49[0] = &__s1;
            v50[0] = v14;
            DefiningOp = mlir::Value::getDefiningOp(v50);
            if (DefiningOp)
            {
              v16 = DefiningOp;
              v54 = 0;
              v51 = &v54;
              if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v51, DefiningOp))
              {
                v17 = *(*(*(v16 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
                v18 = v17 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
                v19 = v18 || v17 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
                v20 = v19 || v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
                if (v20 && (mlir::detail::constant_int_value_binder::match(v49, v54) & 1) != 0)
                {
                  break;
                }
              }
            }

            if (v61 >= HIDWORD(v61))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v60[v61] = 0x8000000000000000;
            LODWORD(v61) = v61 + 1;
            if (v58 >= HIDWORD(v58))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v57[v58] = v14;
            LODWORD(v58) = v58 + 1;
            if (v46 < 0x41)
            {
              goto LABEL_10;
            }

LABEL_32:
            if (__s1)
            {
              MEMORY[0x259C63150](__s1, 0x1000C8000313F17);
            }

LABEL_10:
            v13 += 4;
            if (!--v12)
            {
              v3 = v40;
              v5 = v41;
              v23 = *(v40 + 44);
              v7 = (v23 >> 23) & 1;
              v24 = v23 & 0x800000;
              goto LABEL_49;
            }
          }

          if (v47)
          {
            if (v46 >= 0x41)
            {
              p_s1 = __s1;
            }

            else
            {
              p_s1 = &__s1;
            }
          }

          else
          {
            if (v46 <= 0x40)
            {
              if (v46)
              {
                v22 = (__s1 << -v46) >> -v46;
              }

              else
              {
                v22 = 0;
              }

LABEL_40:
              if (v61 >= HIDWORD(v61))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v60[v61] = v22;
              LODWORD(v61) = v61 + 1;
              if (v46 < 0x41)
              {
                goto LABEL_10;
              }

              goto LABEL_32;
            }

            p_s1 = __s1;
          }

          v22 = *p_s1;
          goto LABEL_40;
        }
      }

      else
      {
        v10 = 0;
        v40 = v3;
        v41 = v3 + 64;
        if (v9)
        {
          goto LABEL_9;
        }
      }

      v24 = v6 & 0x800000;
LABEL_49:
      v54 = &v56;
      v55 = 0x600000000;
      v51 = &v53;
      v52 = 0x600000000;
      v25 = (v5 + 16 * v7);
      v26 = v25[8];
      if (v24)
      {
        v27 = *(v3 + 72);
        if (!v26)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v27 = 0;
        if (!v26)
        {
LABEL_89:
          __s1 = *(v5 + 16 * v7 + 16);
          mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
        }
      }

      v28 = (v25[7] + v25[6]);
      v29 = (v26 + v28) - v28;
      v30 = (v27 + 32 * v28 + 24);
      while (1)
      {
        v31 = *v30;
        v46 = 1;
        __s1 = 0;
        v47 = 0;
        v42 = &__s1;
        v48[0] = v31;
        v32 = mlir::Value::getDefiningOp(v48);
        if (v32)
        {
          v33 = v32;
          v50[0] = 0;
          v49[0] = v50;
          if (mlir::detail::constant_op_binder<mlir::Attribute>::match(v49, v32))
          {
            v34 = *(*(*(v33 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
            v35 = v34 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v34 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
            v36 = v35 || v34 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
            v37 = v36 || v34 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
            if (v37 && (mlir::detail::constant_int_value_binder::match(&v42, v50[0]) & 1) != 0)
            {
              break;
            }
          }
        }

        if (v55 >= HIDWORD(v55))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v54[v55] = 0x8000000000000000;
        LODWORD(v55) = v55 + 1;
        if (v52 >= HIDWORD(v52))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v51[v52] = v31;
        LODWORD(v52) = v52 + 1;
        if (v46 < 0x41)
        {
          goto LABEL_52;
        }

LABEL_74:
        if (__s1)
        {
          MEMORY[0x259C63150](__s1, 0x1000C8000313F17);
        }

LABEL_52:
        v30 += 4;
        if (!--v29)
        {
          v5 = v41;
          v7 = (*(v40 + 44) >> 23) & 1;
          goto LABEL_89;
        }
      }

      if (v47)
      {
        if (v46 >= 0x41)
        {
          v38 = __s1;
        }

        else
        {
          v38 = &__s1;
        }
      }

      else
      {
        if (v46 <= 0x40)
        {
          if (v46)
          {
            v39 = (__s1 << -v46) >> -v46;
          }

          else
          {
            v39 = 0;
          }

LABEL_82:
          if (v55 >= HIDWORD(v55))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v54[v55] = v39;
          LODWORD(v55) = v55 + 1;
          if (v46 < 0x41)
          {
            goto LABEL_52;
          }

          goto LABEL_74;
        }

        v38 = __s1;
      }

      v39 = *v38;
      goto LABEL_82;
    }
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::Value &,llvm::ArrayRef<long long> &,llvm::ArrayRef<long long> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10)
{
  v32[5] = *MEMORY[0x277D85DE8];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, Context);
  if (v20)
  {
    mlir::OperationState::OperationState(v30, a2, v19);
    v21 = *a3;
    v22 = *a4;
    v24 = *a5;
    v23 = a5[1];
    v25 = *a6;
    v26 = a6[1];
    v28 = v25;
    mlir::ValueRange::ValueRange(v32, *a7, *(a7 + 8));
    mlir::ValueRange::ValueRange(v31, *a8, *(a8 + 8));
    LOBYTE(v27) = *a9;
    mlir::tensor::PadOp::build(a1, v30, v21, v22, v24, v23, v28, v26, v32[0], v32[1], v31[0], v31[1], v27, *a10, *(a10 + 8));
  }

  mlir::OpBuilder::create<mlir::tensor::PadOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,mlir::OperandRange,mlir::OperandRange,BOOL,llvm::SmallVector<mlir::NamedAttribute,3u>>(v30, v32, v31);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::tensor::PadOp &>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::tensor::EmptyOp &>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

void anonymous namespace::FoldConsecutiveConstantPadding::~FoldConsecutiveConstantPadding(_anonymous_namespace_::FoldConsecutiveConstantPadding *this)
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

uint64_t anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = a2;
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64))
  {
    v5 = "skipping unfoldable pad";
  }

  else
  {
    v20[0] = *(*(a2 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v20);
    if (DefiningOp && ((v7 = *(*(DefiningOp + 48) + 16), v8 = v7 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, v7 != &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id) ? (v9 = 0) : (v9 = DefiningOp), (v17 = v9, v8) && !*(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64)))
    {
      ConstantPaddingValue = mlir::tensor::PadOp::getConstantPaddingValue(&v18);
      v13 = mlir::tensor::PadOp::getConstantPaddingValue(&v17);
      if (ConstantPaddingValue && v13 && ConstantPaddingValue == v13)
      {
        v15 = *(a3 + 8);
        mlir::getAffineDimExpr(0, v15, v14);
        mlir::getAffineDimExpr(1, v15, v16);
        mlir::tensor::PadOp::getMixedHighPad(&v18);
      }

      v5 = "cannot fold PadOps with different or non-constant padding values";
    }

    else
    {
      v5 = "producer is not a foldable tensor.pad op";
    }
  }

  v20[0] = v5;
  v21 = 259;
  v19 = v20;
  v10 = *(a3 + 16);
  if (v10 && mlir::RewriterBase::Listener::classof(v10))
  {
    (*(*v10 + 88))(v10, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::PadOp &>(mlir::tensor::PadOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v19);
  }

  return 0;
}

void *anonymous namespace::FoldConsecutiveConstantPadding::matchAndRewrite(mlir::tensor::PadOp,mlir::PatternRewriter &)const::{lambda(llvm::ArrayRef<mlir::OpFoldResult>,llvm::ArrayRef<mlir::OpFoldResult>)#1}::operator()(void *result, uint64_t *a2, void *a3, uint64_t a4, void *a5)
{
  v14[2] = *MEMORY[0x277D85DE8];
  *result = result + 2;
  result[1] = 0x600000000;
  if (a4)
  {
    v8 = result;
    v9 = 8 * a4;
    do
    {
      v10 = *a2;
      v11 = *a2[1];
      v12 = mlir::AffineExpr::operator+(a2[2], *a2[3]);
      v14[0] = *a3;
      v14[1] = *a5;
      result = mlir::affine::makeComposedFoldedAffineApply((v10 + 8), v11, v12, v14, 2);
      v13 = *(v8 + 2);
      if (v13 >= *(v8 + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*v8 + 8 * v13) = result;
      ++*(v8 + 2);
      ++a3;
      ++a5;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void *anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpConstantArgumentFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(int a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v20, a2, v15);
    mlir::tensor::ParallelInsertSliceOp::build(a1, v20, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  }

  mlir::OpBuilder::create<mlir::tensor::ParallelInsertSliceOp,mlir::Value &,mlir::detail::TypedValue<mlir::RankedTensorType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v20, v19, v18);
}

void *anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpCastFolder(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t DefiningOp, uint64_t a2)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v19 = a2;
  v2 = *(a2 + 68);
  if (v2)
  {
    v3 = (*(a2 + 72) + 24);
    while (1)
    {
      v4 = *v3;
      mlir::matchConstantIndex(DefiningOp);
      v20[0] = v4;
      DefiningOp = mlir::Value::getDefiningOp(v20);
      if (DefiningOp)
      {
        DefiningOp = mlir::arith::ConstantIndexOp::classof(DefiningOp, v5);
        if (DefiningOp)
        {
          return 0;
        }
      }

      v3 += 4;
      if (!--v2)
      {
        a2 = v19;
        break;
      }
    }
  }

  v20[0] = *(*(a2 + 72) + 24);
  v6 = mlir::Value::getDefiningOp(v20);
  if (v6 && *(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v7 = v6, mlir::tensor::preservesStaticInformation(*(v6 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v6 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v8 = *(*(v7 + 72) + 24) & 0xFFFFFFFFFFFFFF00;
    v9 = *(*(v7 + 72) + 24);
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  v11 = v8 | v9;
  v20[0] = *(*(v19 + 72) + 32 * *(v19 + 104) + 24);
  v12 = mlir::Value::getDefiningOp(v20);
  if (v12 && *(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id && (v13 = v12, (mlir::tensor::preservesStaticInformation(*(v12 - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v12 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) != 0))
  {
    v14 = *(*(v13 + 72) + 24);
    if (!v10)
    {
      v11 = *(*(v19 + 72) + 24);
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v14 = *(*(v19 + 72) + 32 * *(v19 + 104) + 24);
  }

  result = 0;
  v16 = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  v17 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    if (v18)
    {
      v20[0] = *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 72);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
    }
  }

  return result;
}

void *anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::~InsertSliceOpSourceCastInserter(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v49[6] = *MEMORY[0x277D85DE8];
  v36 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v37[0] = a2;
  mlir::RankedTensorType::getShape(&v36);
  v6 = v5;
  v47 = (*(*(*(a2 + 72) + 32 * *(a2 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&v47);
  if (v6 != v7)
  {
    return 0;
  }

  Shape = mlir::RankedTensorType::getShape(&v36);
  v47 = v49;
  v48 = 0x600000000;
  if (((8 * v8) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = 0;
  v12 = 8 * v8;
  if (v8)
  {
    memcpy(v47, Shape, v12);
    v11 = v48;
  }

  LODWORD(v48) = v11 + (v12 >> 3);
  mlir::RankedTensorType::getShape(&v36);
  if (v18 >= 1)
  {
  }

  v44 = v46;
  v45 = 0x600000000;
  v19 = v48;
  if (v48)
  {
    if (v48 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v46, v47, 8 * v48);
    LODWORD(v45) = v19;
  }

  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v44);
  if (v44 != v46)
  {
    free(v44);
  }

  if (!hasValidSizesOffsets || (v21 = v47, v22 = v48, ElementType = mlir::RankedTensorType::getElementType(&v36), Encoding = mlir::RankedTensorType::getEncoding(&v36), v25 = mlir::RankedTensorType::get(v21, v22, ElementType, Encoding), v35 = v25, v36 == v25))
  {
    result = 0;
  }

  else
  {
    result = mlir::tensor::preservesStaticInformation(v36, v25);
    if (result)
    {
      mlir::TypeRange::TypeRange(v43, &v36, 1uLL);
      mlir::TypeRange::TypeRange(&v38, &v35, 1uLL);
      result = mlir::tensor::CastOp::areCastCompatible(v43[0], v43[1], v38, v39);
      if (result)
      {
        ParentOp = *(v37[0] + 16);
        if (ParentOp)
        {
          ParentOp = mlir::Block::getParentOp(ParentOp);
        }

        v27 = *(ParentOp + 2);
        NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(ParentOp);
        a3[3] = v27;
        a3[4] = NodePtr;
        v29 = *(v37[0] + 24);
        v43[0] = *(*(v37[0] + 72) + 24);
        mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a3 + 1), v29, &v35, v43);
        mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(v37);
      }
    }
  }

  if (v47 != v49)
  {
    v30 = result;
    free(v47);
    return v30;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>,long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (37 * *a2) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0x8000000000000000;
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
    llvm::DenseMap<long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>,long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>::LookupBucketFor<long long>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>,long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>::LookupBucketFor<long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
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
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
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

void *llvm::DenseMap<long long,mlir::OpFoldResult,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseMapPair<long long,mlir::OpFoldResult>>::grow(uint64_t a1, int a2)
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
        *(v13 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *v13 = 0x7FFFFFFFFFFFFFFFLL;
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
          *v10 = 0x7FFFFFFFFFFFFFFFLL;
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
        if ((*v16 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & (37 * v23);
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == 0x8000000000000000;
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
      *(v19 - 2) = 0x7FFFFFFFFFFFFFFFLL;
      *v19 = 0x7FFFFFFFFFFFFFFFLL;
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
        *v10 = 0x7FFFFFFFFFFFFFFFLL;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::PackOp>(mlir::tensor::PackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (v1)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = *a1;
    v7 = *v2;
    v8 = 8 * v3 - 8;
    v9 = 8 * v1 - 8;
    while (1)
    {
      v10 = *v6;
      ConstantIntValue = mlir::getConstantIntValue(*v7);
      if (v12)
      {
        if (v10 != 0x8000000000000000 && ConstantIntValue != v10)
        {
          return 0;
        }
      }

      else if (v10 != 0x8000000000000000)
      {
        return 0;
      }

      result = 1;
      if (v9)
      {
        ++v6;
        ++v7;
        v14 = v8;
        v8 -= 8;
        v9 -= 8;
        if (v14)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

void mlir::RewritePattern::create<FoldTensorCastProducerOp,mlir::MLIRContext *>()
{
  operator new();
}

{
  {
    v0 = llvm::getTypeName<mlir::DestinationStyleOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_29_4(v2);
  }
}

void FoldTensorCastProducerOp::~FoldTensorCastProducerOp(FoldTensorCastProducerOp *this)
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

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::rewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 48);

  return v3();
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::match(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 56);

  return v3();
}

uint64_t mlir::detail::OpOrInterfaceRewritePatternBase<mlir::DestinationStyleOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 64);

  return v3();
}

BOOL mlir::AsmParser::parseType<mlir::TensorType>(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 536))(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v5 = v20;
  v6 = *(*v20 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v18 = "invalid kind of type specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v4, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties]";
  v6 = 116;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::GenerateOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 12);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::InsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::PackOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void *mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::tensor::PackOp>(llvm::LogicalResult (*)(mlir::tensor::PackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::PadOpGenericAdaptorBase::Properties]";
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

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::tensor::PadOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "tensor.yield", 12);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties]";
  v6 = 123;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties]";
  v6 = 111;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[3])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 40))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void *mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::tensor::UnPackOp>(llvm::LogicalResult (*)(mlir::tensor::UnPackOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

llvm::raw_ostream *OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return mlir::printDynamicIndexList(v15, v16, v17, v18, v19, v20, 0, 0, a14, a15, 2);
}

uint64_t OUTLINED_FUNCTION_20_4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 1869901417;
  *(result + 32) += 4;
  return result;
}

void OUTLINED_FUNCTION_35_6()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_62_6()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_80_5()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_81_6(uint64_t a1)
{
  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_82_5()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_83_5()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_89_5()
{

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

uint64_t OUTLINED_FUNCTION_93_4@<X0>(void **a1@<X2>, mlir::Operation *a2@<X8>)
{

  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(a2, v2 & 0xFFFFFFFFFFFFFFF8, a1, 6, 0);
}

uint64_t OUTLINED_FUNCTION_100_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 7) = 1936026729;
  *a2 = *"inner_tiles";
  *(result + 32) += 11;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_1@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 6;
  return result;
}

void OUTLINED_FUNCTION_123_0()
{

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

uint64_t OUTLINED_FUNCTION_126_0()
{
  v2 = (*v0 + 24);

  return mlir::Attribute::getContext(v2);
}

void OUTLINED_FUNCTION_127_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  *(v31 - 152) = a2;
  *(v31 - 144) = v30;
  *(v31 - 140) = a30;
}

llvm::raw_ostream *OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return mlir::printDynamicIndexList(v11, v12, a3, v13, v14, v15, 0, 0, a9, a10, a11);
}

void OUTLINED_FUNCTION_139_1()
{

  mlir::detail::DenseArrayAttrImpl<long long>::print();
}

uint64_t *OUTLINED_FUNCTION_149_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = a18;
  v24 = a19;

  return mlir::tensor::PadOp::getMixedPadImpl(v19, v20, v21, v23, v24, &a10);
}

void OUTLINED_FUNCTION_150_1(void **a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v4 = a1;
  LOWORD(v9) = 259;

  mlir::OpState::emitOpError(v2, va, va1);
}

uint64_t OUTLINED_FUNCTION_163_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = a1;

  return mlir::DictionaryAttr::getValue(&a13);
}

uint64_t OUTLINED_FUNCTION_165_1@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
}

uint64_t OUTLINED_FUNCTION_166_1(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a9 = a1;

  return mlir::DictionaryAttr::getValue(&a9);
}

unint64_t OUTLINED_FUNCTION_167_0()
{
  v2 = *v0;

  return mlir::Operation::getAttrDictionary(v2);
}

uint64_t OUTLINED_FUNCTION_188_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 6) = v2;
  *(result + 32) += 14;
  return result;
}

uint64_t OUTLINED_FUNCTION_189_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 7) = v2;
  *(result + 32) += 15;
  return result;
}

uint64_t OUTLINED_FUNCTION_190_0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 12;
  return result;
}

uint64_t OUTLINED_FUNCTION_197_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  return mlir::Block::getTerminator(v3);
}

void OUTLINED_FUNCTION_198_0()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_199_0()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_200_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return mlir::RankedTensorType::getShape(&a2);
}

void mlir::tensor::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v68 = 1283;
    v47 = "tensor.cast";
LABEL_51:
    v65 = "Attempting to attach an interface to an unregistered operation ";
    v66 = v47;
    v49 = 11;
LABEL_52:
    v67 = v49;
    v63 = ".";
    v64 = 259;
    llvm::operator+(&v65, &v63, v69);
    llvm::report_fatal_error(v69, 1);
  }

  v4 = v2;
  v5 = *(v2 + 16);
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v69[0] = *(v2 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v69);
    v5 = *(v4 + 16);
    {
      goto LABEL_4;
    }
  }

  else
  {
    ReferencedDialect = *(v2 + 24);
    {
      goto LABEL_4;
    }
  }

  v43 = v5;
  v44 = ReferencedDialect;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  ReferencedDialect = v44;
  v5 = v43;
LABEL_4:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(ReferencedDialect, v5, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = v7;
  {
    v58 = v7;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v58;
  }

  mlir::detail::InterfaceMap::insert(v4 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v68 = 1283;
    v48 = "tensor.dim";
LABEL_49:
    v65 = "Attempting to attach an interface to an unregistered operation ";
    v66 = v48;
    v49 = 10;
    goto LABEL_52;
  }

  v11 = v9;
  v12 = *(v9 + 16);
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v69[0] = *(v9 + 8);
    v13 = mlir::StringAttr::getReferencedDialect(v69);
    v12 = *(v11 + 16);
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *(v9 + 24);
    {
      goto LABEL_9;
    }
  }

  v50 = v13;
  v54 = v12;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v50;
  v12 = v54;
LABEL_9:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v15 = v14;
  {
    v59 = v14;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v15 = v59;
  }

  mlir::detail::InterfaceMap::insert(v11 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v68 = 1283;
    v65 = "Attempting to attach an interface to an unregistered operation ";
    v66 = "tensor.empty";
    v49 = 12;
    goto LABEL_52;
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v69[0] = *(v16 + 8);
    v20 = mlir::StringAttr::getReferencedDialect(v69);
    v19 = *(v18 + 16);
    {
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *(v16 + 24);
    {
      goto LABEL_14;
    }
  }

  v51 = v20;
  v55 = v19;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v20 = v51;
  v19 = v55;
LABEL_14:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v21 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v22 = v21;
  {
    v60 = v21;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v22 = v60;
  }

  mlir::detail::InterfaceMap::insert(v18 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v68 = 1283;
    v65 = "Attempting to attach an interface to an unregistered operation ";
    v66 = "tensor.extract_slice";
    v49 = 20;
    goto LABEL_52;
  }

  v25 = v23;
  v26 = *(v23 + 16);
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v69[0] = *(v23 + 8);
    v27 = mlir::StringAttr::getReferencedDialect(v69);
    v26 = *(v25 + 16);
    {
      goto LABEL_19;
    }
  }

  else
  {
    v27 = *(v23 + 24);
    {
      goto LABEL_19;
    }
  }

  v52 = v27;
  v56 = v26;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v27 = v52;
  v26 = v56;
LABEL_19:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v28 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v29 = v28;
  {
    v61 = v28;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v29 = v61;
  }

  mlir::detail::InterfaceMap::insert(v25 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v68 = 1283;
    v48 = "tensor.pad";
    goto LABEL_49;
  }

  v32 = v30;
  v33 = *(v30 + 16);
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v69[0] = *(v30 + 8);
    v34 = mlir::StringAttr::getReferencedDialect(v69);
    v33 = *(v32 + 16);
    {
      goto LABEL_24;
    }
  }

  else
  {
    v34 = *(v30 + 24);
    {
      goto LABEL_24;
    }
  }

  v53 = v34;
  v57 = v33;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v34 = v53;
  v33 = v57;
LABEL_24:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v35 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v36 = v35;
  {
    v62 = v35;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v36 = v62;
  }

  mlir::detail::InterfaceMap::insert(v32 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::RankOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v68 = 1283;
    v47 = "tensor.rank";
    goto LABEL_51;
  }

  v39 = v37;
  v40 = *(v37 + 16);
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v69[0] = *(v37 + 8);
    v41 = mlir::StringAttr::getReferencedDialect(v69);
    v40 = *(v39 + 16);
    {
      goto LABEL_29;
    }
  }

  else
  {
    v41 = *(v37 + 24);
    {
      goto LABEL_29;
    }
  }

  v45 = v40;
  v46 = v41;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v41 = v46;
  v40 = v45;
LABEL_29:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v42 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  {
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert(v39 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v42);
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::tensor::anonymous namespace::CastOpInterface>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && *(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = v8;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v23 = v9;
    v24 = v10;
    v16[0] = a5;
    v16[1] = a3;
    v17 = 0;
    v18 = 0;
    v14 = mlir::ValueBoundsConstraintSet::BoundBuilder::operator[](v16, a4);
    Expr = mlir::ValueBoundsConstraintSet::getExpr(a5, *(*(a2 + 72) + 24), a4, 1);
    mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v14, Expr);
  }
}

unint64_t mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::tensor::anonymous namespace::DimOpInterface>::populateBoundsForIndexValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  result = mlir::tensor::DimOp::getConstantIndex(&v12);
  if (v7)
  {
    v9[0] = a4;
    v9[1] = a3;
    v10 = 0;
    v11 = 0;
    Expr = mlir::ValueBoundsConstraintSet::getExpr(a4, *(*(v12 + 72) + 24), result, 1);
    mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v9, Expr);
  }

  return result;
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::tensor::anonymous namespace::EmptyOpInterface>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v7[0] = a5;
  v7[1] = a3;
  v8 = 0;
  v9 = 0;
  v6 = mlir::ValueBoundsConstraintSet::BoundBuilder::operator[](v7, a4);
  mlir::tensor::EmptyOp::getMixedSizes(&v10, v11);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v6, *(v11[0] + a4));
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::tensor::anonymous namespace::ExtractSliceOpInterface>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2)
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = a2;
  mlir::tensor::ExtractSliceOp::getDroppedDims(v2);
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::tensor::anonymous namespace::RankOpInterface>::populateBoundsForIndexValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = 0;
  }

  v10 = v4;
  if (v4)
  {
    v7[0] = a4;
    v7[1] = a3;
    v8 = 0;
    v9 = 0;
    mlir::RankedTensorType::getShape(&v10);
    mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v7, v5, v6);
  }
}

void mlir::DialectRegistry::addExtension<mlir::tensor::TensorDialect>(void (*)(mlir::MLIRContext *,mlir::tensor::TensorDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  JUMPOUT(0x259C63180);
}

unint64_t *OUTLINED_FUNCTION_1_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return mlir::ValueRange::ValueRange(va, a2 + 32 * a1, (HIDWORD(a1) + a1) - a1);
}

void mlir::affine::AffineDialect::AffineDialect(mlir::affine::AffineDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "affine", 6, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id);
  *v3 = &unk_28688C4F0;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v6 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v6);
  }

  v5 = *(this + 4);
  if (!mlir::MLIRContext::isDialectLoading(v5, "ub", 2))
  {
    v6 = v5;
    mlir::MLIRContext::getOrLoadDialect(v5, "ub", 2, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::ub::UBDialect * mlir::MLIRContext::getOrLoadDialect<mlir::ub::UBDialect>(void)::{lambda(void)#1}>, &v6);
  }

  mlir::affine::AffineDialect::initialize(this);
}

void sub_256CD01C0()
{

  JUMPOUT(0x259C63180);
}

BOOL mlir::affine::isTopLevelValue(uint64_t a1, mlir::Block *a2)
{
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  v6 = v3;
  v7 = a1;
  if (v3)
  {
    ParentRegion = mlir::Value::getParentRegion(&v6);
    return ParentRegion == a2;
  }

  ParentRegion = *(mlir::Value::getDefiningOp(&v7) + 16);
  if (!ParentRegion)
  {
    return ParentRegion == a2;
  }

  return mlir::Block::getParent(ParentRegion) == a2;
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::affine::AffineApplyOp,mlir::affine::AffineMaxOp,mlir::affine::AffineMinOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::scf::SCFDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMaxOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::scf::SCFDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::affine::AffineMinOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::affine::AffineDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  }
}

uint64_t mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v32[38] = *MEMORY[0x277D85DE8];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(v32, v31, v30);
  }

  mlir::OperationState::OperationState(v32, a2, v9);
  v11 = *a3;
  v12 = *a4;
  if (!*a4)
  {
    goto LABEL_16;
  }

  v13 = *v12;
  {
    v23 = v11;
    v24 = v12;
    mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>();
    v12 = v24;
    v11 = v23;
    v14 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_5:
  v17 = v15;
  v18 = v16;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v22 = *v20;
    v21 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v22 < v14)
    {
      v17 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 == &v15[2 * v16] || *v17 != v14)
  {
    goto LABEL_16;
  }

  v25 = v17[1];
LABEL_17:
  mlir::ub::PoisonOp::build(a1, v32, v11, v12, v25);
  v26 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v27;
}

mlir::Block *mlir::affine::isTopLevelValue(uint64_t a1)
{
  v5 = a1;
  if (a1 && (*(a1 + 8) & 7) == 7)
  {
    result = mlir::Block::getParentOp(*(a1 + 16));
    if (result)
    {
      {
        v3 = result;
        mlir::affine::isTopLevelValue();
        result = v3;
      }

      v2 = *(**(result + 6) + 32);

      return v2();
    }
  }

  else
  {
    result = *(mlir::Value::getDefiningOp(&v5) + 16);
    if (result)
    {
      result = mlir::Block::getParentOp(result);
      if (result)
      {
        {
          v4 = result;
          mlir::affine::isTopLevelValue();
          result = v4;
        }

        return (*(**(result + 6) + 32))(*(result + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id);
      }
    }
  }

  return result;
}

unint64_t mlir::affine::getAffineScope(mlir::affine *this, mlir::Operation *a2)
{
  do
  {
    v3 = *(this + 2);
    if (!v3)
    {
      return 0;
    }

    v4 = this;
    ParentOp = mlir::Block::getParentOp(v3);
    if (!ParentOp)
    {
      return 0;
    }

    this = ParentOp;
    {
      mlir::affine::isTopLevelValue();
    }
  }

  while (!(*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id));
  v6 = *(v4 + 2);
  if (!v6)
  {
    return 0;
  }

  return mlir::Block::getParent(v6);
}

uint64_t mlir::affine::isValidDim(uint64_t a1)
{
  v7 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = a1;
  result = mlir::Type::isIndex(&v7);
  if (result)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v8);
    if (DefiningOp)
    {
      mlir::affine::getAffineScope(DefiningOp, v3);
      return mlir::affine::isValidDim();
    }

    else
    {
      result = mlir::Block::getParentOp(*(v8 + 16));
      if (result)
      {
        v4 = result;
        {
          mlir::affine::isTopLevelValue();
        }

        if ((*(**(v4 + 48) + 32))(*(v4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          return 1;
        }

        else
        {
          v5 = *(*(v4 + 48) + 16);
          return v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::affine::AffineParallelOp,void>::id;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::affine::isValidSymbol(unint64_t *a1, unint64_t *a2)
{
  v25 = a1;
  v31[0] = (a1[1] & 0xFFFFFFFFFFFFFFF8);
  LODWORD(DefiningOp) = mlir::Type::isIndex(v31);
  if (!DefiningOp)
  {
    return DefiningOp & 1;
  }

  if (a2)
  {
    v31[0] = a1;
    if ((~*(a1 + 2) & 7) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1;
    }

    v27 = v5;
    if (v5)
    {
      ParentRegion = mlir::Value::getParentRegion(&v27);
    }

    else
    {
      ParentRegion = *(mlir::Value::getDefiningOp(v31) + 16);
      if (ParentRegion)
      {
        ParentRegion = mlir::Block::getParent(ParentRegion);
      }
    }

    if (ParentRegion == a2)
    {
      return 1;
    }

    DefiningOp = mlir::Value::getDefiningOp(&v25);
    if (!DefiningOp)
    {
      v16 = a2[2];
      if (!v16)
      {
        return 0;
      }

      {
      }

      if ((*(**(v16 + 48) + 32))(*(v16 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    DefiningOp = mlir::Value::getDefiningOp(&v25);
    if (!DefiningOp)
    {
      return DefiningOp & 1;
    }
  }

  v7 = DefiningOp;
  v24 = 0;
  v31[0] = &v24;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(v31, DefiningOp))
  {
    return 1;
  }

  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    if ((*(v7 + 46) & 0x80) == 0)
    {
      return 1;
    }

    v17 = *(v7 + 68);
    if (!v17)
    {
      return 1;
    }

    v18 = *(v7 + 72);
    v19 = v17 - 1;
    v20 = (v18 + 24);
    do
    {
      v21 = *v20;
      v20 += 4;
      LODWORD(DefiningOp) = mlir::affine::isValidSymbol(v21, a2);
      v23 = v19-- != 0;
    }

    while (DefiningOp && v23);
    return DefiningOp & 1;
  }

  if (!mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v7))
  {
    if (!a2)
    {
      return 0;
    }

    DefiningOp = a2[2];
    if (DefiningOp)
    {
      if (mlir::Operation::hasTrait<mlir::OpTrait::IsIsolatedFromAbove>(DefiningOp))
      {
        return 0;
      }

LABEL_31:
      DefiningOp = *(a2[2] + 16);
      if (DefiningOp)
      {
        DefiningOp = mlir::Block::getParent(DefiningOp);
        if (DefiningOp)
        {
          return mlir::affine::isValidSymbol(v25, DefiningOp) & 1;
        }
      }
    }

    return DefiningOp & 1;
  }

  InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v7);
  v31[0] = v7;
  v31[1] = InterfaceFor;
  v30 = a2;
  ShapedValue = mlir::ShapedDimOpInterface::getShapedValue(v31);
  LOBYTE(DefiningOp) = mlir::affine::isTopLevelValue(ShapedValue);
  if (DefiningOp)
  {
    return DefiningOp & 1;
  }

  v11 = DefiningOp;
  v12 = mlir::ShapedDimOpInterface::getShapedValue(v31);
  LOBYTE(DefiningOp) = v11;
  if ((~*(v12 + 8) & 7) == 0)
  {
    return DefiningOp & 1;
  }

  Dimension = mlir::ShapedDimOpInterface::getDimension(v31);
  ConstantIntValue = mlir::getConstantIntValue(Dimension);
  LOBYTE(DefiningOp) = v11;
  if ((v15 & 1) == 0)
  {
    return DefiningOp & 1;
  }

  v27 = mlir::ShapedDimOpInterface::getShapedValue(v31);
  DefiningOp = mlir::Value::getDefiningOp(&v27);
  while (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    if (*(*(*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      return 0;
    }

    v27 = *(*(DefiningOp + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v27);
    if (!DefiningOp)
    {
      return DefiningOp & 1;
    }
  }

  v29 = ConstantIntValue;
  v28 = 0;
  v26[0] = &v29;
  v26[1] = &v30;
  v27 = DefiningOp;
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(&v27, v26);
  return HIBYTE(v28) & v28 & 1;
}

uint64_t mlir::affine::isValidSymbol(uint64_t result)
{
  v6 = result;
  if (result)
  {
    v1 = result;
    v5 = *(result + 8) & 0xFFFFFFFFFFFFFFF8;
    result = mlir::Type::isIndex(&v5);
    if (result)
    {
      if (mlir::affine::isTopLevelValue(v1))
      {
        return 1;
      }

      else
      {
        result = mlir::Value::getDefiningOp(&v6);
        if (result)
        {
          v3 = v6;
          AffineScope = mlir::affine::getAffineScope(result, v2);
          return mlir::affine::isValidSymbol(v3, AffineScope);
        }
      }
    }
  }

  return result;
}

uint64_t mlir::Operation::hasTrait<mlir::OpTrait::IsIsolatedFromAbove>(uint64_t a1)
{
  {
    v3 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

uint64_t mlir::affine::parseDimAndSymbolList(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v18[32] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x800000000;
  if (((*(*a1 + 720))(a1, &v16, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    v13 = 0;
    v14 = v16;
    if (v16 == v18)
    {
      return v13;
    }

    goto LABEL_12;
  }

  *a3 = v17;
  v6 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v6, v7);
  if ((*(*a1 + 720))(a1, &v16, 6, 1, 0xFFFFFFFFLL))
  {
    if (!v17)
    {
      v13 = 1;
      v14 = v16;
      if (v16 == v18)
      {
        return v13;
      }

      goto LABEL_12;
    }

    v9 = v16;
    v10 = 32 * v17 - 32;
    do
    {
      v11 = (*(*a1 + 728))(a1, v9, IndexType, a2);
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

  v13 = v11 & 1;
  v14 = v16;
  if (v16 != v18)
  {
LABEL_12:
    free(v14);
  }

  return v13;
}

BOOL mlir::affine::AffineApplyOp::parse(mlir::affine::AffineApplyOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v32 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::AffineMapAttr>(this, &v32, 0, "map", 3uLL, a2 + 112))
  {
    return 0;
  }

  v31 = 0;
  if ((mlir::affine::parseDimAndSymbolList(this, a2 + 16, &v31) & 1) == 0 || ((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  Value = mlir::AffineMapAttr::getValue(&v32);
  NumDims = mlir::AffineMap::getNumDims(&Value);
  if (NumDims == v31 && *(a2 + 6) == mlir::AffineMap::getNumSymbols(&Value) + NumDims)
  {
    NumResults = mlir::AffineMap::getNumResults(&Value);
    v10 = *(a2 + 18);
    if (v10 + NumResults > *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (NumResults)
    {
      v11 = *(a2 + 8) + 8 * v10;
      v12 = v11;
      v13 = NumResults;
      if (NumResults < 4)
      {
        goto LABEL_39;
      }

      v12 = (v11 + 8 * (NumResults & 0xFFFFFFFC));
      v13 = NumResults & 3;
      v14 = vdupq_n_s64(IndexType);
      v15 = (v11 + 16);
      v16 = NumResults & 0xFFFFFFFC;
      do
      {
        v15[-1] = v14;
        *v15 = v14;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if ((NumResults & 0xFFFFFFFC) != NumResults)
      {
LABEL_39:
        do
        {
          *v12++ = IndexType;
          --v13;
        }

        while (v13);
      }
    }

    *(a2 + 18) = v10 + NumResults;
    return 1;
  }

  else
  {
    v18 = (*(*this + 16))(this);
    v28 = "dimension or symbol index mismatch";
    v29 = 259;
    (*(*this + 24))(v33, this, v18, &v28);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    v19 = result;
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
      result = v19;
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
        result = v19;
      }

      v20 = __p;
      if (__p)
      {
        v21 = v39;
        v22 = __p;
        if (v39 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v39 = v20;
        operator delete(v22);
        result = v19;
      }

      v23 = v36;
      if (v36)
      {
        v24 = v37;
        v25 = v36;
        if (v37 != v36)
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
          v25 = v36;
        }

        v37 = v23;
        operator delete(v25);
        result = v19;
      }

      if (v34 != &v35)
      {
        free(v34);
        return v19;
      }
    }
  }

  return result;
}

llvm::raw_ostream *printDimAndSymbolList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v10 = a4 - a2;
  v11 = (*(*a6 + 16))(a6);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 40);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 40;
  }

  v35 = a1;
  v13 = a1 + 32 * a2;
  v14 = a5;
  if (v10 >= a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = v10;
  }

  v16 = (*(*a6 + 16))(a6);
  if (v15)
  {
    v17 = v16;
    (*(*a6 + 160))(a6, *(v13 + 24));
    v18 = v15 - 1;
    if (v15 != 1)
    {
      v24 = (v13 + 56);
      do
      {
        v26 = v17[4];
        if (v17[3] - v26 <= 1uLL)
        {
          llvm::raw_ostream::write(v17, ", ", 2uLL);
        }

        else
        {
          *v26 = 8236;
          v17[4] += 2;
        }

        v25 = *v24;
        v24 += 4;
        (*(*a6 + 160))(a6, v25);
        --v18;
      }

      while (v18);
    }
  }

  result = (*(*a6 + 16))(a6);
  v20 = *(result + 4);
  if (v20 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    v21 = v10 - v14;
    if (v10 <= v14)
    {
      return result;
    }
  }

  else
  {
    *(result + 4) = v20 + 1;
    *v20 = 41;
    v21 = v10 - v14;
    if (v10 <= v14)
    {
      return result;
    }
  }

  v22 = (*(*a6 + 16))(a6);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 91);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 91;
  }

  v27 = (*(*a6 + 16))(a6);
  (*(*a6 + 160))(a6, *(v13 + 32 * v14 + 24));
  if (v21 != 1)
  {
    v29 = a2 + v14 - a4 + 1;
    v30 = (32 * a2 + 32 * v14 + v35 + 56);
    do
    {
      v33 = v27[4];
      if (v27[3] - v33 > 1uLL)
      {
        *v33 = 8236;
        v27[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v27, ", ", 2uLL);
      }

      v31 = *v30;
      v30 += 4;
      (*(*a6 + 160))(a6, v31);
    }

    while (!__CFADD__(v29++, 1));
  }

  result = (*(*a6 + 16))(a6);
  v28 = *(result + 4);
  if (v28 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 93);
  }

  else
  {
    *(result + 4) = v28 + 1;
    *v28 = 93;
  }

  return result;
}