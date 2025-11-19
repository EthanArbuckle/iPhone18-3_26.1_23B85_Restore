uint64_t mlir::DenseElementsAttr::tryGetValues<int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  v5 = (*(*(*a1 + 16) + 8))();
  result = isValidIntOrFloat(v5, 4, 1, 1u);
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

void llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 + v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperands(mlir::ODIE::Compiler::CoreML::ConcatOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.concat";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.slice_update";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t *mlir::TypeRange::TypeRange<mlir::ResultRange>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    v4 = *(v2 + 8) & 7;
    if (v2)
    {
      v5 = v4 == 6;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = a2[1];
LABEL_10:
      v2 -= 24 * v6;
      goto LABEL_12;
    }

    v7 = (5 - v4);
    v6 = v3 - v7;
    if (v3 > v7)
    {
      v2 -= 16 * v7;
      goto LABEL_10;
    }

    v2 -= 16 * v3;
  }

LABEL_12:
  v8 = a2[3] - v3;
  *result = 0;
  result[1] = v8;
  if (v8)
  {
    v9 = v2 & 0xFFFFFFFFFFFFFFF8;
    v5 = v9 == 0;
    v10 = v9 | 6;
    if (v5)
    {
      v10 = 0;
    }

    *result = v10;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::SquashSliceUpdates>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::SquashSliceUpdates]";
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

void mlir::ODIE::Compiler::CoreML::RedundantWriteHandle::~RedundantWriteHandle(mlir::ODIE::Compiler::CoreML::RedundantWriteHandle *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantWriteHandle::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 72);
  v4 = v3[11];
  v5 = v3[7];
  if ((~*(v5 + 8) & 7) != 0)
  {
    v6 = v3[7];
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6[1] & 7;
  if (v7 == 6)
  {
    v6 += 3 * v6[2] + 15;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 += 2 * v7 + 2;
  }

  if (*(v6[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
    v6 = 0;
  }

LABEL_11:
  if ((~*(v4 + 8) & 7) != 0)
  {
    v8 = v3[11];
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = v3[3];
  v10 = *(v8 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v8 + 24 * *(v8 + 16) + 120;
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v11 = v8 + 16 * v10 + 16;
  }

  result = 0;
  v13 = *(*(v11 + 48) + 16);
  if (v13 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id && v6 == v11)
    {
      if (v9 == *(v6[9] + 24))
      {
        v15 = *v5;
        if (v15)
        {
          v16 = 1;
          do
          {
            v15 = *v15;
            --v16;
          }

          while (v15);
          v17 = v16 != 0;
        }

        else
        {
          LOBYTE(v17) = 1;
        }

        v18 = *v4;
        if (*v4)
        {
          v19 = 1;
          do
          {
            v18 = *v18;
            --v19;
          }

          while (v18);
          if (v19)
          {
            LOBYTE(v17) = 1;
          }

          if (!v17)
          {
            mlir::RewriterBase::replaceAllUsesWith(a3, (a2 - 16), v4);
            return 1;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantWriteHandle>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantWriteHandle]";
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

void mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape::~RedundantConcatAfterGetShape(mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49[6] = *MEMORY[0x277D85DE8];
  v46 = a2;
  ODSOperands = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperands(&v46, 0);
  mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::PatternRewriter &)const::{lambda(mlir::Value)#1}::operator()(*(ODSOperands + 24));
  if (v5 != 0x100000000)
  {
    goto LABEL_49;
  }

  v6 = v46 - 16;
  if (!*(v46 + 36))
  {
    v6 = 0;
  }

  v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = *v7;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  }

  else
  {
    v10 = 0;
  }

  (*(v10 + 24))(v10, v7);
  if (v11 == 1 && (v12 = (*(v10 + 8))(v10, v7), *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v12[2] == 1073741856)
  {
    __s2 = v49;
    v48 = 0x600000000;
    v13 = mlir::ODIE::Compiler::CoreML::ConcatOp::getODSOperands(&v46, 1u);
    if (!v14)
    {
      goto LABEL_46;
    }

    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = (v13 + 24);
    do
    {
      v20 = *v19;
      mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::PatternRewriter &)const::{lambda(mlir::Value)#1}::operator()(*v19);
      if (HIDWORD(v21))
      {
        v25 = v21;
      }

      else
      {
        if ((~*(v20 + 8) & 7) != 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        if (!v22)
        {
          goto LABEL_46;
        }

        v23 = *(v22 + 8) & 7;
        if (v23 == 6)
        {
          v24 = v22 + 24 * *(v22 + 16) + 120;
          if (!v24)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v24 = v22 + 16 * v23 + 16;
        }

        if (*(*(v24 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
        {
          goto LABEL_46;
        }

        v26 = *(v24 + 72);
        v27 = *(v26 + 24);
        if ((~*(v27 + 8) & 7) == 0)
        {
          v27 = 0;
        }

        if (!v27)
        {
          goto LABEL_46;
        }

        v28 = *(v27 + 8) & 7;
        if (v28 == 6)
        {
          v29 = v27 + 24 * *(v27 + 16) + 120;
          if (!v29)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v29 = v27 + 16 * v28 + 16;
        }

        if (*(*(v29 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
        {
          goto LABEL_46;
        }

        v30 = *(*(v29 + 72) + 24);
        if (v17)
        {
          if (v17 != v30)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v16 = v30;
          v17 = v30;
        }

        mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::PatternRewriter &)const::{lambda(mlir::Value)#1}::operator()(*(v26 + 88));
        if (!HIDWORD(v31) || v18 != v31)
        {
          goto LABEL_46;
        }

        v25 = 0x8000000000000000;
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&__s2, v25);
      ++v18;
      v19 += 4;
    }

    while (v15 != v18);
    v45 = v16;
    if (v17 && (v33 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8))) != 0 && (v35 = (*(v34 + 24))(v34, v33), v36 == v48) && !memcmp(v35, __s2, 8 * v48))
    {
      v40 = v46;
      v41 = *(v46 + 24);
      if (*(v46 + 36))
      {
        v42 = v46 - 16;
      }

      else
      {
        v42 = 0;
      }

      v44 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::Type,mlir::Value &>((a3 + 8), v41, &v44, &v45);
      mlir::RewriterBase::replaceAllOpUsesWith(a3, v40, v43);
      v37 = 1;
    }

    else
    {
LABEL_46:
      v37 = 0;
    }

    if (__s2 != v49)
    {
      free(__s2);
    }
  }

  else
  {
LABEL_49:
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

void mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape::matchAndRewrite(mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::PatternRewriter &)const::{lambda(mlir::Value)#1}::operator()(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    goto LABEL_11;
  }

  v3 = *(v1 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v1 + 24 * *(v1 + 16);
    v5 = v4 + 120;
    if (v4 == -120)
    {
LABEL_11:
      v11 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  else
  {
    v5 = v1 + 16 * v3 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v15, v5))
  {
    goto LABEL_11;
  }

  v6 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  (*(v9 + 24))(v9, v6);
  if (v10)
  {
    goto LABEL_11;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(a1, v16);
  if (v17[48])
  {
    v12 = *v16[0];
    if (v16[0] != v17)
    {
      free(v16[0]);
    }

    goto LABEL_11;
  }

  v13 = std::__throw_bad_optional_access[abi:nn200100]();
  llvm::SmallVectorTemplateBase<long long,true>::push_back(v13, v14);
}

void llvm::SmallVectorTemplateBase<long long,true>::push_back(uint64_t a1, uint64_t a2)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::Type,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  Shape = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GetShapeOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = Shape;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::ODIE::Compiler::CoreML::GetShapeOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::RedundantConcatAfterGetShape]";
  v6 = 120;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::ConvertTransposeToReshape::~ConvertTransposeToReshape(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::ConvertTransposeToReshape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::ConvertTransposeToReshape::matchAndRewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::ConvertTransposeToReshape *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v86[6] = *MEMORY[0x277D85DE8];
  v73[1] = 0;
  v74 = 0;
  v73[0] = 0;
  v82[0] = v83;
  v82[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v82, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = *(v6 + 56);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_36;
      }

      v12 = *(v5 + 3);
      goto LABEL_35;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  {
LABEL_36:
    v32 = 0;
    goto LABEL_37;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v82, v10);
  v14 = *(*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v14 + 8, v15))
  {
    goto LABEL_32;
  }

  v16 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = *v16;
    v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
  }

  else
  {
    v19 = 0;
  }

  if (!(*(v19 + 16))(v19, v16))
  {
    goto LABEL_32;
  }

  v20 = (*(v19 + 24))(v19, v16);
  if (v21)
  {
    v22 = 8 * v21;
    while (*v20 != 0x8000000000000000)
    {
      ++v20;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_23;
      }
    }

LABEL_32:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_36;
    }

    v12 = *(a2 + 3);
LABEL_35:
    (*(*v11 + 88))(v11, v12, v13, &__s1);
    goto LABEL_36;
  }

LABEL_23:
  v23 = v5 - 16;
  if (*(v5 + 9))
  {
    v24 = v5 - 16;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(*(v24 + 1) & 0xFFFFFFFFFFFFFFF8);
  v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v25 + 8, v26) || (*(v5 + 9) ? (v27 = v5 - 16) : (v27 = 0), (v28 = (*(v27 + 1) & 0xFFFFFFFFFFFFFFF8)) == 0 ? (v31 = 0) : (v29 = *v28, v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v31 = mlir::detail::InterfaceMap::lookup(v29 + 8, v30)), !(*(v31 + 16))(v31, v28)))
  {
LABEL_52:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_36;
    }

    v12 = *(a2 + 3);
    goto LABEL_35;
  }

  v35 = (*(v31 + 24))(v31, v28);
  if (v36)
  {
    v37 = 8 * v36;
    while (*v35 != 0x8000000000000000)
    {
      ++v35;
      v37 -= 8;
      if (!v37)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_52;
  }

LABEL_46:
  v38 = *(v74 + 36);
  v39 = v74 - 16;
  if (!v38)
  {
    v39 = 0;
  }

  v40 = (*(*(v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v40 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_49;
  }

  v41 = v40[2];
  if (v41)
  {
    v42 = v40[1];
    v43 = 8 * v41;
    while (*v42 != 0x8000000000000000)
    {
      ++v42;
      v43 -= 8;
      if (!v43)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_49;
  }

LABEL_59:
  v80[0] = 0;
  __s1 = v80;
  if ((*(v39 + 8) & 7) == 7)
  {
    v39 = 0;
    v44 = 1;
  }

  else
  {
    v44 = v38 == 0;
  }

  if (v44)
  {
LABEL_49:
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_36;
    }

    v12 = *(a2 + 3);
    goto LABEL_35;
  }

  v45 = *(v39 + 8) & 7;
  if (v45 == 6)
  {
    v46 = v39 + 24 * *(v39 + 16);
    v47 = v46 + 120;
    if (v46 == -120)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v47 = v39 + 16 * v45 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&__s1, v47))
  {
    goto LABEL_49;
  }

  mlir::DenseElementsAttr::tryGetValues<int,void>(v80, &__s1);
  v71 = __s1;
  v70 = v78;
  v48 = v79[0];
  __s1 = v79;
  v50 = v40[1];
  v49 = v40[2];
  v78 = 0xC00000000;
  v51 = v86;
  v84 = v86;
  v85 = 0xC00000000;
  if (v49 < 1)
  {
    v56 = 0;
  }

  else
  {
    v52 = 0;
    v53 = v49 & 0x7FFFFFFF;
    do
    {
      if (*(v50 + 8 * v52) != 1)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(&__s1, v52);
      }

      if (v70)
      {
        v54 = 0;
      }

      else
      {
        v54 = v48;
      }

      v55 = v71[v54];
      if (*(v50 + 8 * v55) != 1)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(&v84, v55);
      }

      ++v52;
      ++v48;
      --v53;
    }

    while (v53);
    v56 = v85;
    v51 = v84;
    if (v78 != v85)
    {
      v57 = 0;
      goto LABEL_82;
    }
  }

  v57 = memcmp(__s1, v51, 4 * v56) == 0;
LABEL_82:
  if (v51 != v86)
  {
    free(v51);
  }

  if (__s1 != v79)
  {
    free(__s1);
  }

  if (!v57)
  {
    goto LABEL_49;
  }

  v58 = *(*(v82[0] + 1) + 24);
  __s1 = *(*v82[0] + 24);
  v78 = v58;
  v59 = mlir::FusedLoc::get(&__s1, 2, 0, *(a3 + 1));
  v84 = v86;
  v85 = 0x400000000;
  if (*(v5 + 9))
  {
    v60 = v5 - 16;
  }

  else
  {
    v60 = 0;
  }

  ShapeOf = mlir::ODIE::Compiler::CoreML::getShapeOf(v60);
  v61 = v5;
  v62 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v59, &ShapeOf);
  v80[0] = v81;
  v80[1] = 0x400000000;
  __s1 = v79;
  v78 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v80, *(v6 + 24));
  if (*(v62 + 9))
  {
    v63 = (v62 - 16);
  }

  else
  {
    v63 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v80, v63);
  v75[0] = v76;
  v75[1] = 0x400000000;
  if (*(v61 + 9))
  {
    v64 = v23;
  }

  else
  {
    v64 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v75, *(v64 + 1) & 0xFFFFFFFFFFFFFFF8);
  v65 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v59, v75, v80, &__s1);
  if (v75[0] != v76)
  {
    free(v75[0]);
  }

  if (__s1 != v79)
  {
    free(__s1);
  }

  if (v80[0] != v81)
  {
    free(v80[0]);
  }

  if (*(v65 + 9))
  {
    v66 = (v65 - 16);
  }

  else
  {
    v66 = 0;
  }

  __s1 = v79;
  v78 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&__s1, v66, 0, v66, 1);
  v67 = __s1;
  if (v78)
  {
    v68 = 8 * v78;
    do
    {
      v69 = *v67++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v84, v69);
      v68 -= 8;
    }

    while (v68);
    v67 = __s1;
  }

  if (v67 != v79)
  {
    free(v67);
  }

  (**a3)(a3, a2, v84 & 0xFFFFFFFFFFFFFFF9, v85);
  if (v84 != v86)
  {
    free(v84);
  }

  v32 = 1;
LABEL_37:
  if (v82[0] != v83)
  {
    free(v82[0]);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

void llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::static_dag_matcher_0(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  if (*(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v6 = *(a1 + 16);
    if (!v6 || v6[2] != 1)
    {
      return 0;
    }

    v7 = *(a2 + 24);
    v8 = *(*v6 + 88);
LABEL_5:
    v8();
    return 0;
  }

  *a4 = a2;
  Attr = mlir::Operation::getAttr(a2, "value", 5uLL);
  if (!Attr || (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute const,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute const,void>>::doCastIfPossible(Attr)) == 0)
  {
    v14 = *(a1 + 16);
    if (!v14 || v14[2] != 1)
    {
      return 0;
    }

    v15 = *(a2 + 24);
    v8 = *(*v14 + 88);
    goto LABEL_5;
  }

  *a3 = v12;
  a3[1] = v13;
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::getShapeOf(uint64_t a1)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = v1[1];
  v2 = v1[2];
  v20 = v22;
  v21 = 0xC00000000;
  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v3;
      v3 += 2;
      llvm::SmallVectorTemplateBase<int,true>::push_back(&v20, v6);
      v5 -= 8;
    }

    while (v5);
    v1 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  v19 = v2;
  v7 = mlir::IntegerType::get(*(**v1 + 32), 32, 1);
  *&v18 = &v19;
  *(&v18 + 1) = 1;
  v16 = 0;
  v17 = v7;
  v8 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v7 + 32), &v18, &v17, &v16);
  v9 = v8;
  if (v8)
  {
    v10 = *v8;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  }

  else
  {
    v12 = 0;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v12, v20, 4 * v21);
  if (v20 != v22)
  {
    free(v20);
  }

  v14 = *MEMORY[0x277D85DE8];
  return Raw;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t **a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v6;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v8)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v14, v8, v9);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v15, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, *(a3 + 8), *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8), *a5, *(a5 + 8));
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::TypedAttr>();
      mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 992);
}

uint64_t llvm::getTypeName<mlir::TypedAttr>()
{
  {
    llvm::getTypeName<mlir::TypedAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypedAttr>();
    *algn_27FC173F8 = v1;
  }

  return llvm::getTypeName<mlir::TypedAttr>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::TypedAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypedAttr]";
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

uint64_t mlir::Diagnostic::operator<<<57ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<65ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Operation::getAttr(uint64_t a1, const void *a2, size_t a3)
{
  if (!*(a1 + 47) || (result = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, a2, a3), (v7 & 1) == 0))
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a1 + 56) + 8), *(*(a1 + 56) + 8) + 16 * *(*(a1 + 56) + 16), a2, a3);
    if (v9)
    {
      return *(v8 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute const,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::Diagnostic::operator<<<84ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<50ul>(uint64_t a1, char *__s)
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

BOOL mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(unint64_t **a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v12[0] = v13;
    v12[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v12);
    v5 = v12[0];
    v6 = *v12[0] & 0xFFFFFFFFFFFFFFF8;
    v7 = *(*v6 + 136);
    if (v7 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v6 = 0;
    }

    v9 = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v12[0];
    }

    if (v5 != v13)
    {
      free(v5);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::Diagnostic::operator<<<67ul>(uint64_t a1, char *__s)
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

void llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  if (a5 != v6)
  {
    v12 = (*a1 + 8 * v10);
    v13 = a2 - 16 * v6;
    do
    {
      if (v6)
      {
        if (!a2)
        {
          v15 = 0;
          v16 = v6;
          goto LABEL_12;
        }

        v14 = *(a2 + 8) & 7;
        v15 = a2;
        v16 = v6;
        if (v14 == 6)
        {
          goto LABEL_12;
        }

        v17 = (5 - v14);
        v18 = v13;
        v16 = v6 - v17;
        if (v6 > v17)
        {
          v15 = a2 - 16 * v17;
LABEL_12:
          v18 = v15 - 24 * v16;
        }
      }

      else
      {
        v18 = a2;
      }

      *v12++ = v18;
      ++v6;
      v13 -= 16;
    }

    while (a5 != v6);
  }

  *(a1 + 8) = v10 + v9;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::ConvertTransposeToReshape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::ConvertTransposeToReshape]";
  v6 = 140;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::FoldReshapeIntoTranspose::~FoldReshapeIntoTranspose(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::FoldReshapeIntoTranspose *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::FoldReshapeIntoTranspose::matchAndRewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::FoldReshapeIntoTranspose *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v101[6] = *MEMORY[0x277D85DE8];
  v86[1] = 0;
  v87 = 0;
  v86[0] = 0;
  v97[0] = v98;
  v97[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v97, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_49;
      }

      v11 = *(v5 + 3);
      goto LABEL_48;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_49;
    }

    v11 = *(v9 + 24);
    goto LABEL_48;
  }

  v13 = *(v9 + 72);
  v14 = *(v13 + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
LABEL_22:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_49;
      }

      v11 = *(v9 + 24);
      goto LABEL_48;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  {
LABEL_49:
    v35 = 0;
    goto LABEL_50;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v97, v17);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v97, v9);
  v18 = *(*(*(v13 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v18 + 8, v19))
  {
    goto LABEL_45;
  }

  v20 = (*(*(v13 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v20)
  {
    v21 = *v20;
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v23 = mlir::detail::InterfaceMap::lookup(v21 + 8, v22);
  }

  else
  {
    v23 = 0;
  }

  if (!(*(v23 + 16))(v23, v20))
  {
    goto LABEL_45;
  }

  v24 = (*(v23 + 24))(v23, v20);
  if (v25)
  {
    v26 = 8 * v25;
    while (*v24 != 0x8000000000000000)
    {
      ++v24;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_36;
      }
    }

LABEL_45:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_49;
    }

    v11 = *(a2 + 3);
LABEL_48:
    (*(*v10 + 88))(v10, v11, v12, &__s1);
    goto LABEL_49;
  }

LABEL_36:
  if (*(v5 + 9))
  {
    v27 = v5 - 16;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(*(v27 + 1) & 0xFFFFFFFFFFFFFFF8);
  v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v28 + 8, v29) || (*(v5 + 9) ? (v30 = v5 - 16) : (v30 = 0), (v31 = (*(v30 + 1) & 0xFFFFFFFFFFFFFFF8)) == 0 ? (v34 = 0) : (v32 = *v31, v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v34 = mlir::detail::InterfaceMap::lookup(v32 + 8, v33)), __s1 = v31, v92 = v34, !mlir::ShapedType::hasStaticShape(&__s1)))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_49;
    }

    v11 = *(a2 + 3);
    goto LABEL_48;
  }

  v82 = (v9 - 16);
  if (*(v9 + 36))
  {
    v38 = v9 - 16;
  }

  else
  {
    v38 = 0;
  }

  v39 = (*(v38 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v39)
  {
    v40 = *v39;
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v42 = mlir::detail::InterfaceMap::lookup(v40 + 8, v41);
  }

  else
  {
    v42 = 0;
  }

  if (*(v5 + 9))
  {
    v43 = v5 - 16;
  }

  else
  {
    v43 = 0;
  }

  v44 = (*(v43 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (!v44)
  {
    goto LABEL_95;
  }

  v45 = *v44;
  v83 = v42;
  v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v47 = mlir::detail::InterfaceMap::lookup(v45 + 8, v46);
  v94 = v39;
  v95 = v83;
  v88 = v44;
  v89 = v47;
  if (!v39)
  {
    goto LABEL_95;
  }

  if (!mlir::ShapedType::hasStaticShape(&v94))
  {
    goto LABEL_95;
  }

  if (!mlir::ShapedType::hasStaticShape(&v88))
  {
    goto LABEL_95;
  }

  (*(v95 + 24))(v95, v94);
  v49 = v48;
  (*(v89 + 24))(v89, v88);
  if (v49 != v50)
  {
    goto LABEL_95;
  }

  v80 = v5;
  v81 = v5 - 16;
  v84 = v13;
  v51 = (*(v95 + 24))(v95, v94);
  v53 = v52;
  v54 = (*(v89 + 24))(v89, v88);
  v56 = v55;
  __s1 = v93;
  v92 = 0xC00000000;
  v99 = v101;
  v100 = 0xC00000000;
  if (v53)
  {
    v57 = 8 * v53;
    do
    {
      if (*v51 != 1)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(&__s1, *v51);
      }

      ++v51;
      v57 -= 8;
    }

    while (v57);
  }

  if (v56)
  {
    v58 = 8 * v56;
    do
    {
      if (*v54 != 1)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(&v99, *v54);
      }

      ++v54;
      v58 -= 8;
    }

    while (v58);
  }

  v59 = v99;
  v60 = v92 == v100 && memcmp(__s1, v99, 4 * v92) == 0;
  if (v59 != v101)
  {
    free(v59);
  }

  if (__s1 != v93)
  {
    free(__s1);
  }

  if (!v60)
  {
LABEL_95:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_49;
    }

    v11 = *(a2 + 3);
    goto LABEL_48;
  }

  if (!*v82 || **v82)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_49;
    }

    v11 = *(a2 + 3);
    goto LABEL_48;
  }

  v61 = *(*(v97[0] + 1) + 24);
  __s1 = *(*v97[0] + 24);
  v92 = v61;
  v93[0] = *(*(v97[0] + 2) + 24);
  v62 = mlir::FusedLoc::get(&__s1, 3, 0, *(a3 + 1));
  v99 = v101;
  v100 = 0x400000000;
  v63 = v9 - 16;
  if (!*(v9 + 36))
  {
    v63 = 0;
  }

  __s1 = (*(v63 + 8) & 0xFFFFFFFFFFFFFFF8);
  v64 = llvm::cast<mlir::ShapedType,mlir::Type>(&__s1);
  v66 = v65;
  if (*(v80 + 9))
  {
    v67 = v81;
  }

  else
  {
    v67 = 0;
  }

  v94 = (*(v67 + 1) & 0xFFFFFFFFFFFFFFF8);
  v68 = llvm::cast<mlir::ShapedType,mlir::Type>(&v94);
  PermutationFromShapes = mlir::ODIE::Compiler::CoreML::getPermutationFromShapes(v64, v66, v68, v69);
  if (*(v87 + 36))
  {
    v71 = v87 - 16;
  }

  else
  {
    v71 = 0;
  }

  FinalPermutation = mlir::ODIE::Compiler::CoreML::getFinalPermutation(v71, PermutationFromShapes);
  v72 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v62, &FinalPermutation);
  v94 = v96;
  v95 = 0x400000000;
  __s1 = v93;
  v92 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v94, *(v84 + 24));
  if (*(v72 + 9))
  {
    v73 = (v72 - 16);
  }

  else
  {
    v73 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v94, v73);
  v88 = v90;
  v89 = 0x400000000;
  if (*(v80 + 9))
  {
    v74 = v81;
  }

  else
  {
    v74 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v88, *(v74 + 1) & 0xFFFFFFFFFFFFFFF8);
  v75 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v62, &v88, &v94, &__s1);
  if (v88 != v90)
  {
    free(v88);
  }

  if (__s1 != v93)
  {
    free(__s1);
  }

  if (v94 != v96)
  {
    free(v94);
  }

  if (*(v75 + 9))
  {
    v76 = (v75 - 16);
  }

  else
  {
    v76 = 0;
  }

  __s1 = v93;
  v92 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&__s1, v76, 0, v76, 1);
  v77 = __s1;
  if (v92)
  {
    v78 = 8 * v92;
    do
    {
      v79 = *v77++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v99, v79);
      v78 -= 8;
    }

    while (v78);
    v77 = __s1;
  }

  if (v77 != v93)
  {
    free(v77);
  }

  (**a3)(a3, a2, v99 & 0xFFFFFFFFFFFFFFF9, v100);
  if (v99 != v101)
  {
    free(v99);
  }

  v35 = 1;
LABEL_50:
  if (v97[0] != v98)
  {
    free(v97[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t mlir::ODIE::Compiler::CoreML::getPermutationFromShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v7 = (*(a2 + 24))(a2, a1);
  v9 = v8;
  v10 = (*(a4 + 24))(a4, a3);
  v12 = v11;
  v41[0] = v42;
  v41[1] = 0xC00000000;
  v39[0] = v40;
  v39[1] = 0xC00000000;
  if (v9 < 1)
  {
    v17 = v40;
    v16 = v42;
  }

  else
  {
    v13 = 0;
    v14 = v9 & 0x7FFFFFFF;
    do
    {
      if (*(v7 + 8 * v13) == 1)
      {
        v15 = v41;
      }

      else
      {
        v15 = v39;
      }

      llvm::SmallVectorTemplateBase<int,true>::push_back(v15, v13++);
    }

    while (v14 != v13);
    v16 = v41[0];
    v17 = v39[0];
  }

  v36 = v38;
  v37 = 0xC00000000;
  if (v12)
  {
    v18 = 8 * v12;
    do
    {
      if (*v10 == 1)
      {
        v20 = *v16++;
        v19 = v20;
      }

      else
      {
        v21 = *v17++;
        v19 = v21;
      }

      llvm::SmallVectorTemplateBase<int,true>::push_back(&v36, v19);
      ++v10;
      v18 -= 8;
    }

    while (v18);
    v22 = v37;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(**a1 + 32);
  v35 = v22;
  *&v34 = &v35;
  *(&v34 + 1) = 1;
  v32 = 0;
  v33 = mlir::IntegerType::get(v23, 32, 1);
  v24 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v33 + 32), &v34, &v33, &v32);
  v25 = v24;
  if (v24)
  {
    v26 = *v24;
    v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v28 = mlir::detail::InterfaceMap::lookup(v26 + 8, v27);
  }

  else
  {
    v28 = 0;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v25, v28, v36, 4 * v37);
  if (v36 != v38)
  {
    free(v36);
  }

  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  v30 = *MEMORY[0x277D85DE8];
  return Raw;
}

uint64_t mlir::ODIE::Compiler::CoreML::getFinalPermutation(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = a2;
  *&v41 = &v39;
  v3 = *(a1 + 8) & 7;
  if (v3 == 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16);
    v7 = v6 + 120;
    if (v6 == -120)
    {
LABEL_16:
      if (v3 == 7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a1;
      }

      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = *(v14 + 8) & 7;
      if (v15 == 6)
      {
        v16 = v14 + 24 * *(v14 + 16) + 120;
        if (!v16)
        {
LABEL_22:
          v17 = (a1 + 32);
LABEL_25:
          v18 = *v17;
          *&v41 = "expecting value to be constant";
          v43 = 259;
          emitDiag(v18, 2, &v41, v53);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v53);
          Raw = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v16 = v14 + 16 * v15 + 16;
      }

      v17 = (v16 + 24);
      goto LABEL_25;
    }
  }

  else
  {
    v7 = v4 + 16 * v5 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v41, v7))
  {
    v3 = *(a1 + 8) & 7;
    goto LABEL_16;
  }

  v51[0] = v52;
  v51[1] = 0xC00000000;
  v48 = v50;
  v49 = 0xC00000000;
  v8 = *(v39 + 8);
  v9 = (*(*(v39 + 16) + 24))();
  if (v10)
  {
    v11 = 8 * v10;
    v12 = 1;
    do
    {
      v13 = *v9++;
      v12 *= v13;
      v11 -= 8;
    }

    while (v11);
    if (v12 < 1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v12 = 1;
  }

  for (i = 0; i != v12; ++i)
  {
    llvm::SmallVectorTemplateBase<int,true>::push_back(v51, i);
  }

LABEL_30:
  mlir::DenseElementsAttr::tryGetValues<int,void>(&v39, &v41);
  v23 = v41;
  v24 = BYTE8(v41);
  v25 = v42;
  mlir::DenseElementsAttr::tryGetValues<int,void>(&v40, &v41);
  v26 = v42;
  v27 = v44;
  if (v42 != v44)
  {
    v28 = v41;
    v29 = BYTE8(v41);
    do
    {
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v26;
      }

      v31 = v25 + *(v28 + 4 * v30);
      if (v24)
      {
        v31 = 0;
      }

      llvm::SmallVectorTemplateBase<int,true>::push_back(&v48, *(v51[0] + *(v23 + 4 * v31)));
      ++v26;
    }

    while (v27 != v26);
  }

  v32 = *(**(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 32);
  v47 = v49;
  v33 = mlir::IntegerType::get(v32, 32, 1);
  *&v41 = &v47;
  *(&v41 + 1) = 1;
  v45 = 0;
  v46 = v33;
  v34 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v33 + 32), &v41, &v46, &v45);
  v35 = v34;
  if (v34)
  {
    v36 = *v34;
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v38 = mlir::detail::InterfaceMap::lookup(v36 + 8, v37);
  }

  else
  {
    v38 = 0;
  }

  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v35, v38, v48, 4 * v49);
  if (v48 != v50)
  {
    free(v48);
  }

  if (v51[0] != v52)
  {
    free(v51[0]);
  }

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
  return Raw;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::ODIE::Compiler::CoreML::TransposeOp::build(a1, v15, *a3 & 0xFFFFFFFFFFFFFFF9 | 2, *(a3 + 8), *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8), *a5, *(a5 + 8));
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::Diagnostic::operator<<<66ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<58ul>(uint64_t a1, char *__s)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::FoldReshapeIntoTranspose>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::FoldReshapeIntoTranspose]";
  v6 = 139;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveExtraCast::~RemoveExtraCast(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveExtraCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveExtraCast::matchAndRewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveExtraCast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v50[8] = *MEMORY[0x277D85DE8];
  v41[0] = v42;
  v41[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v41, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_25;
      }

      v11 = *(v5 + 3);
LABEL_24:
      (*(*v10 + 88))(v10, v11, v12, &v43);
LABEL_25:
      v15 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_25;
    }

    v11 = *(v9 + 24);
    goto LABEL_24;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v41, v9);
  v14 = *(v9 - 16);
  if (!v14 || *v14)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_25;
    }

    v11 = *(a2 + 3);
    goto LABEL_24;
  }

  v18 = *(*(v41[0] + 1) + 24);
  v43 = *(*v41[0] + 24);
  v44 = v18;
  v19 = mlir::FusedLoc::get(&v43, 2, 0, *(a3 + 1));
  v38 = v40;
  v39 = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v35, *(v13 + 24));
  v29 = v31;
  v30 = 0x400000000;
  if (*(v5 + 9))
  {
    v20 = v5 - 16;
  }

  else
  {
    v20 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v29, *(v20 + 1) & 0xFFFFFFFFFFFFFFF8);
  v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a3 + 8, *(**v19 + 32));
  v43 = v19;
  v44 = v21;
  v45[0] = v46;
  v45[1] = 0x400000000;
  v46[4] = v47;
  v46[5] = 0x400000000;
  v47[4] = v48;
  v47[5] = 0x400000000;
  v48[8] = 4;
  v48[9] = v49;
  v48[10] = 0x100000000;
  v49[1] = v50;
  v49[2] = 0x100000000;
  v50[2] = 0;
  v50[1] = 0;
  v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v50[4] = 0;
  v50[6] = 0;
  mlir::ODIE::Compiler::CoreML::CastOp::build(a3 + 8, &v43, v29 & 0xFFFFFFFFFFFFFFF9 | 2, v30, v35 & 0xFFFFFFFFFFFFFFF9, v36, v32, v33);
  v22 = mlir::Operation::create(&v43);
  mlir::OpBuilder::insert((a3 + 8), v22);
  v23 = *(*(v22 + 6) + 16);
  mlir::OperationState::~OperationState(&v43);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (*(v24 + 9))
  {
    v25 = (v24 - 16);
  }

  else
  {
    v25 = 0;
  }

  v43 = v45;
  v44 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v43, v25, 0, v25, 1);
  v26 = v43;
  if (v44)
  {
    v27 = 8 * v44;
    do
    {
      v28 = *v26++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v38, v28);
      v27 -= 8;
    }

    while (v27);
    v26 = v43;
  }

  if (v26 != v45)
  {
    free(v26);
  }

  (**a3)(a3, a2, v38 & 0xFFFFFFFFFFFFFFF9, v39);
  if (v38 != v40)
  {
    free(v38);
  }

  v15 = 1;
LABEL_26:
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::Diagnostic::operator<<<61ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<46ul>(uint64_t a1, char *__s)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveExtraCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::RemoveExtraCast]";
  v6 = 130;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveRedundantBroadcastToFromGetShape::~RemoveRedundantBroadcastToFromGetShape(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveRedundantBroadcastToFromGetShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveRedundantBroadcastToFromGetShape::matchAndRewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveRedundantBroadcastToFromGetShape *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = v29;
  v28[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v28, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v7 = *(v6 + 56);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
LABEL_9:
      v11 = *(a3 + 2);
      if (!v11 || v11[2] != 1)
      {
        goto LABEL_24;
      }

      v12 = *(v5 + 3);
LABEL_23:
      (*(*v11 + 88))(v11, v12, v13, &v25);
LABEL_24:
      v15 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_24;
    }

    v12 = *(v10 + 24);
    goto LABEL_23;
  }

  if ((*(v10 + 46) & 0x80) != 0)
  {
    v14 = *(v10 + 72);
  }

  else
  {
    v14 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v28, v10);
  if (*(v6 + 24) != *(v14 + 24))
  {
    v11 = *(a3 + 2);
    if (!v11 || v11[2] != 1)
    {
      goto LABEL_24;
    }

    v12 = *(a2 + 3);
    goto LABEL_23;
  }

  v18 = *(*(v28[0] + 1) + 24);
  v25 = *(*v28[0] + 24);
  v26 = v18;
  mlir::FusedLoc::get(&v25, 2, 0, *(a3 + 1));
  v25 = v27;
  v26 = 0x400000000;
  v22 = v24;
  v23 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v6, 0, v6, 1);
  v19 = v22;
  if (v23)
  {
    v20 = 8 * v23;
    do
    {
      v21 = *v19++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v25, v21);
      v20 -= 8;
    }

    while (v20);
    v19 = v22;
  }

  if (v19 != v24)
  {
    free(v19);
  }

  (**a3)(a3, a2, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  if (v25 != v27)
  {
    free(v25);
  }

  v15 = 1;
LABEL_25:
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::Diagnostic::operator<<<44ul>(uint64_t a1, char *__s)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveRedundantBroadcastToFromGetShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::RemoveRedundantBroadcastToFromGetShape]";
  v6 = 153;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveRedundantCreateComplex::~RemoveRedundantCreateComplex(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveRedundantCreateComplex *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveRedundantCreateComplex::matchAndRewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveRedundantCreateComplex *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32[0] = v33;
  v32[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v32, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_39;
      }

      v11 = *(v5 + 3);
LABEL_38:
      (*(*v10 + 88))(v10, v11, v12, &v29);
LABEL_39:
      v19 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = *(v9 + 24);
    goto LABEL_38;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v32, v9);
  v14 = *(*(v5 + 9) + 56);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_24:
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = *(v5 + 3);
    goto LABEL_38;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  if (*(*(v17 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = *(v17 + 24);
    goto LABEL_38;
  }

  if ((*(v17 + 46) & 0x80) != 0)
  {
    v18 = *(v17 + 72);
  }

  else
  {
    v18 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v32, v17);
  if (*(v13 + 24) != *(v18 + 24))
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_39;
    }

    v11 = *(a2 + 3);
    goto LABEL_38;
  }

  v22 = *(*(v32[0] + 1) + 24);
  v29 = *(*v32[0] + 24);
  v30 = v22;
  v31[0] = *(*(v32[0] + 2) + 24);
  mlir::FusedLoc::get(&v29, 3, 0, *(a3 + 1));
  v29 = v31;
  v30 = 0x400000000;
  v26 = v28;
  v27 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v26, v13, 0, v13, 1);
  v23 = v26;
  if (v27)
  {
    v24 = 8 * v27;
    do
    {
      v25 = *v23++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v29, v25);
      v24 -= 8;
    }

    while (v24);
    v23 = v26;
  }

  if (v23 != v28)
  {
    free(v23);
  }

  (**a3)(a3, a2, v29 & 0xFFFFFFFFFFFFFFF9, v30);
  if (v29 != v31)
  {
    free(v29);
  }

  v19 = 1;
LABEL_40:
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t mlir::Diagnostic::operator<<<70ul>(uint64_t a1, char *__s)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveRedundantCreateComplex>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::RemoveRedundantCreateComplex]";
  v6 = 143;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveSuccessiveReshape::~RemoveSuccessiveReshape(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveSuccessiveReshape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveSuccessiveReshape::matchAndRewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::RemoveSuccessiveReshape *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v37[0] = v38;
  v37[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v37, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v5 + 9) + 24);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_9:
      v10 = *(a3 + 2);
      if (!v10 || v10[2] != 1)
      {
        goto LABEL_27;
      }

      v11 = *(v5 + 3);
LABEL_26:
      (*(*v10 + 88))(v10, v11, v12, &v29);
LABEL_27:
      v16 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v9 = v6 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_27;
    }

    v11 = *(v9 + 24);
    goto LABEL_26;
  }

  if ((*(v9 + 46) & 0x80) != 0)
  {
    v13 = *(v9 + 72);
  }

  else
  {
    v13 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v37, v9);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v14 = *(v5 + 9);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v9 - 16);
  if (!v15 || *v15)
  {
    v10 = *(a3 + 2);
    if (!v10 || v10[2] != 1)
    {
      goto LABEL_27;
    }

    v11 = *(a2 + 3);
    goto LABEL_26;
  }

  v19 = *(*(v37[0] + 1) + 24);
  v29 = *(*v37[0] + 24);
  v30 = v19;
  v20 = mlir::FusedLoc::get(&v29, 2, 0, *(a3 + 1));
  v34 = v36;
  v35 = 0x400000000;
  v32[0] = v33;
  v32[1] = 0x400000000;
  v29 = v31;
  v30 = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v32, *(v13 + 24));
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v32, *(v14 + 56));
  v27[0] = v28;
  v27[1] = 0x400000000;
  if (*(v5 + 9))
  {
    v21 = v5 - 16;
  }

  else
  {
    v21 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v27, *(v21 + 1) & 0xFFFFFFFFFFFFFFF8);
  v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>((a3 + 8), v20, v27, v32, &v29);
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  if (*(v22 + 9))
  {
    v23 = (v22 - 16);
  }

  else
  {
    v23 = 0;
  }

  v29 = v31;
  v30 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v29, v23, 0, v23, 1);
  v24 = v29;
  if (v30)
  {
    v25 = 8 * v30;
    do
    {
      v26 = *v24++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v34, v26);
      v25 -= 8;
    }

    while (v25);
    v24 = v29;
  }

  if (v24 != v31)
  {
    free(v24);
  }

  (**a3)(a3, a2, v34 & 0xFFFFFFFFFFFFFFF9, v35);
  if (v34 != v36)
  {
    free(v34);
  }

  v16 = 1;
LABEL_28:
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mlir::Diagnostic::operator<<<64ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<52ul>(uint64_t a1, char *__s)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::RemoveSuccessiveReshape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::RemoveSuccessiveReshape]";
  v6 = 138;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::SingleElementSplit::~SingleElementSplit(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::SingleElementSplit *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::SingleElementSplit::matchAndRewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::SingleElementSplit *this, mlir::Operation *a2, uint64_t **a3)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = v22;
  v21[1] = 0x400000000;
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(v21, a2);
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 9);
    v7 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (*(v5 + 9) == 1)
  {
    v18 = *(*v21[0] + 24);
    mlir::FusedLoc::get(&v18, 1, 0, a3[1]);
    v18 = v20;
    v19 = 0x400000000;
    v15 = v17;
    v16 = 0x400000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v15, v6, 0, v7, 1);
    v8 = v15;
    if (v16)
    {
      v9 = 8 * v16;
      do
      {
        v10 = *v8++;
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v18, v10);
        v9 -= 8;
      }

      while (v9);
      v8 = v15;
    }

    if (v8 != v17)
    {
      free(v8);
    }

    (**a3)(a3, a2, v18 & 0xFFFFFFFFFFFFFFF9, v19);
    if (v18 != v20)
    {
      free(v18);
    }

    v11 = 1;
  }

  else
  {
    v12 = a3[2];
    if (v12 && *(v12 + 2) == 1)
    {
    }

    v11 = 0;
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::SingleElementSplit>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::SingleElementSplit]";
  v6 = 133;
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

uint64_t llvm::StringMap<std::function<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::~__value_func[abi:nn200100](v5 + 8);
          MEMORY[0x25F891030](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t std::__function::__value_func<llvm::LogicalResult ()(mlir::PatternRewriter &,mlir::PDLResultList &,llvm::ArrayRef<mlir::PDLValue>)>::~__value_func[abi:nn200100](uint64_t a1)
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

char **llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfigSet>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        v7 = llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfig>,6u>::~SmallVector(v6);
        MEMORY[0x25F891040](v7, 0x1080C407559D7D1);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char **llvm::SmallVector<std::unique_ptr<mlir::PDLPatternConfig>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<mlir::RewritePattern>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<mlir::RewritePattern>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<mlir::RewritePattern>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::PropagateHandleUpdatesPass::~PropagateHandleUpdatesPass(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::PropagateHandleUpdatesPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::PropagateHandleUpdatesPass::runOnOperation(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::PropagateHandleUpdatesPass *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(***(v1 + 24) + 32);
  if (v1)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  }

  if ((*(v1 + 46) & 0x80) == 0 || (v3 = *(v1 + 68), !v3))
  {
LABEL_14:
    v10 = v2;
    *__src = 0u;
    *v12 = 0u;
    v13 = v15;
    v14 = 0x600000000;
    v15[6] = 0;
    v15[7] = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0x2800000000;
    v20 = 0;
    v21 = 0;
    v22 = 0x2800000000;
    operator new();
  }

  v4 = 0;
  while (1)
  {
    v5 = *(*(v1 + 72) + 32 * v4 + 24);
    if (*(*(*(v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
    {
      v6 = *v5;
      if (!v6)
      {
        break;
      }

      v7 = 2;
      v8 = v6;
      do
      {
        v8 = *v8;
        --v7;
      }

      while (v8);
      if (v7 || *(*(v6[2] + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id || *(*(*(*v6 + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
      {
        break;
      }
    }

    if (++v4 == v3)
    {
      goto LABEL_14;
    }
  }

  v10 = "Unable to run PropagateHandleUpdatesPass on func due to unexpected prior read_handle/write_handle ops";
  LOWORD(v12[1]) = 259;
  mlir::Operation::emitWarning(v1, &v10, v23);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::InsertReadHandle::~InsertReadHandle(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::InsertReadHandle *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::InsertReadHandle::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 72);
  v25 = v5[3];
  v6 = v5[7];
  v7 = *v6;
  v8 = *(v6 + 8) & 7;
  if (v8 == 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5[7];
  }

  if (v8 == 7)
  {
    if (!v7)
    {
      goto LABEL_27;
    }

LABEL_13:
    v12 = 1;
    do
    {
      v7 = *v7;
      --v12;
    }

    while (v7);
    result = 0;
    v14 = (*(v6 + 8) & 7) == 7;
    if (v8 == 7 || !v12)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16) + 120;
    if (v9 + 24 * *(v9 + 16) == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = v9 + 16 * v10 + 16;
  }

  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
LABEL_27:
    result = 0;
    goto LABEL_28;
  }

LABEL_12:
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_17:
  v15 = *(v9 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v9 + 24 * *(v9 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = v9 + 16 * v15 + 16;
  }

  v18 = v5[11];
  if ((~*(v18 + 8) & 7) == 0)
  {
    v18 = 0;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = *(v18 + 8) & 7;
  if (v19 == 6)
  {
    v20 = v18 + 24 * *(v18 + 16);
    result = v20 + 120;
    if (v20 == -120)
    {
      goto LABEL_28;
    }
  }

  else
  {
    result = v18 + 16 * v19 + 16;
  }

  result = mlir::Operation::isBeforeInBlock(result, v17);
  if (result)
  {
    mlir::RewriterBase::moveOpBefore(a3, a2, *(v17 + 16), *(v17 + 8));
    v24 = a2 - 16;
    *(a3 + 24) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
    v22 = *(a2 + 24);
    v26[0] = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
    v26[1] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v27[0] = v26 + 2;
    v27[1] = 2;
    v23 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReadHandleOp,mlir::TypeRange,mlir::detail::TypedValue<mlir::ODIE::Compiler::CoreML::HandleType> &,mlir::detail::TypedValue<mlir::ODIE::Compiler::CoreML::TokenType> &>((a3 + 8), v22, v27, &v25, &v24);
    v27[0] = a2;
    v26[0] = v27;
    mlir::RewriterBase::replaceUsesWithIf(a3, v6, v23 - 2, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, v26, 0);
    v27[0] = v23;
    v26[0] = v27;
    mlir::RewriterBase::replaceUsesWithIf(a3, (a2 - 16), v23 - 4, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, v26, 0);
    result = 1;
  }

LABEL_28:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReadHandleOp,mlir::TypeRange,mlir::detail::TypedValue<mlir::ODIE::Compiler::CoreML::HandleType> &,mlir::detail::TypedValue<mlir::ODIE::Compiler::CoreML::TokenType> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  Handle = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReadHandleOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = Handle;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReadHandleOp::build(a1, v15, *a3, a3[1], *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReadHandleOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.read_handle";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::InsertReadHandle>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::InsertReadHandle]";
  v6 = 131;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::InsertReadHWConstraintsHandle::~InsertReadHWConstraintsHandle(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::InsertReadHWConstraintsHandle *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::InsertReadHWConstraintsHandle::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v35 = v3[3];
  v4 = v3[7];
  if ((~*(v4 + 8) & 7) != 0)
  {
    v5 = v3[7];
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v8 = *(v5 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v5 + 24 * *(v5 + 16) + 120;
    if (!v9)
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v9 = v5 + 16 * v8 + 16;
  }

  v10 = *(*(v9 + 48) + 16);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    goto LABEL_13;
  }

  v14 = *(*(v9 + 72) + 24);
  v15 = *v14;
  v16 = *v4;
  if (*v14)
  {
    v17 = 1;
    do
    {
      v15 = *v15;
      --v17;
    }

    while (v15);
    v15 = (v17 == 0);
  }

  if (v16)
  {
    v18 = 1;
    do
    {
      v16 = *v16;
      --v18;
    }

    while (v16);
    v19 = v18 ? 0 : v15;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  v20 = v3[11];
  if ((~*(v20 + 8) & 7) == 0)
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    result = v22 + 120;
    if (v22 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = v20 + 16 * v21 + 16;
  }

  result = mlir::Operation::isBeforeInBlock(result, v11);
  if (result)
  {
    v23 = *(v14 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v14 + 24 * *(v14 + 16) + 120;
    }

    else
    {
      v24 = v14 + 16 * v23 + 16;
    }

    mlir::RewriterBase::moveOpBefore(a3, v11, *(v24 + 16), *(v24 + 8));
    mlir::RewriterBase::moveOpBefore(a3, a2, *(v11 + 16), *(v11 + 8));
    *(a3 + 24) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
    v34 = a2 - 16;
    v25 = *(a2 + 24);
    v36[0] = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
    v36[1] = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v37 = v36 + 2;
    v38 = 2;
    v26 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReadHandleOp,mlir::TypeRange,mlir::detail::TypedValue<mlir::ODIE::Compiler::CoreML::HandleType> &,mlir::detail::TypedValue<mlir::ODIE::Compiler::CoreML::TokenType> &>((a3 + 8), v25, &v37, &v35, &v34);
    v27 = *(a2 + 24);
    v28 = *(v14 + 8);
    v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>(a3 + 8, *(**v27 + 32));
    v37 = v27;
    v38 = v29;
    v39 = v41;
    v40 = 0x400000000;
    v41[4] = v42;
    v41[5] = 0x400000000;
    v42[4] = v43;
    v42[5] = 0x400000000;
    v43[8] = 4;
    v43[9] = v44;
    v43[10] = 0x100000000;
    v44[1] = v45;
    v44[2] = 0x100000000;
    v45[1] = 0;
    v45[2] = 0;
    v45[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v45[4] = 0;
    v45[6] = 0;
    mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::build(a3 + 8, &v37, v28 & 0xFFFFFFFFFFFFFFF8, (v26 - 16));
    v30 = mlir::Operation::create(&v37);
    mlir::OpBuilder::insert((a3 + 8), v30);
    v31 = *(*(v30 + 6) + 16);
    mlir::OperationState::~OperationState(&v37);
    if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    v37 = a2;
    v36[0] = &v37;
    mlir::RewriterBase::replaceUsesWithIf(a3, v4, v26 - 2, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, v36, 0);
    v37 = v26;
    v36[0] = &v37;
    mlir::RewriterBase::replaceUsesWithIf(a3, (a2 - 16), v26 - 4, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, v36, 0);
    if (*(v32 + 9))
    {
      v33 = (v32 - 16);
    }

    else
    {
      v33 = 0;
    }

    v37 = v11;
    v36[0] = &v37;
    mlir::RewriterBase::replaceUsesWithIf(a3, v14, v33, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, v36, 0);
    result = 1;
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coremlax.copy_discarding_constraints";
    v6[3] = 36;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::InsertReadHWConstraintsHandle>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::InsertReadHWConstraintsHandle]";
  v6 = 144;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::WriteSliceUpdatesToHandle::~WriteSliceUpdatesToHandle(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::WriteSliceUpdatesToHandle *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::WriteSliceUpdatesToHandle::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v3 + 24 * *(v3 + 16) + 120;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = v3 + 16 * v5 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v9 = *(*(v6 + 72) + 24);
  v10 = v6 - 32;
  v20 = (v6 - 32);
  v12 = a2 - 16;
  for (i = *(a2 - 16); i; i = *i)
  {
    v13 = i[2];
    v14 = v13 && *(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id;
    if (v14 && *(*(v13 + 72) + 24) == v9)
    {
      goto LABEL_9;
    }
  }

  *(a3 + 24) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v15 = *(a2 + 24);
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::WriteHandleOp>(a3 + 8, *(**v15 + 32));
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v22;
  v21[3] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[8] = 4;
  v24[9] = v25;
  v24[10] = 0x100000000;
  v25[1] = v26;
  v25[2] = 0x100000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v26[4] = 0;
  v26[6] = 0;
  mlir::ODIE::Compiler::CoreML::WriteHandleOp::build((a3 + 8), v21, v9, v12, v10);
  v17 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert((a3 + 8), v17);
  v18 = *(*(v17 + 6) + 16);
  mlir::OperationState::~OperationState(v21);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  mlir::Value::replaceAllUsesExcept(&v20, (v19 - 16), v19);
  result = 1;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::WriteHandleOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.write_handle";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::WriteSliceUpdatesToHandle>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::WriteSliceUpdatesToHandle]";
  v6 = 140;
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::WriteSliceUpdatesToHWConstraintsHandle::~WriteSliceUpdatesToHWConstraintsHandle(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::WriteSliceUpdatesToHWConstraintsHandle *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::WriteSliceUpdatesToHWConstraintsHandle::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp,void>::id)
  {
    goto LABEL_9;
  }

  v10 = *(*(v7 + 72) + 24);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16) + 120;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = v10 + 16 * v11 + 16;
  }

  if (*(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v13 = *(*(v12 + 72) + 24);
  v14 = *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  v15 = v12 - 32;
  v38 = (v12 - 32);
  for (i = *(a2 - 16); i; i = *i)
  {
    v17 = i[2];
    if (v17)
    {
      v18 = *(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      mlir::Operation::getUsers(v17, &v39);
      v19 = v41[0];
      v20 = v43;
      v37 = v41[0];
      v36[0] = v39;
      v36[1] = v40;
      while (v19 != v20)
      {
        v21 = *(v19 + 16);
        if (v21)
        {
          v22 = *(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          goto LABEL_9;
        }

        mlir::ResultRange::UseIterator::operator++(v36);
        v19 = v37;
      }
    }
  }

  *(a3 + 24) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v23 = *(a2 + 24);
  v24 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>(a3 + 8, *(**v23 + 32));
  *&v39 = v23;
  *(&v39 + 1) = v24;
  *&v40 = v41;
  *(&v40 + 1) = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v45 = v47;
  v46 = 0x400000000;
  v48 = 4;
  v49 = &v51;
  v50 = 0x100000000;
  v52 = &v54;
  v53 = 0x100000000;
  v55 = 0;
  v56 = 0;
  v57 = &mlir::detail::TypeIDResolver<void,void>::id;
  v58 = 0;
  v59 = 0;
  mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(a3 + 8, &v39, v14, a2 - 16);
  v25 = mlir::Operation::create(&v39);
  mlir::OpBuilder::insert((a3 + 8), v25);
  v26 = *(*(v25 + 6) + 16);
  mlir::OperationState::~OperationState(&v39);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(a2 + 24);
  v29 = *(v27 + 9);
  v30 = (v27 - 16);
  v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::WriteHandleOp>(a3 + 8, *(**v28 + 32));
  *&v39 = v28;
  *(&v39 + 1) = v31;
  *&v40 = v41;
  *(&v40 + 1) = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v45 = v47;
  v46 = 0x400000000;
  v48 = 4;
  v49 = &v51;
  v50 = 0x100000000;
  v52 = &v54;
  v53 = 0x100000000;
  v55 = 0;
  v56 = 0;
  v57 = &mlir::detail::TypeIDResolver<void,void>::id;
  v58 = 0;
  if (v29)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v59 = 0;
  mlir::ODIE::Compiler::CoreML::WriteHandleOp::build((a3 + 8), &v39, v13, v32, v15);
  v33 = mlir::Operation::create(&v39);
  mlir::OpBuilder::insert((a3 + 8), v33);
  v34 = *(*(v33 + 6) + 16);
  mlir::OperationState::~OperationState(&v39);
  if (v34 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  mlir::Value::replaceAllUsesExcept(&v38, (v35 - 16), v35);
  result = 1;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coremlax.copy_with_constraints";
    v6[3] = 30;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::WriteSliceUpdatesToHWConstraintsHandle>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::WriteSliceUpdatesToHWConstraintsHandle]";
  v6 = 153;
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

uint64_t mlir::ODIE::Compiler::CoreML::impl::CastF32ToF16Base<mlir::ODIE::Compiler::CoreML::anonymous namespace::CastF32ToF16Pass>::CastF32ToF16Base(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286E76D60;
  v5.n128_u64[0] = "Convert function operand and result types in addition to ops within function.";
  v5.n128_u64[1] = 77;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 336), (a1 + 144), "convert-func-externs", 20, &v5, &v4);
  *(a1 + 336) = &unk_286E76DD0;
  *(a1 + 520) = &unk_286E76E50;
  v5.n128_u64[0] = "Disable converting any operation to f16. Casting for func externs will be determined by convert-func-externs";
  v5.n128_u64[1] = 108;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>((a1 + 536), (a1 + 144), "disable-all-ops", 15, &v5, &v4);
  *(a1 + 536) = &unk_286E76DD0;
  *(a1 + 720) = &unk_286E76E50;
  return a1;
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::CastF32ToF16Pass::~CastF32ToF16Pass(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::CastF32ToF16Pass *this)
{
  *this = &unk_286E76CF0;
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](this + 736);
  *this = &unk_286E76D60;
  *(this + 67) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 688);
  llvm::cl::Option::~Option(this + 67);
  *(this + 42) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 488);
  llvm::cl::Option::~Option(this + 42);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E76CF0;
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](this + 736);
  *this = &unk_286E76D60;
  *(this + 67) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 688);
  llvm::cl::Option::~Option(this + 67);
  *(this + 42) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](this + 488);
  llvm::cl::Option::~Option(this + 42);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::CastF32ToF16Pass::runOnOperation(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::CastF32ToF16Pass *this)
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (*(this + 656) == 1)
  {
    if (*(this + 456) & 1) != 0 || (v2 = *((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24), v11[0] = "CastF32ToF16Pass: disabled converting function externs and all activations. The pass will have no effect", v14 = 259, emitDiag(v2, 1, v11, v15), mlir::InFlightDiagnostic::~InFlightDiagnostic(v15), (*(this + 656)))
    {
      v10[0] = &unk_286E76ED8;
      v10[3] = v10;
      v3 = this + 736;
      std::__function::__value_func<BOOL ()(mlir::Operation *)>::__value_func[abi:nn200100](v11, v10);
      if (v11 != (this + 736))
      {
        v4 = v13;
        v5 = *(this + 95);
        if (v13 == v11)
        {
          if (v5 == v3)
          {
            (*(*v13 + 24))();
            (*(*v13 + 32))(v13);
            v13 = 0;
            (*(**(this + 95) + 24))(*(this + 95), v11);
            (*(**(this + 95) + 32))(*(this + 95));
            *(this + 95) = 0;
            v13 = v11;
            (*(v16[0] + 24))(v16, this + 736);
            (*(v16[0] + 32))(v16);
          }

          else
          {
            (*(*v13 + 24))();
            (*(*v13 + 32))(v13);
            v13 = *(this + 95);
          }

          *(this + 95) = v3;
        }

        else if (v5 == v3)
        {
          (*(*v5 + 24))(*(this + 95), v11);
          (*(**(this + 95) + 32))(*(this + 95));
          *(this + 95) = v13;
          v13 = v11;
        }

        else
        {
          v13 = *(this + 95);
          *(this + 95) = v4;
        }
      }

      std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](v11);
      std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](v10);
    }
  }

  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v6 = *(this + 5);
  v16[0] = this;
  v16[1] = v11;
  v9 = v16;
  if (!mlir::detail::walk<mlir::ForwardIterator>(v6 & 0xFFFFFFFFFFFFFFF8, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler6CoreML12_GLOBAL__N_116CastF32ToF16Pass14runOnOperationEvE3__1NS1_19FunctionOpInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v9, 1))
  {
    *(this + 5) |= 4uLL;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v11);
  result = MEMORY[0x25F891030](v11[0], 8);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void **a1)
{
  *a1 = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));

  llvm::cl::Option::~Option(a1);
}

{
  *a1 = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((a1 + 19));
  llvm::cl::Option::~Option(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 - 32);

  llvm::cl::Option::~Option(v1);
}

{
  v1 = (a1 - 184);
  *(a1 - 184) = &unk_286E79348;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100](a1 - 32);
  llvm::cl::Option::~Option(v1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, int a4)
{
  if (!a4)
  {
    result = a2(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  v7 = *(a1 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    v8 = a1 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 32 * *(a1 + 40) + 64;
    v9 = v8 + 24 * (v7 & 0x7FFFFF);
    do
    {
      for (i = *(v8 + 8); i != v8; i = *(i + 8))
      {
        v11 = i - 8;
        if (!i)
        {
          v11 = 0;
        }

        v12 = *(v11 + 40);
        v13 = v11 + 32;
        while (v12 != v13)
        {
          v14 = *(v12 + 8);
          v15 = mlir::detail::walk<mlir::ForwardIterator>();
          v12 = v14;
          if (!v15)
          {
            return 0;
          }
        }
      }

      v8 += 24;
    }

    while (v8 != v9);
  }

  if (a4 != 1)
  {
    return 1;
  }

  return a2(a3, a1);
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_4ODIE8Compiler6CoreML12_GLOBAL__N_116CastF32ToF16Pass14runOnOperationEvE3__1NS1_19FunctionOpInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESQ_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2);
  if (!v3 || (v5 = v3, v6 = v4, v7 = *a1, v8 = *v7, (Attr = mlir::Operation::getAttr(v3, "precision_hint", 0xEuLL)) != 0) && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v10 = *(*(v5 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id || *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 72) == 0;
    v12 = *(***((*(v8 + 40) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
    if ((*(*(v6 + 40) + 40))())
    {
      v13 = !v10;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (std::function<BOOL ()(mlir::Operation *)>::operator()(*(v8 + 760), v5))
      {
        goto LABEL_48;
      }
    }

    else if ((*(v8 + 456) & 1) == 0)
    {
      goto LABEL_48;
    }

    v51 = *(***(v5 + 24) + 32);
    v52 = 0uLL;
    v14 = (*(*(v6 + 48) + 8))();
    v16 = (*(*(v6 + 48) + 16))();
    *&v66[0] = v53 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v66[0] + 1) = LODWORD(__src[0]);
    *&v70 = v67 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v70 + 1) = v68;
    v18 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v51, v66, &v70);
    v19 = mlir::TypeAttr::get(v18);
    (*(v6 + 8))(v6, v5, v19);
    v20 = v5 + 64;
    v21 = (((v5 + 64 + 16 * ((*(v5 + 44) >> 23) & 1) + ((*(v5 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40));
    if (*v21 == v21)
    {
      v47 = 0;
    }

    else
    {
      v22 = *((**(v6 + 48))() + 8);
      if (v22)
      {
        v23 = v22 - 8;
      }

      else
      {
        v23 = 0;
      }

      v24 = *(v23 + 40);
      *&v52 = v23;
      *(&v52 + 1) = v24;
      v25 = *(v5 + 44);
      v26 = (v25 >> 23) & 1;
      v27 = (v25 >> 21) & 0x7F8;
      v28 = 32 * *(v5 + 40);
      v29 = (((v20 + 16 * v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) + v28);
      if (*v29 != v29)
      {
        v30 = v29[1];
        v31 = v30 ? v30 - 8 : 0;
        v32 = *(v31 + 48);
        v33 = *(v31 + 56);
        if (v33 != v32)
        {
          v34 = 0;
          while (1)
          {
            v35 = *(v32 + v34);
            *&v66[0] = v35;
            v36 = *(v35 + 8);
            *&v70 = v36 & 0xFFFFFFFFFFFFFFF8;
            v37 = v36 & 7 | *(v53 + v34);
            *(v35 + 8) = v37;
            if ((~v37 & 7) != 0)
            {
              v38 = v35;
            }

            else
            {
              v38 = 0;
            }

            if (v38)
            {
              v39 = *(v38 + 8) & 7;
              if (v39 != 6)
              {
                v40 = v38 + 16 * v39 + 16;
LABEL_32:
                v41 = (v40 + 24);
                goto LABEL_33;
              }

              v40 = v38 + 24 * *(v38 + 16) + 120;
              if (v40)
              {
                goto LABEL_32;
              }
            }

            v41 = (v35 + 32);
LABEL_33:
            v42 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type &,mlir::Value &>(&v51, *v41, &v70, v66);
            mlir::Value::replaceAllUsesExcept(v66, v42 - 2, v42);
            v34 += 8;
            if (v32 + v34 == v33)
            {
              v43 = *(v5 + 44);
              v26 = (v43 >> 23) & 1;
              v27 = (v43 >> 21) & 0x7F8;
              v28 = 32 * *(v5 + 40);
              break;
            }
          }
        }
      }

      v44 = *(((v20 + 16 * v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) + v28 + 8);
      if (v44)
      {
        v45 = v44 - 8;
      }

      else
      {
        v45 = 0;
      }

      v46 = *(v45 + 32);
      v66[0] = v51;
      v66[1] = v52;
    }

    if (v67 != &v69)
    {
      free(v67);
    }

    if (v53 != &__src[1])
    {
      free(v53);
    }

    if ((v47 & 1) == 0)
    {
LABEL_48:
      v53 = v12;
      *__src = 0u;
      *v55 = 0u;
      v56 = v58;
      v57 = 0x600000000;
      v58[6] = 0;
      v58[7] = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0x2800000000;
      v63 = 0;
      v64 = 0;
      v65 = 0x2800000000;
      v48 = v7[1];
      operator new();
    }

    v11 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t std::function<BOOL ()(mlir::Operation *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::typesSubF32WithF16(void *a1, uint64_t **a2, uint64_t a3, mlir::Builder *a4)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (a3)
  {
    v7 = 8 * a3;
    do
    {
      v8 = *a2;
      {
        F16Type = mlir::Builder::getF16Type(a4);
      }

      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a1, v8);
      ++a2;
      v7 -= 8;
    }

    while (v7);
  }
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::ODIE::Compiler::CoreML::anonymous namespace::tryUpdateTerminator(uint64_t a1, uint64_t a2, uint64_t a3, mlir::OpBuilder *a4)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_55;
  }

  v5 = *(*(a1 + 48) + 16);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
  {
    v50[8] = 257;
    mlir::Operation::emitError(&v53, a1, &v48);
    if (v53)
    {
      mlir::Diagnostic::operator<<<30ul>(&v54, "Unrecognized terminator type.");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
    result = 0;
    goto LABEL_56;
  }

  v9 = 0;
  *(a4 + 2) = *(a1 + 16);
  *(a4 + 3) = a1;
  v48 = v50;
  v49 = 0x600000000;
  while (1)
  {
    v10 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
    if (v9 == v10)
    {
      break;
    }

    v11 = *(*(a1 + 72) + 32 * v9 + 24);
    {
      goto LABEL_26;
    }

    if ((~*(v11 + 8) & 7) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
LABEL_21:
      v15 = (v11 + 32);
      goto LABEL_24;
    }

    v13 = *(v12 + 8) & 7;
    if (v13 == 6)
    {
      v14 = v12 + 24 * *(v12 + 16) + 120;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v12 + 16 * v13 + 16;
    }

    v15 = (v14 + 24);
LABEL_24:
    v16 = *v15;
    v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a4, *(***v15 + 32));
    v53 = v16;
    v54 = v17;
    v55 = v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v61 = v63;
    v62 = 0x400000000;
    v64 = 4;
    v65 = &v67;
    v66 = 0x100000000;
    v68 = &v70;
    v69 = 0x100000000;
    v71 = 0;
    v72 = 0;
    v73 = &mlir::detail::TypeIDResolver<void,void>::id;
    v74 = 0;
    v75 = 0;
    mlir::ODIE::Compiler::CoreML::CastOp::build(a4, &v53, *(a2 + 8 * v9), v11);
    v18 = mlir::Operation::create(&v53);
    mlir::OpBuilder::insert(a4, v18);
    v19 = *(*(v18 + 6) + 16);
    v11 = (v18 - 16);
    mlir::OperationState::~OperationState(&v53);
    if (v19 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v11 = -16;
    }

LABEL_26:
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v48, v11);
    ++v9;
  }

  v21 = *(*(a1 + 48) + 16);
  v22 = &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
  if (v21 == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v30 = *(a1 + 24);
    v31 = *(a1 + 36);
    v24 = (a1 - 16);
    if (v31)
    {
      v32 = (a1 - 16);
    }

    else
    {
      v32 = 0;
    }

    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::ReturnOp>(a4, *(**v30 + 32));
    v53 = v30;
    v54 = v33;
    v55 = v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v61 = v63;
    v62 = 0x400000000;
    v64 = 4;
    v65 = &v67;
    v66 = 0x100000000;
    v68 = &v70;
    v69 = 0x100000000;
    v71 = 0;
    v72 = 0;
    v73 = &mlir::detail::TypeIDResolver<void,void>::id;
    v74 = 0;
    v75 = 0;
    v44 = v32;
    v45 = 0;
    v46 = v32;
    v47 = v31;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(&v51, &v44);
    mlir::func::ReturnOp::build(a4, &v53, v51, v52, v48 & 0xFFFFFFFFFFFFFFF9, v49, 0, 0);
  }

  else
  {
    v23 = *(a1 + 24);
    v24 = (a1 - 16);
    v25 = *(a1 + 36);
    if (v25)
    {
      v26 = (a1 - 16);
    }

    else
    {
      v26 = 0;
    }

    v22 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id;
    if (v21 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
    {
      v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::YieldOp>(a4, *(**v23 + 32));
      v53 = v23;
      v54 = v27;
      v55 = v57;
      v56 = 0x400000000;
      v58 = v60;
      v59 = 0x400000000;
      v61 = v63;
      v62 = 0x400000000;
      v64 = 4;
      v65 = &v67;
      v66 = 0x100000000;
      v68 = &v70;
      v69 = 0x100000000;
      v71 = 0;
      v72 = 0;
      v73 = &mlir::detail::TypeIDResolver<void,void>::id;
      v74 = 0;
      v75 = 0;
      v44 = v26;
      v45 = 0;
      v46 = v26;
      v47 = v25;
      mlir::TypeRange::TypeRange<mlir::ResultRange>(&v51, &v44);
      mlir::ODIE::Compiler::CoreML::YieldOp::build(a4, &v53, v51, v52, v48 & 0xFFFFFFFFFFFFFFF9, v49, 0, 0);
      v28 = mlir::Operation::create(&v53);
      mlir::OpBuilder::insert(a4, v28);
      v29 = *(*(v28 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id;
      goto LABEL_43;
    }

    v34 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OutputOp>(a4, *(**v23 + 32));
    v53 = v23;
    v54 = v34;
    v55 = v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v61 = v63;
    v62 = 0x400000000;
    v64 = 4;
    v65 = &v67;
    v66 = 0x100000000;
    v68 = &v70;
    v69 = 0x100000000;
    v71 = 0;
    v72 = 0;
    v73 = &mlir::detail::TypeIDResolver<void,void>::id;
    v74 = 0;
    v75 = 0;
    v44 = v26;
    v45 = 0;
    v46 = v26;
    v47 = v25;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(&v51, &v44);
    mlir::ODIE::Compiler::CoreML::OutputOp::build(a4, &v53, v51, v52, v48 & 0xFFFFFFFFFFFFFFF9, v49, 0, 0);
  }

  v28 = mlir::Operation::create(&v53);
  mlir::OpBuilder::insert(a4, v28);
  v29 = *(*(v28 + 6) + 16) == v22;
LABEL_43:
  if (v29)
  {
    v35 = v28;
  }

  else
  {
    v35 = 0;
  }

  mlir::OperationState::~OperationState(&v53);
  v36 = *(a1 + 36);
  if (v36)
  {
    v37 = v24;
  }

  else
  {
    v37 = 0;
  }

  v44 = v37;
  v45 = v36;
  v38 = *(v35 + 9);
  v39 = (v35 - 16);
  if (!v38)
  {
    v39 = 0;
  }

  v53 = v39;
  v54 = v38;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v44, &v53);
  mlir::Operation::dropAllUses(a1);
  if (*(a1 + 16))
  {
    *(a1 + 16) = 0;
    v41 = *a1;
    v40 = *(a1 + 8);
    *v40 = *a1;
    v41[1] = v40;
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  mlir::Operation::destroy(a1);
  if (v48 != v50)
  {
    free(v48);
  }

LABEL_55:
  result = 1;
LABEL_56:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::anonymous namespace::isElementTypeF32(uint64_t *a1)
{
  v2 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v4 = v2;
  if (v2)
  {
    v2 = (*(v3 + 8))(v3, v2);
  }

  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = a1;
  }

  v6 = *(*v5 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    return 1;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return *(*v5[1] + 136) == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  }

  return 0;
}

uint64_t *mlir::ODIE::Compiler::CoreML::anonymous namespace::cloneTypeWithNewElementType(uint64_t *a1, uint64_t a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (result)
  {
    v5 = result;
    v6 = v4;
    v7 = (*(v4 + 8))(v4, result);
    if (v7)
    {
      v8 = *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v12[0] = a2;
      v10 = mlir::detail::TypeUniquer::get<mlir::ComplexType,mlir::Type &>(*(**a2 + 32), v12);
      v11 = *v6;
      LOBYTE(v12[0]) = 0;
      v13 = 0;
      return v11(v6, v5, v12, v10);
    }

    else
    {
      v9 = *v6;
      LOBYTE(v12[0]) = 0;
      v13 = 0;
      return v9(v6, v5, v12, a2);
    }
  }

  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t **mlir::Operation::dropAllUses(uint64_t **this)
{
  v1 = *(this + 9);
  v2 = this - 2;
  if (v1)
  {
    v3 = this - 2;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = this;
    v5 = 0;
    for (i = this - 2; ; i -= 2)
    {
      v7 = v3;
      if (v5)
      {
        v8 = *(v4 - 1) & 7;
        v9 = v2;
        v10 = v5;
        if (v8 == 6)
        {
          goto LABEL_10;
        }

        v11 = (5 - v8);
        v7 = i;
        v10 = v5 - v11;
        if (v5 > v11)
        {
          break;
        }
      }

LABEL_11:
      this = mlir::IRObjectWithUseList<mlir::OpOperand>::dropAllUses(v7);
      if (v1 == ++v5)
      {
        return this;
      }
    }

    v9 = &v2[-2 * v11];
LABEL_10:
    v7 = &v9[-3 * v10];
    goto LABEL_11;
  }

  return this;
}

uint64_t mlir::Diagnostic::operator<<<30ul>(uint64_t a1, char *__s)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::func::ReturnOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "func.return";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t **mlir::IRObjectWithUseList<mlir::OpOperand>::dropAllUses(uint64_t **result)
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

void mlir::ODIE::Compiler::CoreML::anonymous namespace::CastF32OpsToF16::~CastF32OpsToF16(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::CastF32OpsToF16 *this)
{
  *this = &unk_286E76F20;
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);

  mlir::RewritePattern::~RewritePattern(this);
}

{
  *this = &unk_286E76F20;
  std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](this + 96);
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::CastF32OpsToF16::rewrite(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::CastF32OpsToF16 *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v105[9] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 11);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = *(((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
    if (v7)
    {
      v8 = v7 - 8;
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

  v9 = 0;
  v10 = 0;
  if ((v5 & 0x800000) == 0)
  {
    goto LABEL_27;
  }

LABEL_7:
  for (i = *(a2 + 17); v10 < i; i = 0)
  {
    v12 = *(*(a2 + 9) + v9 + 24);
    *&v96 = v12;
    {
      goto LABEL_26;
    }

    v13 = *(v12 + 8);
    if ((~*(v12 + 8) & 7) != 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
LABEL_16:
      v17 = (v12 + 32);
      goto LABEL_19;
    }

    v15 = *(v14 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v14 + 24 * *(v14 + 16) + 120;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = v14 + 16 * v15 + 16;
    }

    v17 = (v16 + 24);
LABEL_19:
    v18 = *v17;
    F16Type = mlir::Builder::getF16Type((a3 + 8));
    v20 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type,mlir::Value &>((a3 + 8), v18, &v94, &v96);
    v21 = (*(a2 + 9) + v9);
    v22 = v21[1];
    if (v22)
    {
      v23 = *v21;
      *v22 = *v21;
      if (v23)
      {
        *(v23 + 8) = v21[1];
      }
    }

    v21[3] = (v20 - 16);
    v21[1] = (v20 - 16);
    v24 = *(v20 - 2);
    *v21 = v24;
    if (v24)
    {
      *(v24 + 8) = v21;
    }

    *(v20 - 2) = v21;
    if (v6)
    {
      v25 = *(*(v8 + 48) + 8 * v10);
      *(v25 + 8) = *(v20 - 1) & 0xFFFFFFFFFFFFFFF8 | *(v25 + 8) & 7;
    }

LABEL_26:
    ++v10;
    v9 += 32;
    if ((*(a2 + 11) & 0x800000) != 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    ;
  }

  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0;
  }

  v92 = v26;
  if (v26)
  {
    LODWORD(v100) = 0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    *&v94 = &unk_286E76F60;
    BYTE8(v94) = 0;
    *(&v95 + 1) = &v94;
    std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::push_back[abi:nn200100](&v97 + 1, &v94);
    std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](&v94);
    CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(&v92);
    v28 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Attribute>(&v96, CalleeAttr);
    v29 = v28;
    if (v28)
    {
      v30 = *v28;
      v31 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v28 = mlir::detail::InterfaceMap::lookup(v30 + 8, v31);
    }

    v32 = v92 + 16 * ((*(v92 + 11) >> 23) & 1);
    *(v32 + 9) = v29;
    *(v32 + 10) = v28;
    MEMORY[0x25F891030](v99, 8);
    *&v94 = &v97 + 8;
    std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&v94);
    *&v94 = &v96;
    std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&v94);
  }

  v33 = *(a2 + 9);
  if (v33)
  {
    v34 = a2 - 16;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = 0;
    v36 = a2 - 16;
    do
    {
      v37 = v34;
      if (!v35)
      {
        goto LABEL_45;
      }

      v38 = *(a2 - 1) & 7;
      v39 = a2 - 16;
      v40 = v35;
      if (v38 != 6)
      {
        v41 = (5 - v38);
        v37 = v36;
        v40 = v35 - v41;
        if (v35 <= v41)
        {
          goto LABEL_45;
        }

        v39 = a2 - 16 * v41 - 16;
      }

      v37 = &v39[-24 * v40];
LABEL_45:
      *&v96 = v37;
      {
        v42 = *(v37 + 1);
        v43 = mlir::Builder::getF16Type((a3 + 8));
        *(v37 + 1) = v44;
        if ((~v44 & 7) != 0)
        {
          v45 = v37;
        }

        else
        {
          v45 = 0;
        }

        if (v45)
        {
          v46 = *(v45 + 1) & 7;
          if (v46 == 6)
          {
            v47 = &v45[24 * *(v45 + 2)];
            v48 = (v47 + 120);
            if (v47 == -120)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v48 = &v45[16 * v46 + 16];
          }

          v49 = *(v48 + 16);
          v50 = (v48 + 8);
        }

        else
        {
LABEL_52:
          v49 = *(v37 + 2);
          v50 = (v49 + 40);
        }

        v51 = *v50;
        *(a3 + 3) = v49;
        *(a3 + 4) = v51;
        v52 = *(v37 + 1);
        if ((~*(v37 + 2) & 7) != 0)
        {
          v53 = v37;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
          v54 = *(v53 + 1) & 7;
          if (v54 == 6)
          {
            v55 = &v53[24 * *(v53 + 2) + 120];
            if (!v55)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v55 = &v53[16 * v54 + 16];
          }

          v56 = (v55 + 24);
        }

        else
        {
LABEL_61:
          v56 = (v37 + 32);
        }

        v57 = *v56;
        F32Type = mlir::Builder::getF32Type((a3 + 8));
        v59 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type,mlir::Value &>((a3 + 8), v57, &v94, &v96);
        v60 = 0;
        v61 = *(v59 - 1) & 7;
        v62 = v61 == 7;
        if (v61 == 7)
        {
          v63 = 0;
        }

        else
        {
          v63 = v59 - 16;
        }

        if (!v62)
        {
          v64 = *(v63 + 1) & 7;
          if (v64 == 6)
          {
            v60 = &v63[24 * *(v63 + 2) + 120];
          }

          else
          {
            v60 = &v63[16 * v64 + 16];
          }
        }

        mlir::Value::replaceAllUsesExcept(&v96, v59 - 2, v60);
      }

      ++v35;
      v36 -= 16;
    }

    while (v33 != v35);
  }

  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id)
  {
    v65 = *(a2 + 11);
    v66 = *(((a2 + 16 * ((v65 >> 23) & 1) + ((v65 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
    if (v66)
    {
      v67 = v66 - 8;
    }

    else
    {
      v67 = 0;
    }

    v90 = v67;
    if ((v65 & 0x800000) != 0)
    {
      v68 = *(v67 + 48);
      v69 = *(a2 + 17);
      v91 = *(v67 + 56);
      if (v68 != v91 && v69 != 0)
      {
        v71 = v69 - 1;
        v72 = (*(a2 + 9) + 24);
        v73 = *(v67 + 48);
        do
        {
          v74 = *v72;
          v72 += 4;
          v75 = (*v68)[1];
          (*v68)[1] = (*(v74 + 8) & 0xFFFFFFFFFFFFFFF8 | v75 & 7);
          v76 = (*v68)[4];
          v77 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a3 + 8, *(**v76 + 32));
          *&v96 = v76;
          *(&v96 + 1) = v77;
          *&v97 = &v98;
          *(&v97 + 1) = 0x400000000;
          v100 = v102;
          v101 = 0x400000000;
          v102[4] = v103;
          v102[5] = 0x400000000;
          v103[8] = 4;
          v103[9] = v104;
          v103[10] = 0x100000000;
          v104[1] = v105;
          v104[2] = 0x100000000;
          v105[1] = 0;
          v105[2] = 0;
          v105[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v105[4] = 0;
          v105[6] = 0;
          v78 = *v73++;
          mlir::ODIE::Compiler::CoreML::CastOp::build(a3 + 8, &v96, v75 & 0xFFFFFFFFFFFFFFF8, v78);
          v79 = mlir::Operation::create(&v96);
          mlir::OpBuilder::insert((a3 + 8), v79);
          v80 = *(*(v79 + 6) + 16);
          mlir::OperationState::~OperationState(&v96);
          if (v80 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
          {
            v81 = v79;
          }

          else
          {
            v81 = 0;
          }

          mlir::Value::replaceAllUsesExcept(v68, (v81 - 16), v81);
          v83 = v71-- != 0;
          if (v73 == v91)
          {
            break;
          }

          v68 = v73;
        }

        while (v83);
      }
    }

    v84 = *(v90 + 32);
    v85 = *(a2 + 9);
    if (v85)
    {
      v86 = a2 - 16;
    }

    else
    {
      v86 = 0;
    }

    *&v96 = &v97;
    *(&v96 + 1) = 0x600000000;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v96, v86, 0, v86, v85);
    v87 = *(a3 + 24);
    v94 = *(a3 + 8);
    v95 = v87;
    if (v96 != &v97)
    {
      free(v96);
    }

    if ((updated & 1) == 0)
    {
      *&v96 = "Unable to update the isolated group op's yield operation";
      LOWORD(v98) = 259;
      mlir::Operation::emitError(v93, a2, &v96);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v93);
    }
  }

  v89 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::anonymous namespace::CastF32OpsToF16::match(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::CastF32OpsToF16 *this, mlir::Operation *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (std::function<BOOL ()(mlir::Operation *)>::operator()(*(this + 15), a2))
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 6);
  v5 = v4[2];
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    goto LABEL_9;
  }

  v6 = v5 == &mlir::detail::TypeIDResolver<void,void>::id ? *(v4[1] + 32) : v4[3];
  v7 = *(v6 + 24);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoreMLDialect,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::CoreMLAXDialect,void>::id)
  {
    goto LABEL_9;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  if ((*(*v4 + 32))(v4, v8))
  {
    goto LABEL_9;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 6) + 32))(*(a2 + 6), v12))
  {
    v13 = *(a2 + 2);
    if (v13 && (v14 = *(v13 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v15 = *(v14 + 16);
    }

    else
    {
      v15 = 0;
    }

    v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID();
    if (((*(**(v15 + 48) + 32))(*(v15 + 48), v16) & 1) == 0)
    {
      v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      if ((*(**(v15 + 48) + 32))(*(v15 + 48), v17))
      {
        goto LABEL_9;
      }
    }
  }

  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CallOp,void>::id)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0;
  }

  v43 = v18;
  if (v18)
  {
    v19 = mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(&v43, *(this + 16));
    if (!v19)
    {
      goto LABEL_9;
    }

    v20 = v19[2 * ((*(v19 + 11) >> 23) & 1) + 14];
    if (!v20)
    {
      goto LABEL_9;
    }

    mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v20 + 8), *(v20 + 8) + 16 * *(v20 + 16), "cast-f32-ops-to-f16", 0x13uLL);
    if ((v21 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v22 = *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InvokeOp,void>::id ? a2 : 0;
    v42 = v22;
    if (!v22)
    {
      goto LABEL_9;
    }

    v23 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(&v42, *(this + 16));
    if (!v23 || (*(v23[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id ? (v24 = 0) : (v24 = v23), !v24 || (v25 = (((v24 + 64 + 16 * ((*(v24 + 44) >> 23) & 1) + ((*(v24 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v24 + 40)), *v25 == v25)))
    {
      v40 = "could not resolve callee ";
      v41 = 259;
      mlir::Operation::emitError(&v44, a2, &v40);
      v39[0] = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(&v42);
      v39[1] = v38;
      if (v44)
      {
        mlir::Diagnostic::operator<<<mlir::TypedAttr>(v45, v39);
        if (v44)
        {
          mlir::Diagnostic::operator<<<19ul>(v45, " to existing graph");
        }
      }

      v9 = (v45[192] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
      goto LABEL_10;
    }

    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v24);
    Attr = mlir::Operation::getAttr(v24, "precision_hint", 0xEuLL);
    if (Attr)
    {
      if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        goto LABEL_9;
      }
    }

    if (!*(v24 + 64 + 16 * ((*(v24 + 44) >> 23) & 1) + 40) && (*(this + 136) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((*(a2 + 46) & 0x80) == 0 || (v27 = *(a2 + 17), !v27))
  {
LABEL_46:
    v29 = *(a2 + 9);
    if (v29)
    {
      v30 = a2 - 16;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = 0;
      v32 = a2 - 16;
      while (1)
      {
        v33 = v30;
        if (v31)
        {
          v34 = *(a2 - 1) & 7;
          v35 = a2 - 16;
          v36 = v31;
          if (v34 == 6)
          {
            goto LABEL_55;
          }

          v37 = (5 - v34);
          v33 = v32;
          v36 = v31 - v37;
          if (v31 > v37)
          {
            break;
          }
        }

LABEL_56:
        {
          goto LABEL_59;
        }

        v9 = 0;
        ++v31;
        v32 -= 16;
        if (v29 == v31)
        {
          goto LABEL_10;
        }
      }

      v35 = a2 - 16 * v37 - 16;
LABEL_55:
      v33 = &v35[-24 * v36];
      goto LABEL_56;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v28 = *(a2 + 9) + 24;
  {
    v28 += 32;
    if (!--v27)
    {
      goto LABEL_46;
    }
  }

LABEL_59:
  v9 = 1;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::RewritePattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 24))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 16))(a1, a2, a3);
  return 1;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNKS2_4ODIE8Compiler6CoreML12_GLOBAL__N_115CastF32OpsToF167rewriteEPNS2_9OperationERNS2_15PatternRewriterEEUlNS2_11Float32TypeEE_SH_NS2_4TypeENS2_11Float16TypeEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISN_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSJ_E_NS_9allocatorISY_EEFNSP_INSQ_ISJ_SR_EEEESJ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E76F60;
  *(a2 + 8) = *(result + 8);
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNKS2_4ODIE8Compiler6CoreML12_GLOBAL__N_115CastF32OpsToF167rewriteEPNS2_9OperationERNS2_15PatternRewriterEEUlNS2_11Float32TypeEE_SH_NS2_4TypeENS2_11Float16TypeEEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISN_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSJ_E_NS_9allocatorISY_EEFNSP_INSQ_ISJ_SR_EEEESJ_EEclEOSJ_(void ****a1@<X1>, uint64_t a2@<X8>)
{
  v2 = **a1;
  if (v2[17] == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    *a2 = *(**(*v2 + 4) + 424);
    v3 = 1;
    *(a2 + 8) = 1;
  }

  else
  {
    v3 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v3;
}

uint64_t std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](uint64_t a1)
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

void llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  if (a5 != v6)
  {
    v12 = (*a1 + 8 * v10);
    v13 = a2 - 16 * v6;
    while (1)
    {
      if (v6)
      {
        if (!a2)
        {
          v15 = 0;
          v16 = v6;
          goto LABEL_12;
        }

        v14 = *(a2 + 8) & 7;
        v15 = a2;
        v16 = v6;
        if (v14 == 6)
        {
          goto LABEL_12;
        }

        v17 = (5 - v14);
        v18 = v13;
        v16 = v6 - v17;
        if (v6 > v17)
        {
          v15 = a2 - 16 * v17;
LABEL_12:
          v18 = v15 - 24 * v16;
        }
      }

      else
      {
        v18 = a2;
      }

      *v12++ = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
      ++v6;
      v13 -= 16;
      if (a5 == v6)
      {
        LODWORD(v10) = *(a1 + 8);
        break;
      }
    }
  }

  *(a1 + 8) = v10 + v9;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1112);
}

uint64_t llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>();
    unk_27FC17470 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroOperands<Empty>]";
  v6 = 96;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1192);
}

uint64_t llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>();
    unk_27FC174C0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]";
  v6 = 96;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1032);
}

uint64_t llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>();
    unk_27FC17420 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<Empty>]";
  v6 = 120;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1152);
}

uint64_t llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
    *algn_27FC17498 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
  v6 = 103;
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

uint64_t mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::CallOpInterface>();
      mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1072);
}

uint64_t llvm::getTypeName<mlir::CallOpInterface>()
{
  {
    llvm::getTypeName<mlir::CallOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::CallOpInterface>();
    *algn_27FC17448 = v1;
  }

  return llvm::getTypeName<mlir::CallOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::CallOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::CallOpInterface]";
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

uint64_t mlir::Diagnostic::operator<<<mlir::TypedAttr>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<19ul>(uint64_t a1, char *__s)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::anonymous namespace::CastF32OpsToF16>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::(anonymous namespace)::CastF32OpsToF16]";
  v6 = 130;
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

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::operator=<BOOL>(uint64_t a1, _BYTE *a2)
{
  *(a1 + 120) = *a2;
  v2 = a1 + 120;
  v3 = *(a1 + 176);
  if (v3)
  {
    (*(*v3 + 48))(v3);
    return v2;
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<BOOL ()(mlir::Operation *)>::__value_func[abi:nn200100](v5, v6);
  }
}

uint64_t std::__function::__value_func<BOOL ()(mlir::Operation *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(mlir::Operation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t llvm::SmallVectorImpl<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<std::string>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      v8 = *a1;
      if (v6)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::string *,std::string *,std::string *>(&v19, v4, (v4 + 24 * v6), v8);
        v10 = v9;
        v8 = *a1;
        LODWORD(v7) = *(a1 + 8);
      }

      else
      {
        v10 = *a1;
      }

      v17 = (v8 + 24 * v7);
      while (v17 != v10)
      {
        v18 = *(v17 - 1);
        v17 -= 3;
        if (v18 < 0)
        {
          operator delete(*v17);
        }
      }

      goto LABEL_15;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::string *,std::string *,std::string *>(&v20, v4, (v4 + 24 * v7), *a1);
        goto LABEL_12;
      }
    }

    else
    {
      llvm::SmallVectorImpl<std::string>::clear(a1);
      llvm::SmallVectorTemplateBase<std::string,false>::grow(a1, v6);
    }

    v7 = 0;
LABEL_12:
    v11 = *(a2 + 8);
    if (v7 != v11)
    {
      v12 = *a1 + 24 * v7;
      v13 = *a2 + 24 * v7;
      v14 = 24 * v11 - 24 * v7;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 16);
        *v12 = v15;
        v12 += 24;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = 0;
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
    }

LABEL_15:
    *(a1 + 8) = v6;
    llvm::SmallVectorImpl<std::string>::clear(a2);
  }

  return a1;
}

double llvm::SmallVectorImpl<std::string>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4 + 24 * v5 - 1;
    v7 = -24 * v5;
    v8 = v6;
    do
    {
      v9 = *v8;
      v8 -= 24;
      if (v9 < 0)
      {
        operator delete(*(v6 - 23));
      }

      v6 = v8;
      v7 += 24;
    }

    while (v7);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
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

void llvm::SmallVectorImpl<std::string>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 24 * v2 - 1;
    v4 = -24 * v2;
    v5 = v3;
    do
    {
      v6 = *v5;
      v5 -= 24;
      if (v6 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 = v5;
      v4 += 24;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreML::impl::SpecializeParametricOpsBase<mlir::ODIE::Compiler::CoreML::anonymous namespace::SpecializeParametricOpsPass>::SpecializeParametricOpsBase(uint64_t a1)
{
  *(a1 + 16) = "builtin.module";
  *(a1 + 24) = 14;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 192;
  *(a1 + 184) = 0x400000000;
  *(a1 + 224) = a1 + 240;
  *(a1 + 232) = 0x400000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0x1000000000;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *a1 = &unk_286E77018;
  *&v3 = "List of entrypoints (as SymbolRefAttrs, e.g. @foo) to use as roots for the specialization";
  *(&v3 + 1) = 89;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>((a1 + 336), (a1 + 144), "entrypoints", 11, &v3);
  *(a1 + 336) = &unk_286E77088;
  *(a1 + 576) = &unk_286E77108;
  return a1;
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::SpecializeParametricOpsPass::~SpecializeParametricOpsPass(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::SpecializeParametricOpsPass *this)
{
  *this = &unk_286E77018;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(this + 336);

  mlir::Pass::~Pass(this);
}

{
  *this = &unk_286E77018;
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(this + 336);
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::CoreML::anonymous namespace::SpecializeParametricOpsPass::runOnOperation(mlir::ODIE::Compiler::CoreML::_anonymous_namespace_::SpecializeParametricOpsPass *this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v23[1] = 0;
  v23[2] = 0;
  v23[0] = v2;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v3 = *(this + 57);
  v4 = *(this + 58);
  if (v3 == v4)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v5 = *(v3 + 23);
    if (v5 >= 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = *v3;
    }

    if (v5 >= 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = *(v3 + 8);
    }

    *&v19[0] = 0;
    v8 = mlir::parseAttribute(v6, v7, *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32), 0, v19, 0);
    if (!v8)
    {
      v9 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
      LOWORD(v16) = 261;
      *&v15[0] = v6;
      *(&v15[0] + 1) = v7;
      v8 = mlir::StringAttr::get(v9, v15, 0);
    }

    if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v11 = mlir::SymbolTableCollection::lookupSymbolIn(v21, *(this + 5) & 0xFFFFFFFFFFFFFFF8, v8);
      if (v11)
      {
        if (!mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(v23, v11))
        {
          break;
        }
      }
    }

    v3 += 24;
    if (v3 == v4)
    {
      v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
LABEL_19:
      mlir::SymbolTableCollection::getSymbolTable(v21, v2);
      v12 = *((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 16 * ((*((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 44) >> 23) & 1) + ((*((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 44) >> 21) & 0x7F8) + 32 * *((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 40) + 72);
      if (v12)
      {
        v13 = v12 - 8;
      }

      else
      {
        v13 = 0;
      }

      v20 = *(v13 + 40);
      memset(v19, 0, sizeof(v19));
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      memset(v15, 0, sizeof(v15));
      operator new();
    }
  }

  *(this + 5) |= 4uLL;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v21);
  MEMORY[0x25F891030](v21[0], 8);
  mlir::ODIE::Compiler::CoreML::Specializer::~Specializer(v23);
  v14 = *MEMORY[0x277D85DE8];
}

void mlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(a1);

  JUMPOUT(0x25F891040);
}

void non-virtual thunk tomlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(a1 - 240);
}

{
  mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(a1 - 240);

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreML12_GLOBAL__N_127SpecializeParametricOpsPass14runOnOperationEvE3__0NSA_13ParamBindAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E77148;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreML12_GLOBAL__N_127SpecializeParametricOpsPass14runOnOperationEvE3__0NSA_13ParamBindAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EEclEOSF_@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = *a2;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = result;
    v7 = *(result + 40);
    result = mlir::ODIE::Compiler::CoreML::Specializer::lookupSpecialization(*(result + 8), v5, &v91);
    if (v93 == 1)
    {
      v8 = *(v6 + 8);
      v97 = v5;
      v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::doFind<mlir::ODIE::Compiler::CoreML::ParamBindAttr>((v8 + 80), &v97);
      if (v9 && *(v9 + 8))
      {
        v5 = *(v9 + 8);
      }

      v82 = v91;
      v83 = v6;
      if (v91)
      {
        v81 = *(v92 + 48);
      }

      else
      {
        v81 = 0;
      }

      __p[0] = 0;
      __p[1] = 0;
      v87 = 0;
      LODWORD(v98) = 0;
      v102 = 0;
      v103 = 1;
      v100 = 0;
      v101 = 0;
      v99 = 0;
      v97 = &unk_286E79D28;
      v104 = __p;
      llvm::raw_ostream::SetUnbuffered(&v97);
      v11 = v5[1];
      v12 = *(*v11 + 136);
      v85 = a3;
      v80 = v7;
      if (v12 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
        {
          v11 = v11[1];
        }

        else
        {
          v11 = 0;
        }
      }

      v13 = mlir::ODIE::Compiler::CoreML::flattenSymbolRef(v11);
      llvm::raw_ostream::operator<<(&v97, *(v13 + 16), *(v13 + 24));
      v15 = v5[4];
      if (v15)
      {
        v16 = 16 * v15;
        v17 = v5[3];
        do
        {
          *v95 = *v17;
          if (v95[0])
          {
            v18 = *(*v95[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
          }

          else
          {
            v18 = 0;
          }

          if (!v18)
          {
            if ((v100 - v101) > 1)
            {
              *v101 = 9311;
              v101 += 2;
            }

            else
            {
              llvm::raw_ostream::write(&v97, "_$", 2uLL);
            }

            if (*(*v95[0] + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
            {
              v90[0] = *(v95[0] + 1);
              v19 = v90;
            }

            else
            {
              v19 = v95;
            }

            v20.n128_f64[0] = mlir::Attribute::print(v19, &v97);
            if (v100 == v101)
            {
              v21 = llvm::raw_ostream::write(&v97, "t", 1uLL);
            }

            else
            {
              *v101++ = 116;
              v21 = &v97;
            }

            v90[0] = (*v95[1])(v95[1], v95[0], v20);
            mlir::Type::print(v90, v21);
          }

          ++v17;
          v16 -= 16;
        }

        while (v16);
      }

      v22 = HIBYTE(v87);
      v23 = HIBYTE(v87);
      v24 = __p[0];
      v25 = __p[1];
      v26 = __p;
      if (v87 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      if (v87 >= 0)
      {
        v28 = HIBYTE(v87);
      }

      else
      {
        v28 = __p[1];
      }

      if (v28)
      {
        v29 = v83;
        do
        {
          if (*v27 == 60)
          {
            *v27 = 97;
          }

          v27 = (v27 + 1);
          --v28;
        }

        while (v28);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      else
      {
        v29 = v83;
      }

      if (v23 >= 0)
      {
        v30 = v22;
      }

      else
      {
        v26 = v24;
        v30 = v25;
      }

      if (v30)
      {
        do
        {
          if (*v26 == 62)
          {
            *v26 = 97;
          }

          v26 = (v26 + 1);
          --v30;
        }

        while (v30);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      v31 = __p;
      if (v23 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = v24;
      }

      if (v23 >= 0)
      {
        v33 = v22;
      }

      else
      {
        v33 = v25;
      }

      if (v33)
      {
        do
        {
          if (*v32 == 91)
          {
            *v32 = 113;
          }

          v32 = (v32 + 1);
          --v33;
        }

        while (v33);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      if (v23 >= 0)
      {
        v34 = v22;
      }

      else
      {
        v31 = v24;
        v34 = v25;
      }

      if (v34)
      {
        do
        {
          if (*v31 == 93)
          {
            *v31 = 113;
          }

          v31 = (v31 + 1);
          --v34;
        }

        while (v34);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      v35 = __p;
      if (v23 >= 0)
      {
        v36 = __p;
      }

      else
      {
        v36 = v24;
      }

      if (v23 >= 0)
      {
        v37 = v22;
      }

      else
      {
        v37 = v25;
      }

      if (v37)
      {
        do
        {
          if (*v36 == 32)
          {
            *v36 = 115;
          }

          v36 = (v36 + 1);
          --v37;
        }

        while (v37);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      if (v23 >= 0)
      {
        v38 = v22;
      }

      else
      {
        v35 = v24;
        v38 = v25;
      }

      if (v38)
      {
        do
        {
          if (*v35 == 58)
          {
            *v35 = 99;
          }

          v35 = (v35 + 1);
          --v38;
        }

        while (v38);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      v39 = __p;
      if (v23 >= 0)
      {
        v40 = __p;
      }

      else
      {
        v40 = v24;
      }

      if (v23 >= 0)
      {
        v41 = v22;
      }

      else
      {
        v41 = v25;
      }

      if (v41)
      {
        do
        {
          if (*v40 == 33)
          {
            *v40 = 101;
          }

          v40 = (v40 + 1);
          --v41;
        }

        while (v41);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      if (v23 >= 0)
      {
        v42 = v22;
      }

      else
      {
        v39 = v24;
        v42 = v25;
      }

      if (v42)
      {
        do
        {
          if (*v39 == 46)
          {
            *v39 = 100;
          }

          v39 = (v39 + 1);
          --v42;
        }

        while (v42);
        v22 = HIBYTE(v87);
        v24 = __p[0];
        v25 = __p[1];
        v23 = HIBYTE(v87);
      }

      if (v23 < 0)
      {
        v22 = v25;
      }

      else
      {
        v24 = __p;
      }

      v43 = *(***(v82 + 24) + 32);
      v96[8] = 261;
      v95[0] = v24;
      v95[1] = v22;
      v44 = mlir::StringAttr::get(v43, v95, v14);
      (*(v81 + 8))(v81, v82, v44);
      llvm::raw_ostream::~raw_ostream(&v97);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(__p[0]);
      }

      v46 = v91;
      v45 = v92;
      v47 = (**(v92 + 48))();
      v48 = *(v29 + 16);
      v97 = v47;
      v49 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>((v48 + 8), &v97);
      if (!v49 || (v50 = *(v49 + 8)) == 0 || (v51 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,void>>::doCastIfPossible(v50), v53 = v52, !v51))
      {
        v47 = mlir::SymbolTable::insert(*(v29 + 16), v46, **(v29 + 24));
        v54 = *(v29 + 32);
        v97 = v46;
        std::deque<mlir::Operation *>::push_back(v54, &v97);
        v51 = v46;
        v53 = v45;
      }

      (*v53)(v53, v51);
      if (v56)
      {
        mlir::ODIE::Compiler::CoreML::Specializer::lookupOriginal(*(v29 + 8), v5, v90);
        LODWORD(v87) = 0;
        *__p = 0u;
        v88 = v90;
        v89 = 0;
        (*(v90[1] + 16))(v95);
        v59 = v5[3];
        v58 = v5[4];
        v97 = &v99;
        v98 = 0x600000000;
        if (LODWORD(v95[1]))
        {
          llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::operator=(&v97, v95);
        }

        v105 = v59;
        v106 = v58;
        if (v95[0] != v96)
        {
          free(v95[0]);
          v59 = v105;
          v58 = v106;
        }

        v60 = v97;
        if (v98 && v58)
        {
          v84 = v47;
          v61 = &v97[v98];
          v62 = &v59[2 * v58];
          while (1)
          {
            v63 = *v60;
            v64 = *v59;
            v65 = v59[1];
            v66 = (*v53)(v53, v51);
            v68 = v66;
            if (v67)
            {
              v69 = 8 * v67;
              while (*(*v68 + 8) != *(v63 + 8))
              {
                v68 += 8;
                v69 -= 8;
                if (!v69)
                {
                  v68 = v66 + 8 * v67;
                  break;
                }
              }
            }

            v70 = (*v53)(v53, v51);
            if (v68 == v70 + 8 * v71)
            {
              goto LABEL_141;
            }

            v94 = 0;
            if (llvm::DenseMapBase<llvm::DenseMap<mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>,mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>::LookupBucketFor<mlir::TypedAttr>(__p[0], v87, v64, &v94))
            {
              goto LABEL_141;
            }

            v72 = v94;
            v95[0] = v94;
            v73 = __p[1];
            v74 = v87;
            if (4 * LODWORD(__p[1]) + 4 >= (3 * v87))
            {
              break;
            }

            if (v87 + ~LODWORD(__p[1]) - HIDWORD(__p[1]) <= v87 >> 3)
            {
              goto LABEL_145;
            }

LABEL_138:
            LODWORD(__p[1]) = v73 + 1;
            if (*v72 != -4096)
            {
              --HIDWORD(__p[1]);
            }

            *v72 = v64;
            v72[1] = v65;
            llvm::SmallVectorTemplateBase<mlir::TypedAttr,true>::push_back(&v88, v64, v65);
LABEL_141:
            if (++v60 != v61)
            {
              v59 += 2;
              if (v59 != v62)
              {
                continue;
              }
            }

            v60 = v97;
            v47 = v84;
            goto LABEL_148;
          }

          v74 = 2 * v87;
LABEL_145:
          llvm::DenseMap<mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>::grow(__p, v74);
          llvm::DenseMapBase<llvm::DenseMap<mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>,mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>::LookupBucketFor<mlir::TypedAttr>(__p[0], v87, v64, v95);
          v73 = __p[1];
          v72 = v95[0];
          goto LABEL_138;
        }

LABEL_148:
        a3 = v85;
        if (v60 != &v99)
        {
          free(v60);
        }

        v76 = mlir::SymbolRefAttr::get(v47, 0, 0, v57);
        v77 = *(**(***((*(v80 + 40) & 0xFFFFFFFFFFFFFFF8) + 24) + 32) + 384);
        v97 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
        v78 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v77 + 232), &v97);
        v4 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(*(**v76 + 32), v76, *v78, v88, v89);
        if (v88 != v90)
        {
          free(v88);
        }

        result = MEMORY[0x25F891030](__p[0], 8);
      }

      else
      {
        v75 = mlir::SymbolRefAttr::get(v47, 0, 0, v55);
        result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v75);
        v4 = result;
        a3 = v85;
      }
    }

    *a3 = v4;
    v10 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v10;
  v79 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1232);
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>();
    *algn_27FC174E8 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface]";
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

void *std::deque<mlir::Operation *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<mlir::Operation *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<mlir::Operation *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<mlir::Operation *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<mlir::Operation **>::emplace_back<mlir::Operation **&>(a1, &v10);
}

void *std::__split_buffer<mlir::Operation **>::emplace_back<mlir::Operation **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *std::__split_buffer<mlir::Operation **>::emplace_back<mlir::Operation **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<mlir::Operation **>::emplace_front<mlir::Operation **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

const void **std::__split_buffer<mlir::Operation **>::emplace_front<mlir::Operation **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Operation **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::assignRemote(a1, a2);
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

double llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::assignRemote(uint64_t a1, uint64_t a2)
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

void llvm::SmallVectorTemplateBase<mlir::TypedAttr,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>,mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>::LookupBucketFor<mlir::TypedAttr>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

_OWORD *llvm::DenseMap<mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>::grow(uint64_t a1, int a2)
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
      v11 = 16 * v10;
      do
      {
        *result++ = xmmword_25D0A0570;
        v11 -= 16;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 16 * v3;
      v13 = v4;
      do
      {
        v14 = *v13;
        if ((*v13 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v17 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>,mlir::TypedAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::TypedAttr,void>,llvm::detail::DenseSetPair<mlir::TypedAttr>>::LookupBucketFor<mlir::TypedAttr>(*a1, *(a1 + 16), v14, &v17);
          *v17 = *v13;
          ++*(a1 + 8);
        }

        v13 += 2;
        v12 -= 16;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 16 * v15;
    do
    {
      *result++ = xmmword_25D0A0570;
      v16 -= 16;
    }

    while (v16);
  }

  return result;
}

uint64_t std::deque<mlir::Operation *>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<mlir::Operation **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<mlir::Operation **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t ODIE::Compiler::Utils::CoreKernelsTypeBridges::makeInputValues(uint64_t a1, uint64_t a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 68);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v11 = v13;
  v12 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v11, v3, 0, v3, v4);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if (v11 != v13)
  {
    free(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return OdieValues;
}

uint64_t ODIE::Compiler::Utils::CoreKernelsTypeBridges::anonymous namespace::makeOdieValues(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v92 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *a1;
    v77 = *a3;
    v78 = *(a3 + 16);
    v79 = *(a3 + 32);
    v5 = *(*a1 + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0xFFFFFFFFFFFFFFF8) == 0 || *(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      if ((~v5 & 7) != 0)
      {
        v7 = *a1;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v8 = *(v7 + 8) & 7;
        if (v8 == 6)
        {
          v9 = (v7 + 24 * *(v7 + 16) + 120);
        }

        else
        {
          v9 = (v7 + 16 * v8 + 16);
        }
      }

      else
      {
        v9 = 0;
      }

      v82 = "Op has an operand with non-ranked tensor type.\n";
      v84 = 259;
      mlir::Operation::emitError(&v88, v9, &v82);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v88 = *a3;
    v89 = v10;
    v90 = *(a3 + 32);
    v82 = 0;
    v83 = 0;
    *&v88 = &v82;
    if ((~*(v4 + 8) & 7) != 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      goto LABEL_34;
    }

    v13 = *(v12 + 8) & 7;
    if (v13 == 6)
    {
      v14 = v12 + 24 * *(v12 + 16);
      v15 = v14 + 120;
      if (v14 == -120)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v15 = v12 + 16 * v13 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v88, v15))
    {
LABEL_34:
      v25 = 0;
      v24 = 0;
LABEL_58:
      v88 = v77;
      v89 = v78;
      v90 = v79;
      v86 = 0;
      ODIE::Common::NDArrayValue::create(&v88, NDArrayType, v24, v25, &v86, &v80);
      if ((v81 & 1) == 0)
      {
        ODIE::Platform::abort(v41);
      }

      if (v86 <= 2)
      {
        (off_286E77180[v86])(&v87);
      }

LABEL_13:
      operator new();
    }

    v76 = NDArrayType;
    v16 = *(*v82 + 136);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v18 = v82;
    }

    else
    {
      v18 = 0;
    }

    v85 = v18;
    if (v18)
    {
      v19 = (*(v83 + 16))();
      v21 = (*(v20 + 8))(v20, v19);
      v22 = *(*v21 + 136);
      if (v22 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        v88 = v77;
        v89 = v78;
        v90 = v79;
        v24 = odie_alloc_aligned(&v88, v26, 8, 0);
        v80 = v18;
        mlir::DenseElementsAttr::tryGetValues<float,void>(&v80, &v88);
        v27 = v89;
        v28 = v91;
        if (v89 != v91)
        {
          v29 = v88;
          v30 = BYTE8(v88);
          v31 = v24;
          do
          {
            if (v30)
            {
              v32 = 0;
            }

            else
            {
              v32 = v27;
            }

            *v31++ = *(v29 + 4 * v32);
            ++v27;
          }

          while (v28 != v27);
        }

        goto LABEL_56;
      }

      if (v22 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v33 = v21[2] & 0x3FFFFFFF;
        if (v33 <= 0xF)
        {
          if (v33 == 1)
          {
            v63 = *(v85 + 8);
            v64 = (*(*(v85 + 16) + 24))();
            if (v65)
            {
              v66 = 8 * v65;
              v67 = 1;
              do
              {
                v68 = *v64++;
                v67 *= v68;
                v66 -= 8;
              }

              while (v66);
              if (!v67)
              {
                mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v85, &v88);
                if (v89 != v91)
                {
                  if (BYTE8(v88))
                  {
                    v69 = 0;
                  }

                  else
                  {
                    v69 = v89;
                  }

                  v70 = (*(v88 + (v69 >> 3)) >> (v69 & 7)) & 1;
                  operator new();
                }

                v88 = v77;
                v89 = v78;
                v90 = v79;
                v24 = odie_alloc_aligned(&v88, v71, 8, 0);
                NDArrayType = v76;
                goto LABEL_57;
              }

              if (v67 < 0)
              {
                std::vector<unsigned char>::__throw_length_error[abi:nn200100]();
              }
            }

            operator new();
          }

          if (v33 == 8)
          {
            v88 = v77;
            v89 = v78;
            v90 = v79;
            v24 = odie_alloc_aligned(&v88, v42, 8, 0);
            v80 = v18;
            mlir::DenseElementsAttr::tryGetValues<signed char,void>(&v80, &v88);
            v43 = v89;
            v44 = v91;
            if (v89 != v91)
            {
              v45 = v88;
              v46 = BYTE8(v88);
              v47 = v24;
              do
              {
                if (v46)
                {
                  v48 = 0;
                }

                else
                {
                  v48 = v43;
                }

                *v47++ = *(v45 + v48);
                ++v43;
              }

              while (v44 != v43);
            }

            goto LABEL_56;
          }
        }

        else
        {
          switch(v33)
          {
            case 0x10u:
              v88 = v77;
              v89 = v78;
              v90 = v79;
              v24 = odie_alloc_aligned(&v88, v49, 8, 0);
              v80 = v18;
              mlir::DenseElementsAttr::tryGetValues<short,void>(&v80, &v88);
              v50 = v89;
              v51 = v91;
              if (v89 != v91)
              {
                v52 = v88;
                v53 = BYTE8(v88);
                v54 = v24;
                do
                {
                  if (v53)
                  {
                    v55 = 0;
                  }

                  else
                  {
                    v55 = v50;
                  }

                  *v54++ = *(v52 + 2 * v55);
                  ++v50;
                }

                while (v51 != v50);
              }

              goto LABEL_56;
            case 0x40u:
              v88 = v77;
              v89 = v78;
              v90 = v79;
              v24 = odie_alloc_aligned(&v88, v56, 8, 0);
              v80 = v18;
              mlir::DenseElementsAttr::tryGetValues<long long,void>(&v80, &v88);
              v57 = v89;
              v58 = v91;
              if (v89 != v91)
              {
                v59 = v88;
                v60 = BYTE8(v88);
                v61 = v24;
                do
                {
                  if (v60)
                  {
                    v62 = 0;
                  }

                  else
                  {
                    v62 = v57;
                  }

                  *v61++ = *(v59 + 8 * v62);
                  ++v57;
                }

                while (v58 != v57);
              }

              goto LABEL_56;
            case 0x20u:
              v88 = v77;
              v89 = v78;
              v90 = v79;
              v24 = odie_alloc_aligned(&v88, v34, 8, 0);
              v80 = v18;
              mlir::DenseElementsAttr::tryGetValues<int,void>(&v80, &v88);
              v35 = v89;
              v36 = v91;
              if (v89 != v91)
              {
                v37 = v88;
                v38 = BYTE8(v88);
                v39 = v24;
                do
                {
                  if (v38)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = v35;
                  }

                  *v39++ = *(v37 + 4 * v40);
                  ++v35;
                }

                while (v36 != v35);
              }

              goto LABEL_56;
          }
        }
      }

      else if (v22 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
      {
        v88 = v77;
        v89 = v78;
        v90 = v79;
        v24 = odie_alloc_aligned(&v88, v23, 8, 0);
        _ZN4ODIE8Compiler5Utils22CoreKernelsTypeBridges12_GLOBAL__N_114copyValuesIntoIDF16_EEvN4mlir17DenseElementsAttrEPv(v18, v24);
LABEL_56:
        NDArrayType = v76;
LABEL_57:
        v25 = *(NDArrayType + 16);
        goto LABEL_58;
      }
    }

    else if (*(*v82 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v24 = *(*(v82 + 3) + 16);
      goto LABEL_56;
    }

    v24 = 0;
    goto LABEL_56;
  }

  v72 = *(a3 + 16);
  v88 = *a3;
  v89 = v72;
  v90 = *(a3 + 32);
  v73 = odie_alloc_aligned(&v88, 0, 8, 0);
  v74 = *MEMORY[0x277D85DE8];
  return v73;
}

uint64_t ODIE::Compiler::Utils::CoreKernelsTypeBridges::makeOutputValues(uint64_t a1, uint64_t a2)
{
  v35[5] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 36);
  v27 = a1 - 16;
  v28 = v3;
  if (v3)
  {
    v4 = a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  if (!v3)
  {
LABEL_22:
    v24 = *(a2 + 16);
    v31 = *a2;
    v32 = v24;
    v33 = *(a2 + 32);
    v23 = odie_alloc_aligned(&v31, 0, 8, 0);
    goto LABEL_23;
  }

  v6 = 0;
  v7 = v4;
  while (1)
  {
    v8 = v4;
    if (v6)
    {
      v9 = *(a1 - 8) & 7;
      v10 = v27;
      v11 = v6;
      if (v9 == 6)
      {
        goto LABEL_10;
      }

      v12 = (5 - v9);
      v8 = v7;
      v11 = v6 - v12;
      if (v6 > v12)
      {
        v10 = v4 - 16 * v12;
LABEL_10:
        v8 = v10 - 24 * v11;
      }
    }

    v13 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v13 || *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      break;
    }

    v14 = *(a2 + 16);
    v31 = *a2;
    v32 = v14;
    v33 = *(a2 + 32);
    v16 = *(NDArrayType + 16);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = NDArrayType;
      v18 = *(a2 + 16);
      v31 = *a2;
      v32 = v18;
      v33 = *(a2 + 32);
      v19 = odie_alloc_aligned(&v31, v16, 1, 0);
      v20 = *(v17 + 16);
      v21 = *(a2 + 16);
      v31 = *a2;
      v32 = v21;
      v33 = *(a2 + 32);
      v34 = 0;
      ODIE::Common::NDArrayValue::create(&v31, v17, v19, v20, &v34, &v29);
      if (v30)
      {
        if (v34 <= 2)
        {
          (off_286E77180[v34])(v35);
        }

        operator new();
      }

      ODIE::Platform::abort(v22);
    }

    ++v6;
    v7 -= 16;
    if (v28 == v6)
    {
      goto LABEL_22;
    }
  }

  v23 = 0;
LABEL_23:
  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t ODIE::Compiler::Utils::CoreKernelsTypeBridges::anonymous namespace::makeNDArrayType(void *a1, __int128 *a2)
{
  v4 = a1[3];
  v5 = *(*v4 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v10 = a2[1];
      v40 = *a2;
      v41 = v10;
      v42 = *(a2 + 4);
      v8 = 69;
    }

    else
    {
      if (v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
      {
        v11 = a2[1];
        v40 = *a2;
        v41 = v11;
        v42 = *(a2 + 4);
        v8 = 70;
LABEL_11:
        v9 = 8;
        goto LABEL_37;
      }

      if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v6 = 0;
        goto LABEL_39;
      }

      v6 = 0;
      v12 = v4[2];
      v13 = v12 & 0x3FFFFFFF;
      if ((v12 & 0x3FFFFFFF) <= 7)
      {
        if (v13 == 1)
        {
          v20 = a2[1];
          v40 = *a2;
          v41 = v20;
          v42 = *(a2 + 4);
          if (v12 >> 30)
          {
            v8 = 32;
          }

          else
          {
            v8 = 16;
          }
        }

        else
        {
          if (v13 == 2)
          {
            v23 = a2[1];
            v40 = *a2;
            v41 = v23;
            v42 = *(a2 + 4);
            v16 = v12 >> 30 == 2;
            v17 = 17;
            v18 = 33;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_39;
            }

            v15 = a2[1];
            v40 = *a2;
            v41 = v15;
            v42 = *(a2 + 4);
            v16 = v12 >> 30 == 2;
            v17 = 19;
            v18 = 35;
          }

          if (v16)
          {
            v8 = v18;
          }

          else
          {
            v8 = v17;
          }
        }

        goto LABEL_36;
      }

      if ((v12 & 0x3FFFFFFF) <= 0x1F)
      {
        if (v13 != 8)
        {
          if (v13 != 16)
          {
            goto LABEL_39;
          }

          v14 = a2[1];
          v40 = *a2;
          v41 = v14;
          v42 = *(a2 + 4);
          if (v12 >> 30 == 2)
          {
            v8 = 40;
          }

          else
          {
            v8 = 24;
          }

          goto LABEL_7;
        }

        v21 = a2[1];
        v40 = *a2;
        v41 = v21;
        v42 = *(a2 + 4);
        if (v12 >> 30 == 2)
        {
          v8 = 39;
        }

        else
        {
          v8 = 23;
        }

LABEL_36:
        v9 = 1;
        goto LABEL_37;
      }

      if (v13 != 32)
      {
        if (v13 != 64)
        {
          goto LABEL_39;
        }

        v19 = a2[1];
        v40 = *a2;
        v41 = v19;
        v42 = *(a2 + 4);
        if (v12 >> 30 == 2)
        {
          v8 = 42;
        }

        else
        {
          v8 = 26;
        }

        goto LABEL_11;
      }

      v22 = a2[1];
      v40 = *a2;
      v41 = v22;
      v42 = *(a2 + 4);
      if (v12 >> 30 == 2)
      {
        v8 = 41;
      }

      else
      {
        v8 = 25;
      }
    }

    v9 = 4;
    goto LABEL_37;
  }

  v7 = a2[1];
  v40 = *a2;
  v41 = v7;
  v42 = *(a2 + 4);
  v8 = 68;
LABEL_7:
  v9 = 2;
LABEL_37:
  ODIE::Common::ScalarType::create(&v40, v8, v9, &v38);
  if ((v39 & 1) == 0)
  {
    ODIE::Platform::abort(v24);
  }

  v6 = v38;
LABEL_39:
  v25 = a1[2];
  v26 = a2[1];
  v40 = *a2;
  v41 = v26;
  v42 = *(a2 + 4);
  v27 = odie_alloc_aligned(&v40, 4 * v25, 4, 0);
  v28 = a2[1];
  v40 = *a2;
  v41 = v28;
  v42 = *(a2 + 4);
  v29 = odie_alloc_aligned(&v40, 4 * v25, 4, 0);
  v30 = a1[2];
  if (v30)
  {
    v31 = 0;
    v32 = a1[1];
    v33 = 8 * v30;
    do
    {
      v34 = *(v32 + 8 * v31);
      if (v34 == 0x8000000000000000)
      {
        LODWORD(v34) = -1;
      }

      v27[v31] = v34;
      *(v29 + 4 * v31) = v31;
      ++v31;
      v33 -= 8;
    }

    while (v33);
  }

  v35 = a2[1];
  v40 = *a2;
  v41 = v35;
  v42 = *(a2 + 4);
  ODIE::Common::NDArrayType::create(&v40, v6, v25, v27, v25, v29, v25, &v38);
  if ((v39 & 1) == 0)
  {
    ODIE::Platform::abort(v36);
  }

  return v38;
}

uint64_t *ODIE::Compiler::Utils::CoreKernelsTypeBridges::createConstAttribute(ODIE::Common::NDArrayType **a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v20 = v7;
  v8 = *a1;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v16);
  }

  ODIE::Common::NDArrayType::getNumElements(v8, &v18);
  if ((v19 & 1) == 0)
  {
    ODIE::Platform::abort(v9);
  }

  v10 = *a1;
  if (*(*a1 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v17);
  }

  v11 = a1[1];
  v12 = *(*(v10 + 3) + 16) * v18;
  v13 = mlir::TensorType::operator mlir::ShapedType(&v20);
  return mlir::ODIE::Compiler::CoreML::createElementsAttr(a3, a4, v13, v14, v11, v12);
}

BOOL ODIE::Compiler::Utils::CoreKernelsTypeBridges::resolveOutputTypes(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v54 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 36))
  {
    v12 = 1;
    goto LABEL_68;
  }

  v9 = *(*(a1 + 48) + 8);
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11)
  {
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    BYTE7(v51) = *(v9 + 24);
    if (v10)
    {
      memmove(&__dst, v11, v10);
    }

    *(&__dst + v10) = 0;
    if ((SBYTE7(v51) & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }
  }

  else
  {
    __dst = 0uLL;
    p_dst = &__dst;
    *&v51 = 0;
  }

  v14 = strlen(p_dst);
  Kernel = ODIE::Registration::KernelRegistryImpl::tryGetKernel(*a2, p_dst, v14);
  v16 = Kernel;
  if (SBYTE7(v51) < 0)
  {
    operator delete(__dst);
    if (!v16)
    {
LABEL_28:
      v12 = 0;
      goto LABEL_68;
    }
  }

  else if (!Kernel)
  {
    goto LABEL_28;
  }

  if (!*(v16 + 64))
  {
    LOWORD(v46) = 257;
    mlir::Operation::emitError(&__dst, a1, v44);
    if (__dst)
    {
      mlir::Diagnostic::operator<<<5ul>(&__dst + 8, "Op: ");
      if (__dst)
      {
        v49[8] = 261;
        v47 = v11;
        v48 = v10;
        mlir::Diagnostic::operator<<(&__dst + 8, &v47);
        if (__dst)
        {
          mlir::Diagnostic::operator<<<50ul>(&__dst + 8, " kernel does not provide a typed allocation hook.");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
    goto LABEL_28;
  }

  v42[1] = 0;
  v42[2] = 0;
  v42[0] = &unk_286E74130;
  v47 = v49;
  v48 = 0x600000000;
  if (a5)
  {
    if ((*(a1 + 46) & 0x80) == 0 || a5 != *(a1 + 68))
    {
      v41 = 257;
      mlir::Operation::emitError(&__dst, a1, &v40);
      if (__dst)
      {
        mlir::Diagnostic::operator<<<5ul>(&__dst + 8, "Op: ");
        if (__dst)
        {
          LOWORD(v46) = 261;
          v44[0] = v11;
          v44[1] = v10;
          mlir::Diagnostic::operator<<(&__dst + 8, v44);
          if (__dst)
          {
            mlir::Diagnostic::operator<<<6ul>(&__dst + 8, " has ");
          }
        }
      }

      if ((*(a1 + 46) & 0x80) != 0)
      {
        v29 = *(a1 + 68);
      }

      else
      {
        v29 = 0;
      }

      LODWORD(v43) = v29;
      v30 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&__dst, &v43);
      if (!*v30)
      {
        goto LABEL_62;
      }

      v27 = v30;
      mlir::Diagnostic::operator<<<33ul>((v30 + 1), " inputs but override inputs has ");
      if (!*v27)
      {
        goto LABEL_62;
      }

      v28 = 5;
      goto LABEL_60;
    }

    *&__dst = &v51;
    *(&__dst + 1) = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&__dst, a4, &a4[8 * a5]);
  }

  else
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v17 = *(a1 + 72);
      v18 = *(a1 + 68);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *&__dst = &v51;
    *(&__dst + 1) = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&__dst, v17, 0, v17, v18);
  }

  llvm::SmallVectorImpl<mlir::Value>::operator=(&v47, &__dst);
  if (__dst != &v51)
  {
    free(__dst);
  }

  v19 = v47;
  v20 = v48;
  (*(v42[0] + 40))(&__dst, v42);
  a5 = v21;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v23 = *(a1 + 68);
  }

  else
  {
    v23 = 0;
  }

  if (v21 == v23)
  {
    (*(v42[0] + 40))(v44, v42);
    if (*(a1 + 36))
    {
      v39 = *(a1 + 36);
      v24 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v24 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        __dst = *v44;
        v51 = v45;
        *&v52 = v46;
        operator new();
      }

      v34 = 0;
    }

    else
    {
      __dst = *v44;
      v51 = v45;
      *&v52 = v46;
      v34 = odie_alloc_aligned(&__dst, 0, 8, 0);
    }

    v52 = 0u;
    memset(v53, 0, sizeof(v53));
    __dst = 0u;
    v51 = 0u;
    ODIE::Common::MallocAllocator::operator odie_memory_allocator_t(v42, &__dst + 1);
    v35 = *(v16 + 80);
    memset(v53 + 8, 0, 72);
    *&v53[0] = v35;
    v36 = *(v16 + 64);
    v44[0] = &__dst;
    v44[1] = a5;
    v45 = OdieValues;
    v46 = v34;
    v12 = v36(v44) == 0;
    goto LABEL_65;
  }

  v41 = 257;
  mlir::Operation::emitError(&__dst, a1, &v40);
  if (__dst)
  {
    mlir::Diagnostic::operator<<<5ul>(&__dst + 8, "Op: ");
    if (__dst)
    {
      LOWORD(v46) = 261;
      v44[0] = v11;
      v44[1] = v10;
      mlir::Diagnostic::operator<<(&__dst + 8, v44);
      if (__dst)
      {
        mlir::Diagnostic::operator<<<6ul>(&__dst + 8, " has ");
      }
    }
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v25 = *(a1 + 68);
  }

  else
  {
    v25 = 0;
  }

  LODWORD(v43) = v25;
  v26 = mlir::InFlightDiagnostic::operator<<<unsigned int>(&__dst, &v43);
  if (*v26)
  {
    v27 = v26;
    mlir::Diagnostic::operator<<<30ul>((v26 + 1), " operands but we constructed ");
    if (*v27)
    {
      v28 = 2;
LABEL_60:
      LODWORD(v44[0]) = v28;
      v44[1] = a5;
      v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v27 + 3), v44, 1);
      v32 = v27[3] + 24 * *(v27 + 8);
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      ++*(v27 + 8);
      if (*v27)
      {
        mlir::Diagnostic::operator<<<9ul>((v27 + 1), " values.");
      }
    }
  }

LABEL_62:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
  v12 = 0;
LABEL_65:
  if (v47 != v49)
  {
    free(v47);
  }

  ODIE::Common::MallocAllocator::~MallocAllocator(v42);
LABEL_68:
  v37 = *MEMORY[0x277D85DE8];
  return v12;
}