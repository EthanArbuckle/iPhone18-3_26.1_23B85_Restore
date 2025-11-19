void anonymous namespace::ExtSIOfExtUI::~ExtSIOfExtUI(_anonymous_namespace_::ExtSIOfExtUI *this)
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

uint64_t anonymous namespace::ExtSIOfExtUI::matchAndRewrite(_anonymous_namespace_::ExtSIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v16[0] = a2;
  v15 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v13[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v13);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
LABEL_18:
        v14[v11] = DefiningOp;
        LODWORD(v15) = v15 + 1;
        v12 = *(v14[1] + 24);
        v13[0] = *(*v14 + 24);
        v13[1] = v12;
        mlir::Builder::getFusedLoc(a3 + 1, v13, 2, 0);
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v14 != v16)
  {
    free(v14);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::ExtSIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(llvm::APFloatBase *a1, void **a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = (a3 + 8);
  v8 = *(a3 + 8);
  v9 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v16, v7);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v16, v7);
  }

  v10 = *a2;
  v14 = 0;
  v11 = llvm::APFloat::convert(v15, v10, 1, &v14);
  if ((v14 & 1) != 0 || v11)
  {
    v17 = 0;
    v19 = 0;
    if (v9 != v16.n128_u64[0])
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v9 == v16.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v18, &v16);
    v19 = 1;
    if (v9 != v16.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v16);
    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v18, &v16);
  v19 = 1;
  if (v9 == v16.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_13:
  llvm::detail::IEEEFloat::~IEEEFloat(&v16);
  if ((v19 & 1) == 0)
  {
LABEL_9:
    *a4 = 0;
    v12 = (a1 + 8);
    v13 = v7;
    if (v9 == *v7)
    {
      goto LABEL_10;
    }

LABEL_15:
    llvm::detail::IEEEFloat::IEEEFloat(v12, v13);
    if (v19 != 1)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_14:
  v12 = (a1 + 8);
  v13 = &v18;
  if (v9 != v18.n128_u64[0])
  {
    goto LABEL_15;
  }

LABEL_10:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v13);
  if (v19 != 1)
  {
    return;
  }

LABEL_16:
  if (v9 == v18.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v18);
  }
}

uint64_t getTypeIfLike<mlir::FloatType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v32 = v1;
    v33 = a1;
    mlir::tensor::ExpandShapeOp::fold();
    a1 = v33;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v32 + 8);
    v4 = *(v32 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v12 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_22:
  result = mlir::getElementTypeOrSelf(a1);
  v15 = *(*result + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  return result;
}

void anonymous namespace::TruncIExtSIToExtSI::~TruncIExtSIToExtSI(_anonymous_namespace_::TruncIExtSIToExtSI *this)
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

uint64_t anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(_anonymous_namespace_::TruncIExtSIToExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v30 = v32;
  v32[0] = a2;
  v31 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v29[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v29);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v29);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = *(DefiningOp + 72);
      v12 = v31;
      if (v31 < HIDWORD(v31))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v12 = v31;
      if (v31 < HIDWORD(v31))
      {
LABEL_15:
        v30[v12] = DefiningOp;
        LODWORD(v31) = v31 + 1;
        if (*(DefiningOp + 36))
        {
          v13 = DefiningOp - 16;
        }

        else
        {
          v13 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
        v29[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v29))
        {
          IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v29);
        }

        else
        {
          IntOrFloatBitWidth = -1;
        }

        if (*(v5 + 9))
        {
          v16 = v5 - 16;
        }

        else
        {
          v16 = 0;
        }

        v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
        v29[0] = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v29))
        {
          if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(v29))
          {
            goto LABEL_38;
          }
        }

        else if (IntOrFloatBitWidth <= -1)
        {
          goto LABEL_38;
        }

        if (*(v5 + 9))
        {
          v18 = v5 - 16;
        }

        else
        {
          v18 = 0;
        }

        v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
        v29[0] = mlir::getElementTypeOrSelf((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v29) && mlir::Type::getIntOrFloatBitWidth(v29))
        {
          if (*(v5 + 9))
          {
            v20 = v5 - 16;
          }

          else
          {
            v20 = 0;
          }

          v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
          v29[0] = mlir::getElementTypeOrSelf((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
          if (mlir::Type::isIntOrFloat(v29))
          {
            v22 = mlir::Type::getIntOrFloatBitWidth(v29);
          }

          else
          {
            v22 = -1;
          }

          v29[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
          if (mlir::Type::isIntOrFloat(v29))
          {
            v27 = mlir::Type::getIntOrFloatBitWidth(v29);
          }

          else
          {
            v27 = -1;
          }

          if (v22 > v27)
          {
            v29[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(v29))
            {
              if (mlir::Type::getIntOrFloatBitWidth(v29))
              {
                v28 = *(v30[1] + 24);
                v29[0] = *(*v30 + 24);
                v29[1] = v28;
                mlir::Builder::getFusedLoc(a3 + 1, v29, 2, 0);
              }
            }
          }

          v23 = *(a3 + 2);
          if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
          {
            goto LABEL_42;
          }

          v24 = *(a2 + 3);
LABEL_41:
          (*(*v23 + 88))(v23, v24, v25, v29);
          goto LABEL_42;
        }

LABEL_38:
        v23 = *(a3 + 2);
        if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
        {
          goto LABEL_42;
        }

        v24 = *(a2 + 3);
        goto LABEL_41;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_42:
  if (v30 != v32)
  {
    free(v30);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'ext, tr' failed to satisfy constraint: ''";
  v7 = 51;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'tr, x' failed to satisfy constraint: ''";
  v7 = 49;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIExtUIToExtUI::~TruncIExtUIToExtUI(_anonymous_namespace_::TruncIExtUIToExtUI *this)
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

uint64_t anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(_anonymous_namespace_::TruncIExtUIToExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v30 = v32;
  v32[0] = a2;
  v31 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v29[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v29);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v29);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = *(DefiningOp + 72);
      v12 = v31;
      if (v31 < HIDWORD(v31))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v12 = v31;
      if (v31 < HIDWORD(v31))
      {
LABEL_15:
        v30[v12] = DefiningOp;
        LODWORD(v31) = v31 + 1;
        if (*(DefiningOp + 36))
        {
          v13 = DefiningOp - 16;
        }

        else
        {
          v13 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
        v29[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v29))
        {
          IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v29);
        }

        else
        {
          IntOrFloatBitWidth = -1;
        }

        if (*(v5 + 9))
        {
          v16 = v5 - 16;
        }

        else
        {
          v16 = 0;
        }

        v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
        v29[0] = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v29))
        {
          if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(v29))
          {
            goto LABEL_38;
          }
        }

        else if (IntOrFloatBitWidth <= -1)
        {
          goto LABEL_38;
        }

        if (*(v5 + 9))
        {
          v18 = v5 - 16;
        }

        else
        {
          v18 = 0;
        }

        v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
        v29[0] = mlir::getElementTypeOrSelf((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v29) && mlir::Type::getIntOrFloatBitWidth(v29))
        {
          if (*(v5 + 9))
          {
            v20 = v5 - 16;
          }

          else
          {
            v20 = 0;
          }

          v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
          v29[0] = mlir::getElementTypeOrSelf((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
          if (mlir::Type::isIntOrFloat(v29))
          {
            v22 = mlir::Type::getIntOrFloatBitWidth(v29);
          }

          else
          {
            v22 = -1;
          }

          v29[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
          if (mlir::Type::isIntOrFloat(v29))
          {
            v27 = mlir::Type::getIntOrFloatBitWidth(v29);
          }

          else
          {
            v27 = -1;
          }

          if (v22 > v27)
          {
            v29[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(v29))
            {
              if (mlir::Type::getIntOrFloatBitWidth(v29))
              {
                v28 = *(v30[1] + 24);
                v29[0] = *(*v30 + 24);
                v29[1] = v28;
                mlir::Builder::getFusedLoc(a3 + 1, v29, 2, 0);
              }
            }
          }

          v23 = *(a3 + 2);
          if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
          {
            goto LABEL_42;
          }

          v24 = *(a2 + 3);
LABEL_41:
          (*(*v23 + 88))(v23, v24, v25, v29);
          goto LABEL_42;
        }

LABEL_38:
        v23 = *(a3 + 2);
        if (!v23 || !mlir::RewriterBase::Listener::classof(v23))
        {
          goto LABEL_42;
        }

        v24 = *(a2 + 3);
        goto LABEL_41;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_42:
  if (v30 != v32)
  {
    free(v30);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'ext, tr' failed to satisfy constraint: ''";
  v7 = 51;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'tr, x' failed to satisfy constraint: ''";
  v7 = 49;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrSIToTrunciShrUI::~TruncIShrSIToTrunciShrUI(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this)
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

uint64_t anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v51[4] = *MEMORY[0x277D85DE8];
  v49 = v51;
  v51[0] = a2;
  v50 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ElementTypeOrSelf = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRSIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_12:
        v11 = v10;
        v12 = *(*v8 + 88);
        v13 = &ElementTypeOrSelf;
LABEL_13:
        v12(v8, v9, v11, v13);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v15 = *(DefiningOp + 72);
    ElementTypeOrSelf = *(v15 + 56);
    v16 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
    if (!v16)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v17 = v16;
    v46 = 0;
    v47 = &v46;
    ElementTypeOrSelf = (v16 - 16);
    v18 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
    if (!v18 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v47, v18) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v17 + 24);
        v12 = *(*v8 + 88);
        v13 = &ElementTypeOrSelf;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v19 = v46;
    ElementTypeOrSelf = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'TypedAttr instance'";
    v44 = 167;
    v20 = *v46;
    {
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    else
    {
      mlir::arith::AddUIExtendedOp::fold();
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_38;
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
    if (v24 != &v22[2 * v23] && *v24 == v21 && v24[1])
    {
      if (v50 >= HIDWORD(v50))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v49[v50] = v17;
      v30 = v50 + 1;
      LODWORD(v50) = v30;
      if (v30 >= HIDWORD(v50))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v49[v30] = v7;
      LODWORD(v50) = v50 + 1;
      LODWORD(v44) = 1;
      ElementTypeOrSelf = 0;
      v47 = &ElementTypeOrSelf;
      if (!v19)
      {
        goto LABEL_78;
      }

      if ((mlir::detail::constant_int_value_binder::match(&v47, v19) & 1) == 0)
      {
        if (v44 >= 0x41 && ElementTypeOrSelf)
        {
          MEMORY[0x259C63150](ElementTypeOrSelf, 0x1000C8000313F17);
        }

        goto LABEL_78;
      }

      v41 = v44;
      v42 = ElementTypeOrSelf;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v15 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
      }

      else
      {
        IntOrFloatBitWidth = -1;
      }

      v40 = IntOrFloatBitWidth;
      if (*(v5 + 9))
      {
        v32 = v5 - 16;
      }

      else
      {
        v32 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
      {
        v34 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
      }

      else
      {
        v34 = -1;
      }

      LODWORD(v48) = 1;
      v47 = 0;
      ElementTypeOrSelf = &v47;
      if (mlir::detail::constant_int_value_binder::match(&ElementTypeOrSelf, v19))
      {
        LODWORD(v44) = v48;
        ElementTypeOrSelf = v47;
        LOBYTE(v45) = 1;
      }

      else
      {
        LOBYTE(ElementTypeOrSelf) = 0;
        LOBYTE(v45) = 0;
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x259C63150](v47, 0x1000C8000313F17);
        }
      }

      v35 = v44;
      if (v44 >= 0x41)
      {
        if (v35 - llvm::APInt::countLeadingZerosSlowCase(&ElementTypeOrSelf) > 0x40)
        {
          v37 = 1;
          goto LABEL_69;
        }

        p_ElementTypeOrSelf = ElementTypeOrSelf;
      }

      else
      {
        p_ElementTypeOrSelf = &ElementTypeOrSelf;
      }

      v37 = *p_ElementTypeOrSelf != v40 - v34;
LABEL_69:
      if (v35 >= 0x41 && (v45 & 1) != 0 && ElementTypeOrSelf)
      {
        MEMORY[0x259C63150](ElementTypeOrSelf, 0x1000C8000313F17);
      }

      if (v41 >= 0x41 && v42)
      {
        MEMORY[0x259C63150](v42, 0x1000C8000313F17);
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (!v37)
      {
LABEL_76:
        v38 = *(v49[1] + 24);
        ElementTypeOrSelf = *(*v49 + 24);
        v44 = v38;
        mlir::Builder::getFusedLoc(a3 + 1, &ElementTypeOrSelf, 2, 0);
      }

LABEL_78:
      v39 = *(a3 + 2);
      if (v39 && mlir::RewriterBase::Listener::classof(v39))
      {
      }

      goto LABEL_14;
    }

LABEL_38:
    v47 = &ElementTypeOrSelf;
    v8 = *(a3 + 2);
    if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      v9 = *(v17 + 24);
      v12 = *(*v8 + 88);
      v13 = &v47;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_14:
  if (v49 != v51)
  {
    free(v49);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::ShRUIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::TruncIOp,mlir::IntegerType &,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::TypeRange::TypeRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::TruncIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ShRSIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op2->getResult(0), ::mlir::m_Constant(&arg2_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization5(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ****a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v10 = 261;
  v9[0] = v3;
  v9[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v9);
  v5 = *(v4 + 16);
  v11.n128_u32[0] = 3;
  v11.n128_u64[1] = ": TypedAttr instance";
  v12 = 20;
  v6 = *(v4 + 24);
  if (v6 >= *(v4 + 28))
  {
    if (v5 > &v11 || v5 + 24 * v6 <= &v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = (v5 + 24 * *(v4 + 24));
  result = v11;
  v7[1].n128_u64[0] = v12;
  *v7 = result;
  ++*(v4 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, tr, c0' failed to satisfy constraint: ''";
  v7 = 53;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrUIMulIToMulSIExtended::~TruncIShrUIMulIToMulSIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this)
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

uint64_t anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v61 = v63;
  v63[0] = a2;
  v62 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ElementTypeOrSelf = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(DefiningOp + 72) + 24);
  v13 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v13)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  v14 = v13;
  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(v13 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v15)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!mlir::RewriterBase::Listener::classof(v8))
    {
      goto LABEL_13;
    }

    v9 = *(v16 + 24);
    goto LABEL_12;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v17 = *(v15 + 72);
    v18 = v62;
    if (v62 < HIDWORD(v62))
    {
      goto LABEL_35;
    }

LABEL_95:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = 0;
  v18 = v62;
  if (v62 >= HIDWORD(v62))
  {
    goto LABEL_95;
  }

LABEL_35:
  *(v61 + v18) = v15;
  LODWORD(v62) = v62 + 1;
  ElementTypeOrSelf = *(*(v14 + 72) + 56);
  v19 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (v19)
  {
    v20 = v19;
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        goto LABEL_13;
      }

      v9 = *(v20 + 24);
      goto LABEL_12;
    }

    if ((*(v19 + 46) & 0x80) != 0)
    {
      v21 = *(v19 + 72);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v61, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v61, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    InherentAttr = mlir::Operation::getInherentAttr(v14, "overflowFlags", 13);
    if (v23)
    {
LABEL_45:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      if (v62 >= HIDWORD(v62))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v61 + v62) = v14;
      LODWORD(v62) = v62 + 1;
      ElementTypeOrSelf = *(*(v7 + 72) + 56);
      v24 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
      if (v24)
      {
        v25 = v24;
        v53 = &p_ElementTypeOrSelf;
        p_ElementTypeOrSelf = 0;
        ElementTypeOrSelf = (v24 - 16);
        v26 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
        if (v26 && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v53, v26) & 1) != 0)
        {
          v27 = p_ElementTypeOrSelf;
          if (v62 >= HIDWORD(v62))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v61 + v62) = v25;
          v28 = v62 + 1;
          LODWORD(v62) = v28;
          if (v28 >= HIDWORD(v62))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v61 + v28) = v7;
          LODWORD(v62) = v62 + 1;
          if (*(v5 + 9))
          {
            v29 = v5 - 16;
          }

          else
          {
            v29 = 0;
          }

          v30 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if ((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v30 && (*(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v30)
          {
            if (*(v14 + 36))
            {
              v31 = v14 - 16;
            }

            else
            {
              v31 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              IntOrFloatBitWidth = -1;
            }

            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              v37 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              v37 = -1;
            }

            if (IntOrFloatBitWidth > v37)
            {
              ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
              {
                if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf))
                {
                  LODWORD(v57) = 1;
                  ElementTypeOrSelf = 0;
                  p_ElementTypeOrSelf = &ElementTypeOrSelf;
                  if (v27)
                  {
                    v38 = mlir::detail::constant_int_value_binder::match(&p_ElementTypeOrSelf, v27);
                    v39 = v57;
                    if (v38)
                    {
                      v52 = ElementTypeOrSelf;
                      if (*(v14 + 36))
                      {
                        v40 = v14 - 16;
                      }

                      else
                      {
                        v40 = 0;
                      }

                      v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v41 + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v42 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v42 = -1;
                      }

                      v51 = v42;
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v43 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v43 = -1;
                      }

                      LODWORD(v55) = 1;
                      p_ElementTypeOrSelf = 0;
                      ElementTypeOrSelf = &p_ElementTypeOrSelf;
                      v44 = mlir::detail::constant_int_value_binder::match(&ElementTypeOrSelf, v27);
                      if (v44)
                      {
                        LODWORD(v57) = v55;
                        ElementTypeOrSelf = p_ElementTypeOrSelf;
                        LOBYTE(v58) = 1;
                      }

                      else
                      {
                        LOBYTE(ElementTypeOrSelf) = 0;
                        LOBYTE(v58) = 0;
                        if (v55 >= 0x41 && p_ElementTypeOrSelf)
                        {
                          MEMORY[0x259C63150](p_ElementTypeOrSelf, 0x1000C8000313F17);
                        }
                      }

                      v45 = v57;
                      if (v57 >= 0x41)
                      {
                        if (v45 - llvm::APInt::countLeadingZerosSlowCase(&ElementTypeOrSelf) > 0x40)
                        {
                          v47 = 1;
LABEL_111:
                          v48 = v44 ^ 1;
                          if (v45 < 0x41)
                          {
                            v48 = 1;
                          }

                          if ((v48 & 1) == 0 && ElementTypeOrSelf)
                          {
                            MEMORY[0x259C63150](ElementTypeOrSelf, 0x1000C8000313F17);
                          }

                          if (v39 >= 0x41 && v52)
                          {
                            MEMORY[0x259C63150](v52, 0x1000C8000313F17);
                            if (!v47)
                            {
                              goto LABEL_119;
                            }
                          }

                          else if (!v47)
                          {
LABEL_119:
                            v49 = *(*(v61 + 1) + 24);
                            ElementTypeOrSelf = *(*v61 + 24);
                            v57 = v49;
                            v50 = *(*(v61 + 3) + 24);
                            v58 = *(*(v61 + 2) + 24);
                            v59 = v50;
                            v60 = *(*(v61 + 4) + 24);
                            mlir::Builder::getFusedLoc(a3 + 1, &ElementTypeOrSelf, 5, 0);
                          }

                          goto LABEL_121;
                        }

                        v46 = ElementTypeOrSelf;
                      }

                      else
                      {
                        v46 = &ElementTypeOrSelf;
                      }

                      v47 = *v46 != v51 - v43;
                      goto LABEL_111;
                    }

                    if (v57 >= 0x41 && ElementTypeOrSelf)
                    {
                      MEMORY[0x259C63150](ElementTypeOrSelf, 0x1000C8000313F17);
                    }
                  }

LABEL_121:
                  v34 = *(a3 + 2);
                  if (!v34 || !mlir::RewriterBase::Listener::classof(v34))
                  {
                    goto LABEL_13;
                  }

                  v35 = *(a2 + 3);
                  goto LABEL_90;
                }
              }
            }

            v34 = *(a3 + 2);
            if (!v34 || !mlir::RewriterBase::Listener::classof(v34))
            {
              goto LABEL_13;
            }

            v35 = *(a2 + 3);
          }

          else
          {
            v34 = *(a3 + 2);
            if (!v34 || !mlir::RewriterBase::Listener::classof(v34))
            {
              goto LABEL_13;
            }

            v35 = *(a2 + 3);
          }

LABEL_90:
          (*(*v34 + 88))(v34, v35, v36, &ElementTypeOrSelf);
          goto LABEL_13;
        }

        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v25 + 24);
      }

      else
      {
        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v7 + 24);
      }

LABEL_12:
      (*(*v8 + 88))(v8, v9, v10, &ElementTypeOrSelf);
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

LABEL_44:
    InherentAttr = mlir::DictionaryAttr::get(v14 + 56, "overflowFlags", 0xDuLL);
    goto LABEL_45;
  }

LABEL_14:
  if (v61 != v63)
  {
    free(v61);
  }

  return v11;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MulSIExtendedOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ShRUIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp2 is not ::mlir::arith::MulIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp2";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp2";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'tr, x, y' failed to satisfy constraint: ''";
  v7 = 52;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'mul, x' failed to satisfy constraint: ''";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'mul, x, c0' failed to satisfy constraint: ''";
  v7 = 54;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrUIMulIToMulUIExtended::~TruncIShrUIMulIToMulUIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this)
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

uint64_t anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v61 = v63;
  v63[0] = a2;
  v62 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ElementTypeOrSelf = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(DefiningOp + 72) + 24);
  v13 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v13)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  v14 = v13;
  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(v13 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v15)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!mlir::RewriterBase::Listener::classof(v8))
    {
      goto LABEL_13;
    }

    v9 = *(v16 + 24);
    goto LABEL_12;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v17 = *(v15 + 72);
    v18 = v62;
    if (v62 < HIDWORD(v62))
    {
      goto LABEL_35;
    }

LABEL_95:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = 0;
  v18 = v62;
  if (v62 >= HIDWORD(v62))
  {
    goto LABEL_95;
  }

LABEL_35:
  *(v61 + v18) = v15;
  LODWORD(v62) = v62 + 1;
  ElementTypeOrSelf = *(*(v14 + 72) + 56);
  v19 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (v19)
  {
    v20 = v19;
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        goto LABEL_13;
      }

      v9 = *(v20 + 24);
      goto LABEL_12;
    }

    if ((*(v19 + 46) & 0x80) != 0)
    {
      v21 = *(v19 + 72);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v61, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v61, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    InherentAttr = mlir::Operation::getInherentAttr(v14, "overflowFlags", 13);
    if (v23)
    {
LABEL_45:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      if (v62 >= HIDWORD(v62))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v61 + v62) = v14;
      LODWORD(v62) = v62 + 1;
      ElementTypeOrSelf = *(*(v7 + 72) + 56);
      v24 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
      if (v24)
      {
        v25 = v24;
        v53 = &p_ElementTypeOrSelf;
        p_ElementTypeOrSelf = 0;
        ElementTypeOrSelf = (v24 - 16);
        v26 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
        if (v26 && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v53, v26) & 1) != 0)
        {
          v27 = p_ElementTypeOrSelf;
          if (v62 >= HIDWORD(v62))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v61 + v62) = v25;
          v28 = v62 + 1;
          LODWORD(v62) = v28;
          if (v28 >= HIDWORD(v62))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v61 + v28) = v7;
          LODWORD(v62) = v62 + 1;
          if (*(v5 + 9))
          {
            v29 = v5 - 16;
          }

          else
          {
            v29 = 0;
          }

          v30 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if ((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v30 && (*(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v30)
          {
            if (*(v14 + 36))
            {
              v31 = v14 - 16;
            }

            else
            {
              v31 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0);
            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              IntOrFloatBitWidth = -1;
            }

            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              v37 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              v37 = -1;
            }

            if (IntOrFloatBitWidth > v37)
            {
              ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
              {
                if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf))
                {
                  LODWORD(v57) = 1;
                  ElementTypeOrSelf = 0;
                  p_ElementTypeOrSelf = &ElementTypeOrSelf;
                  if (v27)
                  {
                    v38 = mlir::detail::constant_int_value_binder::match(&p_ElementTypeOrSelf, v27);
                    v39 = v57;
                    if (v38)
                    {
                      v52 = ElementTypeOrSelf;
                      if (*(v14 + 36))
                      {
                        v40 = v14 - 16;
                      }

                      else
                      {
                        v40 = 0;
                      }

                      v41 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v41 + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v42 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v42 = -1;
                      }

                      v51 = v42;
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v43 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v43 = -1;
                      }

                      LODWORD(v55) = 1;
                      p_ElementTypeOrSelf = 0;
                      ElementTypeOrSelf = &p_ElementTypeOrSelf;
                      v44 = mlir::detail::constant_int_value_binder::match(&ElementTypeOrSelf, v27);
                      if (v44)
                      {
                        LODWORD(v57) = v55;
                        ElementTypeOrSelf = p_ElementTypeOrSelf;
                        LOBYTE(v58) = 1;
                      }

                      else
                      {
                        LOBYTE(ElementTypeOrSelf) = 0;
                        LOBYTE(v58) = 0;
                        if (v55 >= 0x41 && p_ElementTypeOrSelf)
                        {
                          MEMORY[0x259C63150](p_ElementTypeOrSelf, 0x1000C8000313F17);
                        }
                      }

                      v45 = v57;
                      if (v57 >= 0x41)
                      {
                        if (v45 - llvm::APInt::countLeadingZerosSlowCase(&ElementTypeOrSelf) > 0x40)
                        {
                          v47 = 1;
LABEL_111:
                          v48 = v44 ^ 1;
                          if (v45 < 0x41)
                          {
                            v48 = 1;
                          }

                          if ((v48 & 1) == 0 && ElementTypeOrSelf)
                          {
                            MEMORY[0x259C63150](ElementTypeOrSelf, 0x1000C8000313F17);
                          }

                          if (v39 >= 0x41 && v52)
                          {
                            MEMORY[0x259C63150](v52, 0x1000C8000313F17);
                            if (!v47)
                            {
                              goto LABEL_119;
                            }
                          }

                          else if (!v47)
                          {
LABEL_119:
                            v49 = *(*(v61 + 1) + 24);
                            ElementTypeOrSelf = *(*v61 + 24);
                            v57 = v49;
                            v50 = *(*(v61 + 3) + 24);
                            v58 = *(*(v61 + 2) + 24);
                            v59 = v50;
                            v60 = *(*(v61 + 4) + 24);
                            mlir::Builder::getFusedLoc(a3 + 1, &ElementTypeOrSelf, 5, 0);
                          }

                          goto LABEL_121;
                        }

                        v46 = ElementTypeOrSelf;
                      }

                      else
                      {
                        v46 = &ElementTypeOrSelf;
                      }

                      v47 = *v46 != v51 - v43;
                      goto LABEL_111;
                    }

                    if (v57 >= 0x41 && ElementTypeOrSelf)
                    {
                      MEMORY[0x259C63150](ElementTypeOrSelf, 0x1000C8000313F17);
                    }
                  }

LABEL_121:
                  v34 = *(a3 + 2);
                  if (!v34 || !mlir::RewriterBase::Listener::classof(v34))
                  {
                    goto LABEL_13;
                  }

                  v35 = *(a2 + 3);
                  goto LABEL_90;
                }
              }
            }

            v34 = *(a3 + 2);
            if (!v34 || !mlir::RewriterBase::Listener::classof(v34))
            {
              goto LABEL_13;
            }

            v35 = *(a2 + 3);
          }

          else
          {
            v34 = *(a3 + 2);
            if (!v34 || !mlir::RewriterBase::Listener::classof(v34))
            {
              goto LABEL_13;
            }

            v35 = *(a2 + 3);
          }

LABEL_90:
          (*(*v34 + 88))(v34, v35, v36, &ElementTypeOrSelf);
          goto LABEL_13;
        }

        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v25 + 24);
      }

      else
      {
        v8 = *(a3 + 2);
        if (!v8 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v7 + 24);
      }

LABEL_12:
      (*(*v8 + 88))(v8, v9, v10, &ElementTypeOrSelf);
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

LABEL_44:
    InherentAttr = mlir::DictionaryAttr::get(v14 + 56, "overflowFlags", 0xDuLL);
    goto LABEL_45;
  }

LABEL_14:
  if (v61 != v63)
  {
    free(v61);
  }

  return v11;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MulUIExtendedOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ShRUIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp2 is not ::mlir::arith::MulIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp2";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp2";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'tr, x, y' failed to satisfy constraint: ''";
  v7 = 52;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'mul, x' failed to satisfy constraint: ''";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'mul, x, c0' failed to satisfy constraint: ''";
  v7 = 54;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(llvm::APFloatBase *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = *(**a2 + 16 * ((*(**a2 + 44) >> 23) & 1) + 72);
  if (!v21)
  {
    LOBYTE(v9) = 1;
    v10 = (a3 + 8);
    v13 = *(a3 + 8);
    v12 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v12 != v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v20, v10);
    goto LABEL_6;
  }

  Int = mlir::IntegerAttr::getInt(&v21);
  v9 = 0x400020301uLL >> (8 * Int);
  v11 = *(a3 + 8);
  v10 = (a3 + 8);
  v12 = llvm::APFloatBase::PPCDoubleDouble(Int);
  if (v12 == v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  llvm::detail::IEEEFloat::IEEEFloat(&v20, v10);
LABEL_6:
  v14 = a2[1];
  v18 = 0;
  v15 = llvm::APFloat::convert(v19, v14, v9, &v18);
  if ((v18 & 1) != 0 || v15)
  {
    LOBYTE(v21) = 0;
    v23 = 0;
    if (v12 != v20.n128_u64[0])
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v12 == v20.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v22, &v20);
    v23 = 1;
    if (v12 != v20.n128_u64[0])
    {
      goto LABEL_15;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v22, &v20);
  v23 = 1;
  if (v12 == v20.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_15:
  llvm::detail::IEEEFloat::~IEEEFloat(&v20);
  if ((v23 & 1) == 0)
  {
LABEL_11:
    *a4 = 0;
    v16 = (a1 + 8);
    v17 = v10;
    if (v12 == *v10)
    {
      goto LABEL_12;
    }

LABEL_17:
    llvm::detail::IEEEFloat::IEEEFloat(v16, v17);
    if (v23 != 1)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_16:
  v16 = (a1 + 8);
  v17 = &v22;
  if (v12 != v22.n128_u64[0])
  {
    goto LABEL_17;
  }

LABEL_12:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v17);
  if (v23 != 1)
  {
    return;
  }

LABEL_18:
  if (v12 == v22.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }
}

void anonymous namespace::AndOfExtUI::~AndOfExtUI(_anonymous_namespace_::AndOfExtUI *this)
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

uint64_t anonymous namespace::AndOfExtUI::matchAndRewrite(_anonymous_namespace_::AndOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v23[0] = a2;
  v22 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v20[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v20);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v20);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
LABEL_18:
        v21[v13] = DefiningOp;
        LODWORD(v22) = v22 + 1;
        v20[0] = *(*(v5 + 9) + 56);
        v14 = mlir::Value::getDefiningOp(v20);
        if (!v14)
        {
          v7 = *(a3 + 2);
          if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
          {
            v9 = *(v5 + 3);
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
        {
          v7 = *(a3 + 2);
          if (v7)
          {
            v15 = v14;
            if (mlir::RewriterBase::Listener::classof(v7))
            {
              v9 = *(v15 + 24);
              goto LABEL_12;
            }
          }

          goto LABEL_13;
        }

        if ((*(v14 + 46) & 0x80) != 0)
        {
          v16 = *(v14 + 72);
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
LABEL_28:
            v21[v17] = v14;
            LODWORD(v22) = v22 + 1;
            if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
            {
              v18 = *(v21[1] + 24);
              v20[0] = *(*v21 + 24);
              v20[1] = v18;
              v20[2] = *(v21[2] + 24);
              mlir::Builder::getFusedLoc(a3 + 1, v20, 3, 0);
            }

            v19 = *(a3 + 2);
            if (v19 && mlir::RewriterBase::Listener::classof(v19))
            {
            }

            goto LABEL_13;
          }
        }

        else
        {
          v16 = 0;
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
            goto LABEL_28;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v21 != v23)
  {
    free(v21);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::AndOfExtSI::~AndOfExtSI(_anonymous_namespace_::AndOfExtSI *this)
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

uint64_t anonymous namespace::AndOfExtSI::matchAndRewrite(_anonymous_namespace_::AndOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v23[0] = a2;
  v22 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v20[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v20);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v20);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
LABEL_18:
        v21[v13] = DefiningOp;
        LODWORD(v22) = v22 + 1;
        v20[0] = *(*(v5 + 9) + 56);
        v14 = mlir::Value::getDefiningOp(v20);
        if (!v14)
        {
          v7 = *(a3 + 2);
          if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
          {
            v9 = *(v5 + 3);
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
        {
          v7 = *(a3 + 2);
          if (v7)
          {
            v15 = v14;
            if (mlir::RewriterBase::Listener::classof(v7))
            {
              v9 = *(v15 + 24);
              goto LABEL_12;
            }
          }

          goto LABEL_13;
        }

        if ((*(v14 + 46) & 0x80) != 0)
        {
          v16 = *(v14 + 72);
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
LABEL_28:
            v21[v17] = v14;
            LODWORD(v22) = v22 + 1;
            if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
            {
              v18 = *(v21[1] + 24);
              v20[0] = *(*v21 + 24);
              v20[1] = v18;
              v20[2] = *(v21[2] + 24);
              mlir::Builder::getFusedLoc(a3 + 1, v20, 3, 0);
            }

            v19 = *(a3 + 2);
            if (v19 && mlir::RewriterBase::Listener::classof(v19))
            {
            }

            goto LABEL_13;
          }
        }

        else
        {
          v16 = 0;
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
            goto LABEL_28;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v21 != v23)
  {
    free(v21);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::OrOfExtUI::~OrOfExtUI(_anonymous_namespace_::OrOfExtUI *this)
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

uint64_t anonymous namespace::OrOfExtUI::matchAndRewrite(_anonymous_namespace_::OrOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v23[0] = a2;
  v22 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v20[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v20);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v20);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
LABEL_18:
        v21[v13] = DefiningOp;
        LODWORD(v22) = v22 + 1;
        v20[0] = *(*(v5 + 9) + 56);
        v14 = mlir::Value::getDefiningOp(v20);
        if (!v14)
        {
          v7 = *(a3 + 2);
          if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
          {
            v9 = *(v5 + 3);
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
        {
          v7 = *(a3 + 2);
          if (v7)
          {
            v15 = v14;
            if (mlir::RewriterBase::Listener::classof(v7))
            {
              v9 = *(v15 + 24);
              goto LABEL_12;
            }
          }

          goto LABEL_13;
        }

        if ((*(v14 + 46) & 0x80) != 0)
        {
          v16 = *(v14 + 72);
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
LABEL_28:
            v21[v17] = v14;
            LODWORD(v22) = v22 + 1;
            if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
            {
              v18 = *(v21[1] + 24);
              v20[0] = *(*v21 + 24);
              v20[1] = v18;
              v20[2] = *(v21[2] + 24);
              mlir::Builder::getFusedLoc(a3 + 1, v20, 3, 0);
            }

            v19 = *(a3 + 2);
            if (v19 && mlir::RewriterBase::Listener::classof(v19))
            {
            }

            goto LABEL_13;
          }
        }

        else
        {
          v16 = 0;
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
            goto LABEL_28;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v21 != v23)
  {
    free(v21);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::OrIOp,mlir::Value &,mlir::Value &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::OrIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::OrOfExtSI::~OrOfExtSI(_anonymous_namespace_::OrOfExtSI *this)
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

uint64_t anonymous namespace::OrOfExtSI::matchAndRewrite(_anonymous_namespace_::OrOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v23[0] = a2;
  v22 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v20[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v20);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v20);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v22;
      if (v22 < HIDWORD(v22))
      {
LABEL_18:
        v21[v13] = DefiningOp;
        LODWORD(v22) = v22 + 1;
        v20[0] = *(*(v5 + 9) + 56);
        v14 = mlir::Value::getDefiningOp(v20);
        if (!v14)
        {
          v7 = *(a3 + 2);
          if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
          {
            v9 = *(v5 + 3);
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
        {
          v7 = *(a3 + 2);
          if (v7)
          {
            v15 = v14;
            if (mlir::RewriterBase::Listener::classof(v7))
            {
              v9 = *(v15 + 24);
              goto LABEL_12;
            }
          }

          goto LABEL_13;
        }

        if ((*(v14 + 46) & 0x80) != 0)
        {
          v16 = *(v14 + 72);
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
LABEL_28:
            v21[v17] = v14;
            LODWORD(v22) = v22 + 1;
            if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
            {
              v18 = *(v21[1] + 24);
              v20[0] = *(*v21 + 24);
              v20[1] = v18;
              v20[2] = *(v21[2] + 24);
              mlir::Builder::getFusedLoc(a3 + 1, v20, 3, 0);
            }

            v19 = *(a3 + 2);
            if (v19 && mlir::RewriterBase::Listener::classof(v19))
            {
            }

            goto LABEL_13;
          }
        }

        else
        {
          v16 = 0;
          v17 = v22;
          if (v22 < HIDWORD(v22))
          {
            goto LABEL_28;
          }
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v21 != v23)
  {
    free(v21);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'x, y' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v11 = a2;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v11);
  Width = mlir::FloatType::getWidth(&v11);
  v10 = Width;
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v9);
  }

  v9 = 0;
  v7 = llvm::APFloatBase::PPCDoubleDouble(Width);
  if (v7 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), FloatSemantics);
  }

  llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), FloatSemantics, &v9);
  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  if (v7 == *(a1 + 8))
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt();
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(a1 + 8, a3, 0, 1);
}

uint64_t llvm::APFloat::convertFromAPInt(llvm::APFloatBase *a1, unsigned int *a2, int a3, int a4)
{
  v7 = a1 + 8;
  v8 = *(a1 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {

    llvm::detail::DoubleAPFloat::convertFromAPInt();
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(v7, a2, a3, a4);
}

uint64_t mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v11 = a2;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v11);
  Width = mlir::FloatType::getWidth(&v11);
  v10 = Width;
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v9);
  }

  v9 = 0;
  v7 = llvm::APFloatBase::PPCDoubleDouble(Width);
  if (v7 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), FloatSemantics);
  }

  llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), FloatSemantics, &v9);
  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  if (v7 == *(a1 + 8))
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt();
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(a1 + 8, a3, 1, 1);
}

void anonymous namespace::IndexCastOfIndexCast::~IndexCastOfIndexCast(_anonymous_namespace_::IndexCastOfIndexCast *this)
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

uint64_t anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(_anonymous_namespace_::IndexCastOfIndexCast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v20[0] = a2;
  v19 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v17[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v17);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v19;
      if (v19 < HIDWORD(v19))
      {
LABEL_18:
        *(v18 + v13) = DefiningOp;
        LODWORD(v19) = v19 + 1;
        if (*(v5 + 9))
        {
          v14 = v5 - 16;
        }

        else
        {
          v14 = 0;
        }

        if ((*(*(v12 + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8)) < 8)
        {
          v15 = *(*(v18 + 1) + 24);
          v17[0] = *(*v18 + 24);
          v17[1] = v15;
          mlir::Builder::getFusedLoc(a3 + 1, v17, 2, 0);
        }

        v16 = *(a3 + 2);
        if (v16 && mlir::RewriterBase::Listener::classof(v16))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = v19;
      if (v19 < HIDWORD(v19))
      {
        goto LABEL_18;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v18 != v20)
  {
    free(v18);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::IndexCastOp type";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'res, x' failed to satisfy constraint: ''";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastOfExtSI::~IndexCastOfExtSI(_anonymous_namespace_::IndexCastOfExtSI *this)
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

uint64_t anonymous namespace::IndexCastOfExtSI::matchAndRewrite(_anonymous_namespace_::IndexCastOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v16[0] = a2;
  v15 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v13[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v13);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
LABEL_18:
        v14[v11] = DefiningOp;
        LODWORD(v15) = v15 + 1;
        v12 = *(v14[1] + 24);
        v13[0] = *(*v14 + 24);
        v13[1] = v12;
        mlir::Builder::getFusedLoc(a3 + 1, v13, 2, 0);
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v14 != v16)
  {
    free(v14);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::TypeRange::TypeRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::IndexCastOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastUIOfIndexCastUI::~IndexCastUIOfIndexCastUI(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this)
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

uint64_t anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v20[0] = a2;
  v19 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v17[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v17);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v19;
      if (v19 < HIDWORD(v19))
      {
LABEL_18:
        *(v18 + v13) = DefiningOp;
        LODWORD(v19) = v19 + 1;
        if (*(v5 + 9))
        {
          v14 = v5 - 16;
        }

        else
        {
          v14 = 0;
        }

        if ((*(*(v12 + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8)) < 8)
        {
          v15 = *(*(v18 + 1) + 24);
          v17[0] = *(*v18 + 24);
          v17[1] = v15;
          mlir::Builder::getFusedLoc(a3 + 1, v17, 2, 0);
        }

        v16 = *(a3 + 2);
        if (v16 && mlir::RewriterBase::Listener::classof(v16))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = v19;
      if (v19 < HIDWORD(v19))
      {
        goto LABEL_18;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v18 != v20)
  {
    free(v18);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::IndexCastUIOp type";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'res, x' failed to satisfy constraint: ''";
  v7 = 50;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastUIOfExtUI::~IndexCastUIOfExtUI(_anonymous_namespace_::IndexCastUIOfExtUI *this)
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

uint64_t anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v16[0] = a2;
  v15 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v13[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v13);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
LABEL_18:
        v14[v11] = DefiningOp;
        LODWORD(v15) = v15 + 1;
        v12 = *(v14[1] + 24);
        v13[0] = *(*v14 + 24);
        v13[1] = v12;
        mlir::Builder::getFusedLoc(a3 + 1, v13, 2, 0);
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v14 != v16)
  {
    free(v14);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::IndexCastUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::TypeRange::TypeRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::IndexCastUIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::BitcastOfBitcast::~BitcastOfBitcast(_anonymous_namespace_::BitcastOfBitcast *this)
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

uint64_t anonymous namespace::BitcastOfBitcast::matchAndRewrite(_anonymous_namespace_::BitcastOfBitcast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v16[0] = a2;
  v15 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v13[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v13);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v15;
      if (v15 < HIDWORD(v15))
      {
LABEL_18:
        *(v14 + v11) = DefiningOp;
        LODWORD(v15) = v15 + 1;
        v12 = *(*(v14 + 1) + 24);
        v13[0] = *(*v14 + 24);
        v13[1] = v12;
        mlir::Builder::getFusedLoc(a3 + 1, v13, 2, 0);
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a3 + 2);
  if (v6 && mlir::RewriterBase::Listener::classof(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v14 != v16)
  {
    free(v14);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::BitcastOfBitcast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::BitcastOfBitcast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::BitcastOp type";
  v7 = 46;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::CmpIExtSI::~CmpIExtSI(_anonymous_namespace_::CmpIExtSI *this)
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

uint64_t anonymous namespace::CmpIExtSI::matchAndRewrite(_anonymous_namespace_::CmpIExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 47);
  v27 = 0;
  v29 = v31;
  v31[0] = a2;
  v30 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (!v5 || (InherentAttr = mlir::Operation::getInherentAttr(a2, "predicate", 9), (v8 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "predicate", 9uLL);
  }

  v9 = InherentAttr;
  if (!InherentAttr || (mlir::arith::CmpIPredicateAttr::classof(InherentAttr) & 1) == 0)
  {
    v15 = *(a3 + 2);
    if (!v15 || !mlir::RewriterBase::Listener::classof(v15))
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 3);
LABEL_17:
    (*(*v15 + 88))(v15, v16, v17, v28);
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v27 = v9;
  v28[0] = *(*(v6 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v28);
  if (!DefiningOp)
  {
    v11 = *(a3 + 2);
    if (!v11 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 3);
LABEL_21:
    (*(*v11 + 88))(v11, v13, v14, v28);
    goto LABEL_22;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v11))
    {
      goto LABEL_22;
    }

    v13 = *(v12 + 24);
    goto LABEL_21;
  }

  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v20 = *(DefiningOp + 72);
    v21 = v30;
    if (v30 < HIDWORD(v30))
    {
      goto LABEL_28;
    }

LABEL_47:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v20 = 0;
  v21 = v30;
  if (v30 >= HIDWORD(v30))
  {
    goto LABEL_47;
  }

LABEL_28:
  v29[v21] = DefiningOp;
  LODWORD(v30) = v30 + 1;
  v28[0] = *(*(v6 + 9) + 56);
  v22 = mlir::Value::getDefiningOp(v28);
  if (!v22)
  {
    v11 = *(a3 + 2);
    if (!v11 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 3);
    goto LABEL_21;
  }

  if (*(*(v22 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11)
    {
      goto LABEL_22;
    }

    v23 = v22;
    if (!mlir::RewriterBase::Listener::classof(v11))
    {
      goto LABEL_22;
    }

    v13 = *(v23 + 24);
    goto LABEL_21;
  }

  if ((*(v22 + 46) & 0x80) != 0)
  {
    v24 = *(v22 + 72);
    v25 = v30;
    if (v30 < HIDWORD(v30))
    {
      goto LABEL_38;
    }

LABEL_49:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v24 = 0;
  v25 = v30;
  if (v30 >= HIDWORD(v30))
  {
    goto LABEL_49;
  }

LABEL_38:
  v29[v25] = v22;
  LODWORD(v30) = v30 + 1;
  if ((*(*(v24 + 24) + 8) ^ *(*(v20 + 24) + 8)) >= 8)
  {
    v15 = *(a3 + 2);
    if (!v15 || !mlir::RewriterBase::Listener::classof(v15))
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 3);
    goto LABEL_17;
  }

  if (!mlir::IntegerAttr::getInt(&v27) || mlir::IntegerAttr::getInt(&v27) == 1)
  {
    v26 = *(v29[1] + 24);
    v28[0] = *(*v29 + 24);
    v28[1] = v26;
    v28[2] = *(v29[2] + 24);
    mlir::Builder::getFusedLoc(a3 + 1, v28, 3, 0);
  }

LABEL_23:
  if (v29 != v31)
  {
    free(v29);
  }

  return v18;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "expected op 'arith.cmpi' to have attribute 'predicate' of type '::mlir::arith::CmpIPredicateAttr'";
  v7 = 97;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'a, b' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'pred' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::CmpIExtUI::~CmpIExtUI(_anonymous_namespace_::CmpIExtUI *this)
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

uint64_t anonymous namespace::CmpIExtUI::matchAndRewrite(_anonymous_namespace_::CmpIExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 47);
  v27 = 0;
  v29 = v31;
  v31[0] = a2;
  v30 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (!v5 || (InherentAttr = mlir::Operation::getInherentAttr(a2, "predicate", 9), (v8 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "predicate", 9uLL);
  }

  v9 = InherentAttr;
  if (!InherentAttr || (mlir::arith::CmpIPredicateAttr::classof(InherentAttr) & 1) == 0)
  {
    v15 = *(a3 + 2);
    if (!v15 || !mlir::RewriterBase::Listener::classof(v15))
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 3);
LABEL_17:
    (*(*v15 + 88))(v15, v16, v17, v28);
LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

  v27 = v9;
  v28[0] = *(*(v6 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v28);
  if (!DefiningOp)
  {
    v11 = *(a3 + 2);
    if (!v11 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 3);
LABEL_21:
    (*(*v11 + 88))(v11, v13, v14, v28);
    goto LABEL_22;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = DefiningOp;
    if (!mlir::RewriterBase::Listener::classof(v11))
    {
      goto LABEL_22;
    }

    v13 = *(v12 + 24);
    goto LABEL_21;
  }

  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v20 = *(DefiningOp + 72);
    v21 = v30;
    if (v30 < HIDWORD(v30))
    {
      goto LABEL_28;
    }

LABEL_47:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v20 = 0;
  v21 = v30;
  if (v30 >= HIDWORD(v30))
  {
    goto LABEL_47;
  }

LABEL_28:
  v29[v21] = DefiningOp;
  LODWORD(v30) = v30 + 1;
  v28[0] = *(*(v6 + 9) + 56);
  v22 = mlir::Value::getDefiningOp(v28);
  if (!v22)
  {
    v11 = *(a3 + 2);
    if (!v11 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 3);
    goto LABEL_21;
  }

  if (*(*(v22 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v11 = *(a3 + 2);
    if (!v11)
    {
      goto LABEL_22;
    }

    v23 = v22;
    if (!mlir::RewriterBase::Listener::classof(v11))
    {
      goto LABEL_22;
    }

    v13 = *(v23 + 24);
    goto LABEL_21;
  }

  if ((*(v22 + 46) & 0x80) != 0)
  {
    v24 = *(v22 + 72);
    v25 = v30;
    if (v30 < HIDWORD(v30))
    {
      goto LABEL_38;
    }

LABEL_49:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v24 = 0;
  v25 = v30;
  if (v30 >= HIDWORD(v30))
  {
    goto LABEL_49;
  }

LABEL_38:
  v29[v25] = v22;
  LODWORD(v30) = v30 + 1;
  if ((*(*(v24 + 24) + 8) ^ *(*(v20 + 24) + 8)) >= 8)
  {
    v15 = *(a3 + 2);
    if (!v15 || !mlir::RewriterBase::Listener::classof(v15))
    {
      goto LABEL_22;
    }

    v16 = *(a2 + 3);
    goto LABEL_17;
  }

  if (!mlir::IntegerAttr::getInt(&v27) || mlir::IntegerAttr::getInt(&v27) == 1)
  {
    v26 = *(v29[1] + 24);
    v28[0] = *(*v29 + 24);
    v28[1] = v26;
    v28[2] = *(v29[2] + 24);
    mlir::Builder::getFusedLoc(a3 + 1, v28, 3, 0);
  }

LABEL_23:
  if (v29 != v31)
  {
    free(v29);
  }

  return v18;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && mlir::RewriterBase::Listener::classof(a1))
  {
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "expected op 'arith.cmpi' to have attribute 'predicate' of type '::mlir::arith::CmpIPredicateAttr'";
  v7 = 97;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v7 = 44;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'a, b' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::CmpIExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'pred' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void CmpFIntToFPConst::~CmpFIntToFPConst(CmpFIntToFPConst *this)
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

uint64_t CmpFIntToFPConst::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 56);
  v57 = 0;
  v58[0] = &v57;
  v59 = v5;
  result = mlir::Value::getDefiningOp(&v59);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::FloatAttr>::match(v58, result);
    if (result)
    {
      Value = mlir::FloatAttr::getValue(&v57, &v59);
      v8 = v60;
      v9 = llvm::APFloatBase::PPCDoubleDouble(Value);
      v10 = v61;
      if (v9 != v8)
      {
        v10 = &v59;
      }

      if ((*(v10 + 28) & 7) == 1)
      {
        v11 = 0;
        if (v9 != v8)
        {
LABEL_7:
          llvm::detail::IEEEFloat::~IEEEFloat(&v60);
          return v11;
        }

LABEL_15:
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v60);
        return v11;
      }

      v56 = *(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
      FPMantissaWidth = mlir::FloatType::getFPMantissaWidth(&v56);
      if (FPMantissaWidth < 1)
      {
        goto LABEL_13;
      }

      v13 = FPMantissaWidth;
      v58[0] = *(*(a2 + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(v58);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SIToFPOp,void>::id)
      {
        v16 = 0;
      }

      else
      {
        v58[0] = *(*(a2 + 72) + 24);
        DefiningOp = mlir::Value::getDefiningOp(v58);
        if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::UIToFPOp,void>::id)
        {
          goto LABEL_13;
        }

        v16 = 1;
      }

      v17 = *(*(DefiningOp + 72) + 24);
      v54 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
      v55 = v17;
      Width = mlir::IntegerType::getWidth(&v54);
      v20 = Width;
      v21 = v16 ^ 1;
      if (Width > v13)
      {
        v22 = Width - v21;
        if (v9 == v60)
        {
          v23 = (v61 + 1);
        }

        else
        {
          v23 = &v60;
        }

        v24 = llvm::detail::ilogb(v23, v19);
        if (v24 == 0x7FFFFFFF)
        {
          llvm::APFloat::getLargest(v60, 0, v58);
          v26 = llvm::ilogb(v58, v25);
          llvm::APFloat::~APFloat(v58);
          if (v26 >= v22)
          {
            goto LABEL_29;
          }

LABEL_13:
          v15 = 0;
          goto LABEL_14;
        }

        if (v13 <= v24 && v24 <= v22)
        {
          goto LABEL_13;
        }
      }

LABEL_29:
      v58[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      Int = mlir::IntegerAttr::getInt(v58);
      if (Int == 14)
      {
        LOBYTE(v50) = 0;
        goto LABEL_33;
      }

      if (Int == 7)
      {
        LOBYTE(v50) = 1;
LABEL_33:
        LODWORD(v58[0]) = 1;
        mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v50, v58);
LABEL_69:
        v15 = 1;
        goto LABEL_14;
      }

      v58[0] = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
      v28 = mlir::IntegerAttr::getInt(v58);
      v29 = CmpFIntToFPConst::convertToIntegerPredicate(v28, v16);
      v53 = v29;
      if (v16)
      {
        llvm::APFloat::APFloat(v58, v60);
        llvm::APInt::getMaxValue(v20, &v50);
        llvm::APFloat::convertFromAPInt(v58, &v50, 0, 1);
        if (v51 >= 0x41 && v50)
        {
          MEMORY[0x259C63150](v50, 0x1000C8000313F17);
        }

        if (llvm::APFloat::operator<(v58, &v59))
        {
          if (v29 <= 7)
          {
            v30 = 1 << v29;
            v31 = 194;
            goto LABEL_62;
          }

LABEL_66:
          LOBYTE(v47) = 0;
          goto LABEL_67;
        }

        llvm::APFloat::~APFloat(v58);
        llvm::APFloat::APFloat(v58, v60);
        v51 = v20;
        if (v20 > 0x40)
        {
          llvm::APInt::initSlowCase(&v50);
        }

        v50 = 0;
        llvm::APFloat::convertFromAPInt(v58, &v50, 0, 1);
        if (v51 >= 0x41 && v50)
        {
          MEMORY[0x259C63150](v50, 0x1000C8000313F17);
        }

        if (llvm::APFloat::operator>(v58, &v59))
        {
          if (v29 > 9)
          {
            goto LABEL_66;
          }

          v30 = 1 << v29;
          v31 = 770;
          goto LABEL_62;
        }
      }

      else
      {
        llvm::APFloat::APFloat(v58, v60);
        llvm::APInt::getSignedMaxValue(v20, &v50);
        llvm::APFloat::convertFromAPInt(v58, &v50, 1, 1);
        if (v51 >= 0x41 && v50)
        {
          MEMORY[0x259C63150](v50, 0x1000C8000313F17);
        }

        if (llvm::APFloat::operator<(v58, &v59))
        {
          if ((v29 - 1) <= 2)
          {
            LOBYTE(v47) = 1;
LABEL_67:
            LODWORD(v50) = 1;
            goto LABEL_68;
          }

          goto LABEL_66;
        }

        llvm::APFloat::~APFloat(v58);
        llvm::APFloat::APFloat(v58, v60);
        llvm::APInt::getSignedMinValue(v20, &v50);
        llvm::APFloat::convertFromAPInt(v58, &v50, 1, 1);
        if (v51 >= 0x41 && v50)
        {
          MEMORY[0x259C63150](v50, 0x1000C8000313F17);
        }

        if (llvm::APFloat::operator>(v58, &v59))
        {
          if (v29 > 5)
          {
            goto LABEL_66;
          }

          v30 = 1 << v29;
          v31 = 50;
LABEL_62:
          if ((v30 & v31) != 0)
          {
            LOBYTE(v47) = 1;
            LODWORD(v50) = 1;
LABEL_68:
            mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &v47, &v50);
            llvm::APFloat::~APFloat(v58);
            goto LABEL_69;
          }

          goto LABEL_66;
        }
      }

      llvm::APFloat::~APFloat(v58);
      v49 = 0;
      v51 = v20;
      if (v20 > 0x40)
      {
        llvm::APInt::initSlowCase(&v50);
      }

      v50 = 0;
      v52 = v16;
      v32 = llvm::APFloat::convertToInteger(&v59, &v50, 0, &v49);
      v15 = 0;
      if (v32 == 1)
      {
LABEL_127:
        if (v51 >= 0x41)
        {
          if (v50)
          {
            v44 = v15;
            MEMORY[0x259C63150](v50, 0x1000C8000313F17);
            v15 = v44;
          }
        }

LABEL_14:
        v11 = v15;
        if (v9 != v60)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

      if (v9 == v60)
      {
        v33 = v61;
      }

      else
      {
        v33 = &v59;
      }

      if ((*(v33 + 28) & 7) == 3)
      {
        goto LABEL_125;
      }

      FloatSemantics = mlir::FloatType::getFloatSemantics(&v56);
      v48 = mlir::FloatType::getWidth(&v56);
      if (v48 > 0x40)
      {
        llvm::APInt::initSlowCase(&v47);
      }

      v47 = 0;
      llvm::APFloat::APFloat(v58, FloatSemantics, &v47);
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x259C63150](v47, 0x1000C8000313F17);
      }

      llvm::APFloat::convertFromAPInt(v58, &v50, v21, 1);
      if (!llvm::APFloat::operator==(v58, &v59))
      {
        if (v29 <= 4)
        {
          if (v29 > 1)
          {
            if (v29 == 2)
            {
              v40 = &v59;
              if (v9 == v60)
              {
                v40 = v61;
              }

              if ((*(v40 + 28) & 8) != 0)
              {
                goto LABEL_124;
              }

              v36 = 3;
            }

            else if (v29 == 3)
            {
              v42 = &v59;
              if (v9 == v60)
              {
                v42 = v61;
              }

              if ((*(v42 + 28) & 8) == 0)
              {
                goto LABEL_124;
              }

              v36 = 2;
            }

            else
            {
              v35 = &v59;
              if (v9 == v60)
              {
                v35 = v61;
              }

              if ((*(v35 + 28) & 8) == 0)
              {
                goto LABEL_124;
              }

              v36 = 5;
            }

            goto LABEL_123;
          }

          if (v29)
          {
            if (v29 != 1)
            {
              goto LABEL_124;
            }

            goto LABEL_133;
          }

LABEL_118:
          LOBYTE(IntegerAttr) = 0;
LABEL_134:
          LODWORD(v47) = 1;
          mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(a3, a2, &IntegerAttr, &v47);
          llvm::APFloat::~APFloat(v58);
          goto LABEL_126;
        }

        if (v29 <= 6)
        {
          if (v29 == 5)
          {
            v39 = &v59;
            if (v9 == v60)
            {
              v39 = v61;
            }

            if ((*(v39 + 28) & 8) != 0)
            {
              goto LABEL_124;
            }

            v36 = 4;
          }

          else
          {
            v38 = &v59;
            if (v9 == v60)
            {
              v38 = v61;
            }

            if ((*(v38 + 28) & 8) != 0)
            {
              goto LABEL_118;
            }

            v36 = 7;
          }

LABEL_123:
          v53 = v36;
          goto LABEL_124;
        }

        switch(v29)
        {
          case 7:
            v41 = &v59;
            if (v9 == v60)
            {
              v41 = v61;
            }

            if ((*(v41 + 28) & 8) == 0)
            {
              break;
            }

            goto LABEL_118;
          case 8:
            v45 = &v59;
            if (v9 == v60)
            {
              v45 = v61;
            }

            if ((*(v45 + 28) & 8) == 0)
            {
              break;
            }

            goto LABEL_133;
          case 9:
            v37 = &v59;
            if (v9 == v60)
            {
              v37 = v61;
            }

            if ((*(v37 + 28) & 8) == 0)
            {
              v36 = 8;
              goto LABEL_123;
            }

LABEL_133:
            LOBYTE(IntegerAttr) = 1;
            goto LABEL_134;
        }
      }

LABEL_124:
      llvm::APFloat::~APFloat(v58);
LABEL_125:
      v43 = *(a2 + 24);
      v47 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
      IntegerAttr = mlir::Builder::getIntegerAttr((a3 + 1), v47, &v50);
      v58[0] = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>((a3 + 1), v43, &v47, &IntegerAttr);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(a3, a2, &v53, &v55, v58);
LABEL_126:
      v15 = 1;
      goto LABEL_127;
    }
  }

  return result;
}

uint64_t llvm::ilogb(llvm *this, const llvm::APFloat *a2)
{
  v2 = this + 8;
  v3 = *(this + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v3)
  {
    v5 = (*(v2 + 1) + 8);
  }

  else
  {
    v5 = v2;
  }

  return llvm::detail::ilogb(v5, v4);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::ConstantIntOp,BOOL,int>(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v6 = mlir::OpBuilder::create<mlir::arith::ConstantIntOp,BOOL,int>(a1 + 1, *(a2 + 24), a3, a4);
  ((*a1)[1])(a1, a2, v6);
  return v6;
}

uint64_t CmpFIntToFPConst::convertToIntegerPredicate(uint64_t a1, int a2)
{
  result = 0;
  if (a1 > 7)
  {
    if (a1 <= 10)
    {
      if (a1 == 8)
      {
        return result;
      }

      if (a1 != 9)
      {
        goto LABEL_5;
      }

LABEL_9:
      v4 = a2 == 0;
      v5 = 4;
      v6 = 8;
      goto LABEL_17;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        return 1;
      }

LABEL_15:
      v4 = a2 == 0;
      v5 = 3;
      v6 = 7;
      goto LABEL_17;
    }
  }

  else
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        return result;
      }

      if (a1 != 2)
      {
LABEL_5:
        v4 = a2 == 0;
        v5 = 5;
        v6 = 9;
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

  v4 = a2 == 0;
  v5 = 2;
  v6 = 6;
LABEL_17:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

BOOL llvm::APFloat::operator>(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = (a2 + 8);
  if (v5 == v4)
  {
    return llvm::detail::DoubleAPFloat::compare(v3, v6) == 2;
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v3, v6) == 2;
  }
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(uint64_t **a1, uint64_t a2, unint64_t *a3, uint64_t *a4, void *a5)
{
  v7 = mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(a1 + 1, *(a2 + 24), a3, a4, a5);
  ((*a1)[1])(a1, a2, v7);
  return v7;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v33[38] = *MEMORY[0x277D85DE8];
  v30 = a2;
  Context = mlir::Attribute::getContext(&v30);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v33, v32, v31);
  }

  mlir::OperationState::OperationState(v33, a2, v9);
  v12 = *a3;
  v13 = *a4;
  if (!*a4)
  {
    goto LABEL_16;
  }

  v14 = *v13;
  {
    v24 = v12;
    v25 = v13;
    mlir::arith::AddUIExtendedOp::fold();
    v13 = v25;
    v12 = v24;
    v15 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_5:
  v18 = v16;
  v19 = v17;
  do
  {
    v20 = v19 >> 1;
    v21 = &v18[2 * (v19 >> 1)];
    v23 = *v21;
    v22 = v21 + 2;
    v19 += ~(v19 >> 1);
    if (v23 < v15)
    {
      v18 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  while (v19);
  if (v18 == &v16[2 * v17] || *v18 != v15)
  {
    goto LABEL_16;
  }

  v26 = v18[1];
LABEL_17:
  mlir::arith::ConstantOp::build(v11, v33, v12, v13, v26);
  v27 = mlir::OpBuilder::create(a1, v33);
  if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  mlir::OperationState::~OperationState(v33);
  return v28;
}

uint64_t mlir::detail::constant_op_binder<mlir::FloatAttr>::match(unint64_t **a1, uint64_t a2)
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
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIntOp,BOOL,int>(uint64_t **a1, uint64_t a2, unsigned __int8 *a3, int *a4)
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
  mlir::arith::ConstantIntOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (v11 && *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16[0] = *(v11 - 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11;
    if (!mlir::Type::isSignlessInteger(v16))
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicate &,mlir::Value &,mlir::arith::ConstantOp>(uint64_t **a1, uint64_t a2, unint64_t *a3, uint64_t *a4, void *a5)
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
  mlir::arith::CmpIOp::build(a1, v19, *a3, *a4, *a5 - 16);
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

void anonymous namespace::RedundantSelectFalse::~RedundantSelectFalse(_anonymous_namespace_::RedundantSelectFalse *this)
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

uint64_t anonymous namespace::RedundantSelectFalse::matchAndRewrite(_anonymous_namespace_::RedundantSelectFalse *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v20[0] = a2;
  v19 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v17[0] = *(v6 + 88);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8)
      {
        v9 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v8))
        {
          v10 = *(v9 + 24);
LABEL_12:
          (*(*v8 + 88))(v8, v10, v11, v17);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v13 = *(DefiningOp + 72);
      v14 = v19;
      if (v19 < HIDWORD(v19))
      {
LABEL_18:
        v18[v14] = DefiningOp;
        LODWORD(v19) = v19 + 1;
        if (*(v6 + 24) == *(v13 + 24))
        {
          v16 = *(v18[1] + 24);
          v17[0] = *(*v18 + 24);
          v17[1] = v16;
          mlir::Builder::getFusedLoc(a3 + 1, v17, 2, 0);
        }

        v15 = *(a3 + 2);
        if (v15 && mlir::RewriterBase::Listener::classof(v15))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
      v14 = v19;
      if (v19 < HIDWORD(v19))
      {
        goto LABEL_18;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v10 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v18 != v20)
  {
    free(v18);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Value &,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::TypeRange::TypeRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::SelectOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectFalse::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 2 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectFalse::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::SelectOp type";
  v7 = 45;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectFalse::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "Operands 'pred' and 'pred0' must be equal";
  v7 = 41;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::RedundantSelectTrue::~RedundantSelectTrue(_anonymous_namespace_::RedundantSelectTrue *this)
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

uint64_t anonymous namespace::RedundantSelectTrue::matchAndRewrite(_anonymous_namespace_::RedundantSelectTrue *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v20[0] = a2;
  v19 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 9);
  v17[0] = *(v6 + 56);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8)
      {
        v9 = DefiningOp;
        if (mlir::RewriterBase::Listener::classof(v8))
        {
          v10 = *(v9 + 24);
LABEL_12:
          (*(*v8 + 88))(v8, v10, v11, v17);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v13 = *(DefiningOp + 72);
      v14 = v19;
      if (v19 < HIDWORD(v19))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
      v14 = v19;
      if (v19 < HIDWORD(v19))
      {
LABEL_18:
        v18[v14] = DefiningOp;
        LODWORD(v19) = v19 + 1;
        if ((*(v5 + 46) & 0x80) != 0)
        {
          if (*(v6 + 24) != *(v13 + 24))
          {
LABEL_20:
            v15 = *(a3 + 2);
            if (v15 && mlir::RewriterBase::Listener::classof(v15))
            {
            }

            goto LABEL_13;
          }
        }

        else if (*(v6 + 24) != *(v13 + 24))
        {
          goto LABEL_20;
        }

        v16 = *(v18[1] + 24);
        v17[0] = *(*v18 + 24);
        v17[1] = v16;
        mlir::Builder::getFusedLoc(a3 + 1, v17, 2, 0);
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v10 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v18 != v20)
  {
    free(v18);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectTrue::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectTrue::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::SelectOp type";
  v7 = 45;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::RedundantSelectTrue::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "Operands 'pred' and 'pred0' must be equal";
  v7 = 41;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SelectNotCond::~SelectNotCond(_anonymous_namespace_::SelectNotCond *this)
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

uint64_t anonymous namespace::SelectNotCond::matchAndRewrite(_anonymous_namespace_::SelectNotCond *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v31 = v33;
  v33[0] = a2;
  v32 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v25 = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v25);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_25:
        (*(*v8 + 88))(v8, v9, v10, &v25);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v25 = *(*(DefiningOp + 72) + 56);
    v11 = mlir::Value::getDefiningOp(&v25);
    if (!v11)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v12 = v11;
    v28 = 0;
    v29 = &v28;
    v25 = (v11 - 16);
    v13 = mlir::Value::getDefiningOp(&v25);
    if (!v13 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v29, v13) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v12 + 24);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v14 = v28;
    v15 = *(a3 + 2);
    v25 = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
    v26 = 176;
    if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v29 = &v25;
      if (v15 && mlir::RewriterBase::Listener::classof(v15))
      {
      }

      goto LABEL_26;
    }

    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31[v32] = v12;
    v17 = v32 + 1;
    LODWORD(v32) = v17;
    if (v17 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31[v17] = v7;
    LODWORD(v32) = v32 + 1;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      LODWORD(v26) = 1;
      v25 = 0;
      v29 = &v25;
      if (!v14)
      {
        goto LABEL_59;
      }
    }

    else
    {
      LODWORD(v26) = 1;
      v25 = 0;
      v29 = &v25;
      if (!v14)
      {
        goto LABEL_59;
      }
    }

    v18 = mlir::detail::constant_int_value_binder::match(&v29, v14);
    v19 = v26;
    if (v18)
    {
      v24 = v25;
      LODWORD(v30) = 1;
      v29 = 0;
      v28 = &v29;
      if (mlir::detail::constant_int_value_binder::match(&v28, v14))
      {
        LODWORD(v26) = v30;
        v25 = v29;
        LOBYTE(v27) = 1;
      }

      else
      {
        LOBYTE(v25) = 0;
        LOBYTE(v27) = 0;
        if (v30 >= 0x41 && v29)
        {
          MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }
      }

      v20 = v26;
      if (!v26)
      {
        if (v19 >= 0x41 && v24)
        {
          MEMORY[0x259C63150](v24, 0x1000C8000313F17);
        }

LABEL_55:
        v22 = *(v31[1] + 24);
        v25 = *(*v31 + 24);
        v26 = v22;
        mlir::Builder::getFusedLoc(a3 + 1, &v25, 2, 0);
      }

      if (v26 > 0x40)
      {
        v21 = llvm::APInt::countTrailingOnesSlowCase(&v25) == v20;
        if (v27 == 1 && v25)
        {
          MEMORY[0x259C63150](v25, 0x1000C8000313F17);
        }
      }

      else
      {
        v21 = v25 == (0xFFFFFFFFFFFFFFFFLL >> -v26);
      }

      if (v19 >= 0x41 && v24)
      {
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }

      if (v21)
      {
        goto LABEL_55;
      }
    }

    else if (v26 >= 0x41 && v25)
    {
      MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }

LABEL_59:
    v23 = *(a3 + 2);
    if (v23 && mlir::RewriterBase::Listener::classof(v23))
    {
    }

    goto LABEL_26;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_25;
  }

LABEL_26:
  if (v31 != v33)
  {
    free(v31);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 0 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "castedOp1 is not ::mlir::arith::XOrIOp type";
  v7 = 43;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp1";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op2->getResult(0), ::mlir::m_Constant(&arg2_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectNotCond::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "entities 'ones' failed to satisfy constraint: ''";
  v7 = 48;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SelectI1ToNot::~SelectI1ToNot(_anonymous_namespace_::SelectI1ToNot *this)
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

uint64_t anonymous namespace::SelectI1ToNot::matchAndRewrite(_anonymous_namespace_::SelectI1ToNot *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v22[0] = a2;
  v21 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v17[0] = *(*(v4 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (!DefiningOp)
  {
    v12 = *(a3 + 2);
    if (!v12 || !mlir::RewriterBase::Listener::classof(v12))
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 3);
    goto LABEL_19;
  }

  v6 = DefiningOp;
  v18 = 0;
  v19 = &v18;
  v17[0] = (DefiningOp - 16);
  v7 = mlir::Value::getDefiningOp(v17);
  if (!v7 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v19, v7) & 1) == 0)
  {
    v12 = *(a3 + 2);
    if (!v12 || !mlir::RewriterBase::Listener::classof(v12))
    {
      goto LABEL_20;
    }

    v13 = *(v6 + 24);
    goto LABEL_19;
  }

  v8 = v18;
  v17[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 0'";
  v17[1] = 169;
  IntegerType = mlir::Builder::getIntegerType(a3 + 1, 1);
  if (mlir::Builder::getIntegerAttr(a3 + 8, IntegerType, 0) == v8)
  {
    if (v21 >= HIDWORD(v21))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20[v21] = v6;
    LODWORD(v21) = v21 + 1;
    v17[0] = *(*(v4 + 9) + 88);
    v10 = mlir::Value::getDefiningOp(v17);
    if (v10)
    {
      v11 = v10;
      {
        if (v21 < HIDWORD(v21))
        {
          v20[v21] = v11;
          LODWORD(v21) = v21 + 1;
          v17[0] = *(*v20 + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v17, 1, 0);
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      goto LABEL_20;
    }

    v12 = *(a3 + 2);
    if (!v12 || !mlir::RewriterBase::Listener::classof(v12))
    {
      goto LABEL_20;
    }

    v13 = *(v4 + 3);
LABEL_19:
    (*(*v12 + 88))(v12, v13, v14, v17);
    goto LABEL_20;
  }

  v19 = v17;
  v16 = *(a3 + 2);
  if (v16 && mlir::RewriterBase::Listener::classof(v16))
  {
  }

LABEL_20:
  if (v20 != v22)
  {
    free(v20);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectI1ToNot::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 1 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectI1ToNot::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "::mlir::success(::mlir::matchPattern(op1->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v7 = 108;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization3(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ****a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v10 = 261;
  v9[0] = v3;
  v9[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v9);
  v5 = *(v4 + 16);
  v11.n128_u32[0] = 3;
  v11.n128_u64[1] = ": constant attribute 0";
  v12 = 22;
  v6 = *(v4 + 24);
  if (v6 >= *(v4 + 28))
  {
    if (v5 > &v11 || v5 + 24 * v6 <= &v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = (v5 + 24 * *(v4 + 24));
  result = v11;
  v7[1].n128_u64[0] = v12;
  *v7 = result;
  ++*(v4 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SelectI1ToNot::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v6.n128_u32[0] = 3;
  v6.n128_u64[1] = "There's no operation that defines operand 2 of castedOp0";
  v7 = 56;
  v3 = *(a2 + 24);
  if (v3 >= *(a2 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a2 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a2 + 24);
  return result;
}

void SelectToExtUI::~SelectToExtUI(SelectToExtUI *this)
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

uint64_t SelectToExtUI::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  v41 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::Type::isInteger(&v41, 1))
  {
    return 0;
  }

  v39 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v39);
  if (!DefiningOp)
  {
    goto LABEL_55;
  }

  v7 = DefiningOp;
  v42 = 1;
  v40 = &v41;
  v41 = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, DefiningOp) && ((v8 = *(*(*(v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v8 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v9 = 1), !v9 ? (v10 = v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v10 = 1), !v10 ? (v11 = v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v11 = 1), v11))
  {
    v12 = mlir::detail::constant_int_value_binder::match(&v40, v44);
    v13 = v42;
    if (v12)
    {
      if (v42 >= 0x41)
      {
        if (v13 - llvm::APInt::countLeadingZerosSlowCase(&v41) > 0x40)
        {
          if (v41)
          {
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
          }

          goto LABEL_55;
        }

        v14 = v41;
      }

      else
      {
        v14 = &v41;
      }

      v15 = *v14 == 1;
      if (v13 < 0x41)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
      if (v42 < 0x41)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v15 = 0;
    if (v42 < 0x41)
    {
      goto LABEL_31;
    }
  }

  if (v41)
  {
    MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    if (!v15)
    {
      goto LABEL_55;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v15)
  {
    goto LABEL_55;
  }

LABEL_32:
  v39 = *(*(a2 + 72) + 88);
  v16 = mlir::Value::getDefiningOp(&v39);
  if (v16)
  {
    v17 = v16;
    v42 = 1;
    v40 = &v41;
    v41 = 0;
    v43 = &v44;
    v44 = 0;
    v22 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, v16) && ((v18 = *(*(*(v17 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v18 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v19 = v18 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v19 = 1), !v19 ? (v20 = v18 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v20 = 1), !v20 ? (v21 = v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v21 = 1), v21 && mlir::detail::constant_int_value_binder::match(&v40, v44)) && mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v41);
    if (v42 >= 0x41 && v41)
    {
      MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }

    if (v22)
    {
      v41 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v44 = *(*(a2 + 72) + 24);
      v23 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::Value>((a3 + 8), *(a2 + 24), &v41, &v44);
LABEL_96:
      (*(*a3 + 8))(a3, a2, v23);
      return 1;
    }
  }

LABEL_55:
  v39 = *(*(a2 + 72) + 56);
  result = mlir::Value::getDefiningOp(&v39);
  if (!result)
  {
    return result;
  }

  v24 = result;
  v42 = 1;
  v40 = &v41;
  v41 = 0;
  v43 = &v44;
  v44 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, result))
  {
    v25 = *(*(*(v24 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v26 = v25 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v27 = v26 || v25 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    v28 = v27 || v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (v28 && mlir::detail::constant_int_value_binder::match(&v40, v44))
    {
      v29 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v41);
      if (v42 < 0x41)
      {
        goto LABEL_74;
      }

LABEL_72:
      if (v41)
      {
        MEMORY[0x259C63150](v41, 0x1000C8000313F17);
      }

      goto LABEL_74;
    }
  }

  v29 = 0;
  if (v42 >= 0x41)
  {
    goto LABEL_72;
  }

LABEL_74:
  if (!v29)
  {
    return 0;
  }

  v39 = *(*(a2 + 72) + 88);
  result = mlir::Value::getDefiningOp(&v39);
  if (result)
  {
    v30 = result;
    v42 = 1;
    v40 = &v41;
    v41 = 0;
    v43 = &v44;
    v44 = 0;
    v35 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, result) && ((v31 = *(*(*(v30 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v31 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v32 = v31 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v32 = 1), !v32 ? (v33 = v31 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v33 = 1), !v33 ? (v34 = v31 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v34 = 1), v34 && mlir::detail::constant_int_value_binder::match(&v40, v44)) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v41);
    v36 = a3;
    if (v42 >= 0x41)
    {
      if (v41)
      {
        MEMORY[0x259C63150](v41, 0x1000C8000313F17);
        v36 = a3;
      }
    }

    if (v35)
    {
      v41 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = *(a2 + 24);
      v43 = *(*(a2 + 72) + 24);
      v38 = 1;
      v39 = v43[1] & 0xFFFFFFFFFFFFFFF8;
      a3 = v36;
      v40 = mlir::OpBuilder::create<mlir::arith::ConstantIntOp,int,mlir::Type>((v36 + 8), v37, &v38, &v39);
      v44 = mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::Value,mlir::arith::ConstantIntOp>((a3 + 8), v37, &v43, &v40);
      v23 = mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::arith::XOrIOp>((a3 + 8), *(a2 + 24), &v41, &v44);
      goto LABEL_96;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::Value,mlir::arith::ConstantIntOp>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::XOrIOp::build(v11, v18, *a3, *a4 - 16);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIntOp,int,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, int *a3, uint64_t *a4)
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
  mlir::arith::ConstantIntOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (v11 && *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v16[0] = *(v11 - 8) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11;
    if (!mlir::Type::isSignlessInteger(v16))
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::IntegerType &,mlir::Value &>(v18, v17, v16);
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
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::Type,mlir::arith::XOrIOp>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,mlir::IntegerType &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v17[0] = *a4 - 16;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  if (v19 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v18[8] + 8 * v19++) = v11;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, llvm::APInt *a3, llvm::APInt *this)
{
  v8 = *(this + 2);
  v9 = this;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      **a2 = 0;
      v12 = *(a3 + 2);
      if (v12 <= 0x40)
      {
        goto LABEL_5;
      }

LABEL_7:
      llvm::APInt::initSlowCase(&v11, a3);
    }

    v9 = *this;
  }

  **a2 = *v9 < v8;
  v12 = *(a3 + 2);
  if (v12 > 0x40)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = *a3;
  result = llvm::APInt::operator<<=(&v11, this);
  *(a1 + 8) = v12;
  *a1 = v11;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, llvm::APInt *a3, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  v9 = a4;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(a4) > 0x40)
    {
      **a2 = 0;
      v11 = *(a3 + 2);
      if (v11 <= 0x40)
      {
        goto LABEL_5;
      }

LABEL_7:
      llvm::APInt::initSlowCase(&v10, a3);
    }

    v9 = *a4;
  }

  **a2 = *v9 < v8;
  v11 = *(a3 + 2);
  if (v11 > 0x40)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = *a3;
  llvm::APInt::lshrInPlace(&v10, a4);
  *(a1 + 8) = v11;
  *a1 = v10;
  *(a1 + 16) = 1;
}

unsigned int *mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, llvm::APInt *a3, llvm::APInt *a4)
{
  v8 = *(a4 + 2);
  v9 = a4;
  if (v8 >= 0x41)
  {
    if (v8 - llvm::APInt::countLeadingZerosSlowCase(a4) > 0x40)
    {
      **a2 = 0;
      v12 = *(a3 + 2);
      if (v12 <= 0x40)
      {
        goto LABEL_5;
      }

LABEL_7:
      llvm::APInt::initSlowCase(&v11, a3);
    }

    v9 = *a4;
  }

  **a2 = *v9 < v8;
  v12 = *(a3 + 2);
  if (v12 > 0x40)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = *a3;
  result = llvm::APInt::ashrInPlace(&v11, a4);
  *(a1 + 8) = v12;
  *a1 = v11;
  *(a1 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ValueSemantics<Empty>]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::AddFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::AddIOpGenericAdaptorBase::Properties]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith24IntegerOverflowFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::arith::IntegerOverflowFlagsAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseAttribute<mlir::TypedAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v21);
  *a2 = v7;
  a2[1] = v8;
  if (v7)
  {
    return 1;
  }

  v19 = "invalid kind of attribute specified";
  v20 = 259;
  (*(*a1 + 24))(v22, a1, v6, &v19);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v10 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v10;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v28;
      v13 = __p;
      if (v28 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v28 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v25;
    if (v25)
    {
      v15 = v26;
      v16 = v25;
      if (v26 != v25)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v25;
      }

      v26 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v10;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::DivFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::DivFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::ExtFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ExtFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::detail::MaxNumFOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::MaxNumFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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