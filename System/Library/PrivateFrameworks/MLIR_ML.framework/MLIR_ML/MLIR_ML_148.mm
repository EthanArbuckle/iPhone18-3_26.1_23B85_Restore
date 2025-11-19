uint64_t anonymous namespace::FoldCopyOfCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v39);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    goto LABEL_15;
  }

  v6 = *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v6 = 0;
  }

  v38 = v6;
  v39 = v6;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && (v8 = DefiningOp, Shape = mlir::MemRefType::getShape(&v39), v11 = v10, v12 = mlir::MemRefType::getShape(&v38), v11 == v13) && !memcmp(Shape, v12, 8 * v11) && (ElementType = mlir::MemRefType::getElementType(&v39), ElementType == mlir::MemRefType::getElementType(&v38)))
  {
    (*(*a3 + 40))(a3, a2);
    v15 = *(a2 + 72);
    v16 = *(*(v8 + 72) + 24);
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
    (*(*a3 + 48))(a3, a2);
    v20 = 1;
  }

  else
  {
LABEL_15:
    v20 = 0;
  }

  v39 = *(*(a2 + 72) + 56);
  v21 = mlir::Value::getDefiningOp(&v39);
  if (v21 && *(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    v22 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(*v22 + 136);
    if (v23 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v22 = 0;
    }

    v38 = v22;
    v39 = v22;
    if (v23 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v24 = v21;
      v25 = mlir::MemRefType::getShape(&v39);
      v27 = v26;
      v28 = mlir::MemRefType::getShape(&v38);
      if (v27 == v29 && !memcmp(v25, v28, 8 * v27))
      {
        v30 = mlir::MemRefType::getElementType(&v39);
        if (v30 == mlir::MemRefType::getElementType(&v38))
        {
          (*(*a3 + 40))(a3, a2);
          v31 = *(a2 + 72);
          v32 = *(*(v24 + 72) + 24);
          v33 = v31 + 4;
          v34 = v31[5];
          if (v34)
          {
            v35 = *v33;
            *v34 = *v33;
            if (v35)
            {
              *(v35 + 8) = v34;
            }
          }

          v31[7] = v32;
          v31[5] = v32;
          v36 = *v32;
          v31[4] = *v32;
          if (v36)
          {
            *(v36 + 8) = v33;
          }

          *v32 = v33;
          (*(*a3 + 48))(a3, a2);
          return 1;
        }
      }
    }
  }

  return v20;
}

void anonymous namespace::FoldEmptyCopy::~FoldEmptyCopy(_anonymous_namespace_::FoldEmptyCopy *this)
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

uint64_t anonymous namespace::FoldEmptyCopy::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::BaseMemRefType::hasRank(&v14))
  {
    Shape = mlir::BaseMemRefType::getShape(&v14);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = Shape;
      while (*v8)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v8 = Shape;
    }

    if (v8 != (Shape + 8 * v6))
    {
      goto LABEL_17;
    }
  }

LABEL_9:
  v14 = *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::BaseMemRefType::hasRank(&v14))
  {
    v9 = mlir::BaseMemRefType::getShape(&v14);
    if (v10)
    {
      v11 = 8 * v10;
      for (i = v9; *i; ++i)
      {
        v11 -= 8;
        if (!v11)
        {
          return 0;
        }
      }
    }

    else
    {
      i = v9;
    }

    if (i != (v9 + 8 * v10))
    {
LABEL_17:
      (*(*a3 + 16))(a3, a2);
      return 1;
    }
  }

  return 0;
}

void anonymous namespace::FoldSelfCopy::~FoldSelfCopy(_anonymous_namespace_::FoldSelfCopy *this)
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

uint64_t anonymous namespace::FoldSelfCopy::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 72) + 24) != *(*(a2 + 72) + 56))
  {
    return 0;
  }

  (*(*a3 + 16))(a3);
  return 1;
}

void anonymous namespace::DimOfMemRefReshape::~DimOfMemRefReshape(_anonymous_namespace_::DimOfMemRefReshape *this)
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

uint64_t anonymous namespace::DimOfMemRefReshape::matchAndRewrite(uint64_t a1, void *a2, uint64_t a3)
{
  v22[0] = *(a2[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (!DefiningOp || (v6 = DefiningOp, *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::ReshapeOp,void>::id))
  {
    v7 = "Dim op is not defined by a reshape op.";
LABEL_4:
    v22[0] = v7;
    v23 = 259;
    v24 = v22;
    v8 = *(a3 + 16);
    if (v8)
    {
      if (mlir::RewriterBase::Listener::classof(v8))
      {
        (*(*v8 + 88))(v8, a2[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::memref::DimOp &>(mlir::memref::DimOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v24);
      }
    }

    return 0;
  }

  v22[0] = *(a2[9] + 56);
  ParentBlock = mlir::Value::getParentBlock(v22);
  v11 = *(v6 + 16);
  if (ParentBlock == v11)
  {
    v22[0] = *(a2[9] + 56);
    v15 = mlir::Value::getDefiningOp(v22);
    if (v15 && mlir::Operation::isBeforeInBlock(v6, v15))
    {
      v7 = "dim.getIndex is not defined before reshape in the same block.";
      goto LABEL_4;
    }
  }

  else if (a2[2] != v11)
  {
    v22[0] = *(a2[9] + 56);
    ParentRegion = mlir::Value::getParentRegion(v22);
    if (*(v6 + 16))
    {
      v13 = ParentRegion;
      Parent = mlir::Block::getParent(*(v6 + 16));
      if ((mlir::Region::isProperAncestor(v13, Parent) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((mlir::Region::isProperAncestor(ParentRegion, 0) & 1) == 0)
    {
LABEL_20:
      v7 = "dim.getIndex does not dominate reshape.";
      goto LABEL_4;
    }
  }

  v16 = *(v6 + 16);
  v17 = *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v6) + 8);
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  v18 = a2[3];
  v24 = *(*(v6 + 72) + 56);
  v21 = *(a2[9] + 56);
  v19 = mlir::OpBuilder::create<mlir::memref::LoadOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::IndexType>>((a3 + 8), v18, &v24, &v21);
  v22[0] = v19 - 16;
  v20 = *(a2 - 1);
  if ((v20 ^ *(v19 - 8)) >= 8)
  {
    v24 = (v20 & 0xFFFFFFFFFFFFFFF8);
    v22[0] = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>((a3 + 8), v18, &v24, v22) - 16;
  }

  (**a3)(a3, a2, v22, 1);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::memref::LoadOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::IndexType>>(mlir::BoolAttr **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::LoadOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::LoadOp,mlir::detail::TypedValue<mlir::MemRefType>,mlir::detail::TypedValue<mlir::IndexType>>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::memref::LoadOp::build(a1, v17, *a3, a4, 1uLL, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::LoadOp,void>::id)
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

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::memref::GenericAtomicRMWOp::verify(void)::$_0>(int a1, mlir *this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (mlir::isMemoryEffectFree(this, this))
  {
    return 1;
  }

  v12 = "body of 'memref.generic_atomic_rmw' should contain only operations with no side effects";
  v13 = 259;
  mlir::Operation::emitError(v14, this, &v12);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v4 = __p;
    if (__p)
    {
      v5 = v20;
      v6 = __p;
      if (v20 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v20 = v4;
      operator delete(v6);
    }

    v7 = v17;
    if (v17)
    {
      v8 = v18;
      v9 = v17;
      if (v18 != v17)
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
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return 0;
}

void anonymous namespace::ReinterpretCastOpExtractStridedMetadataFolder::~ReinterpretCastOpExtractStridedMetadataFolder(_anonymous_namespace_::ReinterpretCastOpExtractStridedMetadataFolder *this)
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

uint64_t anonymous namespace::ReinterpretCastOpExtractStridedMetadataFolder::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v15 = a2;
  v17[0] = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  v3 = DefiningOp;
  if (DefiningOp)
  {
    v4 = *(*(DefiningOp + 48) + 16);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::memref::ExtractStridedMetadataOp,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::memref::ExtractStridedMetadataOp,void>::id)
    {
      v6 = DefiningOp;
    }

    else
    {
      v6 = 0;
    }

    v14 = v6;
    if (v5)
    {
      v7 = *(DefiningOp + 36);
      v8 = (v7 - 2) >> 1;
      if (v7)
      {
        v9 = DefiningOp - 16;
      }

      else
      {
        v9 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v8 + 2);
      mlir::ValueRange::ValueRange(v16, NextResultAtOffset, v8 + 2 + v8 - (v8 + 2));
      mlir::getAsOpFoldResult(v16[0], v16[1], v17);
      v11 = *(*(*(v3 + 72) + 24) + 8);
      Context = mlir::Attribute::getContext((v3 + 24));
      constifyIndexValues(v17, v11 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantStrides, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
      mlir::memref::ReinterpretCastOp::getConstifiedMixedStrides(&v15);
    }

    return 0;
  }

  return v3;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a1 + 8), *(a2 + 24), a3, a4);
  (*(*a1 + 8))(a1, a2, v6);
  return v6;
}

uint64_t mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::memref::AllocOp &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v17[0] = *a4;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  if (v19 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v18[8] + 8 * v19++) = v11;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
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

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::assign(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = v6 << 6;
    v8 = (v7 + *a1 - 64);
    v9 = -v7;
    do
    {
      if (v8 + 2 != *v8)
      {
        free(*v8);
      }

      v8 -= 8;
      v9 += 64;
    }

    while (v9);
  }

  *(a1 + 2) = 0;
  if (a3 << 6 >> 6 > *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow();
  }

  v10 = 0;
  v11 = a3 << 6;
  if (a3)
  {
    v12 = 0;
    v13 = *a1;
    v14 = a3 << 6;
    do
    {
      v15 = (v13 + v12);
      v16 = (v13 + v12 + 16);
      *v15 = v16;
      v15[1] = 0x600000000;
      if (a2 != v13)
      {
        v17 = *(a2 + v12 + 8);
        if (*(a2 + v12 + 8))
        {
          if (v17 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v16, *(a2 + v12), 8 * *(a2 + v12 + 8));
          *(v15 + 2) = v17;
        }
      }

      v12 += 64;
    }

    while (v14 != v12);
    v10 = *(a1 + 2);
  }

  *(a1 + 2) = v10 + (v11 >> 6);
}

void *mlir::ComposeReassociativeReshapeOps<mlir::memref::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::memref::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(void *a1)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::memref::ExpandShapeOp,(mlir::ReshapeOpKind)0>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v25 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v25);
  if (result)
  {
    v4 = *(*(result + 48) + 16);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id)
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
      llvm::cast<mlir::ShapedType,mlir::Type>(&v25);
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

void mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v18, a2, v13);
    mlir::memref::ExpandShapeOp::build(a1, v18, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8));
  }

  mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v18, v17, v16);
}

void *mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
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

void mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::~ComposeExpandOfCollapseOp(void *a1)
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

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
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
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id;
  v8 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id ? DefiningOp : 0;
  v50 = v8;
  if (!v7)
  {
    return 0;
  }

  v9 = DefiningOp;
  v59 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v49[0] = llvm::cast<mlir::ShapedType,mlir::Type>(&v59);
  v49[1] = v10;
  v11 = *(a2 + 36) ? a2 - 16 : 0;
  v59 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v48[0] = llvm::cast<mlir::ShapedType,mlir::Type>(&v59);
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
      mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v51, v48, v54, v52);
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

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a1 + 1, *(a2 + 24), a3, a4, a5);
  ((*a1)[1])(a1, a2, v7);
  return v7;
}

uint64_t mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v28, &v30, v25);
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
  mlir::memref::CollapseShapeOp::build(v20, v28, v30, v31, &v26, 1uLL, 0, 0);
  v21 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id)
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

void *mlir::ComposeReassociativeReshapeOps<mlir::memref::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
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

void mlir::ComposeReassociativeReshapeOps<mlir::memref::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(void *a1)
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

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::memref::CollapseShapeOp,(mlir::ReshapeOpKind)1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v36 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v36);
  if (result)
  {
    v6 = *(*(result + 48) + 16);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id;
    if (v6 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id)
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
    v30[0] = llvm::cast<mlir::ShapedType,mlir::Type>(&v36);
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
      v25 = mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3 + 1, *(v32 + 24), v30, &v36, &v39);
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

void *mlir::ComposeCollapseOfExpandOp<mlir::memref::CollapseShapeOp,mlir::memref::ExpandShapeOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::MemRefType>::~ComposeCollapseOfExpandOp(void *a1)
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

void mlir::ComposeCollapseOfExpandOp<mlir::memref::CollapseShapeOp,mlir::memref::ExpandShapeOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::MemRefType>::~ComposeCollapseOfExpandOp(void *a1)
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

uint64_t mlir::ComposeCollapseOfExpandOp<mlir::memref::CollapseShapeOp,mlir::memref::ExpandShapeOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::MemRefType>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
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
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id;
  v7 = v5 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id ? DefiningOp : 0;
  v41 = v7;
  if (!v6)
  {
    return 0;
  }

  v52 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v40[0] = llvm::cast<mlir::ShapedType,mlir::Type>(&v52);
  v40[1] = v8;
  v9 = *(v42 + 36) ? v42 - 16 : 0;
  v52 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v39[0] = llvm::cast<mlir::ShapedType,mlir::Type>(&v52);
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
        mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, v42, v39, &v43, &v46);
      }

      v43 = *(*(v41 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>(a3, v42, v39, &v43);
    }

    else
    {
      v43 = *(*(v41 + 72) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, v42, v39, &v43, &v46);
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

void mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(mlir::IndexType **a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v16[38] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v16, a2, v11);
    mlir::memref::ExpandShapeOp::build(a1, v16, *a3, *a4, *a5, *(a5 + 8));
  }

  mlir::OpBuilder::create<mlir::memref::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v16, v15, v14);
}

void CollapseShapeOpMemRefCastFolder::~CollapseShapeOpMemRefCastFolder(CollapseShapeOpMemRefCastFolder *this)
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

uint64_t CollapseShapeOpMemRefCastFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v32[16] = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 72) + 24);
  v29 = a2;
  v30 = v4;
  result = mlir::Value::getDefiningOp(&v30);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
    {
      v6 = result;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      result = mlir::memref::CastOp::canFoldIntoConsumerOp(v6);
      if (result)
      {
        v7 = *(*(*(v6 + 72) + 24) + 8);
        mlir::tensor::ExpandShapeOp::getReassociationIndices(&v29, &v30);
        v8 = mlir::memref::CollapseShapeOp::computeCollapsedType(v7 & 0xFFFFFFFFFFFFFFF8, v30, v31);
        v9 = v30;
        if (v31)
        {
          v10 = v30 + 32 * v31 - 16;
          v11 = -32 * v31;
          do
          {
            v12 = *(v10 - 2);
            if (v10 != v12)
            {
              free(v12);
            }

            v10 -= 32;
            v11 += 32;
          }

          while (v11);
          v9 = v30;
        }

        if (v9 != v32)
        {
          free(v9);
        }

        if (*(v29 + 36))
        {
          v13 = v29 - 16;
        }

        else
        {
          v13 = 0;
        }

        if (v8 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          v14 = v29;
          ((*a3)[5])(a3, v29);
          v15 = *(v29 + 72);
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
          ((*a3)[6])(a3, v14);
        }

        else
        {
          v20 = *(v29 + 24);
          v27 = *(*(v6 + 72) + 24);
          mlir::tensor::ExpandShapeOp::getReassociationIndices(&v29, &v30);
          v28 = mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::detail::TypedValue<mlir::BaseMemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>>(a3 + 1, v20, &v27, &v30) - 16;
          v21 = v30;
          if (v31)
          {
            v22 = v30 + 32 * v31 - 16;
            v23 = -32 * v31;
            do
            {
              v24 = *(v22 - 2);
              if (v22 != v24)
              {
                free(v24);
              }

              v22 -= 32;
              v23 += 32;
            }

            while (v23);
            v21 = v30;
          }

          if (v21 != v32)
          {
            free(v21);
          }

          v25 = v29;
          v30 = (*(v29 - 8) & 0xFFFFFFFFFFFFFFF8);
          v26 = mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::detail::TypedValue<mlir::MemRefType>>((a3 + 1), *(v29 + 24), &v30, &v28);
          ((*a3)[1])(a3, v25, v26);
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::detail::TypedValue<mlir::BaseMemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::memref::CollapseShapeOp::build(a1, v17, *a3, *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id)
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

BOOL llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(uint64_t a1, unsigned int a2, mlir::MemRefType *this)
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

      Shape = mlir::MemRefType::getShape(this);
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

uint64_t llvm::SmallVectorTemplateBase<mlir::Range,true>::growAndEmplaceBack<mlir::Range>(uint64_t a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(a2 + 2);
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2 >= *(a1 + 12))
  {
    if (v3 > &v7 || v3 + 24 * v2 <= &v7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = v3 + 24 * *(a1 + 8);
  v5 = v7;
  *(v4 + 16) = v8;
  *v4 = v5;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 24 * v4 - 24;
}

void mlir::OpBuilder::createOrFold<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a3;
  Context = mlir::Attribute::getContext(&v18);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id, Context);
  if (v17)
  {
    mlir::OperationState::OperationState(v21, a3, v16);
    mlir::memref::SubViewOp::build(a1, v21, *a4, *a5, *a6, *(a6 + 8), *a7, *(a7 + 8), *a8, *(a8 + 8), 0, 0);
  }

  mlir::OpBuilder::createOrFold<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v21, v20, v19);
}

void *mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::memref::SubViewOp,SubViewReturnTypeCanonicalizer,SubViewCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
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

void mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::memref::SubViewOp,SubViewReturnTypeCanonicalizer,SubViewCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(void *a1)
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

uint64_t SubViewReturnTypeCanonicalizer::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v11[26] = *MEMORY[0x277D85DE8];
  v11[0] = a2;
  v8 = mlir::memref::SubViewOp::inferResultType(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v10 = v8;
    mlir::memref::SubViewOp::getDroppedDims(v11);
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::detail::TypedValue<mlir::MemRefType>,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(int a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v20, a2, v15);
    mlir::memref::SubViewOp::build(a1, v20, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8), 0, 0);
  }

  mlir::OpBuilder::createOrFold<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v20, v19, v18);
}

void anonymous namespace::SubViewOpMemRefCastFolder::~SubViewOpMemRefCastFolder(_anonymous_namespace_::SubViewOpMemRefCastFolder *this)
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

uint64_t anonymous namespace::SubViewOpMemRefCastFolder::matchAndRewrite(uint64_t DefiningOp, uint64_t a2)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v2 = *(a2 + 68);
  if (v2)
  {
    v3 = (*(a2 + 72) + 24);
    while (1)
    {
      v4 = *v3;
      mlir::matchConstantIndex(DefiningOp);
      v10[0] = v4;
      DefiningOp = mlir::Value::getDefiningOp(v10);
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
        a2 = v9;
        break;
      }
    }
  }

  v10[0] = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(v10);
  if (!result)
  {
    return result;
  }

  if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  result = mlir::memref::CastOp::canFoldIntoConsumerOp(v7);
  if (result)
  {
    if (*(v9 + 36))
    {
      v8 = v9 - 16;
    }

    else
    {
      v8 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getMixedOffsets(&v9);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::detail::TypedValue<mlir::BaseMemRefType>,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v21, a2, v15);
    v17 = *a3;
    v18 = *a4;
    mlir::ValueRange::ValueRange(v23, *a5, *(a5 + 8));
    mlir::ValueRange::ValueRange(v22, *a6, *(a6 + 8));
    mlir::ValueRange::ValueRange(v20, *a7, *(a7 + 8));
    mlir::memref::SubViewOp::build(a1, v21, v17, v18, v23[0], v23[1], v22[0], v22[1], v20[0], v20[1]);
  }

  mlir::OpBuilder::createOrFold<mlir::memref::SubViewOp,mlir::MemRefType &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(v21, v23, v22);
}

void anonymous namespace::TrivialSubViewOpFolder::~TrivialSubViewOpFolder(_anonymous_namespace_::TrivialSubViewOpFolder *this)
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

uint64_t anonymous namespace::TrivialSubViewOpFolder::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v10[0] = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(v10);
  v4 = v3;
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::MemRefType::getShape(&v9);
  if (v4 == v6)
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getMixedOffsets(&v8);
  }

  return 0;
}

void anonymous namespace::ViewOpShapeFolder::~ViewOpShapeFolder(_anonymous_namespace_::ViewOpShapeFolder *this)
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

uint64_t mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType &,mlir::Value,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType &,mlir::Value,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,4u> &>(v26, v29, v24);
  }

  mlir::OperationState::OperationState(v26, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  v18 = v29[0];
  v19 = v29[1];
  v24[0] = v16;
  v25 = v17;
  mlir::OperationState::addOperands(v26, v24, 1uLL);
  mlir::OperationState::addOperands(v26, &v25, 1uLL);
  mlir::OperationState::addOperands(v26, v18, v19);
  if (v27 >= v28)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v26[8] + 8 * v27++) = v15;
  v20 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v21;
}

void anonymous namespace::ViewOpMemrefCastFolder::~ViewOpMemrefCastFolder(_anonymous_namespace_::ViewOpMemrefCastFolder *this)
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

uint64_t anonymous namespace::ViewOpMemrefCastFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v14);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
    {
      v13 = *(*(result + 72) + 24);
      result = mlir::Value::getDefiningOp(&v13);
      if (result)
      {
        if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
        {
          v6 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
          v7 = *(a2 + 72);
          v11 = *(v7 + 56);
          v12 = v6;
          v8 = *(a2 + 68) - 2;
          v10[0] = v7 + 64;
          v10[1] = v8;
          v9 = mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v12, &v13, &v11, v10);
          (*(*a3 + 8))(a3, a2, v9);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::memref::ViewOp,mlir::MemRefType &,mlir::Value,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,4u> &>(v26, v29, v24);
  }

  mlir::OperationState::OperationState(v26, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v29, *a6, *(a6 + 8));
  v18 = v29[0];
  v19 = v29[1];
  v24[0] = v16;
  v25 = v17;
  mlir::OperationState::addOperands(v26, v24, 1uLL);
  mlir::OperationState::addOperands(v26, &v25, 1uLL);
  mlir::OperationState::addOperands(v26, v18, v19);
  if (v27 >= v28)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v26[8] + 8 * v27++) = v15;
  v20 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v21;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AssumeAlignmentOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AtomicRMWOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::LoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::LoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::LoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::LoadOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::LoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AllocOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::MemoryEffects::Allocate::Allocate(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id;
  }

  return this;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  *&v16 = *a2;
  *(&v16 + 1) = v9;
  *&v17 = v6 & 0xFFFFFFFFFFFFFFF9 | 4;
  *(&v17 + 1) = 0;
  LODWORD(v18) = v7;
  BYTE4(v18) = v8;
  v10 = *(a1 + 8);
  v11 = *a1;
  if (v10 >= *(a1 + 12))
  {
    if (v11 > &v16 || v11 + 40 * v10 <= &v16)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = v11 + 40 * *(a1 + 8);
  v13 = v16;
  v14 = v17;
  *(v12 + 32) = v18;
  *v12 = v13;
  *(v12 + 16) = v14;
  LODWORD(v12) = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  return *a1 + 40 * v12 - 40;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocaOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::SideEffects::AutomaticAllocationScopeResource::AutomaticAllocationScopeResource(void *this)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id;
    *this = &unk_286890750;
    this[1] = v1;
  }

  else
  {
    v3 = this;
    mlir::SideEffects::AutomaticAllocationScopeResource::AutomaticAllocationScopeResource();
    this = v3;
    v2 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id;
    *v3 = &unk_286890750;
    v3[1] = v2;
  }

  return this;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void *mlir::MemoryEffects::Free::Free(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    mlir::MemoryEffects::Free::Free();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id;
  }

  return this;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::GetGlobalOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

uint64_t mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v23 = 0;
  if (((*(*a1 + 440))(a1, &v23, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v23;
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v24[0] = v8;
  if (v8)
  {
    mlir::SymbolRefAttr::getNestedReferences(v24);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    *a2 = v10;
    if (v10)
    {
      return 1;
    }
  }

  else
  {
    *a2 = 0;
  }

  v21 = "invalid kind of attribute specified";
  v22 = 259;
  (*(*a1 + 24))(v24, a1, v6, &v21);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v30;
      v14 = __p;
      if (v30 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v30 = v12;
      operator delete(v14);
    }

    v15 = v27;
    if (v27)
    {
      v16 = v28;
      v17 = v27;
      if (v28 != v27)
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
        v17 = v27;
      }

      v28 = v15;
      operator delete(v17);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v11;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GetGlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::GlobalOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::GlobalOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::PrefetchOpGenericAdaptorBase::Properties]";
  v6 = 112;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::ReallocOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReallocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReinterpretCastOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::StoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::StoreOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::TransposeOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::SubViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

__n128 OUTLINED_FUNCTION_24_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v24 = (v22 + 24 * a22);
  result = *v23;
  v24[1].n128_u64[0] = v23[1].n128_u64[0];
  *v24 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_6()
{
  if (*(*v0 + 36))
  {
    v2 = *v0 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_37_4()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_66_5()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_75_7(void *a1@<X8>)
{
  v1[3] = a1;
  *v1 = *a1;
  v1[1] = a1;
}

uint64_t OUTLINED_FUNCTION_84_4@<X0>(void **a1@<X2>, mlir::Operation *a2@<X8>)
{

  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(a2, v2 & 0xFFFFFFFFFFFFFFF8, a1, 6, 0);
}

void OUTLINED_FUNCTION_101_4(void *a1@<X8>)
{
  v1[3] = a1;
  *v1 = *a1;
  v1[1] = a1;
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = *(*(v18 + 72) + 32 * v19 + 24);

  return mlir::Value::getDefiningOp(&a18);
}

void OUTLINED_FUNCTION_108_5()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_120_2()
{

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

void OUTLINED_FUNCTION_121_3()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_124_3()
{

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

void OUTLINED_FUNCTION_125_2()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

unint64_t OUTLINED_FUNCTION_143_1@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = 14;
  v4 = *v2;

  return mlir::Operation::getAttrDictionary(v4);
}

void OUTLINED_FUNCTION_144_2()
{

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

uint64_t OUTLINED_FUNCTION_145_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, unsigned int a28)
{

  return mlir::MemRefType::get(a27, a28, v28, v29, v30, a1);
}

void OUTLINED_FUNCTION_146_2(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void **);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  LOWORD(v8) = 257;

  mlir::OpState::emitOpError(v1, va, va1);
}

uint64_t OUTLINED_FUNCTION_147_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  a21 = &a23;
  a22 = v24;

  return mlir::MemRefType::getShape(&a17);
}

uint64_t OUTLINED_FUNCTION_148_3(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  va_arg(va1, void);
  va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  LOWORD(v15) = 261;
  v10 = a1;
  v12 = a2;

  return mlir::Diagnostic::operator<<(va1, va);
}

uint64_t OUTLINED_FUNCTION_165_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t *a19, uint64_t a20)
{
  a19 = &a20;
  a20 = 0;

  return mlir::detail::constant_op_binder<mlir::Attribute>::match(&a19, a1);
}

uint64_t OUTLINED_FUNCTION_167_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = *v28;
  a28 = v29;
  a27 = 0;
  a20 = v31;

  return mlir::Value::getDefiningOp(&a20);
}

void OUTLINED_FUNCTION_188_1()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_189_1()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_190_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a21 = 0;
  a15 = v22;

  return mlir::detail::constant_op_binder<mlir::Attribute>::match(&a15, v21);
}

void mlir::memref::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v77 = 1283;
    v74 = "Attempting to attach an interface to an unregistered operation ";
    v75 = "memref.alloc";
    v54 = 12;
    goto LABEL_59;
  }

  v4 = v2;
  v5 = *(v2 + 16);
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v78[0] = *(v2 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v78);
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

  v50 = v5;
  v51 = ReferencedDialect;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  ReferencedDialect = v51;
  v5 = v50;
LABEL_4:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(ReferencedDialect, v5, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v8 = v7;
  {
    v66 = v7;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v8 = v66;
  }

  mlir::detail::InterfaceMap::insert(v4 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v77 = 1283;
    v74 = "Attempting to attach an interface to an unregistered operation ";
    v75 = "memref.alloca";
    v54 = 13;
    goto LABEL_59;
  }

  v11 = v9;
  v12 = *(v9 + 16);
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v78[0] = *(v9 + 8);
    v13 = mlir::StringAttr::getReferencedDialect(v78);
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

  v56 = v13;
  v61 = v12;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v13 = v56;
  v12 = v61;
LABEL_9:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v15 = v14;
  {
    v67 = v14;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v15 = v67;
  }

  mlir::detail::InterfaceMap::insert(v11 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v77 = 1283;
    v55 = "memref.cast";
LABEL_57:
    v74 = "Attempting to attach an interface to an unregistered operation ";
    v75 = v55;
    v54 = 11;
    goto LABEL_59;
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v78[0] = *(v16 + 8);
    v20 = mlir::StringAttr::getReferencedDialect(v78);
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

  v57 = v20;
  v62 = v19;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v20 = v57;
  v19 = v62;
LABEL_14:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v21 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v22 = v21;
  {
    v68 = v21;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v22 = v68;
  }

  mlir::detail::InterfaceMap::insert(v18 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::DimOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v77 = 1283;
    v74 = "Attempting to attach an interface to an unregistered operation ";
    v75 = "memref.dim";
    v54 = 10;
    goto LABEL_59;
  }

  v25 = v23;
  v26 = *(v23 + 16);
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v78[0] = *(v23 + 8);
    v27 = mlir::StringAttr::getReferencedDialect(v78);
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

  v58 = v27;
  v63 = v26;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v27 = v58;
  v26 = v63;
LABEL_19:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v28 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v29 = v28;
  {
    v69 = v28;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v29 = v69;
  }

  mlir::detail::InterfaceMap::insert(v25 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::GetGlobalOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v77 = 1283;
    v74 = "Attempting to attach an interface to an unregistered operation ";
    v75 = "memref.get_global";
    v54 = 17;
    goto LABEL_59;
  }

  v32 = v30;
  v33 = *(v30 + 16);
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v78[0] = *(v30 + 8);
    v34 = mlir::StringAttr::getReferencedDialect(v78);
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

  v59 = v34;
  v64 = v33;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v34 = v59;
  v33 = v64;
LABEL_24:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v35 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v36 = v35;
  {
    v70 = v35;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v36 = v70;
  }

  mlir::detail::InterfaceMap::insert(v32 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::RankOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v77 = 1283;
    v55 = "memref.rank";
    goto LABEL_57;
  }

  v39 = v37;
  v40 = *(v37 + 16);
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v78[0] = *(v37 + 8);
    v41 = mlir::StringAttr::getReferencedDialect(v78);
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

  v60 = v41;
  v65 = v40;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v41 = v60;
  v40 = v65;
LABEL_29:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v42 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v43 = v42;
  {
    v71 = v42;
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
    v43 = v71;
  }

  mlir::detail::InterfaceMap::insert(v39 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v77 = 1283;
    v74 = "Attempting to attach an interface to an unregistered operation ";
    v75 = "memref.subview";
    v54 = 14;
LABEL_59:
    v76 = v54;
    v72 = ".";
    v73 = 259;
    llvm::operator+(&v74, &v72, v78);
    llvm::report_fatal_error(v78, 1);
  }

  v46 = v44;
  v47 = *(v44 + 16);
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v78[0] = *(v44 + 8);
    v48 = mlir::StringAttr::getReferencedDialect(v78);
    v47 = *(v46 + 16);
    {
      goto LABEL_34;
    }
  }

  else
  {
    v48 = *(v44 + 24);
    {
      goto LABEL_34;
    }
  }

  v52 = v47;
  v53 = v48;
  mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  v48 = v53;
  v47 = v52;
LABEL_34:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id);
  v49 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  {
    mlir::scf::registerValueBoundsOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke();
  }

  mlir::detail::InterfaceMap::insert(v46 + 32, mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id, v49);
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::memref::anonymous namespace::AllocOpInterface<mlir::memref::AllocOp>>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v7[0] = a5;
  v7[1] = a3;
  v8 = 0;
  v9 = 0;
  v6 = mlir::ValueBoundsConstraintSet::BoundBuilder::operator[](v7, a4);
  mlir::memref::AllocOp::getMixedSizes(&v10, v11);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v6, *(v11[0] + a4));
}

uint64_t mlir::memref::AllocOp::getMixedSizes@<X0>(mlir::memref::AllocOp *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v14[0] = mlir::Attribute::getContext((*this + 24));
  memset(&v14[1], 0, 24);
  v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::MemRefType::getShape(&v13);
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(mlir::MemRefType::getShape(&v13) + 8 * i) == 0x8000000000000000)
      {
        result = mlir::memref::AllocOp::getODSOperandIndexAndLength(this, 0);
        v9 = *(*(*this + 72) + 32 * result + 32 * v7 + 24);
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        ++v7;
        v11 = v9 | 4;
      }

      else
      {
        v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
        Shape = mlir::MemRefType::getShape(&v13);
        result = mlir::Builder::getIndexAttr(v14, *(Shape + 8 * i));
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = result & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(*a2 + 8 * v10) = v11;
      ++*(a2 + 8);
    }
  }

  return result;
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::memref::anonymous namespace::AllocOpInterface<mlir::memref::AllocaOp>>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v7[0] = a5;
  v7[1] = a3;
  v8 = 0;
  v9 = 0;
  v6 = mlir::ValueBoundsConstraintSet::BoundBuilder::operator[](v7, a4);
  mlir::memref::AllocaOp::getMixedSizes(&v10, v11);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v6, *(v11[0] + a4));
}

uint64_t mlir::memref::AllocaOp::getMixedSizes@<X0>(mlir::memref::AllocaOp *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v14[0] = mlir::Attribute::getContext((*this + 24));
  memset(&v14[1], 0, 24);
  v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::MemRefType::getShape(&v13);
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(mlir::MemRefType::getShape(&v13) + 8 * i) == 0x8000000000000000)
      {
        result = mlir::memref::AllocaOp::getODSOperandIndexAndLength(this, 0);
        v9 = *(*(*this + 72) + 32 * result + 32 * v7 + 24);
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        ++v7;
        v11 = v9 | 4;
      }

      else
      {
        v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
        Shape = mlir::MemRefType::getShape(&v13);
        result = mlir::Builder::getIndexAttr(v14, *(Shape + 8 * i));
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = result & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(*a2 + 8 * v10) = v11;
      ++*(a2 + 8);
    }
  }

  return result;
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::memref::anonymous namespace::CastOpInterface>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && *(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
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

unint64_t mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::memref::anonymous namespace::DimOpInterface>::populateBoundsForIndexValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  result = mlir::memref::DimOp::getConstantIndex(&v12);
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

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::memref::anonymous namespace::GetGlobalOpInterface>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v12 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v9[0] = a5;
  v9[1] = a3;
  v10 = 0;
  v11 = 0;
  v6 = mlir::ValueBoundsConstraintSet::BoundBuilder::operator[](v9, a4);
  Shape = mlir::MemRefType::getShape(&v12);
  mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v6, *(Shape + 8 * v5), v8);
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::memref::anonymous namespace::RankOpInterface>::populateBoundsForIndexValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
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
    mlir::MemRefType::getShape(&v10);
    mlir::ValueBoundsConstraintSet::BoundBuilder::operator==(v7, v5, v6);
  }
}

void mlir::detail::ValueBoundsOpInterfaceInterfaceTraits::FallbackModel<mlir::memref::anonymous namespace::SubViewOpInterface>::populateBoundsForShapedValueDim(uint64_t a1, uint64_t a2)
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = a2;
  mlir::memref::SubViewOp::getDroppedDims(v2);
}

void mlir::DialectRegistry::addExtension<mlir::memref::MemRefDialect>(void (*)(mlir::MLIRContext *,mlir::memref::MemRefDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  JUMPOUT(0x259C63180);
}

void mlir::inferExpandShapeOutputShape(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void **a9@<X8>)
{
  v81[1] = *MEMORY[0x277D85DE8];
  v69[0] = a3;
  v69[1] = a4;
  v76 = v78;
  v77 = 0x600000000;
  v73 = v75;
  v74 = 0x600000000;
  if (!a8)
  {
    mlir::ShapedType::getShape(v69);
    v19 = v74;
    if (v22 != v74)
    {
      if (v22 >= v74)
      {
        v23 = v74;
        v24 = v22;
        if (v22 > HIDWORD(v74))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memset_pattern16(v73 + 8 * v74, &unk_257369660, 8 * (v22 - v74));
        LODWORD(v22) = v23 + v24 - v19;
      }

      LODWORD(v74) = v22;
      v19 = v22;
    }

    goto LABEL_20;
  }

  if (!mlir::ShapedType::hasRank(v69))
  {
    goto LABEL_12;
  }

  Shape = mlir::ShapedType::getShape(v69);
  if (!v13)
  {
LABEL_7:
    v16 = mlir::ShapedType::getShape(v69);
    v17 = v15;
    v18 = 0;
    LODWORD(v74) = 0;
    if ((8 * v15) >> 3 > HIDWORD(v74))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v15)
    {
      memcpy(v73, v16, 8 * v15);
      v18 = v74;
    }

    v19 = (v18 + v17);
    LODWORD(v74) = v18 + v17;
LABEL_20:
    v25 = v73;
    mlir::ValueRange::ValueRange(&v79, v76, v77);
    v26 = v79;
    v27 = v80;
    v28 = v25;
    v29 = v19;
LABEL_71:
    mlir::getMixedValues(a1, v28, v29, v26, v27, &__dst);
    *a9 = a9 + 2;
    a9[1] = 0x600000000;
    v59 = v71;
    v60 = __dst;
    if (v71 && &__dst != a9)
    {
      if (__dst == v72)
      {
        if (v71 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a9, __dst, 8 * v71);
        v60 = __dst;
        *(a9 + 2) = v59;
      }

      else
      {
        *a9 = __dst;
        v61 = HIDWORD(v71);
        *(a9 + 2) = v59;
        *(a9 + 3) = v61;
        __dst = v72;
        HIDWORD(v71) = 0;
        v60 = v72;
      }

      LODWORD(v71) = 0;
    }

    *(a9 + 64) = 1;
    if (v60 != v72)
    {
      free(v60);
    }

    goto LABEL_82;
  }

  v14 = 8 * v13;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

LABEL_12:
  mlir::ShapedType::getShape(v69);
  v21 = v74;
  if (v20 != v74)
  {
    if (v20 >= v74)
    {
      v30 = v74;
      v31 = v20;
      if (v20 > HIDWORD(v74))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16(v73 + 8 * v74, &unk_25736EFD0, 8 * (v20 - v74));
      v21 = v30 + v31 - v21;
    }

    else
    {
      v21 = v20;
    }

    LODWORD(v74) = v21;
  }

  if (!a6)
  {
LABEL_59:
    v47 = v73;
    if (v21)
    {
      v48 = (v21 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v48 < 3)
      {
        v49 = 0;
        v50 = v73;
        goto LABEL_66;
      }

      v51 = v48 + 1;
      v52 = (v48 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v50 = (v73 + 8 * v52);
      v53 = (v73 + 16);
      v54 = 0uLL;
      v55 = vnegq_f64(0);
      v56 = v52;
      v57 = 0uLL;
      do
      {
        v54 = vsubq_s64(v54, vceqq_s64(v53[-1], v55));
        v57 = vsubq_s64(v57, vceqq_s64(*v53, v55));
        v53 += 2;
        v56 -= 4;
      }

      while (v56);
      v49 = vaddvq_s64(vaddq_s64(v57, v54));
      if (v51 != v52)
      {
        do
        {
LABEL_66:
          v58 = *v50++;
          if (v58 == 0x8000000000000000)
          {
            ++v49;
          }
        }

        while (v50 != (v73 + 8 * v21));
      }
    }

    else
    {
      v49 = 0;
    }

    if (v49 != v77)
    {
      *a9 = 0;
      *(a9 + 64) = 0;
      goto LABEL_82;
    }

    mlir::ValueRange::ValueRange(&v79, v76, v77);
    v26 = v79;
    v27 = v80;
    v28 = v47;
    v29 = v21;
    goto LABEL_71;
  }

  v62 = a9;
  v32 = 0;
  v33 = a5 + 32 * a6;
  while (1)
  {
    __dst = v72;
    v71 = 0x200000000;
    v34 = *(a5 + 8);
    if (&__dst == a5 || v34 == 0)
    {
      v36 = 3;
      v37 = __dst;
      if (__dst != v72)
      {
LABEL_33:
        free(v37);
      }
    }

    else
    {
      if (v34 >= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v72, *a5, 8 * *(a5 + 8));
      LODWORD(v71) = v34;
      v68 = 1;
      v38 = __dst + 8;
      v39 = 8 * v34;
      while (1)
      {
        v40 = *(v38 - 1);
        v41 = *(mlir::ShapedType::getShape(v69) + 8 * v40);
        if (v41 == 0x8000000000000000)
        {
          break;
        }

        *(v73 + v40) = v41;
        v68 *= v41;
        v38 += 8;
        v39 -= 8;
        if (!v39)
        {
LABEL_47:
          if (v41 != 0x8000000000000000)
          {
            v36 = 3;
            v37 = __dst;
            if (__dst != v72)
            {
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          goto LABEL_48;
        }
      }

      v42 = v39 - 8;
      if (!v42)
      {
LABEL_48:
        v67 = *(a7 + 8 * v32) & 0xFFFFFFFFFFFFFFF8;
        v66 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &v68) - 16;
        v79 = v81;
        v80 = 0x100000000;
        mlir::OpBuilder::createOrFold<mlir::arith::DivUIOp,mlir::Value &,mlir::Value &>(a1, &v79, a2, &v67, &v66);
        v46 = *v79;
        if (v79 != v81)
        {
          free(v79);
        }

        if (v77 >= HIDWORD(v77))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v36 = 0;
        v76[v77] = v46;
        LODWORD(v77) = v77 + 1;
        v37 = __dst;
        if (__dst != v72)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      v43 = 0;
      while (1)
      {
        v44 = *&v38[v43];
        v45 = *(mlir::ShapedType::getShape(v69) + 8 * v44);
        if (v45 == 0x8000000000000000)
        {
          break;
        }

        *(v73 + v44) = v45;
        v68 *= v45;
        v43 += 8;
        if (v42 == v43)
        {
          goto LABEL_47;
        }
      }

      *v62 = 0;
      *(v62 + 64) = 0;
      v36 = 1;
      v37 = __dst;
      if (__dst != v72)
      {
        goto LABEL_33;
      }
    }

LABEL_34:
    if (v36 != 3 && v36)
    {
      break;
    }

    ++v32;
    a5 += 32;
    if (a5 == v33)
    {
      v21 = v74;
      a9 = v62;
      goto LABEL_59;
    }
  }

LABEL_82:
  if (v73 != v75)
  {
    free(v73);
  }

  if (v76 != v78)
  {
    free(v76);
  }
}

uint64_t mlir::getPositionsOfShapeOne@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = result;
  if (a3 > 0x39)
  {
    operator new();
  }

  v6 = (a3 << 58) | 1;
  if (a3 && result)
  {
    v7 = 0;
    do
    {
      if (*(a2 + 8 * v7) == 1)
      {
        if (v6)
        {
          v6 = v6 & 0xFC00000000000001 | (2 * (((1 << v7) | (v6 >> 1)) & ~(-1 << (v6 >> 58))));
        }

        else
        {
          *(*v6 + 8 * (v7 >> 6)) |= 1 << v7;
        }

        --v4;
      }

      ++v7;
    }

    while (v7 < a3 && v4);
  }

  *a4 = v6;
  return result;
}

unint64_t mlir::getValueOrCreateConstantIntOp(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  result = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 4) == 0 || !result)
  {
    v13 = a3 & 0xFFFFFFFFFFFFFFF8;
    Type = mlir::IntegerAttr::getType(&v13);
    mlir::IntegerAttr::getValue(&v13, &v10);
    if (v11 > 0x40)
    {
      v7 = *v10;
    }

    else if (v11)
    {
      v7 = (v10 << -v11) >> -v11;
    }

    else
    {
      v7 = 0;
    }

    IntegerAttr = mlir::Builder::getIntegerAttr(a1, Type, v7);
    v8 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr>(a1, a2, &IntegerAttr);
    if (v11 >= 0x41)
    {
      if (v10)
      {
        v9 = v8;
        MEMORY[0x259C63150](v10, 0x1000C8000313F17);
        v8 = v9;
      }
    }

    return v8 - 16;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v28[38] = *MEMORY[0x277D85DE8];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v7);
  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_16;
  }

  v10 = *v9;
  {
    v20 = v9;
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>();
    v9 = v20;
    v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_5:
  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[2 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 2;
    v15 += ~(v15 >> 1);
    if (v19 < v11)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_16;
  }

  v21 = v14[1];
LABEL_17:
  mlir::arith::ConstantOp::build(a1, v28, v9, v21);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

unint64_t mlir::getValueOrCreateConstantIndexOp(mlir::IndexType **a1, uint64_t a2, uint64_t a3)
{
  result = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 4) == 0 || !result)
  {
    v15[3] = v3;
    v15[4] = v4;
    v7 = a1;
    v15[0] = a3 & 0xFFFFFFFFFFFFFFF8;
    mlir::IntegerAttr::getValue(v15, &v12);
    if (v13 > 0x40)
    {
      v9 = *v12;
    }

    else if (v13)
    {
      v9 = (v12 << -v13) >> -v13;
    }

    else
    {
      v9 = 0;
    }

    v14 = v9;
    v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(v7, a2, &v14);
    if (v13 >= 0x41)
    {
      if (v12)
      {
        v11 = v10;
        MEMORY[0x259C63150](v12, 0x1000C8000313F17);
        v10 = v11;
      }
    }

    return v10 - 16;
  }

  return result;
}

uint64_t mlir::getValueOrCreateCastToIndexLike(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v15 = a4;
  v16 = a3;
  if ((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
  {
    isIndex = mlir::Type::isIndex(&v16);
    v14 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (isIndex == mlir::Type::isIndex(&v14))
    {
      v9 = v16;
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v9 = 0;
      }

      v14 = v9;
      v10 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v10 = 0;
      }

      v13 = v10;
      Width = mlir::IntegerType::getWidth(&v14);
      if (Width <= mlir::IntegerType::getWidth(&v13))
      {
        v8 = mlir::OpBuilder::create<mlir::arith::TruncIOp,mlir::IntegerType &,mlir::Value &>(a1, a2, &v14, &v15);
      }

      else
      {
        v8 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,mlir::IntegerType &,mlir::Value &>(a1, a2, &v14, &v15);
      }
    }

    else
    {
      v8 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(a1, a2, &v16, &v15);
    }

    return v8 - 16;
  }

  return v4;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ExtSIOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtSIOp,mlir::IntegerType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ExtSIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::TruncIOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::TruncIOp,mlir::IntegerType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::TruncIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
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

unint64_t mlir::convertScalarToDtype(_OWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v5 = a3;
  v114 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v6 != a4)
  {
    v8 = a1[1];
    v92[0] = *a1;
    v92[1] = v8;
    v93 = a2;
    v9 = *(*a4 + 136);
    if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a4 != 0)
    {
      v102 = a3;
      *&v100 = a4;
      v29 = *(*v6 + 136);
      if (v29 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        v26 = a2;
        v99 = v6;
        if (mlir::Type::isIndex(&v99))
        {
          v28 = mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(v92, v93, &v100, &v102);
          goto LABEL_164;
        }

        v48 = *(v102 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v48 = 0;
        }

        v99 = v48;
        if (!v48)
        {
          goto LABEL_258;
        }

        Width = mlir::IntegerType::getWidth(&v100);
        if (Width > mlir::IntegerType::getWidth(&v99))
        {
          if (a5)
          {
            v28 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::IntegerType &,mlir::Value &>(v92, v93, &v100, &v102);
          }

          else
          {
            v28 = mlir::OpBuilder::create<mlir::arith::ExtSIOp,mlir::IntegerType &,mlir::Value &>(v92, v93, &v100, &v102);
          }

          goto LABEL_164;
        }

        v86 = mlir::IntegerType::getWidth(&v100);
        if (v86 < mlir::IntegerType::getWidth(&v99))
        {
          v28 = mlir::OpBuilder::create<mlir::arith::TruncIOp,mlir::IntegerType &,mlir::Value &>(v92, v93, &v100, &v102);
          goto LABEL_164;
        }

LABEL_257:
        v48 = v102;
LABEL_258:
        a2 = v26;
        goto LABEL_127;
      }

      v46 = a2;
      if (a5)
      {
        v47 = mlir::OpBuilder::create<mlir::arith::FPToUIOp,mlir::IntegerType &,mlir::Value &>(v92, a2, &v100, &v102);
      }

      else
      {
        v47 = mlir::OpBuilder::create<mlir::arith::FPToSIOp,mlir::IntegerType &,mlir::Value &>(v92, a2, &v100, &v102);
      }

      goto LABEL_126;
    }

    if (v9 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      if (!a4)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v68 = v9 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
      if (!v68 || !a4)
      {
        if (v9 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || !a4)
        {
          goto LABEL_128;
        }

        v91 = a2;
        v99 = a4;
        *&v100 = a3;
        if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v6 = 0;
        }

        v102 = v6;
        if (v6)
        {
          v69 = *(*mlir::ComplexType::getElementType(&v99) + 136);
          if (v69 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v69 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
          {
            v70 = *(*mlir::ComplexType::getElementType(&v102) + 136);
            if (v70 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v70 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
            {
              v98 = mlir::OpBuilder::create<mlir::complex::ReOp,mlir::Value &>(v92, v93, &v100) - 16;
              v97 = mlir::OpBuilder::create<mlir::complex::ImOp,mlir::Value &>(v92, v93, &v100) - 16;
              ElementType = mlir::ComplexType::getElementType(&v99);
              v95 = mlir::ComplexType::getElementType(&v99);
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v95);
              v94 = mlir::ComplexType::getElementType(&v102);
              if (IntOrFloatBitWidth >= mlir::Type::getIntOrFloatBitWidth(&v94))
              {
                v98 = mlir::OpBuilder::create<mlir::arith::ExtFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &ElementType, &v98) - 16;
                v80 = mlir::OpBuilder::create<mlir::arith::ExtFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &ElementType, &v97);
              }

              else
              {
                v98 = mlir::OpBuilder::create<mlir::arith::TruncFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &ElementType, &v98) - 16;
                v80 = mlir::OpBuilder::create<mlir::arith::TruncFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &ElementType, &v97);
              }

              v97 = v80 - 16;
              v87 = v93;
              v88 = &v98;
              p_ElementType = &v97;
              goto LABEL_282;
            }
          }
        }

        v71 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
        v72 = *(*v71 + 136);
        if (v72 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
        {
          if (!v71)
          {
            v48 = 0;
LABEL_283:
            a2 = v91;
LABEL_127:
            if (v48)
            {
              return v48;
            }

LABEL_128:
            mlir::emitWarning(a2, &v102);
            if (v102)
            {
              LODWORD(v100) = 3;
              *(&v100 + 1) = "could not cast operand of type ";
              v101 = 31;
              if (v105 >= v106)
              {
                if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v49 = v104 + 24 * v105;
              v50 = v100;
              *(v49 + 2) = v101;
              *v49 = v50;
              ++v105;
              if (v102)
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v100, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
                if (v105 >= v106)
                {
                  if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v51 = v104 + 24 * v105;
                v52 = v100;
                *(v51 + 2) = v101;
                *v51 = v52;
                v53 = ++v105;
                if (v102)
                {
                  LODWORD(v100) = 3;
                  *(&v100 + 1) = " to ";
                  v101 = 4;
                  if (v53 >= v106)
                  {
                    if (v104 > &v100 || v104 + 24 * v53 <= &v100)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v54 = v104 + 24 * v105;
                  v55 = v100;
                  *(v54 + 2) = v101;
                  *v54 = v55;
                  ++v105;
                  if (v102)
                  {
                    mlir::DiagnosticArgument::DiagnosticArgument(&v100, a4);
                    if (v105 >= v106)
                    {
                      if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v56 = v104 + 24 * v105;
                    v57 = v100;
                    *(v56 + 2) = v101;
                    *v56 = v57;
                    ++v105;
                    if (v102)
                    {
                      mlir::InFlightDiagnostic::report(&v102);
                    }
                  }
                }
              }
            }

            if (v113 == 1)
            {
              if (v112 != &v113)
              {
                free(v112);
              }

              v58 = __p;
              if (__p)
              {
                v59 = v111;
                v60 = __p;
                if (v111 != __p)
                {
                  do
                  {
                    v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
                  }

                  while (v59 != v58);
                  v60 = __p;
                }

                v111 = v58;
                operator delete(v60);
              }

              v61 = v108;
              if (v108)
              {
                v62 = v109;
                v63 = v108;
                if (v109 != v108)
                {
                  do
                  {
                    v65 = *--v62;
                    v64 = v65;
                    *v62 = 0;
                    if (v65)
                    {
                      MEMORY[0x259C63150](v64, 0x1000C8077774924);
                    }
                  }

                  while (v62 != v61);
                  v63 = v108;
                }

                v109 = v61;
                operator delete(v63);
              }

              if (v104 != &v107)
              {
                free(v104);
              }
            }

            return v5;
          }
        }

        else
        {
          v74 = v72 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v72 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
          if (!v71 || !v74)
          {
            v48 = 0;
            if (!v71 || v72 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
            {
              goto LABEL_283;
            }

            v97 = v5;
            v98 = mlir::ComplexType::getElementType(&v99);
            if (a5)
            {
              v75 = mlir::OpBuilder::create<mlir::arith::UIToFPOp,mlir::FloatType &,mlir::Value &>(v92, v93, &v98, &v97);
            }

            else
            {
              v75 = mlir::OpBuilder::create<mlir::arith::SIToFPOp,mlir::FloatType &,mlir::Value &>(v92, v93, &v98, &v97);
            }

            v97 = v75 - 16;
            FloatSemantics = mlir::FloatType::getFloatSemantics(&v98);
            v85 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
            if (v85 == FloatSemantics)
            {
              goto LABEL_277;
            }

            goto LABEL_254;
          }
        }

        v98 = mlir::ComplexType::getElementType(&v99);
        v81 = mlir::Type::getIntOrFloatBitWidth(&v98);
        v97 = v5;
        v102 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
        v82 = mlir::Type::getIntOrFloatBitWidth(&v102);
        v83 = v5;
        if (v82 < v81)
        {
          v83 = mlir::OpBuilder::create<mlir::arith::ExtFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &v98, &v97) - 16;
          v97 = v83;
        }

        v102 = *(v83 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (mlir::Type::getIntOrFloatBitWidth(&v102) > v81)
        {
          v97 = mlir::OpBuilder::create<mlir::arith::TruncFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &v98, &v97) - 16;
        }

        FloatSemantics = mlir::FloatType::getFloatSemantics(&v98);
        v85 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
        if (v85 == FloatSemantics)
        {
LABEL_277:
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v103, FloatSemantics);
        }

LABEL_254:
        llvm::detail::IEEEFloat::IEEEFloat(v103, FloatSemantics, 0);
        ElementType = mlir::OpBuilder::create<mlir::arith::ConstantFloatOp,llvm::APFloat,mlir::FloatType &>(v92, v93, &v102, &v98) - 16;
        if (v85 == v103[0])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v103);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v103);
        }

        v87 = v93;
        v88 = &v97;
        p_ElementType = &ElementType;
LABEL_282:
        v48 = mlir::OpBuilder::create<mlir::complex::CreateOp,mlir::ComplexType &,mlir::Value &,mlir::Value &>(v92, v87, &v99, v88, p_ElementType) - 16;
        goto LABEL_283;
      }
    }

    v102 = a3;
    *&v100 = a4;
    v25 = *(*v6 + 136);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v25 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id || (v99 = v6) == 0)
      {
        v48 = 0;
        goto LABEL_127;
      }

      v26 = a2;
      v27 = mlir::FloatType::getWidth(&v100);
      if (v27 <= mlir::FloatType::getWidth(&v99))
      {
        v67 = mlir::FloatType::getWidth(&v100);
        if (v67 >= mlir::FloatType::getWidth(&v99))
        {
          goto LABEL_257;
        }

        v28 = mlir::OpBuilder::create<mlir::arith::TruncFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &v100, &v102);
      }

      else
      {
        v28 = mlir::OpBuilder::create<mlir::arith::ExtFOp,mlir::FloatType &,mlir::Value &>(v92, v93, &v100, &v102);
      }

LABEL_164:
      v48 = v28 - 16;
      a2 = v26;
      goto LABEL_127;
    }

    v46 = a2;
    if (a5)
    {
      v47 = mlir::OpBuilder::create<mlir::arith::UIToFPOp,mlir::FloatType &,mlir::Value &>(v92, a2, &v100, &v102);
    }

    else
    {
      v47 = mlir::OpBuilder::create<mlir::arith::SIToFPOp,mlir::FloatType &,mlir::Value &>(v92, a2, &v100, &v102);
    }

LABEL_126:
    a2 = v46;
    v48 = v47 - 16;
    goto LABEL_127;
  }

  return v5;
}

void mlir::getValueOrCreateConstantIndexOp(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[4] = *MEMORY[0x277D85DE8];
  __src = v26;
  v25 = 0x400000000;
  if (((8 * a4) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = 0;
  v10 = v26;
  v11 = 8 * a4;
  if (a4)
  {
    v12 = v26;
    v13 = 8 * a4;
    do
    {
      v14 = *a3 & 0xFFFFFFFFFFFFFFF8;
      if ((*a3 & 4) == 0 || !v14)
      {
        v23 = *a3 & 0xFFFFFFFFFFFFFFF8;
        mlir::IntegerAttr::getValue(&v23, &v20);
        if (v21 > 0x40)
        {
          v15 = *v20;
        }

        else if (v21)
        {
          v15 = (v20 << -v21) >> -v21;
        }

        else
        {
          v15 = 0;
        }

        v22 = v15;
        v16 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &v22);
        if (v21 >= 0x41 && v20)
        {
          v17 = v16;
          MEMORY[0x259C63150](v20, 0x1000C8000313F17);
          v16 = v17;
        }

        v14 = v16 - 16;
      }

      *v12++ = v14;
      ++a3;
      v13 -= 8;
    }

    while (v13);
    v9 = v25;
    v10 = __src;
  }

  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v18 = v9 + (v11 >> 3);
  LODWORD(v25) = v18;
  if (v18 && &__src != a5)
  {
    if (v10 == v26)
    {
      if (v18 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a5, v10, 8 * (v9 + (v11 >> 3)));
      v10 = __src;
      *(a5 + 8) = v18;
    }

    else
    {
      *a5 = v10;
      v19 = HIDWORD(v25);
      *(a5 + 8) = v18;
      *(a5 + 12) = v19;
      __src = v26;
      HIDWORD(v25) = 0;
      v10 = v26;
    }

    LODWORD(v25) = 0;
  }

  if (v10 != v26)
  {
    free(v10);
  }
}

uint64_t mlir::createScalarOrSplatConstant(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, llvm::APInt *a4)
{
  v37 = 0;
  v38 = 0;
  v6 = *a3;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    IntegerAttr = mlir::Builder::getIntegerAttr(a1, a3, a4);
    if (IntegerAttr)
    {
      v17 = *IntegerAttr;
      {
        v18 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        if (!v20)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v33 = v17;
        v35 = IntegerAttr;
        mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>();
        IntegerAttr = v35;
        v18 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v19 = *(v33 + 8);
        v20 = *(v33 + 16);
        if (!v20)
        {
          goto LABEL_31;
        }
      }

      v21 = v19;
      v22 = v20;
      do
      {
        v23 = v22 >> 1;
        v24 = &v21[2 * (v22 >> 1)];
        v26 = *v24;
        v25 = v24 + 2;
        v22 += ~(v22 >> 1);
        if (v26 < v18)
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      while (v22);
      if (v21 != &v19[2 * v20] && *v21 == v18)
      {
        v29 = v21[1];
        goto LABEL_32;
      }
    }

LABEL_31:
    v29 = 0;
    goto LABEL_32;
  }

  {
    v32 = v6;
    v34 = a4;
    v31 = a3;
    mlir::scf::__mlir_ods_local_type_constraint_SCFOps5();
    a3 = v31;
    a4 = v34;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v32 + 8);
    v9 = *(v32 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_24:
    v27 = 0;
    goto LABEL_26;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_4:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_24;
  }

  v27 = v10[1];
LABEL_26:
  v36 = mlir::DenseElementsAttr::get(a3, v27, a4, 1);
  IntegerAttr = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v36);
  if (!IntegerAttr)
  {
    goto LABEL_31;
  }

  v29 = *(v28 + 24);
LABEL_32:
  v37 = IntegerAttr;
  v38 = v29;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>(a1, a2, &v37) - 16;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantOp::build(a1, v15, *a3, a3[1]);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::createScalarOrSplatConstant(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a3;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v27 = v9;
  if (v9)
  {
    Width = mlir::IntegerType::getWidth(&v27);
    LODWORD(v26) = Width;
    if (Width <= 0x40)
    {
      goto LABEL_6;
    }

LABEL_24:
    llvm::APInt::initSlowCase(&v25);
  }

  {
    v24 = v8;
    mlir::scf::__mlir_ods_local_type_constraint_SCFOps5();
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v24 + 8);
    v14 = *(v24 + 16);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_21:
    v21 = 0;
    goto LABEL_23;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v8 + 8);
  v14 = *(v8 + 16);
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_11:
  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_21;
  }

  v21 = v15[1];
LABEL_23:
  v25 = a3;
  v26 = v21;
  ElementType = mlir::ShapedType::getElementType(&v25);
  Width = mlir::Type::getIntOrFloatBitWidth(&ElementType);
  LODWORD(v26) = Width;
  if (Width > 0x40)
  {
    goto LABEL_24;
  }

LABEL_6:
  v11 = 0xFFFFFFFFFFFFFFFFLL >> -Width;
  if (!Width)
  {
    v11 = 0;
  }

  v25 = v11 & a4;
  result = mlir::createScalarOrSplatConstant(a1, a2, a3, &v25);
  if (v26 >= 0x41)
  {
    if (v25)
    {
      v23 = result;
      MEMORY[0x259C63150](v25, 0x1000C8000313F17);
      return v23;
    }
  }

  return result;
}

uint64_t mlir::createScalarOrSplatConstant(void *a1, uint64_t a2, llvm::APFloatBase *a3, uint64_t a4)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v44 = a3;
  v6 = *a3;
  v7 = *(*a3 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v43[0] = mlir::Builder::getFloatAttr(a1, a3, a4);
    v45 = v47;
    v46 = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::arith::ConstantOp,mlir::Type &,mlir::FloatAttr>(a1, &v45, a2, &v44, v43);
    v24 = v45;
    v25 = *v45;
    if (v45 == v47)
    {
      return v25;
    }

LABEL_52:
    free(v24);
    return v25;
  }

  {
    v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v28 = *(v6 + 8);
    v29 = *(v6 + 16);
    if (v29)
    {
      goto LABEL_56;
    }

LABEL_63:
    v29 = 0;
    v30 = v28;
    goto LABEL_64;
  }

  v36 = a4;
  v41 = v6;
  v42 = a3;
  mlir::scf::__mlir_ods_local_type_constraint_SCFOps5();
  a3 = v42;
  a4 = v36;
  v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v28 = *(v41 + 8);
  v29 = *(v41 + 16);
  if (!v29)
  {
    goto LABEL_63;
  }

LABEL_56:
  v30 = v28;
  v31 = v29;
  do
  {
    v32 = v31 >> 1;
    v33 = &v30[2 * (v31 >> 1)];
    v35 = *v33;
    v34 = v33 + 2;
    v31 += ~(v31 >> 1);
    if (v35 < v27)
    {
      v30 = v34;
    }

    else
    {
      v31 = v32;
    }
  }

  while (v31);
LABEL_64:
  if (v30 != &v28[2 * v29] && *v30 == v27)
  {
    v37 = v30[1];
  }

  else
  {
    v37 = 0;
  }

  v45 = mlir::DenseElementsAttr::get(a3, v37, a4, 1);
  v39 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v45);
  if (v39)
  {
    v40 = *(v38 + 24);
  }

  else
  {
    v40 = 0;
  }

  v43[0] = v39;
  v43[1] = v40;
  v45 = v47;
  v46 = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr &>(a1, &v45, a2, &v44, v43);
  v24 = v45;
  v25 = *v45;
  if (v45 != v47)
  {
    goto LABEL_52;
  }

  return v25;
}

unint64_t mlir::getType(uint64_t a1)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((a1 & 4) != 0 && v3)
  {
    return *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  v5[1] = v1;
  v5[2] = v2;
  v5[0] = a1 & 0xFFFFFFFFFFFFFFF8;
  return mlir::IntegerAttr::getType(v5);
}

uint64_t mlir::ArithBuilder::_and(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  return mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(*a1, *(a1 + 8), &v5, &v4) - 16;
}

uint64_t mlir::ArithBuilder::add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v3 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return mlir::OpBuilder::create<mlir::arith::AddFOp,mlir::Value &,mlir::Value &>(*a1, *(a1 + 8), &v22, &v21) - 16;
  }

  else
  {
    return mlir::OpBuilder::create<mlir::arith::AddIOp,mlir::Value &,mlir::Value &>(*a1, *(a1 + 8), &v22, &v21) - 16;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::AddFOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AddFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AddFOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::AddFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::AddIOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AddIOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::AddIOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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

uint64_t mlir::ArithBuilder::sub(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v3 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return mlir::OpBuilder::create<mlir::arith::SubFOp,mlir::Value &,mlir::Value &>(*a1, *(a1 + 8), &v22, &v21) - 16;
  }

  else
  {
    return mlir::OpBuilder::create<mlir::arith::SubIOp,mlir::Value &,mlir::Value &>(*a1, *(a1 + 8), &v22, &v21) - 16;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::SubFOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SubFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SubFOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::SubFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::SubIOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SubIOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::SubIOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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

uint64_t mlir::ArithBuilder::mul(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v3 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return mlir::OpBuilder::create<mlir::arith::MulFOp,mlir::Value &,mlir::Value &>(*a1, *(a1 + 8), &v22, &v21) - 16;
  }

  else
  {
    return mlir::OpBuilder::create<mlir::arith::MulIOp,mlir::Value &,mlir::Value &>(*a1, *(a1 + 8), &v22, &v21) - 16;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulFOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulFOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::MulFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::MulIOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulIOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::MulIOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
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

uint64_t mlir::ArithBuilder::sgt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v24 = a3;
  v3 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v19 = v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v21 = *a1;
  v20 = *(a1 + 8);
  if (v19)
  {
    v23 = 2;
    return mlir::OpBuilder::create<mlir::arith::CmpFOp,mlir::arith::CmpFPredicate,mlir::Value &,mlir::Value &>(v21, v20, &v23, &v25, &v24) - 16;
  }

  else
  {
    v23 = 4;
    return mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate,mlir::Value &,mlir::Value &>(v21, v20, &v23, &v25, &v24) - 16;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpFOp,mlir::arith::CmpFPredicate,mlir::Value &,mlir::Value &>(uint64_t **a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpFOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpFOp,mlir::arith::CmpFPredicate,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::CmpFOp::build(a1, v19, *a3, *a4, *a5, 0);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpFOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate,mlir::Value &,mlir::Value &>(uint64_t **a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::CmpIOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::ArithBuilder::slt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v24 = a3;
  v3 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v19 = v3 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v21 = *a1;
  v20 = *(a1 + 8);
  if (v19)
  {
    v23 = 4;
    return mlir::OpBuilder::create<mlir::arith::CmpFOp,mlir::arith::CmpFPredicate,mlir::Value &,mlir::Value &>(v21, v20, &v23, &v25, &v24) - 16;
  }

  else
  {
    v23 = 2;
    return mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate,mlir::Value &,mlir::Value &>(v21, v20, &v23, &v25, &v24) - 16;
  }
}

uint64_t mlir::ArithBuilder::select(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = a4;
  v6 = a3;
  return mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Value &,mlir::Value &>(*a1, *(a1 + 8), &v7, &v6, &v5) - 16;
}

uint64_t mlir::arith::createProduct(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v15 = (*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  OneAttr = mlir::Builder::getOneAttr(a1, v15);
  v14 = v8;
  v9 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr>(a1, a2, &v15, &OneAttr) - 16;
  OneAttr = a1;
  v14 = a2;
  if (a4)
  {
    v10 = 8 * a4;
    do
    {
      v11 = *v5++;
      v9 = mlir::ArithBuilder::mul(&OneAttr, v9, v11);
      v10 -= 8;
    }

    while (v10);
  }

  return v9;
}

uint64_t mlir::arith::createProduct(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t a4, mlir::MLIRContext *a5)
{
  v16 = a5;
  OneAttr = mlir::Builder::getOneAttr(a1, a5);
  v15 = v9;
  v10 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr>(a1, a2, &v16, &OneAttr) - 16;
  OneAttr = a1;
  v15 = a2;
  if (a4)
  {
    v11 = 8 * a4;
    do
    {
      v12 = *a3++;
      v10 = mlir::ArithBuilder::mul(&OneAttr, v10, v12);
      v11 -= 8;
    }

    while (v11);
  }

  return v10;
}

uint64_t mlir::arith::parseFloatType(mlir::Float4E2M1FNType *a1, mlir::MLIRContext *a2, uint64_t a3)
{
  v57 = a1;
  Float4E2M1FNType = mlir::Builder::getFloat4E2M1FNType(&v57, a2);
  if (a3 == 8)
  {
    v7 = Float4E2M1FNType;
    v8 = *a2;
    Float6E2M3FNType = mlir::Builder::getFloat6E2M3FNType(&v57, v6);
    if (v8 != 0x4E46314D32453466)
    {
      if (*a2 != 0x4E46334D32453666)
      {
        Float6E3M2FNType = mlir::Builder::getFloat6E3M2FNType(&v57, v10);
        if (*a2 != 0x4E46324D33453666)
        {
          mlir::Builder::getFloat8E5M2Type(&v57, v12);
          mlir::Builder::getFloat8E4M3Type(&v57, v13);
          Float8E4M3FNType = mlir::Builder::getFloat8E4M3FNType(&v57, v14);
          if (*a2 != 0x4E46334D34453866)
          {
            mlir::Builder::getFloat8E5M2FNUZType(&v57, v16);
            mlir::Builder::getFloat8E4M3FNUZType(&v57, v17);
LABEL_25:
            mlir::Builder::getFloat8E3M4Type(&v57, v18);
LABEL_32:
            mlir::Builder::getBF16Type(&v57, v32);
LABEL_33:
            mlir::Builder::getF16Type(&v57, v39);
            goto LABEL_34;
          }

          v7 = Float8E4M3FNType;
          goto LABEL_43;
        }

        v7 = Float6E3M2FNType;
        goto LABEL_40;
      }

      v7 = Float6E2M3FNType;
    }

    mlir::Builder::getFloat6E3M2FNType(&v57, v10);
LABEL_40:
    mlir::Builder::getFloat8E5M2Type(&v57, v12);
LABEL_41:
    mlir::Builder::getFloat8E4M3Type(&v57, v22);
LABEL_42:
    mlir::Builder::getFloat8E4M3FNType(&v57, v25);
LABEL_43:
    mlir::Builder::getFloat8E5M2FNUZType(&v57, v16);
    goto LABEL_44;
  }

  mlir::Builder::getFloat6E2M3FNType(&v57, v6);
  mlir::Builder::getFloat6E3M2FNType(&v57, v19);
  Float8E5M2Type = mlir::Builder::getFloat8E5M2Type(&v57, v20);
  if (a3 == 6)
  {
    if (*a2 == 893728870 && *(a2 + 2) == 12877)
    {
      v7 = Float8E5M2Type;
      goto LABEL_41;
    }

    Float8E4M3Type = mlir::Builder::getFloat8E4M3Type(&v57, v22);
    if (*a2 == 876951654 && *(a2 + 2) == 13133)
    {
      v7 = Float8E4M3Type;
      goto LABEL_42;
    }

    mlir::Builder::getFloat8E4M3FNType(&v57, v25);
    mlir::Builder::getFloat8E5M2FNUZType(&v57, v27);
  }

  else
  {
    mlir::Builder::getFloat8E4M3Type(&v57, v22);
    mlir::Builder::getFloat8E4M3FNType(&v57, v33);
    Float8E5M2FNUZType = mlir::Builder::getFloat8E5M2FNUZType(&v57, v34);
    if (a3 == 10)
    {
      if (*a2 != 0x4E46324D35453866 || *(a2 + 4) != 23125)
      {
        Float8E4M3FNUZType = mlir::Builder::getFloat8E4M3FNUZType(&v57, v28);
        if (*a2 != 0x4E46334D34453866 || *(a2 + 4) != 23125)
        {
          goto LABEL_25;
        }

        v7 = Float8E4M3FNUZType;
        goto LABEL_45;
      }

      v7 = Float8E5M2FNUZType;
LABEL_44:
      mlir::Builder::getFloat8E4M3FNUZType(&v57, v28);
LABEL_45:
      mlir::Builder::getFloat8E3M4Type(&v57, v18);
LABEL_46:
      mlir::Builder::getBF16Type(&v57, v32);
LABEL_47:
      mlir::Builder::getF16Type(&v57, v39);
      goto LABEL_48;
    }
  }

  mlir::Builder::getFloat8E4M3FNUZType(&v57, v28);
  Float8E3M4Type = mlir::Builder::getFloat8E3M4Type(&v57, v36);
  if (a3 == 6)
  {
    if (*a2 != 860174438 || *(a2 + 2) != 13389)
    {
      goto LABEL_32;
    }

    v7 = Float8E3M4Type;
    goto LABEL_46;
  }

  BF16Type = mlir::Builder::getBF16Type(&v57, v32);
  if (a3 == 4)
  {
    if (*a2 != 909207138)
    {
      goto LABEL_33;
    }

    v7 = BF16Type;
    goto LABEL_47;
  }

  F16Type = mlir::Builder::getF16Type(&v57, v39);
  if (a3 == 3)
  {
    if (*a2 != 12646 || *(a2 + 2) != 54)
    {
      F32Type = mlir::Builder::getF32Type(&v57, v40);
      if (*a2 != 13158 || *(a2 + 2) != 50)
      {
        F64Type = mlir::Builder::getF64Type(&v57, v45);
        if (*a2 != 13926 || *(a2 + 2) != 52)
        {
          F80Type = mlir::Builder::getF80Type(&v57, v46);
          if (*a2 != 14438 || *(a2 + 2) != 48)
          {
            mlir::Builder::getF128Type(&v57, v47);
            return 0;
          }

          v7 = F80Type;
LABEL_51:
          mlir::Builder::getF128Type(&v57, v47);
          return v7;
        }

        v7 = F64Type;
LABEL_50:
        mlir::Builder::getF80Type(&v57, v46);
        goto LABEL_51;
      }

      v7 = F32Type;
LABEL_49:
      mlir::Builder::getF64Type(&v57, v45);
      goto LABEL_50;
    }

    v7 = F16Type;
LABEL_48:
    mlir::Builder::getF32Type(&v57, v40);
    goto LABEL_49;
  }

LABEL_34:
  mlir::Builder::getF32Type(&v57, v40);
  mlir::Builder::getF64Type(&v57, v41);
  mlir::Builder::getF80Type(&v57, v42);
  result = mlir::Builder::getF128Type(&v57, v43);
  if (a3 != 4)
  {
    return 0;
  }

  if (*a2 != 942813542)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::FPToUIOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::FPToUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::FPToUIOp,mlir::IntegerType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::FPToUIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::FPToUIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::FPToSIOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::FPToSIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::FPToSIOp,mlir::IntegerType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::FPToSIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::FPToSIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::IntegerType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::IntegerType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ExtUIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::UIToFPOp,mlir::FloatType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::UIToFPOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::UIToFPOp,mlir::FloatType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::UIToFPOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::UIToFPOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::SIToFPOp,mlir::FloatType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SIToFPOp,mlir::FloatType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::SIToFPOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ExtFOp,mlir::FloatType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtFOp,mlir::FloatType &,mlir::Value &>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::TypeRange::TypeRange(v17, a3, 1uLL);
  mlir::arith::ExtFOp::build(a1, v16, v17[0], v17[1], a4, 1uLL, 0, 0);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::TruncFOp,mlir::FloatType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::TruncFOp,mlir::FloatType &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::TruncFOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::complex::ReOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::ReOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::complex::ReOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::complex::ReOp::build(a1, v15, *a3, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ReOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::complex::ImOp,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::ImOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::complex::ImOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::complex::ImOp::build(a1, v15, *a3, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ImOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::complex::CreateOp,mlir::ComplexType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::complex::CreateOp,mlir::ComplexType &,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::complex::CreateOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::CreateOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantFloatOp,llvm::APFloat,mlir::FloatType &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ConstantFloatOp::build(a1, v17, a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (!mlir::arith::ConstantFloatOp::classof(v11, v12))
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v11;
}

void mlir::OpBuilder::createOrFold<mlir::arith::DivUIOp,mlir::Value &,mlir::Value &>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v27[38] = *MEMORY[0x277D85DE8];
  v24 = a3;
  Context = mlir::Attribute::getContext(&v24);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::arith::DivUIOp,mlir::Value &,mlir::Value &>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a3, v11);
  mlir::arith::DivUIOp::build(a1, v27, *a4, *a5);
  v14 = mlir::Operation::create(v27, v13);
  v15 = a1[2];
  if (v15)
  {
    v16 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v14);
    v18 = *v16;
    *NodePtr = *v16;
    NodePtr[1] = v16;
    *(v18 + 8) = NodePtr;
    *v16 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v14);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v14);
    goto LABEL_18;
  }

  v19 = v14[9];
  if (v19)
  {
    v20 = (v14 - 4);
  }

  else
  {
    v20 = 0;
  }

  *(a2 + 8) = 0;
  if (v19 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    v21 = 0;
    v22 = *a2;
    do
    {
      *(v22 + 8 * v21) = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, v21);
      ++v21;
    }

    while (v19 != v21);
    *(a2 + 8) += v19;
    if (!a1[2])
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    if (!a1[2])
    {
      goto LABEL_18;
    }
  }

  v23 = a1[1];
  if (v23)
  {
    (*(*v23 + 16))(v23, v14, 0, 0);
  }

LABEL_18:
  mlir::OperationState::~OperationState(v27);
}

void mlir::OpBuilder::createOrFold<mlir::arith::ConstantOp,mlir::Type &,mlir::FloatAttr>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void **a5)
{
  v42[38] = *MEMORY[0x277D85DE8];
  v39 = a3;
  Context = mlir::Attribute::getContext(&v39);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v42, v41, v40);
  }

  mlir::OperationState::OperationState(v42, a3, v11);
  v13 = *a4;
  v14 = *a5;
  if (!*a5)
  {
    goto LABEL_16;
  }

  v15 = *v14;
  {
    v25 = v13;
    v26 = v14;
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>();
    v14 = v26;
    v13 = v25;
    v16 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  v16 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_5:
  v19 = v17;
  v20 = v18;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[2 * (v20 >> 1)];
    v24 = *v22;
    v23 = v22 + 2;
    v20 += ~(v20 >> 1);
    if (v24 < v16)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == &v17[2 * v18] || *v19 != v16)
  {
    goto LABEL_16;
  }

  v27 = v19[1];
LABEL_17:
  mlir::arith::ConstantOp::build(a1, v42, v13, v14, v27);
  v29 = mlir::Operation::create(v42, v28);
  v30 = a1[2];
  if (v30)
  {
    v31 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v30 + 32, v29);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v29);
    v33 = *v31;
    *NodePtr = *v31;
    NodePtr[1] = v31;
    *(v33 + 8) = NodePtr;
    *v31 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v29);
  }

  if ((mlir::OpBuilder::tryFold(a1, v29, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v29);
    goto LABEL_33;
  }

  v34 = v29[9];
  if (v34)
  {
    v35 = (v29 - 4);
  }

  else
  {
    v35 = 0;
  }

  *(a2 + 8) = 0;
  if (v34 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v34)
  {
    v36 = 0;
    v37 = *a2;
    do
    {
      *(v37 + 8 * v36) = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v36);
      ++v36;
    }

    while (v34 != v36);
    *(a2 + 8) += v34;
    if (!a1[2])
    {
      goto LABEL_33;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    if (!a1[2])
    {
      goto LABEL_33;
    }
  }

  v38 = a1[1];
  if (v38)
  {
    (*(*v38 + 16))(v38, v29, 0, 0);
  }

LABEL_33:
  mlir::OperationState::~OperationState(v42);
}

void mlir::OpBuilder::createOrFold<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr &>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v27[38] = *MEMORY[0x277D85DE8];
  v24 = a3;
  Context = mlir::Attribute::getContext(&v24);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a3, v11);
  mlir::arith::ConstantOp::build(a1, v27, *a4, *a5, a5[1]);
  v14 = mlir::Operation::create(v27, v13);
  v15 = a1[2];
  if (v15)
  {
    v16 = a1[3];
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v14);
    v18 = *v16;
    *NodePtr = *v16;
    NodePtr[1] = v16;
    *(v18 + 8) = NodePtr;
    *v16 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v14);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v14);
    goto LABEL_18;
  }

  v19 = v14[9];
  if (v19)
  {
    v20 = (v14 - 4);
  }

  else
  {
    v20 = 0;
  }

  *(a2 + 8) = 0;
  if (v19 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    v21 = 0;
    v22 = *a2;
    do
    {
      *(v22 + 8 * v21) = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, v21);
      ++v21;
    }

    while (v19 != v21);
    *(a2 + 8) += v19;
    if (!a1[2])
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    if (!a1[2])
    {
      goto LABEL_18;
    }
  }

  v23 = a1[1];
  if (v23)
  {
    (*(*v23 + 16))(v23, v14, 0, 0);
  }

LABEL_18:
  mlir::OperationState::~OperationState(v27);
}

double mlir::computeSuffixProduct@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a3 + 16);
  *a3 = a3 + 16;
  if (a2)
  {
    v5 = a2;
    *(a3 + 12) = 6;
    if (a2 > 6)
    {
      *(a3 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16(v4, &unk_257369660, 8 * a2);
    *(a3 + 8) = v5;
    if (v5 >= 2uLL)
    {
      v8 = 8 * v5;
      v9 = *&v4[v8 - 8];
      do
      {
        v9 *= *(a1 - 8 + v8);
        *&v4[v8 - 16] = v9;
        v8 -= 8;
      }

      while (v8 != 8);
    }
  }

  else
  {
    *&result = 0x600000000;
    *(a3 + 8) = 0x600000000;
  }

  return result;
}

void *mlir::computeElementwiseMul@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  if (a2 | a4 && a2)
  {
    v5 = 0;
    v6 = 8 * a2;
    do
    {
      if (v5 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a5 + 8 * v5) = *a3 * *result;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++result;
      ++a3;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::computeSum(int32x4_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v2 >= 7)
  {
    v6 = v2 + 1;
    v7 = (v2 + 1) & 0x3FFFFFFFFFFFFFF8;
    v4 = (a1 + 8 * v7);
    v8 = xmmword_25736B7A0;
    v9 = a1 + 2;
    v10 = 0uLL;
    v11 = v7;
    do
    {
      v13 = v9[-2];
      v12 = v9[-1];
      v15 = *v9;
      v14 = v9[1];
      v9 += 4;
      v8 = vaddq_s32(v8, vuzp1q_s32(v13, v12));
      v10 = vaddq_s32(v10, vuzp1q_s32(v15, v14));
      v11 -= 8;
    }

    while (v11);
    v3 = vaddvq_s32(vaddq_s32(v10, v8));
    if (v6 == v7)
    {
      return v3;
    }
  }

  else
  {
    v3 = 1;
    v4 = a1;
  }

  do
  {
    v16 = v4->i32[0];
    v4 = (v4 + 8);
    v3 += v16;
  }

  while (v4 != (a1 + 8 * a2));
  return v3;
}

uint64_t mlir::computeProduct(int32x4_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v2 >= 7)
  {
    v6 = v2 + 1;
    v7 = (v2 + 1) & 0x3FFFFFFFFFFFFFF8;
    v4 = (a1 + 8 * v7);
    v8 = a1 + 2;
    v9.i64[0] = 0x100000001;
    v9.i64[1] = 0x100000001;
    v10 = v7;
    v11.i64[0] = 0x100000001;
    v11.i64[1] = 0x100000001;
    do
    {
      v13 = v8[-2];
      v12 = v8[-1];
      v15 = *v8;
      v14 = v8[1];
      v8 += 4;
      v9 = vmulq_s32(v9, vuzp1q_s32(v13, v12));
      v11 = vmulq_s32(v11, vuzp1q_s32(v15, v14));
      v10 -= 8;
    }

    while (v10);
    v16 = vmulq_s32(v11, v9);
    *v16.i8 = vmul_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    v3 = v16.i32[0] * v16.i32[1];
    if (v6 == v7)
    {
      return v3;
    }
  }

  else
  {
    v3 = 1;
    v4 = a1;
  }

  do
  {
    v17 = v4->i32[0];
    v4 = (v4 + 8);
    v3 *= v17;
  }

  while (v4 != (a1 + 8 * a2));
  return v3;
}

uint64_t mlir::linearize(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a4 == 1)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v4 = a4 - (a4 & 1);
    v9 = (a1 + 8);
    v10 = (a3 + 8);
    v11 = v4;
    do
    {
      v7 += *(v10 - 1) * *(v9 - 1);
      v8 += *v10 * *v9;
      v9 += 2;
      v10 += 2;
      v11 -= 2;
    }

    while (v11);
    v5 = v8 + v7;
    if ((a4 & 1) == 0)
    {
      return v5;
    }
  }

  v12 = a4 - v4;
  v13 = 8 * v4;
  v14 = (a3 + 8 * v4);
  v15 = (a1 + v13);
  do
  {
    v17 = *v15++;
    v16 = v17;
    v18 = *v14++;
    v5 += v18 * v16;
    --v12;
  }

  while (v12);
  return v5;
}

void mlir::delinearize(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  if (a3)
  {
    v6 = a3;
    if (a3 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = *a4;
    bzero(*a4, 8 * a3);
    *(a4 + 8) = v6;
    if (v6 >= 1)
    {
      do
      {
        *v8++ = a1 / *a2;
        v9 = *a2++;
        a1 %= v9;
        --v6;
      }

      while (v6);
    }
  }
}

void mlir::computeShapeRatio(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2 >= a4)
  {
    if (a2)
    {
      if (!(a2 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a4)
    {
      if (!(*(a1 + 8 * a2 - 8) % *(a3 + 8 * a4 - 8)))
      {
        operator new();
      }

      *a5 = 0;
      *(a5 + 64) = 0;
    }

    else
    {
      *a5 = a5 + 16;
      *(a5 + 8) = 0x600000000;
      *(a5 + 64) = 1;
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 64) = 0;
  }
}

mlir::AffineExpr *mlir::computeSuffixProduct@<X0>(mlir::AffineExpr *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    return result;
  }

  v5 = result;
  Context = mlir::AffineExpr::getContext(result);
  result = mlir::getAffineConstantExpr(1, Context, v7);
  v8 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 12) = 6;
  if (a2 > 6)
  {
    *(a3 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = vdupq_n_s64(a2 - 1);
  v10 = a2 + 1;
  v11 = vmovn_s64(vcgeq_u64(v9, xmmword_2573686A0));
  if ((v11.i8[0] & 1) == 0)
  {
    v12 = v10 & 0xE;
    if ((v11.i8[4] & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    *(a3 + 24) = result;
    if (v12 == 2)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  *v8 = result;
  v12 = v10 & 0xE;
  if (v11.i8[4])
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v12 == 2)
  {
    goto LABEL_21;
  }

LABEL_11:
  v13 = vmovn_s64(vcgtq_u64(v9, xmmword_2573686B0));
  if ((v13.i8[0] & 1) == 0)
  {
    if ((v13.i8[4] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    *(a3 + 40) = result;
    if (v12 == 4)
    {
      goto LABEL_21;
    }

LABEL_17:
    v14 = vmovn_s64(vcgtq_u64(v9, xmmword_2573686C0));
    if (v14.i8[0])
    {
      *(a3 + 48) = result;
    }

    if (v14.i8[4])
    {
      *(a3 + 56) = result;
    }

    goto LABEL_21;
  }

  *(a3 + 32) = result;
  if (v13.i8[4])
  {
    goto LABEL_16;
  }

LABEL_13:
  if (v12 != 4)
  {
    goto LABEL_17;
  }

LABEL_21:
  *(a3 + 8) = a2;
  if (a2 >= 2uLL)
  {
    v15 = 8 * a2 - 8;
    do
    {
      result = mlir::AffineExpr::operator*((v8 + v15), *(v5 + v15));
      v8 = *a3;
      *(*a3 + v15 - 8) = result;
      v15 -= 8;
    }

    while (v15);
  }

  return result;
}

uint64_t mlir::computeElementwiseMul@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  if (a2 | a4 && a2)
  {
    v7 = result;
    v8 = 8 * a2;
    do
    {
      result = mlir::AffineExpr::operator*(v7, *a3);
      v9 = *(a5 + 8);
      if (v9 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a5 + 8 * v9) = result;
      ++*(a5 + 8);
      ++v7;
      ++a3;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlir::computeSum(mlir::MLIRContext *a1, uint64_t *a2, mlir::MLIRContext *a3)
{
  if (a3)
  {
    AffineConstantExpr = mlir::getAffineConstantExpr(0, a1, a3);
    v5 = 8 * a3;
    do
    {
      v6 = *a2++;
      result = mlir::AffineExpr::operator+(&AffineConstantExpr, v6);
      AffineConstantExpr = result;
      v5 -= 8;
    }

    while (v5);
  }

  else
  {

    return mlir::getAffineConstantExpr(0, a1, 0);
  }

  return result;
}

uint64_t mlir::computeProduct(mlir::MLIRContext *a1, uint64_t *a2, mlir::MLIRContext *a3)
{
  if (a3)
  {
    AffineConstantExpr = mlir::getAffineConstantExpr(1, a1, a3);
    v5 = 8 * a3;
    do
    {
      v6 = *a2++;
      result = mlir::AffineExpr::operator*(&AffineConstantExpr, v6);
      AffineConstantExpr = result;
      v5 -= 8;
    }

    while (v5);
  }

  else
  {

    return mlir::getAffineConstantExpr(1, a1, 0);
  }

  return result;
}

uint64_t mlir::linearize(mlir::MLIRContext *a1, uint64_t *a2, mlir::MLIRContext *a3, uint64_t *a4, int a5)
{
  LODWORD(v8) = a5;
  result = mlir::getAffineConstantExpr(0, a1, a3);
  v11 = result;
  v8 = v8;
  if (v8)
  {
    do
    {
      v9 = *a4++;
      v10 = mlir::AffineExpr::operator*(a2, v9);
      result = mlir::AffineExpr::operator+(&v11, v10);
      v11 = result;
      ++a2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlir::linearize(mlir::MLIRContext *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[6] = *MEMORY[0x277D85DE8];
  mlir::getAffineConstantExprs(a4, a5, a1, &v15);
  v7 = v15;
  v8 = v16;
  result = mlir::getAffineConstantExpr(0, a1, v9);
  v14 = result;
  if (v8)
  {
    do
    {
      v11 = *v7++;
      v12 = mlir::AffineExpr::operator*(a2, v11);
      result = mlir::AffineExpr::operator+(&v14, v12);
      v14 = result;
      ++a2;
      --v8;
    }

    while (v8);
  }

  if (v15 != v17)
  {
    v13 = result;
    free(v15);
    return v13;
  }

  return result;
}

mlir::MLIRContext **mlir::delinearize@<X0>(mlir::MLIRContext **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = result;
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  if (a3)
  {
    v7 = result;
    if (a3 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*a4, 8 * a3);
    *(a4 + 8) = a3;
    result = v7;
    if (a3 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(a2 + 8 * v8);
        v11 = result;
        *(*a4 + 8 * v8) = mlir::AffineExpr::floorDiv(&v11, v9);
        result = mlir::AffineExpr::operator%(&v10, *(a2 + 8 * v8));
        v10 = result;
        ++v8;
      }

      while (a3 != v8);
    }
  }

  return result;
}

void mlir::delinearize(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  Context = mlir::AffineExpr::getContext(&v14);
  v8 = v14;
  mlir::getAffineConstantExprs(a2, a3, Context, &v17);
  v9 = v17;
  v10 = v18;
  v15 = v8;
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  if (v10)
  {
    if (v10 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*a4, 8 * v10);
    v11 = v8;
    v12 = 0;
    *(a4 + 8) = v10;
    do
    {
      v13 = v9[v12];
      v16 = v11;
      *(*a4 + 8 * v12) = mlir::AffineExpr::floorDiv(&v16, v13);
      v11 = mlir::AffineExpr::operator%(&v15, v9[v12]);
      v15 = v11;
      ++v12;
    }

    while (v10 != v12);
    v9 = v17;
  }

  if (v9 != v19)
  {
    free(v9);
  }
}

void mlir::invertPermutationVector(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  if (a2)
  {
    if (a2 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*a3, 8 * a2);
    v6 = 0;
    *(a3 + 8) = a2;
    v7 = *a3;
    v8 = 8 * a2;
    do
    {
      v7[*(a1 + 8 * v6)] = v6;
      ++v6;
      v8 -= 8;
    }

    while (v8);
  }
}

uint64_t mlir::isIdentityPermutation(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2 == *(a1 + 8 * v2);
    v4 = v2 != *(a1 + 8 * v2) || a2 - 1 == v2;
    ++v2;
  }

  while (!v4);
  return v3;
}

BOOL mlir::isPermutationVector(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 1;
  memset_pattern16(&v18, &unk_257369640, 0x20uLL);
  if (a2)
  {
    v4 = &a1[a2];
    while (1)
    {
      v5 = *a1;
      v15 = *a1;
      if (v17)
      {
        break;
      }

      if (v19)
      {
        v6 = v18;
        v7 = v19 - 1;
        v8 = (v19 - 1) & (37 * v5);
        v9 = *(v18 + v8);
        if (v5 == v9)
        {
          goto LABEL_14;
        }

LABEL_8:
        v10 = 1;
        while (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v8 + v10++;
          v8 = v11 & v7;
          v9 = v6[v8];
          if (v5 == v9)
          {
            goto LABEL_14;
          }
        }
      }

      llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v17, &v15, v16);
      if (++a1 == v4)
      {
        v12 = v17;
        goto LABEL_18;
      }
    }

    v6 = &v18;
    v7 = 3;
    v8 = (37 * v5) & 3;
    v9 = *(&v18 + v8);
    if (v5 == v9)
    {
LABEL_14:
      v13 = 0;
      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      return v13;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_18:
  v13 = a2 == v12 >> 1;
  if ((v12 & 1) == 0)
  {
LABEL_15:
    llvm::deallocate_buffer(v18, (8 * v19));
  }

  return v13;
}

void mlir::computePermutationVector(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v9 = (a5 + 16);
  *a5 = a5 + 16;
  *(a5 + 12) = 6;
  if (a1 >= 7)
  {
    *(a5 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a1)
  {
    v10 = a2;
    memset(v9, 255, 8 * a1);
    a2 = v10;
  }

  *(a5 + 8) = v7;
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  if (a3)
  {
    v11 = 8 * a3;
    v12 = a2;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = *a4++;
      *(*a5 + 8 * v15) = v13;
      llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(v27, a2, v29);
      a2 = v12;
      v11 -= 8;
    }

    while (v11);
    v9 = *a5;
    v7 = *(a5 + 8);
  }

  if (v7)
  {
    v16 = v28;
    if (v28)
    {
      v17 = 0;
      v18 = v27[0];
      v19 = v28 - 1;
      v20 = &v9[v7];
      do
      {
        if (*v9 == -1)
        {
          while (1)
          {
            v23 = v19 & (37 * v17);
            v24 = *(v18 + v23);
            if (v17 != v24)
            {
              break;
            }

LABEL_18:
            if (v23 == v16)
            {
              goto LABEL_19;
            }

            ++v17;
          }

          v21 = 1;
          while (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = v23 + v21++;
            v23 = v22 & v19;
            v24 = *(v18 + v23);
            if (v17 == v24)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          *v9 = v17++;
        }

        ++v9;
      }

      while (v9 != v20);
    }

    else
    {
      v25 = 0;
      v26 = 8 * v7;
      do
      {
        if (*v9 == -1)
        {
          *v9 = v25++;
        }

        ++v9;
        v26 -= 8;
      }

      while (v26);
    }
  }

  else
  {
    LODWORD(v16) = v28;
  }

  llvm::deallocate_buffer(v27[0], (8 * v16));
}

uint64_t *mlir::dropDims@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v5 = a2;
  if (a2)
  {
    v6 = 0;
    if (a4)
    {
      for (i = 0; i != a2; ++i)
      {
        v8 = result[i];
        v9 = a4;
        v10 = a3;
        v11 = v8;
        while (1)
        {
          v12 = *v10++;
          v13 = v12 < v8;
          if (v12 == v8)
          {
            break;
          }

          v14 = v13;
          v11 -= v14;
          if (!--v9)
          {
            if (v6 >= *(a5 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*a5 + 8 * v6) = v11;
            v6 = *(a5 + 8) + 1;
            *(a5 + 8) = v6;
            break;
          }
        }
      }
    }

    else
    {
      do
      {
        v16 = *result++;
        v15 = v16;
        if (v6 >= *(a5 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a5 + 8 * v6) = v15;
        v6 = *(a5 + 8) + 1;
        *(a5 + 8) = v6;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t *mlir::getI64SubArray@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a1;
  Value = mlir::ArrayAttr::getValue(&v21);
  v8 = mlir::ArrayAttr::getValue(&v21);
  v10 = v8 + 8 * v9;
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  result = mlir::ArrayAttr::getValue(&v21);
  v12 = -a3;
  if (v13 - (a3 + a2) > *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v14 = (Value + 8 * a2);
  for (i = (v10 + 8 * v12); v14 != i; ++v14)
  {
    v18 = *v14;
    result = mlir::IntegerAttr::getValue(&v18, &v19);
    if (v20 > 0x40)
    {
      v16 = *v19;
    }

    else if (v20)
    {
      v16 = (v19 << -v20) >> -v20;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a4 + 8);
    if (v17 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v17) = v16;
    ++*(a4 + 8);
    if (v20 >= 0x41)
    {
      result = v19;
      if (v19)
      {
        result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void mlir::computeLinearIndex(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v6) = a3;
  v32[6] = *MEMORY[0x277D85DE8];
  v10 = (2 * (a3 & 0x7FFFFFFF)) | 1;
  __src = v32;
  v31 = 0x600000000;
  if (2 * (a3 & 0x7FFFFFFF) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(v32, 8 * v10);
  LODWORD(v31) = v10;
  v26 = v29;
  v28 = 6;
  bzero(v29, 8 * v10);
  v27 = v10;
  if ((a1 & 4) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v11;
  if (v11)
  {
    Context = mlir::Attribute::getContext(&v25);
    v14 = v26;
    v15 = v27;
    if (!v27)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Type::getContext(&v25);
    v14 = v26;
    v15 = v27;
    if (!v27)
    {
      goto LABEL_13;
    }
  }

  v16 = 0;
  v17 = 8 * v15;
  do
  {
    v14[v16] = mlir::getAffineSymbolExpr(v16, Context, v12);
    v16 = (v16 + 1);
    v17 -= 8;
  }

  while (v17);
  v14 = v26;
LABEL_13:
  v18 = *v14;
  v25 = *v14;
  *__src = a1;
  v6 = v6;
  if (v6)
  {
    v19 = 2;
    do
    {
      v21 = *a2++;
      v20 = v21;
      v22 = mlir::AffineExpr::operator*(v26 + v19 - 1, *(v26 + v19));
      v25 = mlir::AffineExpr::operator+(&v25, v22);
      v23 = *a4++;
      *(__src + v19 - 1) = v23;
      *(__src + v19) = v20;
      v19 += 2;
      --v6;
    }

    while (v6);
    v18 = v25;
  }

  *a5 = v18;
  *(a5 + 8) = a5 + 24;
  *(a5 + 16) = 0x600000000;
  if ((a5 + 8) != &__src)
  {
    v24 = v31;
    if (v31)
    {
      if (v31 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a5 + 24), __src, 8 * v31);
      *(a5 + 16) = v24;
    }
  }

  if (v26 != v29)
  {
    free(v26);
  }

  if (__src != v32)
  {
    free(__src);
  }
}

void mlir::computeLinearIndex(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[6] = *MEMORY[0x277D85DE8];
  if ((a1 & 4) != 0)
  {
    v18 = (*((a1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0xFFFFFFFFFFFFFFF8);
    Context = mlir::Type::getContext(&v18);
  }

  else
  {
    v18 = (a1 & 0xFFFFFFFFFFFFFFF8);
    Context = mlir::Attribute::getContext(&v18);
  }

  mlir::getAsIndexOpFoldResult(Context, a2, a3, &v18);
  v13 = v18;
  v14 = v19;
  mlir::ValueRange::ValueRange(v15, a4, a5);
  mlir::getAsOpFoldResult(v15[0], v15[1], &v16);
  mlir::computeLinearIndex(a1, v13, v14, v16, a6);
  if (v16 != &v17)
  {
    free(v16);
  }

  if (v18 != v20)
  {
    free(v18);
  }
}

uint64_t mlir::detail::TileOffsetRangeImpl::TileOffsetRangeImpl(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t *a6, unint64_t a7)
{
  v51 = *MEMORY[0x277D85DE8];
  v14 = a3 - a5;
  if (a3 == a5)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (a5 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a5)
    {
      memcpy((a1 + 16), a4, 8 * a5);
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 8) = v17 + a5;
    v16 = (a1 + 80);
    *(a1 + 64) = a1 + 80;
    *(a1 + 72) = 0x600000000;
    if (a7)
    {
LABEL_11:
      if (a7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(v16, 8 * a7);
      v18 = 0;
      *(a1 + 72) = a7;
      v19 = 8 * a7;
      do
      {
        *(v16 + a6[v18]) = v18;
        ++v18;
        v19 -= 8;
      }

      while (v19);
    }
  }

  else
  {
    v15 = (a1 + 16);
    *a1 = a1 + 16;
    *(a1 + 12) = 6;
    if (v14 >= 7)
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16(v15, &unk_257369660, 8 * v14);
    *(a1 + 8) = v14;
    llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a1, v15 + 8 * v14, a4, a4 + 8 * a5);
    v16 = (a1 + 80);
    *(a1 + 64) = a1 + 80;
    *(a1 + 72) = 0x600000000;
    if (a7)
    {
      goto LABEL_11;
    }
  }

  *(a1 + 128) = a1 + 144;
  v20 = (a1 + 128);
  *(a1 + 136) = 0x600000000;
  if (a3)
  {
    if (a3 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(*v20, 8 * a3);
    *(a1 + 136) = a3;
  }

  mlir::computeShapeRatio(a2, a3, a4, a5, &v48);
  if (!v49)
  {
    v24 = 1;
    goto LABEL_28;
  }

  v21 = (v49 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v21 >= 7)
  {
    v25 = v21 + 1;
    v26 = (v21 + 1) & 0x3FFFFFFFFFFFFFF8;
    v23 = (v48 + 8 * v26);
    v27 = (v48 + 32);
    v28.i64[0] = 0x100000001;
    v28.i64[1] = 0x100000001;
    v29 = v26;
    v30.i64[0] = 0x100000001;
    v30.i64[1] = 0x100000001;
    do
    {
      v32 = v27[-2];
      v31 = v27[-1];
      v34 = *v27;
      v33 = v27[1];
      v27 += 4;
      v28 = vmulq_s32(v28, vuzp1q_s32(v32, v31));
      v30 = vmulq_s32(v30, vuzp1q_s32(v34, v33));
      v29 -= 8;
    }

    while (v29);
    v35 = vmulq_s32(v30, v28);
    *v35.i8 = vmul_s32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    v22 = v35.i32[0] * v35.i32[1];
    if (v25 == v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = 1;
    v23 = v48;
  }

  do
  {
    v36 = *v23;
    v23 += 2;
    v22 *= v36;
  }

  while (v23 != (v48 + 8 * v49));
LABEL_27:
  v24 = v22;
LABEL_28:
  *(a1 + 192) = v24;
  mlir::applyPermutationToVector<long long,6u>(&v48, a6);
  v37 = v48;
  v38 = v49;
  __b = v47;
  if (v49)
  {
    HIDWORD(v46) = 6;
    if (v49 >= 7)
    {
      LODWORD(v46) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16(v47, &unk_257369660, 8 * v49);
    LODWORD(v46) = v38;
    v39 = v47;
    if (v38 != 1)
    {
      v40 = v47[v38 - 1];
      for (i = v38; i != 1; --i)
      {
        v40 = (v37[i - 1] * v40);
        *(&__b + i) = v40;
      }
    }
  }

  else
  {
    v46 = 0x600000000;
    v39 = v47;
  }

  if (v20 != &__b)
  {
    v42 = *(a1 + 136);
    if (v42 >= v38)
    {
      if (v38)
      {
        memmove(*v20, v47, 8 * v38);
      }

      goto LABEL_45;
    }

    if (*(a1 + 140) < v38)
    {
      *(a1 + 136) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v42)
    {
      memmove(*v20, v47, 8 * v42);
      v43 = v46 - v42;
      if (v46 == v42)
      {
LABEL_45:
        *(a1 + 136) = v38;
        LODWORD(v46) = 0;
        v39 = __b;
        goto LABEL_46;
      }
    }

    else
    {
      v42 = 0;
      v43 = v46;
      if (!v46)
      {
        goto LABEL_45;
      }
    }

    memcpy(*v20 + 8 * v42, __b + 8 * v42, 8 * v43);
    goto LABEL_45;
  }

LABEL_46:
  if (v39 != v47)
  {
    free(v39);
  }

  if (v50[48] == 1 && v48 != v50)
  {
    free(v48);
  }

  return a1;
}

void mlir::detail::TileOffsetRangeImpl::getStaticTileOffsets(mlir::detail::TileOffsetRangeImpl *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *(this + 16);
  v6 = *(this + 34);
  if (v6)
  {
    if (v6 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v22;
    bzero(v22, 8 * v6);
    v11 = v6;
    do
    {
      *v10++ = a2 / *v5;
      v12 = *v5++;
      a2 %= v12;
      --v11;
    }

    while (v11);
    v13 = *(this + 8);
    v23 = v25;
    v24 = 0x600000000;
    v9 = v25;
    v14 = 0;
    v15 = v6;
    do
    {
      v16 = *v13++;
      *&v25[v14] = v22[v16];
      v14 += 8;
      --v15;
    }

    while (v15);
    v8 = v6;
    LODWORD(v24) = v6;
  }

  else
  {
    v8 = 0;
    v23 = v25;
    v24 = 0x600000000;
    v9 = v25;
  }

  v17 = *this;
  v18 = v8 | *(this + 2);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  if (v18)
  {
    v19 = v8 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v20 = 0;
    v21 = 8 * v8;
    do
    {
      if (v20 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a3 + 8 * v20) = *v17 * *v9;
      v20 = *(a3 + 8) + 1;
      *(a3 + 8) = v20;
      ++v9;
      ++v17;
      v21 -= 8;
    }

    while (v21);
    if (v23 != v25)
    {
      free(v23);
    }
  }
}