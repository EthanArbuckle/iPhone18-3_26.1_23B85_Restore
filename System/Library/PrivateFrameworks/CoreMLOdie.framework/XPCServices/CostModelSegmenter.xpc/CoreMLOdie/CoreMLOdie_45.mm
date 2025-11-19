uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::parse(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16) & 1;
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = sub_10026D02C(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
    return sub_10026D02C(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::parse(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v14[0] = v15;
  v14[1] = 0x400000000;
  if ((*(*this + 280))())
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 720))(this, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 296))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 104))(this))
      {
        v12 = 0;
        if (sub_10023B73C(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          sub_1001D4484(a2, Results, v8);
          v9 = sub_10023B994(this, v14, v13, v5, a2 + 16) & 1;
          v10 = v14[0];
          if (v14[0] == v15)
          {
            return v9;
          }

          goto LABEL_10;
        }
      }
    }
  }

  v9 = 0;
  v10 = v14[0];
  if (v14[0] != v15)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

const char *sub_100273ED4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp]";
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

const char *sub_100274210()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp]";
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

const char *sub_10027454C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp]";
  v6 = 136;
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

const char *sub_100274A5C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp]";
  v6 = 129;
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

const char *sub_100274BC4()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp]";
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

uint64_t *sub_100274C44@<X0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = 257;
  return mlir::OpState::emitError(v2, v4, a2);
}

uint64_t *sub_100274C74@<X0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = 257;
  return mlir::OpState::emitError(v2, v4, a2);
}

uint64_t *sub_100274CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(*v19 + 36);
  v22 = *v19 - 16;
  if (!v21)
  {
    v22 = 0;
  }

  a18 = v22;
  a19 = v21;

  return mlir::ResultRange::getTypes(&a18, &a10);
}

llvm::raw_ostream *sub_100274CF4(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return sub_10023BF78(v1, va1, va);
}

uint64_t *sub_100274D10@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v5 = a1;
  v7 = v2;

  return mlir::OperandRange::getTypes(va, va1);
}

uint64_t sub_100274D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return mlir::DictionaryAttr::getValue(&a14);
}

unint64_t sub_100274D5C()
{
  v2 = *v0;

  return mlir::Operation::getAttrDictionary(v2);
}

void mlir::ODIE::Compiler::CoreMLAX::getStrides(uint64_t a1@<X0>, void *a2@<X8>)
{
  v19 = a1;
  Shape = mlir::RankedTensorType::getShape(&v19);
  Encoding = mlir::RankedTensorType::getEncoding(&v19);
  if (Encoding)
  {
    v5 = *(*Encoding + 136);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id;
    v7 = v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id ? Encoding : 0;
    v18 = v7;
    if (v6)
    {
      mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&v18, Shape, a2);
      return;
    }
  }

  mlir::RankedTensorType::getShape(&v19);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v9 = v8 + 1;
  if (v8 == -1)
  {
    return;
  }

  if (v9 < 7)
  {
    v10 = 0;
    v11 = v8 + 1;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 2, v8 + 1, 8);
    v10 = *(a2 + 2);
    v11 = v9 - v10;
    if (v9 == v10)
    {
      goto LABEL_13;
    }
  }

  bzero((*a2 + 8 * v10), 8 * v11);
LABEL_13:
  *(a2 + 2) = v9;
  if (v9)
  {
    v12 = v9;
    v13 = *a2;
    *(*a2 + 8 * (v9 - 1)) = 1;
    if (v9 != 1)
    {
      v14 = 0;
      v15 = v13 - 16;
      v16 = 1;
      do
      {
        v17 = *(Shape - 16 + 8 * v12);
        v14 |= v17 == 0x8000000000000000;
        v16 *= v17;
        if (v14)
        {
          v16 = 0x8000000000000000;
        }

        *(v15 + 8 * v12--) = v16;
      }

      while (v12 != 1);
    }
  }
}

uint64_t mlir::ODIE::Compiler::getHandleForToken(uint64_t a1)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    v2 = *(*(result + 48) + 16);
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
    {
      return *(*(result + 72) + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::getSymbolicTypeAffineMap(uint64_t a1)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v3 = v1;
  if (!v1)
  {
    return 0;
  }

  result = mlir::RankedTensorType::getEncoding(&v3);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v17 = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return a1 == a2;
  }

  Encoding = mlir::RankedTensorType::getEncoding(&v18);
  if (Encoding)
  {
    v8 = *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
    v9 = mlir::RankedTensorType::getEncoding(&v17);
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (!v8)
    {
      goto LABEL_14;
    }

    return a1 == a2;
  }

  v8 = 1;
  v9 = mlir::RankedTensorType::getEncoding(&v17);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (((v8 ^ (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)) & 1) == 0)
  {
    return a1 == a2;
  }

LABEL_14:
  ElementType = mlir::RankedTensorType::getElementType(&v18);
  if (ElementType == mlir::RankedTensorType::getElementType(&v17) && (Shape = mlir::RankedTensorType::getShape(&v18), v13 = v12, v14 = mlir::RankedTensorType::getShape(&v17), v13 == v15))
  {
    return memcmp(Shape, v14, 8 * v13) == 0;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::areTypesCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (a2 == i)
      {
        break;
      }

      v8 = mlir::TypeRange::dereference_iterator(a1, i);
      v9 = mlir::TypeRange::dereference_iterator(a3, i);
      result = mlir::ODIE::Compiler::areTypesCompatible(v8, v9);
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t mlir::detail::verifyTypesAlongControlFlowEdges(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v22 = this;
  if (this)
  {
    this = sub_100276190(this);
  }

  v21[0] = v2;
  v21[1] = this;
  v20 = v21;
  if (!sub_100275414(v2, 0, sub_100276D20, &v20))
  {
    return 0;
  }

  v19 = v21;
  v3 = v2[11];
  v4 = 1;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((&v2[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
    v6 = (v5 + 24 * (v3 & 0x7FFFFF));
    while (1)
    {
      v23 = v25;
      v24 = 0x300000000;
      v7 = *(v5 + 1);
      if (v7 == v5)
      {
        break;
      }

      do
      {
        v10 = (v7 - 8);
        if (!v7)
        {
          v10 = 0;
        }

        v11 = v10[4];
        if (v11 != v10 + 4)
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v11);
          if (sub_100276A74(ValuePtr))
          {
            v13 = sub_100276A74(ValuePtr);
            if (ValuePtr)
            {
              v8 = v24;
              if (v24 >= HIDWORD(v24))
              {
                v17 = v13;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v24 + 1, 16);
                v13 = v17;
                v8 = v24;
              }

              v9 = (v23 + 16 * v8);
              *v9 = ValuePtr;
              v9[1] = v13;
              LODWORD(v24) = v24 + 1;
            }
          }
        }

        v7 = *(v7 + 1);
      }

      while (v7 != v5);
      if (!v24)
      {
        break;
      }

      v18[0] = &v23;
      v18[1] = &v19;
      v18[2] = &v22;
      v18[3] = v5;
      v14 = !sub_100275414(v22, v5, sub_100276DCC, v18);
      v15 = v23;
      if (v23 != v25)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v14 != 3 && v14)
      {
        return 0;
      }

      v5 = (v5 + 24);
      if (v5 == v6)
      {
        return 1;
      }
    }

    v14 = 3;
    v15 = v23;
    if (v23 == v25)
    {
      goto LABEL_25;
    }

LABEL_24:
    free(v15);
    goto LABEL_25;
  }

  return v4;
}

BOOL sub_100275414(mlir::Operation *a1, mlir::Region *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, unint64_t), uint64_t a4)
{
  if (a1)
  {
    v6 = sub_100276190(a1);
  }

  else
  {
    v6 = 0;
  }

  v125 = v127;
  v126 = 0x200000000;
  (*(v6 + 16))(v6, a1, a2, &v125);
  if (v126)
  {
    v7 = v125;
    v102 = &v125[3 * v126];
    while (1)
    {
      a3(&v122, a4, *v7);
      if ((v124 & 1) == 0)
      {
        v54 = 0;
        goto LABEL_82;
      }

      v119 = *(v7 + 1);
      mlir::ValueRange::getTypes(&v119, &v108);
      v9 = v108.n128_u64[1];
      v8 = v108.n128_u64[0];
      v10 = v109;
      v105 = v108;
      if (v108.n128_u64[1])
      {
        v8 = mlir::ValueRange::offset_base(&v105, v108.n128_i64[1]);
        v9 = v105.n128_u64[1];
      }

      mlir::TypeRange::TypeRange(&v120, v8, v10 - v9);
      v11 = v123;
      if (v123 != v121)
      {
        break;
      }

      if (v123)
      {
        v12 = 0;
        v13 = v122;
        v14 = v120;
        while (v11 != v12)
        {
          v15 = mlir::TypeRange::dereference_iterator(v13, v12);
          v16 = mlir::TypeRange::dereference_iterator(v14, v12);
          if (((*(v6 + 32))(v6, a1, v15, v16) & 1) == 0)
          {
            v105.n128_u64[0] = " along control flow edge ";
            v107 = 259;
            mlir::Operation::emitOpError(&v108, a1, &v105);
            sub_10027643C(&v108, a2, *v7);
            if (v108.n128_u64[0])
            {
              v105.n128_u32[0] = 3;
              v105.n128_u64[1] = ": source type #";
              v106 = 15;
              v17 = &v105;
              v18 = v109;
              if (v110 >= v111)
              {
                if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                {
                  v90 = &v105 - v109;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                  v18 = v109;
                  v17 = (v109 + v90);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                  v17 = &v105;
                  v18 = v109;
                }
              }

              v19 = &v18[24 * v110];
              v20 = *v17;
              *(v19 + 2) = v17[1].n128_u64[0];
              *v19 = v20;
              v21 = ++v110;
              if (v108.n128_u64[0])
              {
                v105.n128_u32[0] = 5;
                v105.n128_u64[1] = v12;
                v22 = &v105;
                v23 = v109;
                if (v21 >= v111)
                {
                  if (v109 <= &v105 && v109 + 24 * v21 > &v105)
                  {
                    v91 = &v105 - v109;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v21 + 1, 24);
                    v23 = v109;
                    v22 = (v109 + v91);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v21 + 1, 24);
                    v22 = &v105;
                    v23 = v109;
                  }
                }

                v24 = &v23[24 * v110];
                v25 = *v22;
                *(v24 + 2) = v22[1].n128_u64[0];
                *v24 = v25;
                v26 = ++v110;
                if (v108.n128_u64[0])
                {
                  v105.n128_u32[0] = 3;
                  v105.n128_u64[1] = " ";
                  v106 = 1;
                  v27 = &v105;
                  v28 = v109;
                  if (v26 >= v111)
                  {
                    if (v109 <= &v105 && v109 + 24 * v26 > &v105)
                    {
                      v92 = &v105 - v109;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v26 + 1, 24);
                      v28 = v109;
                      v27 = (v109 + v92);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v26 + 1, 24);
                      v27 = &v105;
                      v28 = v109;
                    }
                  }

                  v29 = &v28[24 * v110];
                  v30 = *v27;
                  *(v29 + 2) = v27[1].n128_u64[0];
                  *v29 = v30;
                  ++v110;
                  if (v108.n128_u64[0])
                  {
                    v31 = &v105;
                    mlir::DiagnosticArgument::DiagnosticArgument(&v105, v15);
                    v32 = v109;
                    if (v110 >= v111)
                    {
                      if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                      {
                        v93 = &v105 - v109;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                        v32 = v109;
                        v31 = (v109 + v93);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                        v31 = &v105;
                        v32 = v109;
                      }
                    }

                    v33 = &v32[24 * v110];
                    v34 = *v31;
                    *(v33 + 2) = v31[1].n128_u64[0];
                    *v33 = v34;
                    v35 = ++v110;
                    if (v108.n128_u64[0])
                    {
                      v105.n128_u32[0] = 3;
                      v105.n128_u64[1] = " should match input type #";
                      v106 = 26;
                      v36 = &v105;
                      v37 = v109;
                      if (v35 >= v111)
                      {
                        if (v109 <= &v105 && v109 + 24 * v35 > &v105)
                        {
                          v95 = &v105 - v109;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v35 + 1, 24);
                          v37 = v109;
                          v36 = (v109 + v95);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v35 + 1, 24);
                          v36 = &v105;
                          v37 = v109;
                        }
                      }

                      v38 = &v37[24 * v110];
                      v39 = *v36;
                      *(v38 + 2) = v36[1].n128_u64[0];
                      *v38 = v39;
                      v40 = ++v110;
                      if (v108.n128_u64[0])
                      {
                        v105.n128_u32[0] = 5;
                        v105.n128_u64[1] = v12;
                        v41 = &v105;
                        v42 = v109;
                        if (v40 >= v111)
                        {
                          if (v109 <= &v105 && v109 + 24 * v40 > &v105)
                          {
                            v97 = &v105 - v109;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v40 + 1, 24);
                            v42 = v109;
                            v41 = (v109 + v97);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v40 + 1, 24);
                            v41 = &v105;
                            v42 = v109;
                          }
                        }

                        v43 = &v42[24 * v110];
                        v44 = *v41;
                        *(v43 + 2) = v41[1].n128_u64[0];
                        *v43 = v44;
                        v45 = ++v110;
                        if (v108.n128_u64[0])
                        {
                          v105.n128_u32[0] = 3;
                          v105.n128_u64[1] = " ";
                          v106 = 1;
                          v46 = &v105;
                          v47 = v109;
                          if (v45 >= v111)
                          {
                            if (v109 <= &v105 && v109 + 24 * v45 > &v105)
                            {
                              v99 = &v105 - v109;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v45 + 1, 24);
                              v47 = v109;
                              v46 = (v109 + v99);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v45 + 1, 24);
                              v46 = &v105;
                              v47 = v109;
                            }
                          }

                          v48 = &v47[24 * v110];
                          v49 = *v46;
                          *(v48 + 2) = v46[1].n128_u64[0];
                          *v48 = v49;
                          ++v110;
                          if (v108.n128_u64[0])
                          {
                            v50 = &v105;
                            mlir::DiagnosticArgument::DiagnosticArgument(&v105, v16);
                            v51 = v109;
                            if (v110 >= v111)
                            {
                              if (v109 <= &v105 && v109 + 24 * v110 > &v105)
                              {
                                v101 = &v105 - v109;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                                v51 = v109;
                                v50 = (v109 + v101);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
                                v50 = &v105;
                                v51 = v109;
                              }
                            }

                            v52 = &v51[24 * v110];
                            v53 = *v50;
                            *(v52 + 2) = v50[1].n128_u64[0];
                            *v52 = v53;
                            ++v110;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
            if (v108.n128_u64[0])
            {
              mlir::InFlightDiagnostic::report(&v108);
            }

            if ((v118 & 1) == 0)
            {
              goto LABEL_82;
            }

            if (v117 != &v118)
            {
              free(v117);
            }

            v55 = __p;
            if (__p)
            {
              v56 = v116;
              v57 = __p;
              if (v116 != __p)
              {
                do
                {
                  v56 = sub_100052FFC(v56 - 1);
                }

                while (v56 != v55);
                v57 = __p;
              }

              v116 = v55;
              operator delete(v57);
            }

            v58 = v113;
            if (v113)
            {
              v59 = v114;
              v60 = v113;
              if (v114 != v113)
              {
                do
                {
                  v61 = *--v59;
                  *v59 = 0;
                  if (v61)
                  {
                    operator delete[]();
                  }
                }

                while (v59 != v58);
                v60 = v113;
              }

              v114 = v58;
              operator delete(v60);
            }

            v62 = v109;
            if (v109 == v112)
            {
              goto LABEL_82;
            }

            goto LABEL_54;
          }

          if (v11 == ++v12)
          {
            break;
          }
        }
      }

      v7 += 3;
      if (v7 == v102)
      {
        v54 = 1;
        goto LABEL_82;
      }
    }

    v105.n128_u64[0] = " region control flow edge ";
    v107 = 259;
    mlir::Operation::emitOpError(&v108, a1, &v105);
    sub_10027643C(&v108, a2, *v7);
    if (v108.n128_u64[0])
    {
      v105.n128_u32[0] = 3;
      v105.n128_u64[1] = ": source has ";
      v106 = 13;
      v63 = &v105;
      v64 = v109;
      if (v110 >= v111)
      {
        if (v109 <= &v105 && v109 + 24 * v110 > &v105)
        {
          v94 = &v105 - v109;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v64 = v109;
          v63 = (v109 + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
          v63 = &v105;
          v64 = v109;
        }
      }

      v65 = &v64[24 * v110];
      v66 = *v63;
      *(v65 + 2) = v63[1].n128_u64[0];
      *v65 = v66;
      v67 = ++v110;
      if (v108.n128_u64[0])
      {
        v105.n128_u32[0] = 5;
        v105.n128_u64[1] = v123;
        v68 = &v105;
        v69 = v109;
        if (v67 >= v111)
        {
          if (v109 <= &v105 && v109 + 24 * v67 > &v105)
          {
            v96 = &v105 - v109;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v67 + 1, 24);
            v69 = v109;
            v68 = (v109 + v96);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v67 + 1, 24);
            v68 = &v105;
            v69 = v109;
          }
        }

        v70 = &v69[24 * v110];
        v71 = *v68;
        *(v70 + 2) = v68[1].n128_u64[0];
        *v70 = v71;
        v72 = ++v110;
        if (v108.n128_u64[0])
        {
          v105.n128_u32[0] = 3;
          v105.n128_u64[1] = " operands, but target successor needs ";
          v106 = 38;
          v73 = &v105;
          v74 = v109;
          if (v72 >= v111)
          {
            if (v109 <= &v105 && v109 + 24 * v72 > &v105)
            {
              v98 = &v105 - v109;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v72 + 1, 24);
              v74 = v109;
              v73 = (v109 + v98);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v72 + 1, 24);
              v73 = &v105;
              v74 = v109;
            }
          }

          v75 = &v74[24 * v110];
          v76 = *v73;
          *(v75 + 2) = v73[1].n128_u64[0];
          *v75 = v76;
          v77 = ++v110;
          if (v108.n128_u64[0])
          {
            v105.n128_u32[0] = 5;
            v105.n128_u64[1] = v121;
            v78 = &v105;
            v79 = v109;
            if (v77 >= v111)
            {
              if (v109 <= &v105 && v109 + 24 * v77 > &v105)
              {
                v100 = &v105 - v109;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v77 + 1, 24);
                v79 = v109;
                v78 = (v109 + v100);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v77 + 1, 24);
                v78 = &v105;
                v79 = v109;
              }
            }

            v80 = &v79[24 * v110];
            v81 = *v78;
            *(v80 + 2) = v78[1].n128_u64[0];
            *v80 = v81;
            ++v110;
          }
        }
      }
    }

    v54 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v108);
    if (v108.n128_u64[0])
    {
      mlir::InFlightDiagnostic::report(&v108);
    }

    if (v118 == 1)
    {
      if (v117 != &v118)
      {
        free(v117);
      }

      v82 = __p;
      if (__p)
      {
        v83 = v116;
        v84 = __p;
        if (v116 != __p)
        {
          do
          {
            v83 = sub_100052FFC(v83 - 1);
          }

          while (v83 != v82);
          v84 = __p;
        }

        v116 = v82;
        operator delete(v84);
      }

      v85 = v113;
      if (v113)
      {
        v86 = v114;
        v87 = v113;
        if (v114 != v113)
        {
          do
          {
            v88 = *--v86;
            *v86 = 0;
            if (v88)
            {
              operator delete[]();
            }
          }

          while (v86 != v85);
          v87 = v113;
        }

        v114 = v85;
        operator delete(v87);
      }

      v62 = v109;
      if (v109 != v112)
      {
LABEL_54:
        free(v62);
      }
    }
  }

  else
  {
    v54 = 1;
  }

LABEL_82:
  if (v125 != v127)
  {
    free(v125);
  }

  return v54;
}

uint64_t sub_100276190(uint64_t a1)
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
      sub_10028D248();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D1F4();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D1F4();
    v4 = &unk_1002C1000;
    v18 = v23;
  }

  v19 = v4[353];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_100276374()
{
  {
    sub_10028D288();
  }

  return llvm::getTypeName<mlir::RegionBranchOpInterface>(void)::Name;
}

const char *sub_1002763BC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionBranchOpInterface]";
  v6 = 91;
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

uint64_t *sub_10027643C(uint64_t *a1, mlir::Region *this, unint64_t a3)
{
  if (*a1)
  {
    v5 = (a1 + 3);
    v6 = a1[3];
    v70 = 3;
    v71 = "from ";
    v72 = 5;
    v7 = *(a1 + 8);
    v8 = &v70;
    if (v7 >= *(a1 + 9))
    {
      v60 = this;
      if (v6 <= &v70 && v6 + 24 * v7 > &v70)
      {
        v62 = &v70 - v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 5, v7 + 1, 24);
        v6 = a1[3];
        v8 = &v62[v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v5, a1 + 5, v7 + 1, 24);
        v6 = a1[3];
        v8 = &v70;
      }

      this = v60;
    }

    v9 = v6 + 24 * *(a1 + 8);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 2);
    *v9 = v10;
    ++*(a1 + 8);
  }

  v11 = *a1;
  if (this)
  {
    if (v11)
    {
      v12 = (a1 + 3);
      v13 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v14 = *(a1 + 8);
      v15 = &v70;
      if (v14 >= *(a1 + 9))
      {
        v61 = this;
        if (v13 <= &v70 && v13 + 24 * v14 > &v70)
        {
          v63 = &v70 - v13;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a1 + 5, v14 + 1, 24);
          v13 = a1[3];
          v15 = &v63[v13];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, a1 + 5, v14 + 1, 24);
          v13 = a1[3];
          v15 = &v70;
        }

        this = v61;
      }

      v16 = v13 + 24 * *(a1 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      ++*(a1 + 8);
    }

    RegionNumber = mlir::Region::getRegionNumber(this);
    if (!*a1)
    {
      goto LABEL_17;
    }

    v19 = RegionNumber;
    v20 = (a1 + 3);
    v21 = a1[3];
    v70 = 5;
    v71 = v19;
    v22 = *(a1 + 8);
    v23 = &v70;
    if (v22 >= *(a1 + 9))
    {
      if (v21 <= &v70 && v21 + 24 * v22 > &v70)
      {
        v64 = &v70 - v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, a1 + 5, v22 + 1, 24);
        v21 = a1[3];
        v23 = &v64[v21];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20, a1 + 5, v22 + 1, 24);
        v21 = a1[3];
        v23 = &v70;
      }
    }

    v24 = v21 + 24 * *(a1 + 8);
    v25 = *v23;
    *(v24 + 16) = *(v23 + 2);
    *v24 = v25;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (!*a1)
    {
      goto LABEL_17;
    }

LABEL_15:
    v33 = (a1 + 3);
    v34 = a1[3];
    v70 = 3;
    v71 = " to ";
    v72 = 4;
    v35 = &v70;
    if (v26 >= *(a1 + 9))
    {
      if (v34 <= &v70 && v34 + 24 * v26 > &v70)
      {
        v65 = &v70 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, a1 + 5, v26 + 1, 24);
        v34 = a1[3];
        v35 = &v65[v34];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v33, a1 + 5, v26 + 1, 24);
        v34 = a1[3];
        v35 = &v70;
      }
    }

    v36 = v34 + 24 * *(a1 + 8);
    v37 = *v35;
    *(v36 + 16) = *(v35 + 2);
    *v36 = v37;
    ++*(a1 + 8);
    goto LABEL_17;
  }

  if (v11)
  {
    v27 = (a1 + 3);
    v28 = a1[3];
    v70 = 3;
    v71 = "parent operands";
    v72 = 15;
    v29 = *(a1 + 8);
    v30 = &v70;
    if (v29 >= *(a1 + 9))
    {
      if (v28 <= &v70 && v28 + 24 * v29 > &v70)
      {
        v68 = &v70 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, a1 + 5, v29 + 1, 24);
        v28 = a1[3];
        v30 = &v68[v28];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27, a1 + 5, v29 + 1, 24);
        v28 = a1[3];
        v30 = &v70;
      }
    }

    v31 = v28 + 24 * *(a1 + 8);
    v32 = *v30;
    *(v31 + 16) = *(v30 + 2);
    *v31 = v32;
    v26 = *(a1 + 8) + 1;
    *(a1 + 8) = v26;
    if (*a1)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v38 = *a1;
  if (a3)
  {
    if (v38)
    {
      v39 = (a1 + 3);
      v40 = a1[3];
      v70 = 3;
      v71 = "Region #";
      v72 = 8;
      v41 = *(a1 + 8);
      v42 = &v70;
      if (v41 >= *(a1 + 9))
      {
        if (v40 <= &v70 && v40 + 24 * v41 > &v70)
        {
          v66 = &v70 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, a1 + 5, v41 + 1, 24);
          v40 = a1[3];
          v42 = &v66[v40];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v39, a1 + 5, v41 + 1, 24);
          v40 = a1[3];
          v42 = &v70;
        }
      }

      v43 = v40 + 24 * *(a1 + 8);
      v44 = *v42;
      *(v43 + 16) = *(v42 + 2);
      *v43 = v44;
      ++*(a1 + 8);
    }

    v45 = mlir::Region::getRegionNumber(a3);
    if (*a1)
    {
      v46 = v45;
      v47 = (a1 + 3);
      v48 = a1[3];
      v70 = 5;
      v71 = v46;
      v49 = *(a1 + 8);
      v50 = &v70;
      if (v49 >= *(a1 + 9))
      {
        if (v48 <= &v70 && v48 + 24 * v49 > &v70)
        {
          v67 = &v70 - v48;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, a1 + 5, v49 + 1, 24);
          v48 = a1[3];
          v50 = &v67[v48];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, a1 + 5, v49 + 1, 24);
          v48 = a1[3];
          v50 = &v70;
        }
      }

      v51 = v48 + 24 * *(a1 + 8);
      v52 = *v50;
      *(v51 + 16) = *(v50 + 2);
      *v51 = v52;
LABEL_27:
      ++*(a1 + 8);
    }
  }

  else if (v38)
  {
    v53 = (a1 + 3);
    v54 = a1[3];
    v70 = 3;
    v71 = "parent results";
    v72 = 14;
    v55 = *(a1 + 8);
    v56 = &v70;
    if (v55 >= *(a1 + 9))
    {
      if (v54 <= &v70 && v54 + 24 * v55 > &v70)
      {
        v69 = &v70 - v54;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, a1 + 5, v55 + 1, 24);
        v54 = a1[3];
        v56 = &v69[v54];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v53, a1 + 5, v55 + 1, 24);
        v54 = a1[3];
        v56 = &v70;
      }
    }

    v57 = v54 + 24 * *(a1 + 8);
    v58 = *v56;
    *(v57 + 16) = *(v56 + 2);
    *v57 = v58;
    goto LABEL_27;
  }

  return a1;
}

uint64_t sub_100276A74(uint64_t a1)
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
      sub_10028D330();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D2DC();
    v3 = v21;
    a1 = v22;
    v4 = &unk_1002C1000;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D2DC();
    v4 = &unk_1002C1000;
    v18 = v23;
  }

  v19 = v4[358];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_100276C58()
{
  {
    sub_10028D370();
  }

  return llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>(void)::Name;
}

const char *sub_100276CA0()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionBranchTerminatorOpInterface]";
  v6 = 101;
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

double sub_100276D20@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **a1;
  v6[0] = (*(*a1)[1])();
  v6[1] = v4;
  mlir::OperandRange::getTypes(v6, &v7);
  mlir::ValueRange::ValueRange(v11, v7 + 32 * v8, v9 - v8);
  mlir::TypeRange::TypeRange(v10, v11[0], v11[1]);
  result = *v10;
  *a2 = *v10;
  *(a2 + 16) = 1;
  return result;
}

void sub_100276DCC(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v35) = 0;
  v36 = 0;
  v3 = *a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
LABEL_20:
    mlir::OperandRange::getTypes(&v35, &v41);
    mlir::ValueRange::ValueRange(&v37, v41 + 32 * v42, v44 - v42);
    *(mlir::TypeRange::TypeRange(a3, v37, v38) + 16) = 1;
    return;
  }

  v6 = *v3;
  v7 = &(*v3)[2 * v4];
  while (1)
  {
    v8 = *v6;
    (*v6[1])(&v41);
    v9 = mlir::MutableOperandRange::operator mlir::OperandRange(&v41);
    v11 = v10;
    if (v43 != v45)
    {
      free(v43);
    }

    *&v34 = v9;
    *(&v34 + 1) = v11;
    if ((v36 & 1) == 0)
    {
      v35 = v34;
      v36 = 1;
      goto LABEL_4;
    }

    v12 = *(a1 + 8);
    mlir::OperandRange::getTypes(&v35, &v41);
    mlir::ValueRange::ValueRange(&v37, v41 + 32 * v42, v44 - v42);
    mlir::TypeRange::TypeRange(&v54, v37, v38);
    mlir::OperandRange::getTypes(&v34, &v41);
    mlir::ValueRange::ValueRange(&v37, v41 + 32 * v42, v44 - v42);
    mlir::TypeRange::TypeRange(v53, v37, v38);
    v13 = v55;
    if (v55 != v53[1])
    {
      goto LABEL_14;
    }

    if (v55)
    {
      break;
    }

LABEL_4:
    v6 += 2;
    if (v6 == v7)
    {
      goto LABEL_20;
    }
  }

  v14 = 0;
  v15 = v54;
  v16 = v53[0];
  while (1)
  {
    mlir::TypeRange::dereference_iterator(v15, v14);
    mlir::TypeRange::dereference_iterator(v16, v14);
    v17 = **v12;
    if (!(*((*v12)[1] + 32))())
    {
      break;
    }

    if (v13 == ++v14)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  v18 = **(a1 + 16);
  v37 = " along control flow edge";
  v40 = 259;
  mlir::Operation::emitOpError(&v41, v18, &v37);
  sub_10027643C(&v41, *(a1 + 24), a2);
  if (!v41)
  {
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v52 != 1)
    {
      return;
    }

    goto LABEL_22;
  }

  LODWORD(v37) = 3;
  v38 = " operands mismatch between return-like terminators";
  v39 = 50;
  v19 = &v37;
  v20 = v44;
  if (v45[0] >= v45[1])
  {
    if (v44 <= &v37 && v44 + 24 * v45[0] > &v37)
    {
      v31 = &v37 - v44;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45[0] + 1, 24);
      v20 = v44;
      v19 = (v44 + v31);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45[0] + 1, 24);
      v19 = &v37;
      v20 = v44;
    }
  }

  v21 = &v20[24 * v45[0]];
  v22 = *v19;
  *(v21 + 2) = v19[2];
  *v21 = v22;
  ++v45[0];
  v23 = v41;
  *a3 = 0;
  *(a3 + 16) = 0;
  if (v23)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
LABEL_22:
    if (v51 != &v52)
    {
      free(v51);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = sub_100052FFC(v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v30 = *--v28;
          *v28 = 0;
          if (v30)
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
    }

    if (v44 != v46)
    {
      free(v44);
    }
  }
}

uint64_t mlir::ShapeAdaptor::hasRank(mlir::ShapeAdaptor *this)
{
  if (*this < 8uLL)
  {
    return 0;
  }

  v4 = *this & 6;
  v5 = *this & 0xFFFFFFFFFFFFFFF8;
  if (v4 == 2 && v5 != 0)
  {
    v20[2] = v1;
    v20[3] = v2;
    v7 = *v5;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = v7;
      v19 = v5;
      sub_10027F2B8();
      v5 = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_23;
      }
    }

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
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v17 = v11[1];
      goto LABEL_25;
    }

LABEL_23:
    v17 = 0;
LABEL_25:
    v20[0] = v5;
    v20[1] = v17;
    return mlir::ShapedType::hasRank(v20) & 1;
  }

  if (v4 == 4)
  {
    return 1;
  }

  else
  {
    return *(v5 + 56) & 1;
  }
}

uint64_t mlir::ShapeAdaptor::getElementType(mlir::ShapeAdaptor *this)
{
  if (*this < 8uLL)
  {
    return 0;
  }

  v4 = *this & 6;
  v5 = (*this & 0xFFFFFFFFFFFFFFF8);
  if (v4 == 2 && v5 != 0)
  {
    v20[2] = v1;
    v20[3] = v2;
    v7 = *v5;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = v7;
      v19 = v5;
      sub_10027F2B8();
      v5 = v19;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v18 + 8);
      v10 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_22;
      }
    }

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
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v17 = v11[1];
      goto LABEL_24;
    }

LABEL_22:
    v17 = 0;
LABEL_24:
    v20[0] = v5;
    v20[1] = v17;
    return mlir::ShapedType::getElementType(v20);
  }

  if (v4 == 4)
  {
    return 0;
  }

  return v5[5];
}

void mlir::ShapeAdaptor::getDims(uint64_t *a1, uint64_t a2)
{
  v3 = *a1 & 6;
  v4 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v3 == 2)
  {
    v5 = v4 == 0;
    v6 = *a1 < 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v11 = *v4;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v13 = v11[1];
      v14 = *(v11 + 4);
      if (!v14)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_10027F2B8();
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v13 = v11[1];
      v14 = *(v11 + 4);
      if (!v14)
      {
        goto LABEL_45;
      }
    }

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
    if (v15 != &v13[2 * v14] && *v15 == v12)
    {
      v27 = v15[1];
      goto LABEL_47;
    }

LABEL_45:
    v27 = 0;
LABEL_47:
    *&v37 = v4;
    *(&v37 + 1) = v27;
    Shape = mlir::ShapedType::getShape(&v37);
    v30 = v29;
    v31 = 0;
    *(a2 + 8) = 0;
    v32 = (8 * v29) >> 3;
    if (v32 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v32, 8);
      v31 = *(a2 + 8);
    }

    if (v30)
    {
      memcpy((*a2 + 8 * v31), Shape, 8 * v30);
      v31 = *(a2 + 8);
    }

    v26 = v31 + v30;
    goto LABEL_52;
  }

  if (v3 == 4)
  {
    v7 = v4 == 0;
    v6 = *a1 < 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *v4;
    v9 = *(v4 + 8);
    *(a2 + 8) = 0;
    if (v9 <= *(a2 + 12))
    {
      if (!v9)
      {
        v25 = 0;
        goto LABEL_40;
      }

      v10 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 8);
      v10 = *(a2 + 8);
    }

    memcpy((*a2 + 8 * v10), v8, 8 * v9);
    v25 = *(a2 + 8);
LABEL_40:
    v26 = v25 + v9;
LABEL_52:
    *(a2 + 8) = v26;
    return;
  }

  v40 = *a1 & 0xFFFFFFFFFFFFFFF8;
  *(a2 + 8) = 0;
  NumElements = mlir::DenseElementsAttr::getNumElements(&v40);
  if (NumElements > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), NumElements, 8);
  }

  sub_1000B83F8(&v40, &v37);
  v35 = v37;
  v36 = v38;
  for (i = v39; v36 != i; *&v36 = v36 + 1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v35, &v33);
    if (v34 > 0x40)
    {
      v23 = *v33;
    }

    else if (v34)
    {
      v23 = (v33 << -v34) >> -v34;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a2 + 8);
    if (v24 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v24 + 1, 8);
      v24 = *(a2 + 8);
    }

    *(*a2 + 8 * v24) = v23;
    ++*(a2 + 8);
    if (v34 >= 0x41 && v33)
    {
      operator delete[]();
    }
  }
}

{
  *(a2 + 56) = 1;
  mlir::ShapeAdaptor::getDims(a1, a2);
}

unint64_t mlir::ValueShapeRange::getShape(mlir::ValueShapeRange *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 1) <= a2)
  {
    return 0;
  }

  v3 = mlir::ValueRange::dereference_iterator(this, a2);
  v4 = *(this + 2);
  if (!v4 || (result = v4(*(this + 3), v3), result <= 7))
  {
    result = sub_10005E890((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (result)
    {
      return result & 0xFFFFFFFFFFFFFFF9 | 2;
    }
  }

  return result;
}

uint64_t sub_10027778C(uint64_t a1)
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
      sub_10028D7C0();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &CostModelSegmenter;
    v5 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D76C();
    v3 = v21;
    a1 = v22;
    v4 = &CostModelSegmenter;
    v5 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;
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
    sub_10028D76C();
    v4 = &CostModelSegmenter;
    v18 = v23;
  }

  v19 = *&v4[54].ivar_base_size;
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t sub_100277970(unint64_t **a1, uint64_t a2)
{
  {
    sub_10028D800();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = &v9;
    v8[1] = &_mh_execute_header;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (mlir::DenseIntElementsAttr::classof(v5))
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

    if (v8[0] != &v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

void sub_100277A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, va, v16 + 1, 24);
}

uint64_t mlir::function_interface_impl::getArgAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 24))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::getResultAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 32))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::parseFunctionSignatureWithArguments(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  *a4 = 0;
  v11[0] = a4;
  v11[1] = a1;
  v11[2] = &v12;
  v11[3] = a3;
  v9 = (*(*a1 + 392))(a1, 1, sub_100277CB4, v11, 0, 0);
  result = 0;
  if (v9)
  {
    if ((*(*a1 + 64))(a1))
    {
      return mlir::call_interface_impl::parseFunctionResultList(a1, a5, a6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100277CB4(uint64_t a1)
{
  if (**a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = (*(*v2 + 40))(v2);
    v35[0] = "variadic arguments must be in the end of the argument list";
    LOWORD(v36) = 259;
    (*(*v2 + 24))(&v39, v2, v3, v35);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v47;
        v7 = __p;
        if (v47 != __p)
        {
          do
          {
            v6 = sub_100052FFC(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v47 = v5;
        operator delete(v7);
      }

      v8 = v44;
      if (!v44)
      {
        goto LABEL_57;
      }

      v9 = v45;
      v10 = v44;
      if (v45 == v44)
      {
LABEL_56:
        v45 = v8;
        operator delete(v10);
LABEL_57:
        if (v42 != v43)
        {
          free(v42);
        }

        return v4;
      }

      do
      {
        v11 = *--v9;
        *v9 = 0;
        if (v11)
        {
          operator delete[]();
        }
      }

      while (v9 != v8);
LABEL_55:
      v10 = v44;
      goto LABEL_56;
    }

    return v4;
  }

  if (**(a1 + 16) == 1 && ((*(**(a1 + 8) + 352))(*(a1 + 8)) & 1) != 0)
  {
    v12 = *a1;
    v4 = 1;
    *v12 = 1;
    return v4;
  }

  memset(v35, 0, 24);
  v38[8] = 0;
  v36 = 0;
  Dictionary = 0;
  v38[0] = 0;
  v13 = (*(**(a1 + 8) + 760))();
  if ((v13 & 0x100) != 0)
  {
    if (v13)
    {
      v21 = *(a1 + 24);
      v22 = *(v21 + 2);
      if (v22 && !*(*v21 + (v22 << 6) - 48))
      {
        (*(**(a1 + 8) + 24))(&v39);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v49 == 1)
        {
          sub_100052F18(&v40);
        }

        return v4;
      }

LABEL_53:
      v24 = *v21;
      v25 = v35;
      if (v22 >= *(v21 + 3))
      {
        v31 = v21;
        v32 = v22;
        v33 = v24 + (v22 << 6) > v35;
        if (v24 <= v35 && v33)
        {
          v34 = v35 - v24;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v31, v31 + 2, v32 + 1, 64);
          v21 = v31;
          v24 = *v31;
          v25 = &v34[*v31];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v31, v31 + 2, v32 + 1, 64);
          v21 = v31;
          v24 = *v31;
          v25 = v35;
        }
      }

      v26 = (v24 + (*(v21 + 2) << 6));
      v27 = *v25;
      v28 = *(v25 + 1);
      v29 = *(v25 + 3);
      v26[2] = *(v25 + 2);
      v26[3] = v29;
      *v26 = v27;
      v26[1] = v28;
      ++*(v21 + 2);
      return 1;
    }

    return 0;
  }

  v35[0] = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v14 = *(a1 + 24);
  v15 = *(v14 + 8);
  if (!v15 || !*(*v14 + (v15 << 6) - 48))
  {
    v39 = &v41;
    v40 = 0x400000000;
    v43[5] = 4;
    if ((*(**(a1 + 8) + 536))(*(a1 + 8), &v36) & 1) != 0 && ((*(**(a1 + 8) + 488))(*(a1 + 8), &v39) & 1) != 0 && ((*(**(a1 + 8) + 656))(*(a1 + 8), v38))
    {
      Context = mlir::AsmParser::getContext(*(a1 + 8));
      Dictionary = mlir::NamedAttrList::getDictionary(&v39, Context);
      if (v39 != &v41)
      {
        free(v39);
      }

      v21 = *(a1 + 24);
      LODWORD(v22) = *(v21 + 2);
      goto LABEL_53;
    }

    if (v39 != &v41)
    {
      free(v39);
    }

    return 0;
  }

  (*(**(a1 + 8) + 24))(&v39);
  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v47;
      v18 = __p;
      if (v47 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v47 = v16;
      operator delete(v18);
    }

    v8 = v44;
    if (!v44)
    {
      goto LABEL_57;
    }

    v19 = v45;
    v10 = v44;
    if (v45 == v44)
    {
      goto LABEL_56;
    }

    do
    {
      v20 = *--v19;
      *v19 = 0;
      if (v20)
      {
        operator delete[]();
      }
    }

    while (v19 != v8);
    goto LABEL_55;
  }

  return v4;
}

uint64_t sub_1002782F8(uint64_t a1)
{
  if ((*(*a1 + 528))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 40))(a1);
  v18 = 257;
  (*(*a1 + 24))(v22, a1, v3, v17);
  if (v22[0])
  {
    v19 = 3;
    v20 = "expected valid '@'-identifier for symbol name";
    v21 = 45;
    v4 = &v19;
    v5 = v23;
    if (v24 >= v25)
    {
      if (v23 <= &v19 && v23 + 24 * v24 > &v19)
      {
        v16 = &v19 - v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v5 = v23;
        v4 = (v23 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v26, v24 + 1, 24);
        v4 = &v19;
        v5 = v23;
      }
    }

    v6 = &v5[24 * v24];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v24;
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v30;
      v10 = __p;
      if (v30 != __p)
      {
        do
        {
          v9 = sub_100052FFC(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v30 = v8;
      operator delete(v10);
    }

    v11 = v27;
    if (v27)
    {
      v12 = v28;
      v13 = v27;
      if (v28 != v27)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v27;
      }

      v28 = v11;
      operator delete(v13);
    }

    if (v23 != v26)
    {
      free(v23);
    }
  }

  return v2;
}

uint64_t mlir::OpTrait::util::getBroadcastedShape(void *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 8) = 0;
  if (a2 <= a4)
  {
    if (!a4)
    {
      return 1;
    }

    v5 = 0;
    v14 = 8 * a4;
    v15 = a3;
    do
    {
      v16 = *v15;
      if (v5 >= *(a5 + 12))
      {
        v17 = a2;
        v18 = a3;
        v19 = a1;
        v20 = a4;
        v21 = a5;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v5 + 1, 8);
        a2 = v17;
        a4 = v20;
        a1 = v19;
        a3 = v18;
        a5 = v21;
        v5 = *(v21 + 8);
      }

      *(*a5 + 8 * v5) = v16;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v15;
      v14 -= 8;
    }

    while (v14);
  }

  else
  {
    v5 = 0;
    v6 = 8 * a2;
    v7 = a1;
    do
    {
      v8 = *v7;
      if (v5 >= *(a5 + 12))
      {
        v9 = a2;
        v10 = a3;
        v11 = a1;
        v12 = a4;
        v13 = a5;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v5 + 1, 8);
        a2 = v9;
        a4 = v12;
        a1 = v11;
        a3 = v10;
        a5 = v13;
        v5 = *(v13 + 8);
      }

      *(*a5 + 8 * v5) = v8;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v7;
      v6 -= 8;
    }

    while (v6);
  }

  v22 = 1;
  if (a2 && a4)
  {
    v23 = 8 * a2 - 8;
    v24 = (*a5 + 8 * v5 - 8);
    v25 = 8 * a4 - 8;
    while (1)
    {
      v26 = *(a1 + v23);
      v27 = *(a3 + v25);
      if (v26 == 0x8000000000000000)
      {
        break;
      }

      if (v27 == 0x8000000000000000)
      {
        v28 = *(a1 + v23);
        if (v26 > 1)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      v29 = v26 == v27 || v27 == 1;
      v28 = *(a1 + v23);
      if (!v29)
      {
        v28 = *(a3 + v25);
        if (v26 != 1)
        {
          v22 = 0;
          *(a5 + 8) = 0;
          return v22;
        }
      }

LABEL_27:
      *v24-- = v28;
      v22 = 1;
      if (v23)
      {
        v23 -= 8;
        v30 = v25;
        v25 -= 8;
        if (v30)
        {
          continue;
        }
      }

      return v22;
    }

    v28 = *(a3 + v25);
    if (v27 > 1)
    {
      goto LABEL_27;
    }

    v28 = *(a1 + v23);
    if (v27 == 1)
    {
      goto LABEL_27;
    }

LABEL_21:
    v28 = 0x8000000000000000;
    goto LABEL_27;
  }

  return v22;
}

uint64_t llvm::APInt::APInt(uint64_t a1, int a2)
{
  sub_100030688(a1, a2);
  if (!v4 & v3)
  {
    sub_100030640();
  }

  sub_100030704();
  if (v2)
  {
    sub_10003069C();
    if (v3)
    {
      sub_100030624();
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_1000306B0(v5);
}

uint64_t llvm::APInt::APInt(llvm::APInt *this, int a2, unsigned int a3, const unint64_t *a4)
{
  sub_100030688(this, a2);
  if (!v6 & v5)
  {
    sub_100030640();
  }

  sub_100030704();
  if (v4)
  {
    sub_10003069C();
    if (v5)
    {
      sub_100030624();
    }
  }

  else
  {
    v7 = 0;
  }

  return sub_1000306B0(v7);
}

void llvm::APInt::shlSlowCase(const void **this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 2);
  if (a2)
  {
    v4 = *this;
    v5 = (v3 + 63) >> 6;
    if (a2 >> 6 >= v5)
    {
      v6 = (v3 + 63) >> 6;
    }

    else
    {
      v6 = a2 >> 6;
    }

    v7 = a2 & 0x3F;
    if ((a2 & 0x3F) != 0)
    {
      if (a2 >> 6 < v5)
      {
        v8 = v5 - 1;
        v9 = v4[v5 - 1 - v6] << v7;
        v10 = &v4[(v5 - 1)];
        *v10 = v9;
        if (v5 - 1 > v6)
        {
          v11 = &v4[v8 - v6 - 1];
          v12 = v5 - 2;
          v13 = v5 - 2 - v6;
          v14 = &v4[v12];
          do
          {
            v15 = *v11--;
            *v10 = (v15 >> (64 - v7)) | v9;
            --v8;
            v9 = v4[v13] << v7;
            v10 = &v4[v8];
            *v14-- = v9;
            --v13;
          }

          while (v6 < v8);
        }
      }
    }

    else
    {
      memmove(&v4[v6], *this, 8 * (v5 - v6));
    }

    bzero(v4, 8 * v6);
    LODWORD(v3) = *(v2 + 2);
  }

  if (v3)
  {
    sub_1000306F0();
    if (v17)
    {
      v18 = *v2;
      sub_1000306DC();
      v2 = (v20 + 8 * v19);
    }
  }

  else
  {
    v16 = 0;
  }

  *v2 = (*v2 & v16);
}

void *sub_1002789E0(void *a1, unint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a2;
  v5 = a1;
  *a2 = a1;
  *a1 = a3;
  v6 = *a4;
  v7 = (v6 + 63) >> 6;
  result = memset(a1 + 1, 255, (8 * v7 - 8));
  if (v6)
  {
    v9 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (v6 >= 0x41)
    {
      v4 = (v5 + 8 * (v7 - 1));
      v5 = *v4;
    }
  }

  else
  {
    v9 = 0;
  }

  *v4 = v5 & v9;
  return result;
}

void sub_100278A6C()
{
  v0 = __cxa_guard_acquire(&qword_1002C42F0);
  if (v0)
  {
    sub_1000340D4(v0, "General options", v1, "");

    __cxa_guard_release(&qword_1002C42F0);
  }
}

void sub_100278AD0()
{
  v0 = __cxa_guard_acquire(&qword_1002C4378);
  if (v0)
  {
    sub_1000356D4(v0, &off_1002C0440, &_mh_execute_header);

    __cxa_guard_release(&qword_1002C4378);
  }
}

void sub_100278B28()
{
  v0 = __cxa_guard_acquire(&qword_1002C4378);
  if (v0)
  {
    sub_1000356D4(v0, &off_1002C0440, &_mh_execute_header);
    __cxa_guard_release(&qword_1002C4378);
  }
}

void sub_100278B6C()
{
  if (__cxa_guard_acquire(&qword_1002C43A8))
  {
    std::recursive_mutex::recursive_mutex(&stru_1002C43B0);
    __cxa_atexit(&std::recursive_mutex::~recursive_mutex, &stru_1002C43B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1002C43A8);
  }
}

void sub_100278BE4()
{
  if (__cxa_guard_acquire(&qword_1002C4400))
  {
    dword_1002C43F4 = sub_100036EA8();

    __cxa_guard_release(&qword_1002C4400);
  }
}

void sub_100278C34()
{
  v0 = __cxa_guard_acquire(&qword_1002C4408);
  if (v0)
  {
    sub_100040DC0(v0, "-");
    v1 = sub_100040DAC();
    __cxa_atexit(v1, &unk_1002C4450, v2);

    __cxa_guard_release(&qword_1002C4408);
  }
}

void sub_100278CA8()
{
  if (__cxa_guard_acquire(qword_1002C4410))
  {
    llvm::raw_fd_ostream::raw_fd_ostream(&unk_1002C44B0, 2u, 0, 1, 0);
    v0 = sub_100040DAC();
    __cxa_atexit(v0, &unk_1002C44B0, v1);

    __cxa_guard_release(qword_1002C4410);
  }
}

void sub_100278D24()
{
  if (__cxa_guard_acquire(&qword_1002C4528))
  {
    dword_1002C4520 = getpagesize();

    __cxa_guard_release(&qword_1002C4528);
  }
}

void sub_100278D74()
{
  if (__cxa_guard_acquire(&qword_1002C5060))
  {
    dword_1002C5058 = sub_1000502EC();

    __cxa_guard_release(&qword_1002C5060);
  }
}

uint64_t sub_100278DC4(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  result = sub_1000560B4(a1, a2);
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    v6 = v5[11];
    if (*(v5 + 24))
    {
      sub_100057678();
      do
      {
        if (v3 + 2 != *v3)
        {
          free(*v3);
        }

        v3 -= 10;
        v2 += 80;
      }

      while (v2);
      v6 = v5[11];
    }

    if (v6 != (v5 + 13))
    {
      free(v6);
    }

    v7 = v5[3];
    if (v7 != (v5 + 5))
    {
      free(v7);
    }

    sub_100057690();
  }

  return result;
}

void sub_100278E58()
{
  {
    v0 = sub_100055C50();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100278EAC()
{
  {
    llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name = sub_100055C98();
    *algn_1002C19C8 = v0;
  }
}

void sub_100278F00()
{
  {
    v0 = sub_10005E7C8();
    mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100278F40()
{
  {
    v0 = sub_10005D4A4();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100060898(v2);
  }
}

void sub_100278F7C()
{
  {
    v0 = sub_10005EA24();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100278FD0()
{
  {
    v0 = sub_10005D4A4();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100060898(v2);
  }
}

void sub_100279020()
{
  {
    llvm::getTypeName<mlir::FloatType>(void)::Name = sub_10005D4EC();
    unk_1002C33B0 = v0;
  }
}

void sub_100279074()
{
  {
    llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(void)::Name = sub_10005E810();
    *algn_1002C0E88 = v0;
  }
}

void sub_1002790C8()
{
  {
    llvm::getTypeName<mlir::ShapedType>(void)::Name = sub_10005EA6C();
    *algn_1002C0ED8 = v0;
  }
}

void sub_10027911C()
{
  {
    v0 = sub_100062EA0();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100279170()
{
  {
    llvm::getTypeName<mlir::TypedAttr>(void)::Name = sub_100062EE8();
    unk_1002C0E10 = v0;
  }
}

void sub_1002791C4()
{
  if (__cxa_guard_acquire(&qword_1002C04D8))
  {
    v0 = sub_100065820();
    qword_1002C04D0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C04D8);
  }
}

void sub_100279218()
{
  if (__cxa_guard_acquire(&qword_1002C04F0))
  {
    qword_1002C04E0 = sub_100065868();
    *algn_1002C04E8 = v0;

    __cxa_guard_release(&qword_1002C04F0);
  }
}

void sub_10027926C()
{
  {
    v0 = sub_1000714E0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002792AC()
{
  {
    v0 = sub_1000715A8();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002792EC()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name = sub_100071528();
    *algn_1002C1608 = v0;
  }
}

void sub_100279340()
{
  {
    llvm::getTypeName<mlir::OpAsmOpInterface>(void)::Name = sub_1000715F0();
    unk_1002C18A0 = v0;
  }
}

void sub_100279394()
{
  {
    v0 = sub_10007809C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002793D4()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>(void)::Name = sub_1000780E4();
    unk_1002C1BD0 = v0;
  }
}

void sub_100279428()
{
  {
    v0 = sub_10005D4A4();
    mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100279468()
{
  if (__cxa_guard_acquire(&qword_1002C0508))
  {
    v0 = sub_1000827D8();
    off_1002C0500 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0508);
  }
}

void sub_1002794A8()
{
  if (__cxa_guard_acquire(&qword_1002C0520))
  {
    qword_1002C0510 = sub_100082820();
    *algn_1002C0518 = v0;

    __cxa_guard_release(&qword_1002C0520);
  }
}

void sub_1002794FC()
{
  if (__cxa_guard_acquire(&qword_1002C0548))
  {
    qword_1002C0538 = sub_1000828E8();
    unk_1002C0540 = v0;

    __cxa_guard_release(&qword_1002C0548);
  }
}

void sub_100279550()
{
  {
    v0 = sub_100082AFC();
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002795A4()
{
  {
    llvm::getTypeName<mlir::VerifiableTensorEncoding>(void)::Name = sub_100082B44();
    unk_1002C2C70 = v0;
  }
}

void sub_1002795F8()
{
  if (__cxa_guard_acquire(&qword_1002C0530))
  {
    v0 = sub_1000828A0();
    qword_1002C0528 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0530);
  }
}

void sub_10027964C()
{
  if (__cxa_guard_acquire(&qword_1002C0558))
  {
    v0 = sub_100087B98();
    qword_1002C0550 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0558);
  }
}

void sub_10027968C()
{
  if (__cxa_guard_acquire(&qword_1002C0580))
  {
    v0 = sub_100087C60();
    qword_1002C0578 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0580);
  }
}

void sub_1002796CC()
{
  if (__cxa_guard_acquire(&qword_1002C0570))
  {
    qword_1002C0560 = sub_100087BE0();
    *algn_1002C0568 = v0;

    __cxa_guard_release(&qword_1002C0570);
  }
}

void sub_100279720()
{
  if (__cxa_guard_acquire(&qword_1002C0598))
  {
    qword_1002C0588 = sub_100087BE0();
    unk_1002C0590 = v0;

    __cxa_guard_release(&qword_1002C0598);
  }
}

void sub_100279774()
{
  {
    v0 = sub_10008A374();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002797C8()
{
  {
    v0 = sub_10008A374();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100279808()
{
  {
    llvm::getTypeName<mlir::BytecodeOpInterface>(void)::Name = sub_10008A3BC();
    unk_1002C16F0 = v0;
  }
}

void sub_10027985C()
{
  {
    v0 = sub_100090F30();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002798B0()
{
  {
    llvm::getTypeName<mlir::BytecodeDialectInterface>(void)::Name = sub_100090F78();
    *algn_1002C2BF8 = v0;
  }
}

void sub_100279904()
{
  {
    *&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name = sub_1000A535C();
    *(&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name + 1) = v0;
  }
}

void sub_100279944()
{
  if (__cxa_guard_acquire(&qword_1002C05C8))
  {
    *&xmmword_1002C05B8 = sub_1000A52DC();
    *(&xmmword_1002C05B8 + 1) = v0;

    __cxa_guard_release(&qword_1002C05C8);
  }
}

void sub_100279998()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface>(void)::Name = sub_1000A8698();
    unk_1002C0F50 = v0;
  }
}

void sub_1002799EC(llvm::Twine *a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "builtin.module";
  *(a2 + 24) = 14;
  *(a3 + 32) = 259;
  sub_100038624(a2, a3, a1);
  llvm::report_fatal_error(a1, 1);
}

void sub_100279A54()
{
  if (__cxa_guard_acquire(&qword_1002C0608))
  {
    v0 = sub_1000ABE54();
    qword_1002C0600 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0608);
  }
}

void sub_100279AA8()
{
  if (__cxa_guard_acquire(&qword_1002C0630))
  {
    v0 = sub_1000AC01C();
    qword_1002C0628 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0630);
  }
}

void sub_100279AFC()
{
  if (__cxa_guard_acquire(&qword_1002C05E0))
  {
    v0 = sub_1000ABCC4();
    qword_1002C05D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C05E0);
  }
}

void sub_100279B50()
{
  if (__cxa_guard_acquire(&qword_1002C05F8))
  {
    qword_1002C05E8 = sub_1000ABD0C();
    unk_1002C05F0 = v0;

    __cxa_guard_release(&qword_1002C05F8);
  }
}

void sub_100279BA4()
{
  if (__cxa_guard_acquire(&qword_1002C0620))
  {
    qword_1002C0610 = sub_1000ABE9C();
    *algn_1002C0618 = v0;

    __cxa_guard_release(&qword_1002C0620);
  }
}

void sub_100279BF8()
{
  if (__cxa_guard_acquire(&qword_1002C0648))
  {
    qword_1002C0638 = sub_1000AC064();
    unk_1002C0640 = v0;

    __cxa_guard_release(&qword_1002C0648);
  }
}

llvm::raw_ostream *mlir::OpAsmPrinter::printFunctionalType(mlir::OpAsmPrinter *this, mlir::Operation *a2)
{
  v4 = (*(*this + 16))(this);
  sub_1000C9AF0(v4);
  if (v6)
  {
    llvm::raw_ostream::write(v4, 40);
  }

  else
  {
    sub_1000C9BD8(v5);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 17);
    if (v7)
    {
      v8 = *(a2 + 9);
      v9 = *(v8 + 24);
      v10 = v9 ? *(v9 + 8) & 0xFFFFFFFFFFFFFFF8 : 0;
      (*(*this + 32))(this, v10);
      if (v7 != 1)
      {
        v11 = v7 - 1;
        v12 = v8 + 56;
        do
        {
          v14 = *(v4 + 3);
          v13 = *(v4 + 4);
          sub_1000C9AE4();
          if (!v16 & v6)
          {
            sub_1000C9B98(v15);
          }

          else
          {
            llvm::raw_ostream::write(v4, ", ", 2uLL);
          }

          if (*v12)
          {
            v17 = *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v17 = 0;
          }

          (*(*this + 32))(this, v17);
          v12 += 32;
          --v11;
        }

        while (v11);
      }
    }
  }

  v18 = *(v4 + 4);
  if ((*(v4 + 3) - v18) > 4)
  {
    *(v18 + 4) = 32;
    *v18 = 1043144745;
    *(v4 + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(v4, ") -> ", 5uLL);
  }

  if (*(a2 + 9) != 1 || (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0 && *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v21 = *(v4 + 4);
    if (v21 >= *(v4 + 3))
    {
      llvm::raw_ostream::write(v4, 40);
    }

    else
    {
      sub_1000C9BD8(v21);
    }

    v22 = *(a2 + 9);
    result = (a2 - 16);
    if (v22)
    {
      v24 = a2 - 16;
    }

    else
    {
      v24 = 0;
    }

    if (v22)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);
      v26 = NextResultAtOffset ? *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8 : 0;
      result = (*(*this + 32))(this, v26);
      if (v22 != 1)
      {
        for (i = 1; i != v22; ++i)
        {
          v29 = *(v4 + 3);
          v28 = *(v4 + 4);
          sub_1000C9AE4();
          if (!v16 & v6)
          {
            sub_1000C9B98(v30);
          }

          else
          {
            llvm::raw_ostream::write(v4, ", ", 2uLL);
          }

          v31 = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, i);
          if (v31)
          {
            v32 = *(v31 + 8) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v32 = 0;
          }

          result = (*(*this + 32))(this, v32);
        }
      }
    }

    v33 = *(v4 + 4);
    if (v33 >= *(v4 + 3))
    {

      return llvm::raw_ostream::write(v4, 41);
    }

    else
    {
      *(v4 + 4) = v33 + 1;
      *v33 = 41;
    }
  }

  else
  {
    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(a2 - 16, 0);
    if (v19)
    {
      v20 = *(v19 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v20 = 0;
    }

    v34 = *(*this + 32);

    return v34(this, v20);
  }

  return result;
}

void sub_100279FE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 80);
  v6 = *(a1 + 152);
  *&v125[0] = a2;
  v7 = *(v4 + 672);
  if (v7)
  {
    v8 = sub_10008CF58(v7, v125);
    *v8 = v5;
    v8[1] = v6;
    v6 = *(a1 + 152);
  }

  llvm::raw_ostream::indent(*(a1 + 16), v6);
  v9 = *(a2 + 36);
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = *(a1 + 24);
  v11 = *(v10 + 368);
  if (v11)
  {
    v12 = *(v10 + 352);
    v13 = (v11 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v14 = *(v12 + 32 * v13);
    if (v14 == a2)
    {
LABEL_6:
      if (v13 != v11)
      {
        v15 = v12 + 32 * v13;
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = *(v15 + 8);
          v124 = *(v15 + 16);
          if (v16 != 1)
          {
            v18 = v16 - 1;
            v19 = *(a1 + 16);
            v20 = v17[1] - *v17;
            v21 = sub_1000C9BCC(v10);
            sub_1000B64E4(v21, v22, v23, v19);
            if (v20 >= 2)
            {
              v24 = sub_1000C9AF0(*(a1 + 16));
              if (v94)
              {
                v26 = llvm::raw_ostream::write(v24, 58);
              }

              else
              {
                v26 = sub_1000C9B08(v24, v25);
                *v27 = 58;
              }

              llvm::raw_ostream::operator<<(v26, v20);
            }

            if (v18 != 1)
            {
              v28 = v18 - 1;
              v29 = &_mh_execute_header;
              do
              {
                sub_1000C9AC4();
                if (!v31 && v94)
                {
                  *v30 = 8236;
                  sub_1000C9AB4();
                }

                else
                {
                  llvm::raw_ostream::write(v19, ", ", 2uLL);
                }

                v32 = *(v17 + (v29 >> 30) + 4) - *(v17 + (v29 >> 30));
                v33 = *(a1 + 16);
                v34 = sub_1000C9BCC(*(a1 + 24));
                sub_1000B64E4(v34, v35, v36, v37);
                if (v32 >= 2)
                {
                  v38 = sub_1000C9AF0(*(a1 + 16));
                  if (v94)
                  {
                    v40 = llvm::raw_ostream::write(v38, 58);
                  }

                  else
                  {
                    v40 = sub_1000C9B08(v38, v39);
                    *v41 = 58;
                  }

                  llvm::raw_ostream::operator<<(v40, v32);
                }

                v29 = (&_mh_execute_header + v29);
                --v28;
              }

              while (v28);
            }
          }

          sub_1000C9AFC();
          sub_1000C9AE4();
          if (!v31 && v94)
          {
            sub_1000C9B14(v42, v43);
          }

          else
          {
            llvm::raw_ostream::write(v42, ", ", 2uLL);
          }

          v9 -= v17[v124 - 1];
          v44 = *(a1 + 16);
          v45 = sub_1000C9BCC(*(a1 + 24));
          sub_1000B64E4(v45, v46, v47, v48);
          if (v9 < 2)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }
      }
    }

    else
    {
      while (v14 != -4096)
      {
        sub_1000C9B28();
        v14 = *(v12 + v49);
        if (v14 == a2)
        {
          goto LABEL_6;
        }
      }
    }
  }

  v50 = *(a1 + 16);
  v51 = sub_1000C9BCC(v10);
  sub_1000B64E4(v51, v52, v53, v54);
  if (v9 != 1)
  {
LABEL_34:
    v55 = sub_1000C9AF0(*(a1 + 16));
    if (v94)
    {
      v57 = llvm::raw_ostream::write(v55, 58);
    }

    else
    {
      v57 = sub_1000C9B08(v55, v56);
      *v58 = 58;
    }

    llvm::raw_ostream::operator<<(v57, v9);
  }

LABEL_38:
  v59 = sub_1000C9AFC();
  if ((v61 - v60) > 2)
  {
    *(v60 + 2) = 32;
    sub_1000C9BAC(v59, v60);
  }

  else
  {
    llvm::raw_ostream::write(v59, " = ", 3uLL);
  }

LABEL_41:
  (*(*a1 + 208))(a1, a2);
  v62 = *(a1 + 72);
  if (v62)
  {
    v63 = *(a2 + 24);
    v64 = sub_1000C9AFC();
    if (v66 == v65)
    {
      llvm::raw_ostream::write(v64, " ", 1uLL);
    }

    else
    {
      sub_1000C9AA0(v64, v65);
    }

    mlir::AsmPrinter::Impl::printLocation(a1 + 16, v63, 1);
    v62 = *(a1 + 72);
  }

  if ((v62 & 0x40) == 0)
  {
    return;
  }

  v67 = *(a2 + 36);
  if (!v67)
  {
    if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
    {
      v73 = sub_1000C9AFC();
      if ((v75 - v74) > 7)
      {
        *v74 = 0x203A6469202F2F20;
        v73[4] += 8;
      }

      else
      {
        llvm::raw_ostream::write(v73, " // id: ", 8uLL);
      }

      sub_1000C11AC(*(a1 + 16), *(*(a1 + 24) + 328), *(*(a1 + 24) + 344), a2);
    }

    return;
  }

  v68 = 0;
  v69 = a2 - 16;
  while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(a2 - 16, v68))
  {
    if (v67 == ++v68)
    {
      v70 = sub_1000C9AFC();
      if ((v72 - v71) > 9)
      {
        *(v71 + 8) = 25701;
        *v71 = *" // unused";
        v70[4] += 10;
      }

      else
      {
        llvm::raw_ostream::write(v70, " // unused", 0xAuLL);
      }

      return;
    }
  }

  v76 = *(a2 + 36);
  if (!v76)
  {
    return;
  }

  v77 = 0;
  while (1)
  {
    v78 = sub_1000C9BC0();
    if (*mlir::detail::OpResultImpl::getNextResultAtOffset(v78, v79))
    {
      break;
    }

    if (v76 == ++v77)
    {
      return;
    }
  }

  v129 = &v133;
  v130 = 1;
  v131 = 0;
  v80 = 1;
  v132 = 1;
  v81 = *(a2 + 36);
  if (v81)
  {
    v82 = a2 - 16;
  }

  else
  {
    v82 = 0;
  }

  *&v125[0] = v82;
  *(&v125[0] + 1) = v81;
  mlir::ResultRange::use_begin(v125, v134);
  v83 = *(a2 + 36);
  if (v83)
  {
    v84 = a2 - 16;
  }

  else
  {
    v84 = 0;
  }

  v136.n128_u64[0] = v84;
  v136.n128_u64[1] = v83;
  mlir::ResultRange::use_end(&v136, v127);
  v85 = v135;
  v126 = v135;
  v125[0] = v134[0];
  v125[1] = v134[1];
  v86 = v128;
  if (v135 == v128)
  {
    goto LABEL_90;
  }

  v87 = 0;
  v88 = 0;
  do
  {
    v89 = *(v85 + 16);
    if (v132 != 1)
    {
      goto LABEL_81;
    }

    v90 = HIDWORD(v130);
    if (!HIDWORD(v130))
    {
LABEL_79:
      if (HIDWORD(v130) >= v130)
      {
LABEL_81:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v129, v89);
        if ((v93 & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        ++HIDWORD(v130);
        *(v129 + v90) = v89;
      }

      ++v88;
      v87 += *(v89 + 36);
      goto LABEL_83;
    }

    v91 = 8 * HIDWORD(v130);
    v92 = v129;
    while (*v92 != v89)
    {
      ++v92;
      v91 -= 8;
      if (!v91)
      {
        goto LABEL_79;
      }
    }

LABEL_83:
    mlir::ResultRange::UseIterator::operator++(v134);
    v85 = v135;
  }

  while (v135 != v86);
  v94 = v87 >= 2 || v88 >= 2;
  v80 = !v94;
LABEL_90:
  v95 = v67 == 1;
  v96 = v95 & v80;
  if ((v95 & v80) != 0)
  {
    v97 = "user";
  }

  else
  {
    v97 = "users";
  }

  v98 = *(a1 + 16);
  v99 = v98[4];
  if (v98[3] - v99 > 3uLL)
  {
    *v99 = 539963168;
    v100 = (v98[4] + 4);
    v98[4] = v100;
  }

  else
  {
    v98 = llvm::raw_ostream::write(*(a1 + 16), " // ", 4uLL);
    v100 = v98[4];
  }

  if (v96)
  {
    v101 = 4;
  }

  else
  {
    v101 = 5;
  }

  if (v101 <= v98[3] - v100)
  {
    memcpy(v100, v97, v101);
    v98[4] += v101;
  }

  else
  {
    v102 = sub_1000C9BC0();
    v98 = llvm::raw_ostream::write(v102, v103, v101);
    v104 = v98[4];
  }

  v105 = v98[3];
  sub_1000C9AE4();
  if (!v31 && v94)
  {
    *v106 = 8250;
    sub_1000C9AB4();
  }

  else
  {
    llvm::raw_ostream::write(v98, ": ", 2uLL);
  }

  v107 = *(a2 + 36);
  if (v107)
  {
    v108 = a2 - 16;
  }

  else
  {
    v108 = 0;
  }

  if (v107)
  {
    v109 = *(a1 + 16);
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v69, 0);
    if (v67 == 1)
    {
      sub_1000C12EC(a1, NextResultAtOffset);
    }

    else
    {
      v111 = sub_1000C9AFC();
      if (v113 == v112)
      {
        llvm::raw_ostream::write(v111, "(", 1uLL);
      }

      else
      {
        sub_1000C9AA0(v111, v112);
      }

      sub_1000C12EC(a1, NextResultAtOffset);
      v114 = sub_1000C9B60(*(a1 + 16));
      if (v31)
      {
        llvm::raw_ostream::write(v114, ")", 1uLL);
      }

      else
      {
        sub_1000C9AA0(v114, v115);
      }
    }

    if (v107 != 1)
    {
      for (i = 1; i != v107; ++i)
      {
        sub_1000C9AC4();
        if (!v31 && v94)
        {
          *v117 = 8236;
          sub_1000C9AB4();
        }

        else
        {
          llvm::raw_ostream::write(v109, ", ", 2uLL);
        }

        v118 = mlir::detail::OpResultImpl::getNextResultAtOffset(v108, i);
        if (v67 == 1)
        {
          sub_1000C12EC(a1, v118);
        }

        else
        {
          v119 = sub_1000C9AFC();
          if (v121 == v120)
          {
            llvm::raw_ostream::write(v119, "(", 1uLL);
          }

          else
          {
            *v120 = 40;
            ++v119[4];
          }

          sub_1000C12EC(a1, v118);
          v122 = sub_1000C9B60(*(a1 + 16));
          if (v31)
          {
            llvm::raw_ostream::write(v122, ")", 1uLL);
          }

          else
          {
            sub_1000C9AA0(v122, v123);
          }
        }
      }
    }
  }

  if ((v132 & 1) == 0)
  {
    free(v129);
  }
}

llvm::raw_ostream *sub_10027A828(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    *&v111[0] = *(*(a2 + 48) + 8);
    Value = mlir::StringAttr::getValue(v111);
    v8 = v7;
    v9 = sub_1000C9B60(a1[2]);
    if (v11)
    {
      llvm::raw_ostream::write(v9, "", 1uLL);
    }

    else
    {
      sub_1000C9AA0(v9, v10);
    }

    llvm::printEscapedString(Value, v8, a1[2]);
    v12 = sub_1000C9B60(a1[2]);
    if (v11)
    {
      llvm::raw_ostream::write(v12, "", 1uLL);
    }

    else
    {
      sub_1000C9AA0(v12, v13);
    }
  }

  v14 = (a1 + 2);
  v15 = sub_1000C9AF0(a1[2]);
  if (v17)
  {
    llvm::raw_ostream::write(v15, 40);
  }

  else
  {
    sub_1000C9B08(v15, v16);
    *v18 = 40;
  }

  if ((*(v5 + 46) & 0x80) != 0)
  {
    v3 = *(v5 + 68);
    if (v3)
    {
      v19 = *(v5 + 72);
      sub_1000B64E4((a1[3] + 280), *(v19 + 24), 1, *v14);
      if (v3 != 1)
      {
        Value = (v3 - 1);
        v20 = (v19 + 56);
        do
        {
          sub_1000C9AC4();
          if (!v11 & v17)
          {
            *v21 = 8236;
            sub_1000C9AB4();
          }

          else
          {
            v22 = sub_1000C9BC0();
            llvm::raw_ostream::write(v22, v23, 2uLL);
          }

          v24 = *v20;
          v20 += 4;
          sub_1000B64E4((a1[3] + 280), v24, 1, a1[2]);
          Value = (Value - 1);
        }

        while (Value);
      }
    }
  }

  v25 = sub_1000C9AD4();
  if (v17)
  {
    llvm::raw_ostream::write(v25, 41);
  }

  else
  {
    sub_1000C9B08(v25, v26);
    *v27 = 41;
  }

  if (*(v5 + 40))
  {
    v28 = sub_1000C9AD4();
    if (v17)
    {
      llvm::raw_ostream::write(v28, 91);
    }

    else
    {
      sub_1000C9B08(v28, v29);
      *v30 = 91;
    }

    v110 = v5;
    mlir::SuccessorRange::SuccessorRange(v111, v5);
    v31 = *(&v111[0] + 1);
    if (!*(&v111[0] + 1))
    {
      goto LABEL_36;
    }

    v32 = *&v111[0];
    v33 = a1[2];
    v34 = *(a1[3] + 392);
    if (v34)
    {
      v35 = *(*&v111[0] + 24);
      sub_1000C9B3C(v34);
      if (v11)
      {
LABEL_30:
        if (v38 != v36)
        {
          v44 = v37 + 32 * v38;
          v45 = *(v44 + 16);
          v42 = *(v44 + 24);
          v40 = sub_1000C9B84();
          if (v42 <= v46)
          {
            if (!v42)
            {
              goto LABEL_35;
            }

            goto LABEL_32;
          }

LABEL_34:
          llvm::raw_ostream::write(v33, v41, v42);
          goto LABEL_35;
        }
      }

      else
      {
        while (v39 != -4096)
        {
          sub_1000C9B28();
          v39 = *(v37 + v108);
          if (v39 == v109)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v40 = sub_1000C9B84();
    v41 = "INVALIDBLOCK";
    v42 = 12;
    if (v43 > 0xB)
    {
LABEL_32:
      memcpy(v40, v41, v42);
      *Value += v42;
LABEL_35:
      if (v31 == 1)
      {
LABEL_36:
        v14 = (a1 + 2);
        v47 = sub_1000C9AD4();
        if (v17)
        {
          llvm::raw_ostream::write(v47, 93);
        }

        else
        {
          sub_1000C9B08(v47, v48);
          *v49 = 93;
        }

        v5 = v110;
        goto LABEL_40;
      }

      v87 = 1;
      while (1)
      {
        sub_1000C9AC4();
        if (!v11 & v17)
        {
          *v88 = 8236;
          sub_1000C9AB4();
        }

        else
        {
          v89 = sub_1000C9BC0();
          llvm::raw_ostream::write(v89, v90, 2uLL);
        }

        v91 = a1[2];
        v92 = *(a1[3] + 392);
        if (!v92)
        {
          goto LABEL_82;
        }

        v93 = *(v32 + 32 * v87 + 24);
        sub_1000C9B3C(v92);
        if (!v11)
        {
          break;
        }

LABEL_81:
        if (v96 == v94)
        {
          goto LABEL_82;
        }

        v103 = v95 + 32 * v96;
        v104 = *(v103 + 16);
        v102 = *(v103 + 24);
        v98 = sub_1000C9BEC(v91);
        if (v102 > v105)
        {
          goto LABEL_86;
        }

        if (v102)
        {
          goto LABEL_88;
        }

LABEL_89:
        if (++v87 == v31)
        {
          goto LABEL_36;
        }
      }

      while (v97 != -4096)
      {
        sub_1000C9B28();
        v97 = *(v95 + v106);
        if (v97 == v107)
        {
          goto LABEL_81;
        }
      }

LABEL_82:
      v98 = sub_1000C9BEC(v91);
      if (v100 > 0xB)
      {
        v102 = 12;
        v101 = "INVALIDBLOCK";
LABEL_88:
        memcpy(v99, v101, v102);
        *v3 += v102;
        goto LABEL_89;
      }

      v101 = "INVALIDBLOCK";
      v102 = 12;
LABEL_86:
      llvm::raw_ostream::write(v98, v101, v102);
      goto LABEL_89;
    }

    goto LABEL_34;
  }

LABEL_40:
  PropertiesAsAttribute = mlir::Operation::getPropertiesAsAttribute(v5);
  if (PropertiesAsAttribute)
  {
    v51 = PropertiesAsAttribute;
    v53 = *(*v14 + 3);
    v52 = *(*v14 + 4);
    sub_1000C9AE4();
    if (!v11 & v17)
    {
      sub_1000C9B14(v54, v55);
    }

    else
    {
      llvm::raw_ostream::write(v54, " <", 2uLL);
    }

    if ((sub_1000AEDE4((a1[3] + 144), v51, a1[2]) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printAttributeImpl(v14, v51, 0);
    }

    v56 = sub_1000C9AD4();
    if (v17)
    {
      llvm::raw_ostream::write(v56, 62);
    }

    else
    {
      sub_1000C9B08(v56, v57);
      *v58 = 62;
    }
  }

  v59 = *(v5 + 44);
  if ((v59 & 0x7FFFFF) != 0)
  {
    v61 = *(*v14 + 3);
    v60 = *(*v14 + 4);
    sub_1000C9AE4();
    if (!v11 & v17)
    {
      sub_1000C9B14(v62, v63);
    }

    else
    {
      llvm::raw_ostream::write(v62, " (", 2uLL);
    }

    v64 = *(v5 + 44);
    v65 = v64 & 0x7FFFFF;
    if ((v64 & 0x7FFFFF) != 0)
    {
      v66 = ((v5 + 16 * ((v64 >> 23) & 1) + ((v64 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v5 + 40);
      v67 = a1[2];
      v68 = *(*a1 + 224);
      v69 = sub_1000C9B6C();
      v70(v69);
      if (v65 != 1)
      {
        v71 = v66 + 24;
        v72 = 24 * v65 - 24;
        do
        {
          sub_1000C9AC4();
          if (!v11 & v17)
          {
            *v73 = 8236;
            sub_1000C9AB4();
          }

          else
          {
            llvm::raw_ostream::write(v67, ", ", 2uLL);
          }

          v74 = *(*a1 + 224);
          v75 = sub_1000C9B6C();
          v76(v75);
          v71 += 24;
          v72 -= 24;
        }

        while (v72);
      }
    }

    v77 = sub_1000C9AD4();
    if (v17)
    {
      llvm::raw_ostream::write(v77, 41);
    }

    else
    {
      sub_1000C9B08(v77, v78);
      *v79 = 41;
    }

    v59 = *(v5 + 44);
  }

  v80 = HIBYTE(v59);
  if (HIBYTE(v59))
  {
    sub_1000892C0(v5, v111);
    v118[0] = v111[0];
    v118[1] = v111[1];
    v119 = v112;
    v116[0] = v113;
    v116[1] = v114;
    v117 = v115;
    AttrDictionary = v122;
    v121 = 0x300000000;
    sub_1000893E0(&AttrDictionary, v118, v116);
    v81 = AttrDictionary;
    v83 = v121;
  }

  else
  {
    AttrDictionary = mlir::Operation::getAttrDictionary(v5);
    v81 = mlir::DictionaryAttr::getValue(&AttrDictionary);
    v83 = v82;
  }

  (*(*a1 + 192))(a1, v81, v83, 0, 0);
  if (v80 && AttrDictionary != v122)
  {
    free(AttrDictionary);
  }

  v84 = *v14;
  v85 = *(*v14 + 4);
  if ((*(*v14 + 3) - v85) > 2)
  {
    *(v85 + 2) = 32;
    sub_1000C9BAC(v84, v85);
  }

  else
  {
    llvm::raw_ostream::write(v84, " : ", 3uLL);
  }

  return mlir::OpAsmPrinter::printFunctionalType(a1, v5);
}

uint64_t sub_10027AEC0(void *a1, uint64_t a2)
{
  if ((*(a1[2] + 40) & 8) == 0)
  {
    v4 = *(a2 + 44);
    if ((v4 & 0x7FFFFF) != 0)
    {
      v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v6 = 24 * (v4 & 0x7FFFFF);
      do
      {
        (*(*a1 + 224))(a1, v5, 1, 1, 0);
        v5 += 24;
        v6 -= 24;
      }

      while (v6);
    }
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 68);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v26 = v7;
  v27 = v8;
  mlir::OperandRange::getTypes(&v26, &AttrDictionary);
  v9 = v25 - v24;
  if (v25 != v24)
  {
    v10 = (AttrDictionary + 32 * v24 + 24);
    do
    {
      v11 = *v10;
      v10 += 4;
      (*(*a1 + 32))(a1, *(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v9;
    }

    while (v9);
  }

  v12 = *(a2 + 36);
  v13 = a2 - 16;
  if (!v12)
  {
    v13 = 0;
  }

  v26 = v13;
  v27 = v12;
  mlir::ResultRange::getTypes(&v26, &AttrDictionary);
  v14 = v24;
  v15 = v25;
  if (v24 != v25)
  {
    v16 = AttrDictionary;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v14);
      (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      ++v14;
    }

    while (v15 != v14);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  result = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v19)
  {
    v20 = 16 * v19;
    v21 = (result + 8);
    do
    {
      v22 = *v21;
      v21 += 2;
      result = (*(*a1 + 40))(a1, v22);
      v20 -= 16;
    }

    while (v20);
  }

  return result;
}

void sub_10027B0D8()
{
  if (__cxa_guard_acquire(&qword_1002C0668))
  {
    v0 = sub_1000B80E4();
    qword_1002C0660 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0668);
  }
}

void sub_10027B12C()
{
  {
    v0 = sub_1000B8330();
    mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027B180()
{
  {
    v0 = sub_1000714E0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

uint64_t sub_10027B1D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(a2);
    sub_100279FE4(a1, ValuePtr);
    v9 = *a3;
    ++*(a1 + 80);
    v10 = sub_1000C9AF0(v9);
    if (v12)
    {
      result = llvm::raw_ostream::write(v10, 10);
    }

    else
    {
      result = sub_1000C9B08(v10, v11);
      *v14 = 10;
    }

    a2 = *(a2 + 8);
  }

  while (a2 != a4);
  return result;
}

void sub_10027B260()
{
  if (__cxa_guard_acquire(&qword_1002C0680))
  {
    qword_1002C0670 = sub_1000B812C();
    *algn_1002C0678 = v0;

    __cxa_guard_release(&qword_1002C0680);
  }
}

void sub_10027B2B4()
{
  {
    llvm::getTypeName<mlir::ElementsAttr>(void)::Name = sub_1000B8378();
    *algn_1002C0E38 = v0;
  }
}

void sub_10027B308()
{
  {
    v0 = sub_1000715A8();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027B35C()
{
  if (__cxa_guard_acquire(&qword_1002C0668))
  {
    v0 = sub_1000B80E4();
    qword_1002C0660 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0668);
  }
}

void sub_10027B39C()
{
  {
    v0 = sub_10007809C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027B3F0()
{
  {
    llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>(void)::Name = sub_1000CD060();
    unk_1002C1C60 = v0;
  }
}

void sub_10027B444()
{
  {
    v0 = sub_1000B8330();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A60(v2);
  }
}

void sub_10027B494()
{
  if (__cxa_guard_acquire(&qword_1002C0668))
  {
    v0 = sub_1000B80E4();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A78(v2);
    __cxa_guard_release(&qword_1002C0668);
  }
}

void sub_10027B4D0()
{
  if (__cxa_guard_acquire(&qword_1002C0690))
  {
    v0 = sub_1000DAFDC();
    qword_1002C0688 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0690);
  }
}

void sub_10027B524()
{
  if (__cxa_guard_acquire(&qword_1002C06A8))
  {
    qword_1002C0698 = sub_1000DB024();
    unk_1002C06A0 = v0;

    __cxa_guard_release(&qword_1002C06A8);
  }
}

void sub_10027B578()
{
  if (__cxa_guard_acquire(&qword_1002C06C0))
  {
    v0 = sub_1000DB770();
    off_1002C06B8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C06C0);
  }
}

void sub_10027B5B8()
{
  if (__cxa_guard_acquire(&qword_1002C06D8))
  {
    qword_1002C06C8 = sub_1000DB7B8();
    unk_1002C06D0 = v0;

    __cxa_guard_release(&qword_1002C06D8);
  }
}

void sub_10027B60C()
{
  if (__cxa_guard_acquire(&qword_1002C06E8))
  {
    v0 = sub_1000DB898();
    qword_1002C06E0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C06E8);
  }
}

void sub_10027B660()
{
  if (__cxa_guard_acquire(&qword_1002C0700))
  {
    qword_1002C06F0 = sub_1000DB8E0();
    *algn_1002C06F8 = v0;

    __cxa_guard_release(&qword_1002C0700);
  }
}

void sub_10027B6B4()
{
  {
    v0 = sub_100062EA0();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A54(v2);
  }
}

void sub_10027B704()
{
  if (__cxa_guard_acquire(&qword_1002C0710))
  {
    v0 = sub_1000DC67C();
    qword_1002C0708 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0710);
  }
}

void sub_10027B758()
{
  if (__cxa_guard_acquire(&qword_1002C0738))
  {
    v0 = sub_1000DC96C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A90(v2);

    __cxa_guard_release(&qword_1002C0738);
  }
}

void sub_10027B7A8()
{
  if (__cxa_guard_acquire(&qword_1002C0728))
  {
    qword_1002C0718 = sub_1000DC6C4();
    unk_1002C0720 = v0;

    __cxa_guard_release(&qword_1002C0728);
  }
}

void sub_10027B7FC()
{
  if (__cxa_guard_acquire(&qword_1002C0760))
  {
    v0 = sub_1000DCC5C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A84(v2);

    __cxa_guard_release(&qword_1002C0760);
  }
}

void sub_10027B84C()
{
  if (__cxa_guard_acquire(&qword_1002C0750))
  {
    qword_1002C0740 = sub_1000DC9B4();
    *algn_1002C0748 = v0;

    __cxa_guard_release(&qword_1002C0750);
  }
}

void sub_10027B8A0()
{
  if (__cxa_guard_acquire(&qword_1002C0788))
  {
    v0 = sub_1000DCF4C();
    qword_1002C0780 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0788);
  }
}

void sub_10027B8F4()
{
  if (__cxa_guard_acquire(&qword_1002C0778))
  {
    qword_1002C0768 = sub_1000DCCA4();
    unk_1002C0770 = v0;

    __cxa_guard_release(&qword_1002C0778);
  }
}

void sub_10027B948()
{
  if (__cxa_guard_acquire(&qword_1002C07B0))
  {
    v0 = sub_1000DD14C();
    qword_1002C07A8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C07B0);
  }
}

void sub_10027B99C()
{
  if (__cxa_guard_acquire(&qword_1002C07A0))
  {
    qword_1002C0790 = sub_1000DCF94();
    *algn_1002C0798 = v0;

    __cxa_guard_release(&qword_1002C07A0);
  }
}

void sub_10027B9F0()
{
  if (__cxa_guard_acquire(&qword_1002C07D8))
  {
    v0 = sub_1000DD43C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102AA8(v2);

    __cxa_guard_release(&qword_1002C07D8);
  }
}

void sub_10027BA40()
{
  if (__cxa_guard_acquire(&qword_1002C07C8))
  {
    qword_1002C07B8 = sub_1000DD194();
    unk_1002C07C0 = v0;

    __cxa_guard_release(&qword_1002C07C8);
  }
}

void sub_10027BA94()
{
  if (__cxa_guard_acquire(&qword_1002C0800))
  {
    v0 = sub_1000DD72C();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A9C(v2);

    __cxa_guard_release(&qword_1002C0800);
  }
}

void sub_10027BAE4()
{
  if (__cxa_guard_acquire(&qword_1002C07F0))
  {
    qword_1002C07E0 = sub_1000DD484();
    *algn_1002C07E8 = v0;

    __cxa_guard_release(&qword_1002C07F0);
  }
}

void sub_10027BB38()
{
  if (__cxa_guard_acquire(&qword_1002C0828))
  {
    v0 = sub_1000DDA1C();
    qword_1002C0820 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0828);
  }
}

void sub_10027BB8C()
{
  if (__cxa_guard_acquire(&qword_1002C0818))
  {
    qword_1002C0808 = sub_1000DD774();
    unk_1002C0810 = v0;

    __cxa_guard_release(&qword_1002C0818);
  }
}

void sub_10027BBE0()
{
  if (__cxa_guard_acquire(&qword_1002C0840))
  {
    qword_1002C0830 = sub_1000DDA64();
    *algn_1002C0838 = v0;

    __cxa_guard_release(&qword_1002C0840);
  }
}

void sub_10027BC34()
{
  if (__cxa_guard_acquire(&qword_1002C0850))
  {
    v0 = sub_1000DE1EC();
    qword_1002C0848 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0850);
  }
}

void sub_10027BC88()
{
  if (__cxa_guard_acquire(&qword_1002C0878))
  {
    v0 = sub_1000DE3EC();
    qword_1002C0870 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0878);
  }
}

void sub_10027BCDC()
{
  if (__cxa_guard_acquire(&qword_1002C0868))
  {
    qword_1002C0858 = sub_1000DE234();
    unk_1002C0860 = v0;

    __cxa_guard_release(&qword_1002C0868);
  }
}

void sub_10027BD30()
{
  if (__cxa_guard_acquire(&qword_1002C08A0))
  {
    v0 = sub_1000DE5EC();
    qword_1002C0898 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C08A0);
  }
}

void sub_10027BD84()
{
  if (__cxa_guard_acquire(&qword_1002C0890))
  {
    qword_1002C0880 = sub_1000DE434();
    *algn_1002C0888 = v0;

    __cxa_guard_release(&qword_1002C0890);
  }
}

void sub_10027BDD8()
{
  if (__cxa_guard_acquire(&qword_1002C08C8))
  {
    v0 = sub_1000DE8E8();
    qword_1002C08C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C08C8);
  }
}

void sub_10027BE2C()
{
  if (__cxa_guard_acquire(&qword_1002C08B8))
  {
    qword_1002C08A8 = sub_1000DE634();
    unk_1002C08B0 = v0;

    __cxa_guard_release(&qword_1002C08B8);
  }
}

void sub_10027BE80()
{
  if (__cxa_guard_acquire(&qword_1002C08F0))
  {
    v0 = sub_1000DEBE4();
    qword_1002C08E8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C08F0);
  }
}

void sub_10027BED4()
{
  if (__cxa_guard_acquire(&qword_1002C08E0))
  {
    qword_1002C08D0 = sub_1000DE930();
    *algn_1002C08D8 = v0;

    __cxa_guard_release(&qword_1002C08E0);
  }
}

void sub_10027BF28()
{
  if (__cxa_guard_acquire(&qword_1002C0918))
  {
    v0 = sub_1000DEEE0();
    qword_1002C0910 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0918);
  }
}

void sub_10027BF7C()
{
  if (__cxa_guard_acquire(&qword_1002C0908))
  {
    qword_1002C08F8 = sub_1000DEC2C();
    unk_1002C0900 = v0;

    __cxa_guard_release(&qword_1002C0908);
  }
}

void sub_10027BFD0()
{
  if (__cxa_guard_acquire(&qword_1002C0940))
  {
    v0 = sub_1000DF1DC();
    qword_1002C0938 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0940);
  }
}

void sub_10027C024()
{
  if (__cxa_guard_acquire(&qword_1002C0930))
  {
    qword_1002C0920 = sub_1000DEF28();
    *algn_1002C0928 = v0;

    __cxa_guard_release(&qword_1002C0930);
  }
}

void sub_10027C078()
{
  if (__cxa_guard_acquire(&qword_1002C0968))
  {
    v0 = sub_1000DF4D8();
    qword_1002C0960 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0968);
  }
}

void sub_10027C0CC()
{
  if (__cxa_guard_acquire(&qword_1002C0958))
  {
    qword_1002C0948 = sub_1000DF224();
    unk_1002C0950 = v0;

    __cxa_guard_release(&qword_1002C0958);
  }
}

void sub_10027C120()
{
  if (__cxa_guard_acquire(&qword_1002C0990))
  {
    v0 = sub_1000DF7D4();
    qword_1002C0988 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0990);
  }
}

void sub_10027C174()
{
  if (__cxa_guard_acquire(&qword_1002C0980))
  {
    qword_1002C0970 = sub_1000DF520();
    *algn_1002C0978 = v0;

    __cxa_guard_release(&qword_1002C0980);
  }
}

void sub_10027C1C8()
{
  if (__cxa_guard_acquire(&qword_1002C09B8))
  {
    v0 = sub_1000DFA84();
    qword_1002C09B0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C09B8);
  }
}

void sub_10027C21C()
{
  if (__cxa_guard_acquire(&qword_1002C09A8))
  {
    qword_1002C0998 = sub_1000DF81C();
    unk_1002C09A0 = v0;

    __cxa_guard_release(&qword_1002C09A8);
  }
}

void sub_10027C270()
{
  if (__cxa_guard_acquire(&qword_1002C09E0))
  {
    v0 = sub_1000DFD3C();
    qword_1002C09D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C09E0);
  }
}

void sub_10027C2C4()
{
  if (__cxa_guard_acquire(&qword_1002C0A08))
  {
    v0 = sub_1000DFFDC();
    qword_1002C0A00 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0A08);
  }
}

void sub_10027C318()
{
  if (__cxa_guard_acquire(&qword_1002C09D0))
  {
    qword_1002C09C0 = sub_1000DFACC();
    *algn_1002C09C8 = v0;

    __cxa_guard_release(&qword_1002C09D0);
  }
}

void sub_10027C36C()
{
  if (__cxa_guard_acquire(&qword_1002C09F8))
  {
    qword_1002C09E8 = sub_1000DFD84();
    unk_1002C09F0 = v0;

    __cxa_guard_release(&qword_1002C09F8);
  }
}

void sub_10027C3C0()
{
  if (__cxa_guard_acquire(&qword_1002C0A30))
  {
    v0 = sub_1000E01A4();
    qword_1002C0A28 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0A30);
  }
}

void sub_10027C414()
{
  if (__cxa_guard_acquire(&qword_1002C0A58))
  {
    v0 = sub_1000E036C();
    qword_1002C0A50 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0A58);
  }
}

void sub_10027C468()
{
  if (__cxa_guard_acquire(&qword_1002C0A20))
  {
    qword_1002C0A10 = sub_1000E0024();
    *algn_1002C0A18 = v0;

    __cxa_guard_release(&qword_1002C0A20);
  }
}

void sub_10027C4BC()
{
  if (__cxa_guard_acquire(&qword_1002C0A48))
  {
    qword_1002C0A38 = sub_1000E01EC();
    unk_1002C0A40 = v0;

    __cxa_guard_release(&qword_1002C0A48);
  }
}

void sub_10027C510()
{
  if (__cxa_guard_acquire(&qword_1002C0A70))
  {
    qword_1002C0A60 = sub_1000E03B4();
    *algn_1002C0A68 = v0;

    __cxa_guard_release(&qword_1002C0A70);
  }
}

void sub_10027C564()
{
  if (__cxa_guard_acquire(&qword_1002C0A80))
  {
    v0 = sub_1000E073C();
    qword_1002C0A78 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0A80);
  }
}

void sub_10027C5B8()
{
  if (__cxa_guard_acquire(&qword_1002C0AA8))
  {
    v0 = sub_1000E08B0();
    qword_1002C0AA0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0AA8);
  }
}

void sub_10027C60C()
{
  if (__cxa_guard_acquire(&qword_1002C0AD0))
  {
    v0 = sub_1000E0E4C();
    qword_1002C0AC8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0AD0);
  }
}

void sub_10027C660()
{
  if (__cxa_guard_acquire(&qword_1002C0A98))
  {
    qword_1002C0A88 = sub_1000E0784();
    unk_1002C0A90 = v0;

    __cxa_guard_release(&qword_1002C0A98);
  }
}

void sub_10027C6B4()
{
  if (__cxa_guard_acquire(&qword_1002C0AC0))
  {
    qword_1002C0AB0 = sub_1000E08F8();
    *algn_1002C0AB8 = v0;

    __cxa_guard_release(&qword_1002C0AC0);
  }
}

void sub_10027C708()
{
  if (__cxa_guard_acquire(&qword_1002C0AF8))
  {
    v0 = sub_1000E114C();
    qword_1002C0AF0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0AF8);
  }
}

void sub_10027C75C()
{
  if (__cxa_guard_acquire(&qword_1002C0AE8))
  {
    qword_1002C0AD8 = sub_1000E0E94();
    unk_1002C0AE0 = v0;

    __cxa_guard_release(&qword_1002C0AE8);
  }
}

void sub_10027C7B0()
{
  if (__cxa_guard_acquire(&qword_1002C0B20))
  {
    v0 = sub_1000E140C();
    qword_1002C0B18 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0B20);
  }
}

void sub_10027C804()
{
  if (__cxa_guard_acquire(&qword_1002C0B10))
  {
    qword_1002C0B00 = sub_1000E1194();
    *algn_1002C0B08 = v0;

    __cxa_guard_release(&qword_1002C0B10);
  }
}

void sub_10027C858()
{
  if (__cxa_guard_acquire(&qword_1002C0B48))
  {
    v0 = sub_1000E15A0();
    qword_1002C0B40 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0B48);
  }
}

void sub_10027C8AC()
{
  if (__cxa_guard_acquire(&qword_1002C0B38))
  {
    qword_1002C0B28 = sub_1000E1454();
    unk_1002C0B30 = v0;

    __cxa_guard_release(&qword_1002C0B38);
  }
}

void sub_10027C900()
{
  if (__cxa_guard_acquire(&qword_1002C0B60))
  {
    qword_1002C0B50 = sub_1000E15E8();
    *algn_1002C0B58 = v0;

    __cxa_guard_release(&qword_1002C0B60);
  }
}

void sub_10027C954()
{
  {
    v0 = sub_1000E1834();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A6C(v2);
  }
}

void sub_10027C9A4()
{
  if (__cxa_guard_acquire(&qword_1002C0B70))
  {
    v0 = sub_1000E18FC();
    qword_1002C0B68 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0B70);
  }
}

void sub_10027C9F8()
{
  {
    llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>(void)::Name = sub_1000E187C();
    *algn_1002C2CE8 = v0;
  }
}

void sub_10027CA4C()
{
  if (__cxa_guard_acquire(&qword_1002C0B88))
  {
    qword_1002C0B78 = sub_1000E1944();
    unk_1002C0B80 = v0;

    __cxa_guard_release(&qword_1002C0B88);
  }
}

void sub_10027CAA0()
{
  if (__cxa_guard_acquire(&qword_1002C0B98))
  {
    v0 = sub_1000E1F20();
    qword_1002C0B90 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0B98);
  }
}

void sub_10027CAF4()
{
  if (__cxa_guard_acquire(&qword_1002C0BB0))
  {
    qword_1002C0BA0 = sub_1000E1F68();
    *algn_1002C0BA8 = v0;

    __cxa_guard_release(&qword_1002C0BB0);
  }
}

void sub_10027CB48()
{
  if (__cxa_guard_acquire(&qword_1002C06C0))
  {
    v0 = sub_1000DB770();
    off_1002C06B8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C06C0);
  }
}

void sub_10027CB9C()
{
  if (__cxa_guard_acquire(&qword_1002C06E8))
  {
    v0 = sub_1000DB898();
    qword_1002C06E0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C06E8);
  }
}

void sub_10027CBF0()
{
  {
    v0 = sub_100062EA0();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A54(v2);
  }
}

void sub_10027CC2C()
{
  if (__cxa_guard_acquire(&qword_1002C0710))
  {
    v0 = sub_1000DC67C();
    qword_1002C0708 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0710);
  }
}

void sub_10027CC80()
{
  if (__cxa_guard_acquire(&qword_1002C0788))
  {
    v0 = sub_1000DCF4C();
    qword_1002C0780 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0788);
  }
}

void sub_10027CCD4()
{
  if (__cxa_guard_acquire(&qword_1002C07B0))
  {
    v0 = sub_1000DD14C();
    qword_1002C07A8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C07B0);
  }
}

void sub_10027CD28()
{
  if (__cxa_guard_acquire(&qword_1002C0828))
  {
    v0 = sub_1000DDA1C();
    qword_1002C0820 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0828);
  }
}

void sub_10027CD7C()
{
  if (__cxa_guard_acquire(&qword_1002C0850))
  {
    v0 = sub_1000DE1EC();
    qword_1002C0848 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0850);
  }
}

void sub_10027CDD0()
{
  if (__cxa_guard_acquire(&qword_1002C0878))
  {
    v0 = sub_1000DE3EC();
    qword_1002C0870 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0878);
  }
}

void sub_10027CE24()
{
  if (__cxa_guard_acquire(&qword_1002C08A0))
  {
    v0 = sub_1000DE5EC();
    qword_1002C0898 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C08A0);
  }
}

void sub_10027CE78()
{
  if (__cxa_guard_acquire(&qword_1002C08C8))
  {
    v0 = sub_1000DE8E8();
    qword_1002C08C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C08C8);
  }
}

void sub_10027CECC()
{
  if (__cxa_guard_acquire(&qword_1002C08F0))
  {
    v0 = sub_1000DEBE4();
    qword_1002C08E8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C08F0);
  }
}

void sub_10027CF20()
{
  if (__cxa_guard_acquire(&qword_1002C0918))
  {
    v0 = sub_1000DEEE0();
    qword_1002C0910 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0918);
  }
}

void sub_10027CF74()
{
  if (__cxa_guard_acquire(&qword_1002C0940))
  {
    v0 = sub_1000DF1DC();
    qword_1002C0938 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0940);
  }
}

void sub_10027CFC8()
{
  if (__cxa_guard_acquire(&qword_1002C0968))
  {
    v0 = sub_1000DF4D8();
    qword_1002C0960 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0968);
  }
}

void sub_10027D01C()
{
  if (__cxa_guard_acquire(&qword_1002C0990))
  {
    v0 = sub_1000DF7D4();
    qword_1002C0988 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0990);
  }
}

void sub_10027D070()
{
  if (__cxa_guard_acquire(&qword_1002C09B8))
  {
    v0 = sub_1000DFA84();
    qword_1002C09B0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C09B8);
  }
}

void sub_10027D0C4()
{
  if (__cxa_guard_acquire(&qword_1002C09E0))
  {
    v0 = sub_1000DFD3C();
    qword_1002C09D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C09E0);
  }
}

void sub_10027D118()
{
  if (__cxa_guard_acquire(&qword_1002C0A08))
  {
    v0 = sub_1000DFFDC();
    qword_1002C0A00 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0A08);
  }
}

void sub_10027D16C()
{
  if (__cxa_guard_acquire(&qword_1002C0690))
  {
    v0 = sub_1000DAFDC();
    qword_1002C0688 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0690);
  }
}

void sub_10027D1C0()
{
  if (__cxa_guard_acquire(&qword_1002C0668))
  {
    v0 = sub_1000B80E4();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100102A78(v2);

    __cxa_guard_release(&qword_1002C0668);
  }
}

void sub_10027D210()
{
  {
    llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>(void)::Name = sub_100102814();
    unk_1002C0E60 = v0;
  }
}

uint64_t mlir::UnrealizedConversionCastOp::fold(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 68);
    v6 = *(v4 + 72);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v53 = v6;
  v54 = v5;
  sub_10010B2F4(v4);
  v52[0] = v7;
  v52[1] = v8;
  mlir::OperandRange::getType(&v53, &v49);
  mlir::ResultRange::getType(v52, &v46);
  v9 = v51 - v50;
  v10 = v47;
  if (v51 - v50 == v48 - v47)
  {
    if (v51 == v50)
    {
LABEL_8:
      v14 = v54;
      v15 = *(a3 + 8);
      if (v54 + v15 > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v54 + v15, 8);
        v15 = *(a3 + 8);
      }

      if (!v14)
      {
        goto LABEL_61;
      }

      v16 = (*a3 + 8 * v15);
      if (v14 >= 0xB)
      {
        sub_10010B31C();
        v19 = v19 || v18 >= v17;
        if (v19)
        {
          sub_10010B2D0();
          do
          {
            sub_10010B278(v20);
          }

          while (!v22);
          v16 = v21;
        }
      }

      do
      {
        sub_10010B308(v16);
      }

      while (!v22);
      goto LABEL_60;
    }

    v11 = v46;
    v12 = v49 + 32 * v50 + 24;
    while (1)
    {
      v13 = *(*v12 + 8);
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v10) + 8) ^ v13) > 7)
      {
        break;
      }

      ++v10;
      v12 += 32;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }
  }

  if (!v54)
  {
    return 0;
  }

  v45 = *(v53 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v45);
  if (!DefiningOp)
  {
    return 0;
  }

  v24 = *(*(DefiningOp + 48) + 16);
  v25 = v24 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id ? DefiningOp : 0;
  if (v24 != &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
  {
    return 0;
  }

  v26 = *(DefiningOp + 36);
  v27 = v26 ? DefiningOp - 16 : 0;
  if (v54 != v26)
  {
    return 0;
  }

  if (v26)
  {
    v28 = 0;
    v29 = (v53 + 24);
    while (mlir::detail::OpResultImpl::getNextResultAtOffset(v27, v28) == *v29)
    {
      ++v28;
      v29 += 4;
      if (v26 == v28)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

LABEL_35:
  if ((*(v25 + 46) & 0x80) != 0)
  {
    v30 = *(v25 + 72);
    v31 = *(v25 + 68);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v55[0] = v30;
  v55[1] = v31;
  mlir::OperandRange::getTypes(v55, &v49);
  mlir::ResultRange::getTypes(v52, &v46);
  v32 = v51 - v50;
  v33 = v47;
  if (v51 - v50 != v48 - v47)
  {
    return 0;
  }

  if (v51 != v50)
  {
    v34 = v46;
    v35 = v49 + 32 * v50 + 24;
    do
    {
      v36 = *(*v35 + 8);
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v34, v33) + 8) ^ v36) > 7)
      {
        return 0;
      }

      ++v33;
      v35 += 32;
    }

    while (--v32);
  }

  if ((*(v25 + 46) & 0x80) != 0)
  {
    v37 = *(v25 + 72);
    v14 = *(v25 + 68);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3 + 8);
  if (v14 + v15 > *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v14 + v15, 8);
    v15 = *(a3 + 8);
  }

  if (v14)
  {
    v38 = (*a3 + 8 * v15);
    if (v14 >= 0xB)
    {
      sub_10010B31C();
      if (v19 || v40 >= v39)
      {
        sub_10010B2D0();
        do
        {
          sub_10010B278(v42);
        }

        while (!v22);
        v38 = v43;
      }
    }

    do
    {
      sub_10010B308(v38);
    }

    while (!v22);
LABEL_60:
    LODWORD(v15) = *(a3 + 8);
  }

LABEL_61:
  *(a3 + 8) = v15 + v14;
  return 1;
}

void mlir::UnrealizedConversionCastOp::print(mlir::UnrealizedConversionCastOp *this, mlir::OpAsmPrinter *a2)
{
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 68))
  {
    v4 = (*(*a2 + 16))(a2);
    v5 = sub_1000C9AF0(v4);
    if (v7)
    {
      llvm::raw_ostream::write(v5, 32);
    }

    else
    {
      sub_10010B264(v5, v6);
    }

    v8 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v9 = *(v8 + 68);
      v10 = *(v8 + 72);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v11 = (*(*a2 + 16))(a2);
    if (v9)
    {
      v12 = v11;
      v13 = *(v10 + 24);
      sub_10010B2A4();
      (*(v14 + 160))(a2);
      v15 = v9 - 1;
      if (v15)
      {
        v16 = (v10 + 56);
        do
        {
          v17 = v12[4];
          if (v12[3] - v17 > 1uLL)
          {
            *v17 = 8236;
            v12[4] += 2;
          }

          else
          {
            llvm::raw_ostream::write(v12, ", ", 2uLL);
          }

          v18 = *v16;
          v16 += 4;
          sub_10010B2A4();
          (*(v19 + 160))(a2);
          --v15;
        }

        while (v15);
      }
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = sub_1000C9AF0(v20);
    if (v7)
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      sub_10010B264(v21, v22);
    }

    v23 = (*(*a2 + 16))(a2);
    v24 = v23[4];
    if (v23[3] == v24)
    {
      llvm::raw_ostream::write(v23, ":", 1uLL);
    }

    else
    {
      *v24 = 58;
      ++v23[4];
    }

    v25 = (*(*a2 + 16))(a2);
    v26 = sub_1000C9AF0(v25);
    if (v7)
    {
      llvm::raw_ostream::write(v26, 32);
    }

    else
    {
      sub_10010B264(v26, v27);
    }

    v28 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v29 = *(v28 + 68);
      v30 = *(v28 + 72);
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    AttrDictionary = v30;
    v83 = v29;
    mlir::OperandRange::getTypes(&AttrDictionary, &v84);
    v31 = v85;
    v32 = v87;
    if (v85 != v87)
    {
      v33 = v84 + 32 * v85;
      v34 = *(*(v33 + 3) + 8);
      sub_10010B2A4();
      v36 = *(v35 + 32);
      v37 = sub_10010B2E8();
      v38(v37);
      if (v31 + 1 != v32)
      {
        v39 = ~v31 + v32;
        v40 = (v33 + 56);
        do
        {
          v41 = (*(*a2 + 16))(a2);
          v42 = sub_10010B2C0(v41);
          if (!v44 & v7)
          {
            *v43 = 8236;
            sub_10010B2B0(v42);
          }

          else
          {
            llvm::raw_ostream::write(v42, ", ", 2uLL);
          }

          v45 = *v40;
          v40 += 4;
          v46 = *(v45 + 8);
          sub_10010B2A4();
          v48 = *(v47 + 32);
          v49 = sub_10010B2E8();
          v50(v49);
          --v39;
        }

        while (v39);
      }
    }
  }

  v51 = (*(*a2 + 16))(a2);
  v52 = sub_1000C9AF0(v51);
  if (v7)
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    sub_10010B264(v52, v53);
  }

  v54 = (*(*a2 + 16))(a2);
  v55 = sub_10010B2C0(v54);
  if (!v44 & v7)
  {
    *v56 = 28532;
    sub_10010B2B0(v55);
  }

  else
  {
    llvm::raw_ostream::write(v55, "to", 2uLL);
  }

  v57 = (*(*a2 + 16))(a2);
  v58 = sub_1000C9AF0(v57);
  if (v7)
  {
    llvm::raw_ostream::write(v58, 32);
  }

  else
  {
    sub_10010B264(v58, v59);
  }

  sub_10010B2F4(*this);
  AttrDictionary = v60;
  v83 = v61;
  mlir::ResultRange::getTypes(&AttrDictionary, &v84);
  v62 = v85;
  v63 = v87;
  if (v85 != v87)
  {
    v64 = v84;
    v65 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v84, v85) + 8);
    sub_10010B2A4();
    v67 = *(v66 + 32);
    v68 = sub_10010B2E8();
    v69(v68);
    for (i = v62 + 1; v63 != i; ++i)
    {
      v71 = (*(*a2 + 16))(a2);
      v72 = sub_10010B2C0(v71);
      if (!v44 & v7)
      {
        *v73 = 8236;
        sub_10010B2B0(v72);
      }

      else
      {
        llvm::raw_ostream::write(v72, ", ", 2uLL);
      }

      v74 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v64, i) + 8);
      sub_10010B2A4();
      v76 = *(v75 + 32);
      v77 = sub_10010B2E8();
      v78(v77);
    }
  }

  v84 = &v86;
  v85 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  mlir::DictionaryAttr::getValue(&AttrDictionary);
  sub_10010B2A4();
  (*(v79 + 192))(a2, v80, v81);
  if (v84 != &v86)
  {
    free(v84);
  }
}

uint64_t sub_10027DBC4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  v15[0] = a2;
  v15[1] = v8;
  v15[2] = v9;
  v16 = 1;
  v10 = *(a2 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a2 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::RegionRange::RegionRange(v17, v12, v11);
  v17[2] = a3;
  v17[3] = a4;
  return mlir::UnrealizedConversionCastOp::fold(v15, v13, a5);
}

void sub_10027DC94(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::UnrealizedConversionCastOp::print(&v7, a3);
}

void sub_10027DCE4()
{
  if (__cxa_guard_acquire(&qword_1002C04D8))
  {
    v0 = sub_100065820();
    qword_1002C04D0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C04D8);
  }
}

void sub_10027DD24()
{
  if (__cxa_guard_acquire(&qword_1002C0C70))
  {
    v0 = sub_10010ADBC();
    off_1002C0C68 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0C70);
  }
}

void sub_10027DD64()
{
  {
    llvm::getTypeName<mlir::StringAttr>(void)::Name = sub_10010AE84();
    *algn_1002C2D98 = v0;
  }
}

void sub_10027DDA4()
{
  if (__cxa_guard_acquire(&qword_1002C0BC0))
  {
    v0 = sub_100106218();
    qword_1002C0BB8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0BC0);
  }
}

void sub_10027DDF8()
{
  if (__cxa_guard_acquire(&qword_1002C0BD8))
  {
    qword_1002C0BC8 = sub_100106260();
    unk_1002C0BD0 = v0;

    __cxa_guard_release(&qword_1002C0BD8);
  }
}

void sub_10027DE4C()
{
  {
    v0 = sub_100107570();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027DEA0()
{
  {
    v0 = sub_10010747C();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027DEF4()
{
  {
    llvm::getTypeName<mlir::SymbolOpInterface>(void)::Name = sub_1001074C4();
    unk_1002C0EB0 = v0;
  }
}

void sub_10027DF48()
{
  {
    llvm::getTypeName<mlir::RegionKindInterface>(void)::Name = sub_1001075B8();
    unk_1002C18F0 = v0;
  }
}

void sub_10027DF9C()
{
  {
    v0 = sub_100107C3C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027DFF0()
{
  {
    v0 = sub_100107D04();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E044()
{
  {
    v0 = sub_100107DCC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E098()
{
  {
    v0 = sub_100107E94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E0EC()
{
  {
    v0 = sub_100107F5C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E140()
{
  {
    v0 = sub_100108024();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E194()
{
  {
    v0 = sub_1001080EC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E1E8()
{
  {
    v0 = sub_1001081B4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E23C()
{
  {
    v0 = sub_10010827C();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E290()
{
  if (__cxa_guard_acquire(&qword_1002C0BF8))
  {
    v0 = sub_100108344();
    qword_1002C0BF0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0BF8);
  }
}

void sub_10027E2E4()
{
  {
    v0 = sub_1000714E0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E338()
{
  {
    v0 = sub_10010840C();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E38C()
{
  {
    v0 = sub_1001084D4();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E3E0()
{
  {
    v0 = sub_10010859C();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E434()
{
  {
    v0 = sub_100108664();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E488()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>(void)::Name = sub_100107C84();
    unk_1002C1590 = v0;
  }
}

void sub_10027E4DC()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>(void)::Name = sub_100107D4C();
    *algn_1002C1928 = v0;
  }
}

void sub_10027E530()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>(void)::Name = sub_100107E14();
    *algn_1002C1028 = v0;
  }
}

void sub_10027E584()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>(void)::Name = sub_100107EDC();
    unk_1002C1950 = v0;
  }
}

void sub_10027E5D8()
{
  {
    llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>(void)::Name = sub_100107FA4();
    *algn_1002C1978 = v0;
  }
}

void sub_10027E62C()
{
  {
    llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>(void)::Name = sub_10010806C();
    unk_1002C19A0 = v0;
  }
}

void sub_10027E680()
{
  {
    llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>(void)::Name = sub_100108134();
    *algn_1002C15B8 = v0;
  }
}

void sub_10027E6D4()
{
  {
    llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>(void)::Name = sub_1001081FC();
    *algn_1002C1078 = v0;
  }
}

void sub_10027E728()
{
  {
    llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001082C4();
    *algn_1002C17C8 = v0;
  }
}

void sub_10027E77C()
{
  if (__cxa_guard_acquire(&qword_1002C0C10))
  {
    qword_1002C0C00 = sub_10010838C();
    *algn_1002C0C08 = v0;

    __cxa_guard_release(&qword_1002C0C10);
  }
}

void sub_10027E7D0()
{
  {
    llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100108454();
    unk_1002C19F0 = v0;
  }
}

void sub_10027E824()
{
  {
    llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10010851C();
    *algn_1002C1A18 = v0;
  }
}

void sub_10027E878()
{
  {
    llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>(void)::Name = sub_1001085E4();
    *algn_1002C1A68 = v0;
  }
}

void sub_10027E8CC()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>(void)::Name = sub_1001086AC();
    unk_1002C1A90 = v0;
  }
}

void sub_10027E920()
{
  {
    v0 = sub_1001097A0();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E974()
{
  {
    v0 = sub_10010986C();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027E9C8()
{
  {
    llvm::getTypeName<mlir::ConditionallySpeculatable>(void)::Name = sub_1001097E8();
    unk_1002C0F00 = v0;
  }
}

void sub_10027EA1C()
{
  {
    llvm::getTypeName<mlir::MemoryEffectOpInterface>(void)::Name = sub_1001098B4();
    *algn_1002C0F28 = v0;
  }
}

void sub_10027EA70()
{
  {
    v0 = sub_100109BC0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EAC4()
{
  {
    v0 = sub_100109C88();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EB18()
{
  {
    v0 = sub_100107DCC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EB6C()
{
  {
    v0 = sub_100109D50();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EBC0()
{
  {
    v0 = sub_100109E18();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EC14()
{
  {
    v0 = sub_100109EE0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EC68()
{
  {
    v0 = sub_100109FA8();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027ECBC()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>(void)::Name = sub_100109C08();
    unk_1002C0FB0 = v0;
  }
}

void sub_10027ED10()
{
  {
    llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>(void)::Name = sub_100109CD0();
    *algn_1002C1778 = v0;
  }
}

void sub_10027ED64()
{
  {
    llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>(void)::Name = sub_100109D98();
    unk_1002C17A0 = v0;
  }
}

void sub_10027EDB8()
{
  {
    llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>(void)::Name = sub_100109E60();
    unk_1002C10A0 = v0;
  }
}

void sub_10027EE0C()
{
  {
    llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>(void)::Name = sub_100109F28();
    *algn_1002C10C8 = v0;
  }
}

void sub_10027EE60()
{
  {
    llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100109FF0();
    unk_1002C10F0 = v0;
  }
}

void sub_10027EEB4()
{
  {
    v0 = sub_1001027CC();
    mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EF08()
{
  if (__cxa_guard_acquire(&qword_1002C0668))
  {
    v0 = sub_1000B80E4();
    qword_1002C0660 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0668);
  }
}

void sub_10027EF5C()
{
  {
    v0 = sub_10005E7C8();
    mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027EFB0()
{
  if (__cxa_guard_acquire(&qword_1002C0C88))
  {
    qword_1002C0C78 = sub_10010AE04();
    unk_1002C0C80 = v0;

    __cxa_guard_release(&qword_1002C0C88);
  }
}

void sub_10027F004()
{
  {
    v0 = sub_100090F30();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027F058()
{
  if (__cxa_guard_acquire(&qword_1002C0CA0))
  {
    qword_1002C0C90 = sub_100110568();
    *algn_1002C0C98 = v0;
    __cxa_guard_release(&qword_1002C0CA0);
  }
}

void sub_10027F098()
{
  if (__cxa_guard_acquire(&qword_1002C05C8))
  {
    *&xmmword_1002C05B8 = sub_1000A52DC();
    *(&xmmword_1002C05B8 + 1) = v0;
    __cxa_guard_release(&qword_1002C05C8);
  }
}

void sub_10027F0D8()
{
  {
    llvm::getTypeName<mlir::ShapedType>(void)::Name = sub_10005EA6C();
    *algn_1002C0ED8 = v0;
  }
}

void sub_10027F118()
{
  if (__cxa_guard_acquire(&qword_1002C0CB8))
  {
    qword_1002C0CA8 = sub_100111C3C();
    unk_1002C0CB0 = v0;
    __cxa_guard_release(&qword_1002C0CB8);
  }
}

void sub_10027F158()
{
  if (__cxa_guard_acquire(&qword_1002C0CD0))
  {
    qword_1002C0CC0 = sub_100111CBC();
    *algn_1002C0CC8 = v0;
    __cxa_guard_release(&qword_1002C0CD0);
  }
}

void sub_10027F198()
{
  if (__cxa_guard_acquire(&qword_1002C0548))
  {
    qword_1002C0538 = sub_1000828E8();
    unk_1002C0540 = v0;
    __cxa_guard_release(&qword_1002C0548);
  }
}

void sub_10027F1D8()
{
  if (__cxa_guard_acquire(&qword_1002C0530))
  {
    v0 = sub_1000828A0();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100120BDC(v2);
    __cxa_guard_release(&qword_1002C0530);
  }
}

void sub_10027F214()
{
  if (__cxa_guard_acquire(&qword_1002C0CE0))
  {
    v0 = sub_10011B0C0();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100120BC4(v2);

    __cxa_guard_release(&qword_1002C0CE0);
  }
}

void sub_10027F264()
{
  if (__cxa_guard_acquire(&qword_1002C0CF8))
  {
    qword_1002C0CE8 = sub_10011B108();
    unk_1002C0CF0 = v0;

    __cxa_guard_release(&qword_1002C0CF8);
  }
}

void sub_10027F2B8()
{
  {
    v0 = sub_10005EA24();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100120BD0(v2);
  }
}

void sub_10027F308()
{
  if (__cxa_guard_acquire(&qword_1002C0D08))
  {
    v0 = sub_10011E6D4();
    qword_1002C0D00 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0D08);
  }
}

void sub_10027F35C()
{
  if (__cxa_guard_acquire(&qword_1002C0D20))
  {
    qword_1002C0D10 = sub_10011E71C();
    *algn_1002C0D18 = v0;

    __cxa_guard_release(&qword_1002C0D20);
  }
}

void sub_10027F3B0()
{
  if (__cxa_guard_acquire(&qword_1002C0530))
  {
    v0 = sub_1000828A0();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100120BDC(v2);

    __cxa_guard_release(&qword_1002C0530);
  }
}

void sub_10027F400()
{
  if (__cxa_guard_acquire(&qword_1002C0D30))
  {
    v0 = sub_10011F1A4();
    qword_1002C0D28 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0D30);
  }
}

void sub_10027F454()
{
  if (__cxa_guard_acquire(&qword_1002C0D48))
  {
    qword_1002C0D38 = sub_10011F1EC();
    unk_1002C0D40 = v0;

    __cxa_guard_release(&qword_1002C0D48);
  }
}

void sub_10027F4A8()
{
  {
    v0 = sub_100107570();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027F4FC()
{
  {
    v0 = sub_100107570();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10027F53C()
{
  if (__cxa_guard_acquire(&qword_1002C0D60))
  {
    v0 = sub_100131B94();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100133754(v2);

    __cxa_guard_release(&qword_1002C0D60);
  }
}

void sub_10027F58C()
{
  if (__cxa_guard_acquire(&qword_1002C0D78))
  {
    qword_1002C0D68 = sub_100131BDC();
    unk_1002C0D70 = v0;

    __cxa_guard_release(&qword_1002C0D78);
  }
}

void sub_10027F5E0()
{
  if (__cxa_guard_acquire(&qword_1002C0630))
  {
    v0 = sub_1000AC01C();
    qword_1002C0628 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0630);
  }
}

void sub_10027F620()
{
  if (__cxa_guard_acquire(&qword_1002C0608))
  {
    v0 = sub_1000ABE54();
    qword_1002C0600 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0608);
  }
}

void sub_10027F660()
{
  if (__cxa_guard_acquire(&qword_1002C05E0))
  {
    v0 = sub_1000ABCC4();
    qword_1002C05D8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C05E0);
  }
}

void sub_10027F6A0()
{
  if (__cxa_guard_acquire(&qword_1002C0D88))
  {
    v0 = sub_100138980();
    qword_1002C0D80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0D88);
  }
}

void sub_10027F6E0()
{
  if (__cxa_guard_acquire(&qword_1002C0DB0))
  {
    v0 = sub_100138A48();
    qword_1002C0DA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    __cxa_guard_release(&qword_1002C0DB0);
  }
}

uint64_t sub_10027F720(uint64_t a1, int8x16_t *a2, unint64_t a3, void *a4, void *a5)
{
  v9 = (a1 + 336);
  *a5 = a1 + 336;
  llvm::sys::RWMutexImpl::lock_shared((a1 + 336));
  v10 = sub_100135150(a1 + 160, a2, a3);
  if (*(a1 + 160) + 8 * *(a1 + 168) == v10)
  {
    llvm::sys::RWMutexImpl::unlock_shared(v9);
    llvm::sys::RWMutexImpl::lock(v9);
    return 1;
  }

  else
  {
    *a4 = *(*v10 + 8);
    llvm::sys::RWMutexImpl::unlock_shared(v9);
    return 0;
  }
}

void sub_10027F7C0()
{
  if (__cxa_guard_acquire(&qword_1002C0D88))
  {
    v0 = sub_100138980();
    qword_1002C0D80 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0D88);
  }
}

void sub_10027F814()
{
  if (__cxa_guard_acquire(&qword_1002C0DB0))
  {
    v0 = sub_100138A48();
    qword_1002C0DA8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0DB0);
  }
}

void sub_10027F868()
{
  off_1002C3420();
  *v0 = 1;
  v0[1] = -4096;
  v0[6] = -4096;
  v0[11] = -4096;
  v0[16] = -4096;
  _tlv_atexit(sub_100136EC8, v0);
  off_1002C3438();
  *v1 = 1;
}

void sub_10027F8E4()
{
  if (__cxa_guard_acquire(&qword_1002C0DA0))
  {
    qword_1002C0D90 = sub_1001389C8();
    *algn_1002C0D98 = v0;

    __cxa_guard_release(&qword_1002C0DA0);
  }
}

void sub_10027F938()
{
  if (__cxa_guard_acquire(&qword_1002C0DC8))
  {
    qword_1002C0DB8 = sub_100138A90();
    unk_1002C0DC0 = v0;

    __cxa_guard_release(&qword_1002C0DC8);
  }
}

uint64_t *mlir::Operation::setOperands(uint64_t *result, uint64_t a2, unsigned int a3)
{
  if ((*(result + 46) & 0x80) != 0)
  {
    return mlir::detail::OperandStorage::setOperands((result + 8), result, a2, a3);
  }

  return result;
}

void mlir::Operation::dropAllReferences(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0 && *(this + 17))
  {
    v3 = *(this + 9);
    do
    {
      v4 = v3[1];
      if (v4)
      {
        v5 = *v3;
        *v4 = *v3;
        if (v5)
        {
          *(v5 + 8) = v4;
        }
      }

      sub_100140838(v3);
    }

    while (!v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    sub_10014070C();
    v8 = (v7 + 32 * *(this + 10));
    v10 = 24 * v9;
    do
    {
      mlir::Region::dropAllReferences(v8);
      v8 = (v8 + 24);
      v10 -= 24;
    }

    while (v10);
    v11 = *(this + 11);
  }

  if (*(this + 10))
  {
    sub_10014070C();
    do
    {
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

      sub_100140838(v12);
    }

    while (!v6);
  }
}

uint64_t mlir::Operation::clone(Operation *a1, uint64_t a2, char a3)
{
  v67 = v78;
  v76 = v78;
  v77 = 0x800000000;
  v68 = v75;
  v73 = v75;
  v74 = 0x200000000;
  if ((a3 & 2) != 0 && (*(a1 + 46) & 0x80) != 0)
  {
    v6 = *(a1 + 17);
    if (v6 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v6, 8), (*(a1 + 46) & 0x80) != 0))
    {
      v7 = *(a1 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = *(a1 + 9);
        do
        {
          v10 = *(v9 + 32 * v8 + 24);
          v11 = *(a2 + 16);
          if (v11)
          {
            v12 = *a2;
            v13 = 0x9DDFEA08EB382D69 * ((8 * *(v9 + 32 * v8 + 24) - 0xAE502812AA7333) ^ HIDWORD(*(v9 + 32 * v8 + 24)));
            v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v10) ^ (v13 >> 47) ^ v13);
            v15 = (-348639895 * ((v14 >> 47) ^ v14)) & (v11 - 1);
            v16 = *(*a2 + 16 * v15);
            if (v16 == v10)
            {
LABEL_9:
              if (v15 != v11)
              {
                v10 = *(v12 + 16 * v15 + 8);
              }
            }

            else
            {
              while (v16 != -4096)
              {
                sub_100140800();
                v16 = *(v12 + v18);
                if (v16 == v10)
                {
                  goto LABEL_9;
                }
              }
            }
          }

          v17 = v77;
          if (v77 >= HIDWORD(v77))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v78, v77 + 1, 8);
            v17 = v77;
          }

          *(v76 + v17) = v10;
          LODWORD(v77) = v77 + 1;
          ++v8;
        }

        while (v8 != v7);
      }
    }
  }

  v19 = *(a1 + 10);
  if (HIDWORD(v74) < v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v19, 8);
  }

  mlir::SuccessorRange::SuccessorRange(&v69, a1);
  v20 = v70;
  if (v70)
  {
    v21 = 0;
    v22 = v69;
    do
    {
      v23 = *(v22 + 4 * v21 + 3);
      v24 = *(a2 + 40);
      if (v24)
      {
        v25 = *(a2 + 24);
        v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v24 - 1);
        v27 = *(v25 + 16 * v26);
        if (v27 == v23)
        {
LABEL_24:
          if (v26 != v24)
          {
            v23 = *(v25 + 16 * v26 + 8);
          }
        }

        else
        {
          while (v27 != -4096)
          {
            sub_100140800();
            v27 = *(v25 + v29);
            if (v27 == v23)
            {
              goto LABEL_24;
            }
          }
        }
      }

      v28 = v74;
      if (v74 >= HIDWORD(v74))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, v74 + 1, 8);
        v28 = v74;
      }

      *(v73 + v28) = v23;
      sub_100140584();
      ++v21;
    }

    while (v21 != v20);
  }

  v30 = *(a1 + 3);
  v31 = *(a1 + 6);
  v32 = *(a1 + 9);
  if (v32)
  {
    v33 = a1 - 16;
  }

  else
  {
    v33 = 0;
  }

  v79 = v33;
  v80 = v32;
  mlir::ResultRange::getTypes(&v79, &v69);
  NextResultAtOffset = v69;
  v35 = v70;
  v36 = v71;
  if (v70)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v69, v70);
  }

  mlir::ValueRange::ValueRange(&v79, NextResultAtOffset, v36 - v35);
  mlir::TypeRange::TypeRange(v72, v79, v80);
  mlir::ValueRange::ValueRange(&v69, v76, v77);
  v37 = *(a1 + 7);
  if (HIBYTE(*(a1 + 11)))
  {
    v38 = a1 + 16 * ((*(a1 + 11) >> 23) & 1) + 64;
  }

  else
  {
    v38 = 0;
  }

  mlir::BlockRange::BlockRange(&v79, v73, v74);
  v39 = mlir::Operation::create(v30, v31, v72[0], v72[1], v69, v70, v37, v38, v79, v80, *(a1 + 11) & 0x7FFFFF);
  v69 = a1;
  *sub_10013EE94(a2 + 48, &v69) = v39;
  if (a3)
  {
    v40 = *(a1 + 11);
    if ((v40 & 0x7FFFFF) != 0)
    {
      v41 = 0;
      do
      {
        mlir::Region::cloneInto((((a1 + 16 * ((v40 >> 23) & 1) + ((v40 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10) + 24 * v41), ((v39 + 64 + 16 * ((*(v39 + 44) >> 23) & 1) + ((*(v39 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v39 + 40) + 24 * v41, a2);
        ++v41;
        v40 = *(a1 + 11);
      }

      while (v41 != (v40 & 0x7FFFFF));
    }
  }

  v42 = *(a1 + 9);
  if (v42)
  {
    v69 = (a1 - 16);
    *sub_10013F208(a2, &v69) = v39 - 16;
    if (v42 != 1)
    {
      *sub_1001406F0(a1 - 32, v47, v52, v57, v62, v78, v75, v69) = v39 - 32;
      if (v42 != 2)
      {
        *sub_1001406F0(a1 - 48, v48, v53, v58, v63, v67, v68, v69) = v39 - 48;
        if (v42 != 3)
        {
          *sub_1001406F0(a1 - 64, v49, v54, v59, v64, v67, v68, v69) = v39 - 64;
          if (v42 != 4)
          {
            *sub_1001406F0(a1 - 80, v50, v55, v60, v65, v67, v68, v69) = v39 - 80;
            if (v42 != 5)
            {
              *sub_1001406F0(a1 - 96, v51, v56, v61, v66, v67, v68, v69) = v39 - 96;
              if (v42 != 6)
              {
                v43 = (a1 - 120);
                v44 = v39 - 120;
                v45 = v42 - 6;
                do
                {
                  v69 = v43;
                  *sub_10013F208(a2, &v69) = v44;
                  v43 = (v43 - 24);
                  v44 -= 24;
                  --v45;
                }

                while (v45);
              }
            }
          }
        }
      }
    }
  }

  if (v73 != v68)
  {
    free(v73);
  }

  if (v76 != v67)
  {
    free(v76);
  }

  return v39;
}

BOOL mlir::OpTrait::impl::foldCommutative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  if ((*(a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 68);
  if (v3 < 2)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1 + 72);
  v23 = v6;
  v7 = (v6 + 32 * v3);
  v8 = 32 * v3;
  v9 = v8;
  while (!*(a2 + (v5 >> 2)))
  {
    v5 += 32;
    v9 -= 32;
    if (!v9)
    {
      v10 = v7;
      return v10 != v7;
    }
  }

  v25[0] = v24;
  v25[1] = &v23;
  v10 = (v6 + v5);
  if (v9)
  {
    v11 = 0;
    for (i = v5; !*(a2 + (i >> 2)); i += 32)
    {
      v11 += 32;
      if (v9 == v11)
      {
        return v10 != v7;
      }
    }

    v13 = v8 - 32;
    v14 = v9 - v11;
    v15 = (v6 + v5 + v11);
    do
    {
      v14 -= 32;
      if (!v14)
      {
        v7 = v15;
        return v10 != v7;
      }

      v7 -= 4;
      v16 = *(a2 + (v13 >> 2));
      v13 -= 32;
    }

    while (v16);
    v17 = (v14 >> 5) + 1;
    if (v14 >> 5 < 3)
    {
      v22 = 0;
      v18 = 0;
    }

    else
    {
      if (v17 >= 0x3FFFFFFFFFFFFFFLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = (v14 >> 5) + 1;
      }

      while (1)
      {
        v19 = operator new(32 * v18, &std::nothrow);
        if (v19)
        {
          break;
        }

        v20 = v18 >> 1;
        v21 = v18 > 1;
        v18 >>= 1;
        if (!v21)
        {
          v22 = 0;
          v18 = v20;
          goto LABEL_26;
        }
      }

      v22 = v19;
    }

LABEL_26:
    v7 = sub_10013F980(v15, v7, v25, v17, v22, v18);
    if (v22)
    {
      operator delete(v22);
    }
  }

  return v10 != v7;
}

BOOL mlir::OpTrait::impl::verifyZeroOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = sub_100140820(this, __stack_chk_guard);
  if ((v3 & 0x80) == 0 || !*(v2 + 17))
  {
    return 1;
  }

  LOWORD(v41) = 257;
  mlir::Operation::emitOpError(&v45, v2, &v37);
  if (v45)
  {
    sub_1001407F4();
    v43 = "requires zero operands";
    v44 = 22;
    sub_100140514();
    if (v5)
    {
      sub_1001404C4();
      if (v33 <= v34 && (v32 & 1) != 0)
      {
        sub_1001405B4(v48, &v45);
        v4 = v48[0];
      }

      else
      {
        sub_1001405B4(v48, &v45);
        sub_100140670();
      }
    }

    sub_100140494(v4);
    sub_100140584();
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v45);
  if (v45)
  {
    mlir::InFlightDiagnostic::report(&v45);
  }

  sub_100140864();
  if (v15)
  {
    v16 = sub_100140774(v7, v8, v9, v10, v11, v12, v13, v14, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7], v48[8], v48[9], v48[10], v48[11], v48[12], v48[13], __p, v50, v51, v52, v53, v54, v55);
    if (!v15)
    {
      free(v16);
    }

    v24 = v52;
    if (v52)
    {
      sub_10014064C();
      if (!v15)
      {
        do
        {
          v25 = sub_100052FFC(v25 - 1);
        }

        while (v25 != v24);
        v26 = v52;
      }

      v53 = v24;
      operator delete(v26);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = sub_1001406B0();
      if (!v15)
      {
        sub_1001404B0();
        do
        {
          if (sub_1001406A4())
          {
            operator delete[]();
          }
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = sub_1001405F8(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0]);
    if (!v15)
    {
      free(v30);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyNOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = a2;
  sub_100140820(this, __stack_chk_guard);
  if (v4 < 0)
  {
    v5 = *(this + 17);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    return 1;
  }

  sub_100140658();
  mlir::Operation::emitOpError(v8, this, v7);
  if (v95)
  {
    sub_1001407F4();
    v90 = "expected ";
    v93 = 9;
    sub_100140514();
    if (v10)
    {
      sub_1001404C4();
      if (v62 <= v63 && (v61 & 1) != 0)
      {
        sub_100140560(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        v9 = v98;
      }

      else
      {
        sub_100140560(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        sub_100140670();
      }
    }

    sub_100140494(v9);
    sub_10014060C();
    if (v11)
    {
      sub_100140814();
      v91 = v2;
      sub_1001405D0();
      if (v10)
      {
        sub_1001405E4();
        if (v70 <= v71 && (v69 & 1) != 0)
        {
          sub_100140528(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_100140894();
        }

        else
        {
          sub_100140528(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_1001406CC();
        }
      }

      sub_1001404F0(v12, v13, v14, v15, v16, v17, v18, v19, v76, v78, v80, v82, v84, v86, v88, v91, v93, v95, v96, v97, v98, v99);
      LODWORD(v99) = v20 + 1;
      if (v95)
      {
        LODWORD(v88) = 3;
        v90 = " operands, but found ";
        v93 = 21;
        sub_1001405D0();
        if (v10)
        {
          sub_1001405E4();
          if (v74 <= v75 && (v73 & 1) != 0)
          {
            sub_100140528(v72, v76, v78, v80, v82, v84, v86, v88, " operands, but found ", 21, v95, v96, v97, v98, v99);
            sub_100140894();
          }

          else
          {
            sub_100140528(v72, v76, v78, v80, v82, v84, v86, v88, " operands, but found ", 21, v95, v96, v97, v98, v99);
            sub_1001406CC();
          }
        }

        v23 = (v21 + 24 * v99);
        v24 = v22[1].n128_u64[0];
        sub_1001404D8(v23, *v22);
      }
    }
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v25 = *(this + 17);
  }

  if (v95)
  {
    sub_100140814();
    v90 = v26;
    sub_100140514();
    if (v10)
    {
      sub_100140794();
      if (v66 <= v67 && (v65 & 1) != 0)
      {
        sub_1001405B4(v64 + 24, &v95);
        v27 = v98;
      }

      else
      {
        sub_1001405B4(v64 + 24, &v95);
        sub_100140670();
      }
    }

    sub_100140494(v27);
    sub_100140584();
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  sub_100140864();
  if (v36)
  {
    v37 = sub_100140774(v28, v29, v30, v31, v32, v33, v34, v35, v76, v78, v80, v82, v84, v86, v88, v90, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, __p, v113, v114, v115, v116, v117, v118);
    if (!v36)
    {
      free(v37);
    }

    v45 = v115;
    if (v115)
    {
      sub_10014064C();
      if (!v36)
      {
        do
        {
          v46 = sub_100052FFC(v46 - 1);
        }

        while (v46 != v45);
        v47 = v115;
      }

      v116 = v45;
      operator delete(v47);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v113;
      v50 = sub_1001406B0();
      if (!v36)
      {
        sub_1001404B0();
        do
        {
          if (sub_1001406A4())
          {
            operator delete[]();
          }
        }

        while (v49 != v48);
        v50 = __p;
      }

      v113 = v48;
      operator delete(v50);
    }

    v51 = sub_1001405F8(v37, v38, v39, v40, v41, v42, v43, v44, v77, v79, v81, v83, v85, v87, v89, v92, v94, v95, v96, v97, v98);
    if (!v36)
    {
      free(v51);
    }
  }

  return v6;
}

BOOL mlir::OpTrait::impl::verifyAtLeastNOperands(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = a2;
  sub_100140820(this, __stack_chk_guard);
  if (v4 < 0)
  {
    v5 = *(this + 17);
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= v2)
  {
    return 1;
  }

  sub_100140658();
  mlir::Operation::emitOpError(v7, this, v6);
  if (v95)
  {
    sub_1001407F4();
    v90 = "expected ";
    v93 = 9;
    sub_100140514();
    if (v9)
    {
      sub_1001404C4();
      if (v62 <= v63 && (v61 & 1) != 0)
      {
        sub_100140560(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        v8 = v98;
      }

      else
      {
        sub_100140560(v53, v54, v55, v56, v57, v58, v59, v60, v76, v78, v80, v82, v84, v86);
        sub_100140670();
      }
    }

    sub_100140494(v8);
    sub_10014060C();
    if (v10)
    {
      sub_100140814();
      v91 = v2;
      sub_1001405D0();
      if (v9)
      {
        sub_1001405E4();
        if (v70 <= v71 && (v69 & 1) != 0)
        {
          sub_100140528(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_100140894();
        }

        else
        {
          sub_100140528(v68, v76, v78, v80, v82, v84, v86, v88, v2, 9, v95, v96, v97, v98, v99);
          sub_1001406CC();
        }
      }

      sub_1001404F0(v11, v12, v13, v14, v15, v16, v17, v18, v76, v78, v80, v82, v84, v86, v88, v91, v93, v95, v96, v97, v98, v99);
      LODWORD(v99) = v19 + 1;
      if (v95)
      {
        LODWORD(v88) = 3;
        v90 = " or more operands, but found ";
        v93 = 29;
        sub_1001405D0();
        if (v9)
        {
          sub_1001405E4();
          if (v74 <= v75 && (v73 & 1) != 0)
          {
            sub_100140528(v72, v76, v78, v80, v82, v84, v86, v88, " or more operands, but found ", 29, v95, v96, v97, v98, v99);
            sub_100140894();
          }

          else
          {
            sub_100140528(v72, v76, v78, v80, v82, v84, v86, v88, " or more operands, but found ", 29, v95, v96, v97, v98, v99);
            sub_1001406CC();
          }
        }

        v22 = (v20 + 24 * v99);
        v23 = v21[1].n128_u64[0];
        sub_1001404D8(v22, *v21);
      }
    }
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v24 = *(this + 17);
  }

  if (v95)
  {
    sub_100140814();
    v90 = v25;
    sub_100140514();
    if (v9)
    {
      sub_100140794();
      if (v66 <= v67 && (v65 & 1) != 0)
      {
        sub_1001405B4(v64 + 24, &v95);
        v26 = v98;
      }

      else
      {
        sub_1001405B4(v64 + 24, &v95);
        sub_100140670();
      }
    }

    sub_100140494(v26);
    sub_100140584();
  }

  v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  sub_100140864();
  if (v36)
  {
    v37 = sub_100140774(v28, v29, v30, v31, v32, v33, v34, v35, v76, v78, v80, v82, v84, v86, v88, v90, v93, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, __p, v113, v114, v115, v116, v117, v118);
    if (!v36)
    {
      free(v37);
    }

    v45 = v115;
    if (v115)
    {
      sub_10014064C();
      if (!v36)
      {
        do
        {
          v46 = sub_100052FFC(v46 - 1);
        }

        while (v46 != v45);
        v47 = v115;
      }

      v116 = v45;
      operator delete(v47);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v113;
      v50 = sub_1001406B0();
      if (!v36)
      {
        sub_1001404B0();
        do
        {
          if (sub_1001406A4())
          {
            operator delete[]();
          }
        }

        while (v49 != v48);
        v50 = __p;
      }

      v113 = v48;
      operator delete(v50);
    }

    v51 = sub_1001405F8(v37, v38, v39, v40, v41, v42, v43, v44, v77, v79, v81, v83, v85, v87, v89, v92, v94, v95, v96, v97, v98);
    if (!v36)
    {
      free(v51);
    }
  }

  return v27;
}

BOOL mlir::OpTrait::impl::verifySameOperandsAndResultShape(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1) || !mlir::OpTrait::impl::verifyAtLeastNResults(this, 1))
  {
    return 0;
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v3 = *(this + 9);
    v4 = *(this + 17);
  }

  else
  {
    sub_1001406D8();
  }

  v80 = v3;
  v81 = v4;
  mlir::OperandRange::getTypes(&v80, &__src);
  v80 = v82;
  v81 = 0x800000000;
  v5 = __src;
  v6 = v71;
  v7 = v73;
  v8 = v73 - v71;
  if (v73 - v71 < 9)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v73 - v71, 8);
    v9 = v81;
    v10 = v81;
  }

  if (v7 != v6)
  {
    v13 = &v80[8 * v9];
    v14 = &v5[32 * v6 + 24];
    v15 = v8;
    do
    {
      v16 = *v14;
      v14 += 32;
      *v13++ = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
      --v15;
    }

    while (v15);
    v10 = v81;
  }

  LODWORD(v81) = v10 + v8;
  v17 = *(this + 9);
  v18 = this - 16;
  if (!v17)
  {
    v18 = 0;
  }

  __src = v18;
  v71 = v17;
  mlir::ResultRange::getTypes(&__src, &v62);
  v19 = v62;
  v20 = v63;
  v21 = v65;
  __src = &v72;
  v71 = 0x400000000;
  v22 = v65 - v63;
  if ((v65 - v63) < 5)
  {
    v23 = 0;
    v25 = 0;
    v24 = &v72;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v72, v65 - v63, 8);
    v23 = v71;
    v24 = __src;
    v25 = v71;
  }

  if (v21 != v20)
  {
    v26 = &v24[v23];
    do
    {
      *v26++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v19, v20++) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v21 != v20);
    v25 = v71;
    v24 = __src;
  }

  v27 = (v25 + v22);
  LODWORD(v71) = v27;
  v28 = v81;
  if (v81 + v27 > HIDWORD(v81))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, v81 + v27, 8);
    v28 = v81;
  }

  if (v27)
  {
    memcpy(&v80[8 * v28], v24, 8 * v27);
    v28 = v81;
  }

  v29 = v28 + v27;
  LODWORD(v81) = v29;
  if (__src != &v72)
  {
    free(__src);
    v29 = v81;
  }

  mlir::TypeRange::TypeRange(&__src, v80, v29);
  if (mlir::verifyCompatibleShapes(__src, v71))
  {
    v11 = 1;
  }

  else
  {
    sub_100140658();
    mlir::Operation::emitOpError(v31, this, v30);
    if (__src)
    {
      sub_1001407F4();
      v68 = "requires the same shape for all operands and results";
      v69 = 52;
      sub_100140514();
      if (v33)
      {
        sub_1001404C4();
        if (v59 <= v60 && (v58 & 1) != 0)
        {
          sub_100140560(v50, v51, v52, v53, v54, v55, v56, v57, v61, v62, v63, v64, v65, v66);
          v32 = v73;
        }

        else
        {
          sub_100140560(v50, v51, v52, v53, v54, v55, v56, v57, v61, v62, v63, v64, v65, v66);
          sub_100140670();
        }
      }

      sub_100140494(v32);
      sub_100140584();
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
    if (__src)
    {
      mlir::InFlightDiagnostic::report(&__src);
    }

    sub_100140864();
    if (v41)
    {
      v42 = v78;
      if (v78 != &v79)
      {
        free(v78);
      }

      v43 = v76;
      if (v76)
      {
        sub_10014082C();
        if (!v41)
        {
          do
          {
            v44 = sub_100052FFC(v44 - 1);
          }

          while (v44 != v43);
          v45 = v76;
        }

        v77 = v43;
        operator delete(v45);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v75;
        v48 = sub_1001407B8();
        if (!v41)
        {
          sub_10014054C();
          do
          {
            if (sub_1001407AC())
            {
              operator delete[]();
            }
          }

          while (v47 != v46);
          v48 = __p;
        }

        v75 = v46;
        operator delete(v48);
      }

      v49 = sub_1001405F8(v42, v34, v35, v36, v37, v38, v39, v40, v61, v62, v63, v64, v65, v66, v67, v68, v69, __src, v71, v72, v73);
      if (!v41)
      {
        free(v49);
      }
    }
  }

  if (v80 != v82)
  {
    free(v80);
  }

  return v11;
}

BOOL mlir::OpTrait::impl::verifySameOperandsElementType(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(this + 9) + 24));
  if ((*(this + 46) & 0x80) != 0)
  {
    v4 = *(this + 17);
    if (v4 == 1)
    {
      return 1;
    }

    v5 = *(this + 9);
  }

  else
  {
    sub_1001406D8();
  }

  v6 = (v5 + 56);
  v7 = v4 - 1;
  while (mlir::getElementTypeOrSelf(*v6) == ElementTypeOrSelf)
  {
    v6 += 4;
    if (!--v7)
    {
      return 1;
    }
  }

  sub_10014067C("requires the same element type for all operands", v17, v18, v19, v20, v21, v22, v23[0]);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v31)
  {
    if (v30 != &v31)
    {
      free(v30);
    }

    v10 = v28;
    if (v28)
    {
      sub_10014064C();
      if (!v13)
      {
        do
        {
          v11 = sub_100052FFC(v11 - 1);
        }

        while (v11 != v10);
        v12 = v28;
      }

      v29 = v10;
      operator delete(v12);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v27;
      v16 = sub_1001407B8();
      if (!v13)
      {
        sub_1001404B0();
        do
        {
          if (sub_1001407AC())
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = __p;
      }

      v27 = v14;
      operator delete(v16);
    }

    if (v24 != &v25)
    {
      free(v24);
    }
  }

  return v8;
}

mlir::OpTrait::impl *mlir::OpTrait::impl::verifySameOperandsAndResultType(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = this;
  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(this, 1) || !mlir::OpTrait::impl::verifyAtLeastNResults(v2, 1))
  {
    return 0;
  }

  v3 = (*(v2 - 1) & 0xFFFFFFFFFFFFFFF8);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v3);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v141 = v5;
  if (v5)
  {
    Encoding = mlir::RankedTensorType::getEncoding(&v141);
  }

  else
  {
    Encoding = 0;
  }

  v8 = *(v2 + 9);
  if (v8)
  {
    v9 = v2 - 16;
  }

  else
  {
    v9 = 0;
  }

  *v133 = v9;
  v134 = v8;
  mlir::ResultRange::getTypes(v133, &v141);
  v10 = v144;
  v11 = v142 + 1;
  if ((v142 + 1) != v144)
  {
    v12 = v141;
    v119 = v164;
    v124 = &v146;
    while (1)
    {
      v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, v11) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::getElementTypeOrSelf(v13) != ElementTypeOrSelf || !mlir::verifyCompatibleShape(v13, v3))
      {
        break;
      }

      if (Encoding)
      {
        v14 = *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? v13 : 0;
        v138 = v14;
        if (Encoding != mlir::RankedTensorType::getEncoding(&v138))
        {
          sub_1001408A0();
          sub_100140748(v58, v59, v60, v61, v62, v63, v64, v65, v114, v164, &v146, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
          if (v141)
          {
            LODWORD(v129) = 3;
            sub_1001407DC();
            if (v31)
            {
              sub_1001404C4();
              if (v101 <= v103 && (v102 & 1) != 0)
              {
                v2 = (&v129 - v101);
                sub_10014072C(&v144, v94, v95, v96, v97, v98, v99, v100, v117, v122, v127);
                sub_100140858();
              }

              else
              {
                sub_10014072C(&v144, v94, v95, v96, v97, v98, v99, v100, v117, v122, v127);
                v66 = v144;
              }
            }

            sub_100140494(v66);
            sub_1001406BC();
          }

          mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
          sub_10014087C();
          if (v67)
          {
            mlir::InFlightDiagnostic::report(&v141);
          }

          if ((v164[0] & 1) == 0)
          {
            return v2;
          }

          if (v163 != v122)
          {
            free(v163);
          }

          v68 = v161;
          if (v161)
          {
            sub_10014064C();
            if (!v36)
            {
              do
              {
                v69 = sub_100052FFC(v69 - 1);
              }

              while (v69 != v68);
              v70 = v161;
            }

            sub_1001408AC(v70, v117, v122, v127, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
          }

          v71 = __p;
          if (__p)
          {
            v72 = v159;
            v73 = __p;
            if (v159 != __p)
            {
              sub_10014054C();
              do
              {
                if (sub_1001406A4())
                {
                  operator delete[]();
                }
              }

              while (v72 != v71);
LABEL_124:
              v73 = __p;
            }

LABEL_125:
            v159 = v71;
            operator delete(v73);
          }

LABEL_126:
          v56 = v144;
          v57 = v127;
          goto LABEL_127;
        }
      }

      if (v10 == ++v11)
      {
        goto LABEL_24;
      }
    }

    sub_1001408A0();
    sub_100140748(v22, v23, v24, v25, v26, v27, v28, v29, v114, v164, &v146, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
    if (v141)
    {
      LODWORD(v129) = 3;
      sub_1001407DC();
      if (v31)
      {
        sub_1001404C4();
        if (v88 <= v90 && (v89 & 1) != 0)
        {
          v2 = (&v129 - v88);
          sub_1001405B4(&v144, &v141);
          sub_100140858();
        }

        else
        {
          sub_1001405B4(&v144, &v141);
          v30 = v144;
        }
      }

      sub_100140494(v30);
      sub_1001406BC();
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
    sub_10014087C();
    if (v32)
    {
      mlir::InFlightDiagnostic::report(&v141);
    }

    if (v164[0] != 1)
    {
      return v2;
    }

    if (v163 != v164)
    {
      free(v163);
    }

    v33 = v161;
    if (v161)
    {
      sub_10014064C();
      if (!v36)
      {
        do
        {
          v34 = sub_100052FFC(v34 - 1);
        }

        while (v34 != v33);
        v35 = v161;
      }

      sub_1001408AC(v35, v115, v120, v125, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
    }

    v37 = __p;
    if (!__p)
    {
      goto LABEL_84;
    }

    v38 = v159;
    v39 = sub_1001406B0();
    if (v36)
    {
      goto LABEL_83;
    }

    sub_1001404B0();
    do
    {
      if (sub_1001406A4())
      {
        operator delete[]();
      }
    }

    while (v38 != v37);
    goto LABEL_82;
  }

LABEL_24:
  if ((*(v2 + 46) & 0x80) != 0)
  {
    sub_10014084C();
  }

  else
  {
    sub_1001406D8();
  }

  v141 = v15;
  v142 = v16;
  mlir::OperandRange::getTypes(&v141, &v129);
  v17 = v132 - v130;
  if (v132 == v130)
  {
    return 1;
  }

  v18 = v129 + 32 * v130;
  if (Encoding)
  {
    v124 = &v146;
    for (i = v18 + 24; ; i += 32)
    {
      v20 = (*(*i + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::getElementTypeOrSelf(v20) != ElementTypeOrSelf || !mlir::verifyCompatibleShape(v20, v3))
      {
        break;
      }

      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v128 = v21;
      if (Encoding != mlir::RankedTensorType::getEncoding(&v128))
      {
        sub_1001408A0();
        sub_100140748(v74, v75, v76, v77, v78, v79, v80, v81, v114, v119, &v146, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
        if (v141)
        {
          LODWORD(v138) = 3;
          sub_1001407C4();
          if (v31)
          {
            sub_1001404C4();
            if (v111 <= v113 && (v112 & 1) != 0)
            {
              v2 = (&v138 - v111);
              sub_10014072C(&v144, v104, v105, v106, v107, v108, v109, v110, v118, v123, v127);
              sub_100140858();
            }

            else
            {
              sub_10014072C(&v144, v104, v105, v106, v107, v108, v109, v110, v118, v123, v127);
              v82 = v144;
            }
          }

          sub_100140494(v82);
          sub_1001406BC();
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
        sub_10014087C();
        if (v83)
        {
          mlir::InFlightDiagnostic::report(&v141);
        }

        if ((v164[0] & 1) == 0)
        {
          return v2;
        }

        if (v163 != v164)
        {
          free(v163);
        }

        v84 = v161;
        if (v161)
        {
          sub_10014064C();
          if (!v36)
          {
            do
            {
              v85 = sub_100052FFC(v85 - 1);
            }

            while (v85 != v84);
            v86 = v161;
          }

          sub_1001408AC(v86, v118, v123, v127, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
        }

        v71 = __p;
        if (!__p)
        {
          goto LABEL_126;
        }

        v87 = v159;
        v73 = __p;
        if (v159 == __p)
        {
          goto LABEL_125;
        }

        sub_10014054C();
        do
        {
          if (sub_1001406A4())
          {
            operator delete[]();
          }
        }

        while (v87 != v71);
        goto LABEL_124;
      }

      if (!--v17)
      {
        return 1;
      }
    }
  }

  else
  {
    v40 = (*(*(v18 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::getElementTypeOrSelf(v40) == ElementTypeOrSelf)
    {
      v41 = v18 + 56;
      do
      {
        if (!mlir::verifyCompatibleShape(v40, v3))
        {
          break;
        }

        if (!--v17)
        {
          return 1;
        }

        v40 = (*(*v41 + 8) & 0xFFFFFFFFFFFFFFF8);
        v41 += 32;
      }

      while (mlir::getElementTypeOrSelf(v40) == ElementTypeOrSelf);
    }
  }

  sub_1001408A0();
  sub_100140748(v42, v43, v44, v45, v46, v47, v48, v49, v114, v119, v124, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141);
  if (v141)
  {
    LODWORD(v138) = 3;
    sub_1001407C4();
    if (v31)
    {
      sub_1001404C4();
      if (v91 <= v93 && (v92 & 1) != 0)
      {
        v2 = (&v138 - v91);
        sub_1001405B4(&v144, &v141);
        sub_100140858();
      }

      else
      {
        sub_1001405B4(&v144, &v141);
        v50 = v144;
      }
    }

    sub_100140494(v50);
    sub_1001406BC();
  }

  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
  sub_10014087C();
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v141);
  }

  if (v164[0] == 1)
  {
    if (v163 != v164)
    {
      free(v163);
    }

    v52 = v161;
    if (v161)
    {
      sub_10014064C();
      if (!v36)
      {
        do
        {
          v53 = sub_100052FFC(v53 - 1);
        }

        while (v53 != v52);
        v54 = v161;
      }

      sub_1001408AC(v54, v116, v121, v126, v128, v129, v130, v131, v132, *v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, __p, v159, v160, v161, v162);
    }

    v37 = __p;
    if (!__p)
    {
LABEL_84:
      v56 = v144;
      v57 = &v146;
LABEL_127:
      if (v56 != v57)
      {
        free(v56);
      }

      return v2;
    }

    v55 = v159;
    v39 = sub_1001406B0();
    if (v36)
    {
LABEL_83:
      v159 = v37;
      operator delete(v39);
      goto LABEL_84;
    }

    sub_1001404B0();
    do
    {
      if (sub_1001406A4())
      {
        operator delete[]();
      }
    }

    while (v55 != v37);
LABEL_82:
    v39 = __p;
    goto LABEL_83;
  }

  return v2;
}

uint64_t mlir::OpTrait::impl::verifyElementwise(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v2 = this;
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v96.i64[0] = v4;
  v96.i64[1] = v3;
  mlir::ResultRange::getTypes(v96.i64, &__src);
  v6 = __src;
  v5 = v89;
  v7 = v90;
  v8 = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  if (v89 == *(&v90 + 1))
  {
    v9 = v90;
    v10 = v89;
  }

  else
  {
    while (1)
    {
      v11 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v5) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
      if (v12 || v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      if (*(&v7 + 1) == ++v5)
      {
        v5 = *(&v7 + 1);
        break;
      }
    }

    v10 = v5;
    v5 = *(&v90 + 1);
    v9 = v90;
  }

  v96.i64[0] = v6;
  v96.i64[1] = v10;
  v97 = v7;
  __dst[0] = v9;
  __dst[1] = v5;
  v93[0] = v9;
  v93[1] = v5;
  v122 = &v124;
  v123 = &_mh_execute_header;
  sub_10013F614(&v122, v96.i64, __dst);
  if ((*(v2 + 46) & 0x80) != 0)
  {
    sub_10014084C();
  }

  else
  {
    sub_1001406D8();
  }

  v96.i64[0] = v14;
  v96.i64[1] = v15;
  mlir::OperandRange::getTypes(v96.i64, &__src);
  v16 = v89;
  if (v89 != *(&v90 + 1))
  {
    v17 = __src + 32 * v89 + 24;
    while (1)
    {
      v18 = *(*(*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      v19 = v18 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
      if (v19 || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      ++v16;
      v17 += 32;
      if (*(&v90 + 1) == v16)
      {
        v16 = *(&v90 + 1);
        break;
      }
    }
  }

  v96.i64[0] = __src;
  v96.i64[1] = v16;
  v97 = v90;
  *__dst = v90;
  *v93 = v90;
  v119 = v121;
  v120 = 0x200000000;
  sub_10013F7D0(&v119, v96.i64, __dst);
  if (!v123)
  {
    if (!v120)
    {
      v2 = 1;
      goto LABEL_133;
    }

    sub_100140620("if an operand is non-scalar, then there must be at least one non-scalar result", v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0]);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
    sub_100140888();
    if (v23)
    {
      mlir::InFlightDiagnostic::report(&v96);
    }

    sub_100140870();
    if (!v12)
    {
      goto LABEL_133;
    }

    v32 = sub_100140764(v24, v25, v26, v27, v28, v29, v30, v31, v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0], v96.i64[1], v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, __p, v112, v113, v114, v115, v116, v117);
    if (!v12)
    {
      free(v32);
    }

    v33 = v114;
    if (v114)
    {
      sub_10014064C();
      if (!v12)
      {
        do
        {
          v34 = sub_100052FFC(v34 - 1);
        }

        while (v34 != v33);
        v35 = v114;
      }

      v115 = v33;
      operator delete(v35);
    }

    v36 = __p;
    if (!__p)
    {
      goto LABEL_90;
    }

    v37 = sub_100140784();
    if (v12)
    {
      goto LABEL_89;
    }

    sub_1001404B0();
    do
    {
      v38 = *--v8;
      *v8 = 0;
      if (v38)
      {
        operator delete[]();
      }
    }

    while (v8 != v36);
    goto LABEL_88;
  }

  if (!v120)
  {
    sub_100140620("if a result is non-scalar, then at least one operand must be non-scalar", v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0]);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
    sub_100140888();
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v96);
    }

    sub_100140870();
    if (!v12)
    {
      goto LABEL_133;
    }

    v48 = sub_100140764(v40, v41, v42, v43, v44, v45, v46, v47, v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0], v96.i64[1], v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, __p, v112, v113, v114, v115, v116, v117);
    if (!v12)
    {
      free(v48);
    }

    v49 = v114;
    if (v114)
    {
      sub_10014064C();
      if (!v12)
      {
        do
        {
          v50 = sub_100052FFC(v50 - 1);
        }

        while (v50 != v49);
        v51 = v114;
      }

      v115 = v49;
      operator delete(v51);
    }

    v36 = __p;
    if (!__p)
    {
      goto LABEL_90;
    }

    v37 = sub_100140784();
    if (v12)
    {
      goto LABEL_89;
    }

    sub_1001404B0();
    do
    {
      v52 = *--v8;
      *v8 = 0;
      if (v52)
      {
        operator delete[]();
      }
    }

    while (v8 != v36);
    goto LABEL_88;
  }

  if (v123 == *(v2 + 36))
  {
    __src = &v90;
    v89 = 0x200000000;
    v96.i64[0] = v119;
    v96.i64[1] = v122;
    *&v97 = &v119[8 * v120];
    *(&v97 + 1) = &v122[8 * v123];
    *__dst = v97;
    *v93 = v97;
    sub_1001401E4(&__src, &v96, __dst);
    __dst[0] = v93;
    __dst[1] = 0x400000000;
    v21 = v89;
    v22 = __src;
    if (v89)
    {
      if (__src == &v90)
      {
        v68 = v89;
        if (v89 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(__dst, v93, v89, 8), v68 = v89, v22 = __src, v89))
        {
          memcpy(__dst[0], v22, 8 * v68);
          v22 = __src;
        }

        LODWORD(__dst[1]) = v21;
      }

      else
      {
        __dst[0] = __src;
        __dst[1] = v89;
        __src = &v90;
        HIDWORD(v89) = 0;
        v22 = &v90;
      }

      LODWORD(v89) = 0;
    }

    if (v22 != &v90)
    {
      free(v22);
      v21 = __dst[1];
    }

    if (v21)
    {
      v69 = 8 * v21;
      v70 = __dst[0];
      while (*(**v70 + 136) == *(**__dst[0] + 136))
      {
        v70 += 8;
        v69 -= 8;
        if (!v69)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
LABEL_105:
      mlir::TypeRange::TypeRange(&v96, __dst[0], v21);
      if (mlir::verifyCompatibleShapes(v96.i64[0], v96.u64[1]))
      {
        v2 = 1;
        goto LABEL_131;
      }
    }

    LOWORD(v91) = 257;
    mlir::Operation::emitOpError(v96.i64, v2, &__src);
    if (v96.i64[0])
    {
      LODWORD(v85) = 3;
      v86 = "all non-scalar operands/results must have the same shape and base type";
      v87 = 70;
      v71 = *(&v97 + 1);
      if (v98 >= HIDWORD(v98))
      {
        sub_1001404C4();
        if (v82 <= v84 && (v83 & 1) != 0)
        {
          v2 = &v85 - v82;
          sub_100140594(&v96);
          v71 = *(&v97 + 1);
        }

        else
        {
          sub_100140594(&v96);
          v71 = *(&v97 + 1);
        }
      }

      sub_100140494(v71);
      LODWORD(v98) = v98 + 1;
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
    sub_100140888();
    if (v72)
    {
      mlir::InFlightDiagnostic::report(&v96);
    }

    sub_100140870();
    if (v12)
    {
      if (v117 != &v118)
      {
        free(v117);
      }

      v73 = v114;
      if (v114)
      {
        sub_10014082C();
        if (!v12)
        {
          do
          {
            v74 = sub_100052FFC(v74 - 1);
          }

          while (v74 != v73);
          v75 = v114;
        }

        v115 = v73;
        operator delete(v75);
      }

      v76 = __p;
      if (__p)
      {
        v77 = v112;
        v78 = __p;
        if (v112 != __p)
        {
          sub_10014054C();
          do
          {
            v79 = *--v77;
            *v77 = 0;
            if (v79)
            {
              operator delete[]();
            }
          }

          while (v77 != v76);
          v78 = __p;
        }

        v112 = v76;
        operator delete(v78);
      }

      sub_1001406E4();
      if (!v12)
      {
        free(v80);
      }
    }

LABEL_131:
    v67 = __dst[0];
    if (__dst[0] == v93)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  sub_100140620("if an operand is non-scalar, then all results must be non-scalar", v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0]);
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v96);
  sub_100140888();
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v96);
  }

  sub_100140870();
  if (v12)
  {
    v62 = sub_100140764(v54, v55, v56, v57, v58, v59, v60, v61, v85, v86, v87, __src, v89, v90, *(&v90 + 1), v91, __dst[0], __dst[1], v93[0], v93[1], v94, v95, v96.i64[0], v96.i64[1], v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, __p, v112, v113, v114, v115, v116, v117);
    if (!v12)
    {
      free(v62);
    }

    v63 = v114;
    if (v114)
    {
      sub_10014064C();
      if (!v12)
      {
        do
        {
          v64 = sub_100052FFC(v64 - 1);
        }

        while (v64 != v63);
        v65 = v114;
      }

      v115 = v63;
      operator delete(v65);
    }

    v36 = __p;
    if (!__p)
    {
LABEL_90:
      sub_1001406E4();
      if (!v12)
      {
LABEL_132:
        free(v67);
        goto LABEL_133;
      }

      goto LABEL_133;
    }

    v37 = sub_100140784();
    if (v12)
    {
LABEL_89:
      v112 = v36;
      operator delete(v37);
      goto LABEL_90;
    }

    sub_1001404B0();
    do
    {
      v66 = *--v8;
      *v8 = 0;
      if (v66)
      {
        operator delete[]();
      }
    }

    while (v8 != v36);
LABEL_88:
    v37 = __p;
    goto LABEL_89;
  }

LABEL_133:
  if (v119 != v121)
  {
    free(v119);
  }

  if (v122 != &v124)
  {
    free(v122);
  }

  return v2;
}

void sub_100281C70()
{
  if (__cxa_guard_acquire(&qword_1002C0DD8))
  {
    v0 = sub_10013EDCC();
    qword_1002C0DD0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);

    __cxa_guard_release(&qword_1002C0DD8);
  }
}

void sub_100281CC4()
{
  if (__cxa_guard_acquire(&qword_1002C0DF0))
  {
    qword_1002C0DE0 = sub_10013EE14();
    *algn_1002C0DE8 = v0;

    __cxa_guard_release(&qword_1002C0DF0);
  }
}

void sub_100281D18()
{
  {
    llvm::getTypeName<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>>(void)::Name = sub_100140414();
    *algn_1002C1118 = v0;
  }
}

uint64_t mlir::MutableOperandRange::operator mlir::OperandRange(uint64_t a1)
{
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v1 = *(*a1 + 72);
  }

  else
  {
    v1 = 0;
  }

  return sub_1001425C8(a1, v1);
}

void sub_100281D88()
{
  {
    llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>(void)::Name = sub_100142548();
    unk_1002C1260 = v0;
  }
}

void sub_100281DDC()
{
  {
    v0 = sub_100055C50();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100147C04(v2);
  }
}

void sub_100281E18()
{
  {
    v0 = sub_10010747C();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100281E6C()
{
  {
    v0 = sub_10010747C();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100281EAC()
{
  {
    v0 = sub_1001464D0();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100281F00()
{
  {
    v0 = sub_1001464D0();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100281F40()
{
  {
    llvm::getTypeName<mlir::SymbolUserOpInterface>(void)::Name = sub_100146518();
    unk_1002C1740 = v0;
  }
}

void sub_100281F94()
{
  {
    v0 = sub_100055C50();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    sub_100147C04(v2);
  }
}

unint64_t mlir::OpOperand::getOperandNumber(mlir::OpOperand *this)
{
  v1 = *(this + 2);
  if ((*(v1 + 46) & 0x80) != 0)
  {
    v2 = *(v1 + 72);
  }

  else
  {
    v2 = 0;
  }

  return (this - v2) >> 5;
}

void sub_100282008()
{
  {
    {
      {
        llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name = sub_100071528();
        *algn_1002C1608 = v0;
      }
    }

    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name, *algn_1002C1608);
  }
}

void sub_1002820A0()
{
  off_1002C3450();
  sub_10014FA64(v0, COERCE_DOUBLE(1));
  _tlv_atexit(sub_10014E050, v1);
  off_1002C3468();
  *v2 = 1;
}

void sub_100282108()
{
  off_1002C3480();
  sub_10014FA64(v0, COERCE_DOUBLE(1));
  _tlv_atexit(sub_10014F1BC, v1);
  off_1002C3498();
  *v2 = 1;
}

void sub_100282170()
{
  if (__cxa_guard_acquire(&qword_1002C50A0))
  {
    llvm::sys::RWMutexImpl::RWMutexImpl(&unk_1002C50A8);
    unk_1002C50B0 = 0u;
    qword_1002C50C0 = 0;
    unk_1002C50C8 = &unk_1002C50D8;
    qword_1002C50D0 = 0x400000000;
    qword_1002C50F8 = &qword_1002C5108;
    unk_1002C5100 = 0u;
    unk_1002C5110 = 0u;
    *(&qword_1002C5118 + 4) = 0u;
    __cxa_atexit(sub_10014FBE4, &unk_1002C50A8, &_mh_execute_header);

    __cxa_guard_release(&qword_1002C50A0);
  }
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  result = *(a2 + 72);
  v3 = *(a2 + 68);
  return result;
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::IfOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::InvokeOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 0;
  }

  result = *(a2 + 72);
  v3 = *(a2 + 68);
  return result;
}

void sub_100282288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 72);
    v6 = *(a2 + 68);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v17 = a3;
  v18 = 0;
  v19 = v5;
  v20 = 0;
  if (a4 && v6)
  {
    v7 = 0;
    do
    {
      v8 = mlir::ValueRange::dereference_iterator(&v17, v7);
      v9 = v20;
      v10 = *v8;
      if (*v8)
      {
        v11 = *(v19 + 32 * v20 + 24);
        do
        {
          v12 = v10[1];
          if (v12)
          {
            v13 = *v10;
            *v12 = *v10;
            if (v13)
            {
              *(v13 + 8) = v12;
            }
          }

          v10[3] = v11;
          v14 = *v11;
          *v10 = *v11;
          v10[1] = v11;
          if (v14)
          {
            *(v14 + 8) = v10;
          }

          *v11 = v10;
          v10 = *v8;
        }

        while (*v8);
      }

      v7 = v18 + 1;
      v15 = v9 + 1;
      v18 = v7;
      v20 = v15;
    }

    while (v7 != a4 && v15 != v6);
  }
}

void sub_1002823A0()
{
  {
    v0 = sub_1001C7458();
    mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002823F8()
{
  {
    v0 = sub_100090F30();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028243C()
{
  {
    v0 = sub_100062EA0();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.constant";
  *(a2 + 24) = 15;
}

void sub_1002824C4()
{
  {
    v0 = sub_1001097A0();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028251C()
{
  {
    v0 = sub_10010986C();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282574()
{
  {
    v0 = sub_1000A8650();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002825CC()
{
  {
    v0 = sub_10016EC6C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282624()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface>(void)::Name = sub_10016ECB4();
    *algn_1002C0F78 = v0;
  }
}

void sub_100282678()
{
  {
    v0 = sub_100109BC0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002826D0()
{
  {
    v0 = sub_10016F0F4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282728()
{
  {
    v0 = sub_10016F1BC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282780()
{
  {
    v0 = sub_100107DCC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002827D8()
{
  {
    v0 = sub_10016F284();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282830()
{
  {
    v0 = sub_1001081B4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282888()
{
  {
    v0 = sub_100109E18();
    mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002828E0()
{
  {
    v0 = sub_100109EE0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282938()
{
  {
    v0 = sub_100109FA8();
    mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282990()
{
  {
    v0 = sub_1001403CC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002829E8()
{
  {
    v0 = sub_10016F34C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282A40()
{
  {
    v0 = sub_10016F414();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282A98()
{
  {
    v0 = sub_10016F4DC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282AF0()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>(void)::Name = sub_10016F13C();
    *algn_1002C0FD8 = v0;
  }
}

void sub_100282B44()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>(void)::Name = sub_10016F204();
    unk_1002C1000 = v0;
  }
}

void sub_100282B98()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>(void)::Name = sub_10016F2CC();
    unk_1002C1050 = v0;
  }
}

void sub_100282BEC()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>(void)::Name = sub_10016F394();
    unk_1002C1140 = v0;
  }
}

void sub_100282C40()
{
  {
    llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10016F45C();
    *algn_1002C1168 = v0;
  }
}

void sub_100282C94()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10016F524();
    unk_1002C1190 = v0;
  }
}

void sub_100282CE8()
{
  {
    v0 = sub_100170520();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282D40()
{
  {
    v0 = sub_10017068C();
    mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282D98()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface>(void)::Name = sub_100170568();
    *algn_1002C11D8 = v0;
  }
}

void sub_100282DEC()
{
  {
    llvm::getTypeName<mlir::InferShapedTypeOpInterface>(void)::Name = sub_1001706D4();
    unk_1002C1200 = v0;
  }
}

void sub_100282E40()
{
  {
    v0 = sub_100170DBC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282E98()
{
  {
    v0 = sub_100142500();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282EF0()
{
  {
    v0 = sub_100170E84();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282F48()
{
  {
    v0 = sub_100170F4C();
    mlir::detail::TypeIDResolver<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100282FA0()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>(void)::Name = sub_100170E04();
    *algn_1002C1238 = v0;
  }
}

void sub_100282FF4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ComplexDecompositionOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100170ECC();
    *algn_1002C1288 = v0;
  }
}

void sub_100283048()
{
  {
    llvm::getTypeName<mlir::InferShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferShapedTypeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100170F94();
    unk_1002C12B0 = v0;
  }
}

void sub_10028309C()
{
  {
    v0 = sub_1001716A4();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002830F4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference>(void)::Name = sub_1001716EC();
    unk_1002C12E0 = v0;
  }
}

void sub_100283148()
{
  {
    v0 = sub_100171AE4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002831A0()
{
  {
    v0 = sub_100171BAC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002831F8()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>>(void)::Name = sub_100171B2C();
    *algn_1002C1318 = v0;
  }
}

void sub_10028324C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::KernelTypeInference::Trait>(void)::Empty>>(void)::Name = sub_100171BF4();
    unk_1002C1340 = v0;
  }
}

void sub_1002832A0()
{
  {
    v0 = sub_100173294();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002832F8()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>>(void)::Name = sub_1001732DC();
    unk_1002C1380 = v0;
  }
}

void sub_10028334C()
{
  {
    v0 = sub_10017435C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002833A4()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>>(void)::Name = sub_1001743A4();
    *algn_1002C13D8 = v0;
  }
}

void sub_1002833F8()
{
  {
    v0 = sub_100176D74();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283450()
{
  {
    v0 = sub_100176E3C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002834A8()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>>(void)::Name = sub_100176DBC();
    *algn_1002C1478 = v0;
  }
}

void sub_1002834FC()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>>(void)::Name = sub_100176E84();
    unk_1002C14A0 = v0;
  }
}

void sub_100283550()
{
  {
    v0 = sub_100178240();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002835A8()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>(void)::Name = sub_100178288();
    *algn_1002C14F8 = v0;
  }
}

void sub_1002835FC()
{
  {
    v0 = sub_1001797B8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283654()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>>(void)::Name = sub_100179800();
    unk_1002C1550 = v0;
  }
}

void sub_1002836A8()
{
  {
    v0 = sub_100107C3C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283700()
{
  {
    v0 = sub_1001080EC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283758()
{
  {
    v0 = sub_10017A31C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002837B0()
{
  {
    v0 = sub_1000714E0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283808()
{
  {
    v0 = sub_10017A3E4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283860()
{
  {
    llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>>(void)::Name = sub_10017A364();
    unk_1002C15E0 = v0;
  }
}

void sub_1002838B4()
{
  {
    llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>>(void)::Name = sub_10017A42C();
    unk_1002C1630 = v0;
  }
}

void sub_100283908()
{
  {
    v0 = sub_10008A374();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283960()
{
  {
    v0 = sub_1001464D0();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002839B8()
{
  {
    v0 = sub_10017F91C();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283A10()
{
  {
    v0 = sub_100062EA0();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283A68()
{
  {
    v0 = sub_10017F91C();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283AAC()
{
  {
    llvm::getTypeName<mlir::CallOpInterface>(void)::Name = sub_10017F964();
    *algn_1002C1718 = v0;
  }
}

void sub_100283B00()
{
  {
    v0 = sub_100109C88();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283B58()
{
  {
    v0 = sub_100109D50();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283BB0()
{
  {
    v0 = sub_10010827C();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283C08()
{
  {
    v0 = sub_10017FCC8();
    mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283C60()
{
  {
    v0 = sub_10017FD90();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283CB8()
{
  {
    llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10017FD10();
    unk_1002C17F0 = v0;
  }
}

void sub_100283D0C()
{
  {
    llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10017FDD8();
    *algn_1002C1818 = v0;
  }
}

void sub_100283D60()
{
  {
    v0 = sub_1000715A8();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283DB8()
{
  {
    v0 = sub_100107570();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283E10()
{
  {
    v0 = sub_10010747C();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283E68()
{
  {
    v0 = sub_1001826D8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283EC0()
{
  {
    v0 = sub_1001826D8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283F04()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(void)::Name = sub_100182720();
    *algn_1002C18C8 = v0;
  }
}

void sub_100283F58()
{
  {
    v0 = sub_100107D04();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100283FB0()
{
  {
    v0 = sub_100107E94();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284008()
{
  {
    v0 = sub_100107F5C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284060()
{
  {
    v0 = sub_100108024();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002840B8()
{
  {
    v0 = sub_100055C50();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284110()
{
  {
    v0 = sub_10010840C();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284168()
{
  {
    v0 = sub_1001084D4();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002841C0()
{
  {
    v0 = sub_100182D68();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284218()
{
  {
    v0 = sub_10010859C();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284270()
{
  {
    v0 = sub_100108664();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002842C8()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100182DB0();
    unk_1002C1A40 = v0;
  }
}

void sub_10028431C()
{
  {
    v0 = sub_100183BBC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284374()
{
  {
    llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>>(void)::Name = sub_100183C04();
    unk_1002C1AF0 = v0;
  }
}

void sub_1002843C8()
{
  {
    v0 = sub_100276C58();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284420()
{
  {
    v0 = sub_100184794();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284478()
{
  {
    v0 = sub_10018485C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002844D0()
{
  {
    v0 = sub_10007809C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284528()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::WhileOp>::Impl>(void)::Empty>>(void)::Name = sub_1001847DC();
    unk_1002C1B80 = v0;
  }
}

void sub_10028457C()
{
  {
    llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001848A4();
    *algn_1002C1BA8 = v0;
  }
}

void sub_1002845D0()
{
  {
    v0 = sub_100185A0C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HashableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284628()
{
  {
    v0 = sub_100185944();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::HashableAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284680()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::HashableAttrInterface>(void)::Name = sub_10018598C();
    unk_1002C1C00 = v0;
  }
}

void sub_1002846D4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::HashableOpInterface>(void)::Name = sub_100185A54();
    *algn_1002C1C28 = v0;
  }
}

void sub_100284728()
{
  {
    v0 = sub_1000CD018();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284780()
{
  {
    v0 = sub_100186290();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002847D8()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::HashableOpInterface::Trait>(void)::Empty>>(void)::Name = sub_1001862D8();
    *algn_1002C1C88 = v0;
  }
}

void sub_10028482C()
{
  {
    v0 = sub_100176E3C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<7u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<7u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284884()
{
  {
    v0 = sub_10018AAEC();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002848DC()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ODIE::Compiler::CoreML::TokenType>::Impl>(void)::Empty>>(void)::Name = sub_10018AB34();
    unk_1002C1D80 = v0;
  }
}

void sub_100284930()
{
  {
    v0 = sub_10017435C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284988()
{
  {
    v0 = sub_10018BF9C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002849E0()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable>(void)::Name = sub_10018BFE4();
    *algn_1002C1DC8 = v0;
  }
}

void sub_100284A34()
{
  {
    v0 = sub_100109C88();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284A8C()
{
  {
    v0 = sub_100109D50();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284AE4()
{
  {
    v0 = sub_10018C3DC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284B3C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ConditionallyFoldable::Trait>(void)::Empty>>(void)::Name = sub_10018C424();
    unk_1002C1E00 = v0;
  }
}

void sub_100284B90()
{
  {
    v0 = sub_10017A31C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284BE8()
{
  {
    v0 = sub_10017A3E4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::Decomposable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284C40()
{
  {
    v0 = sub_10018E5A4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284C98()
{
  {
    llvm::getTypeName<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>>(void)::Name = sub_10018E5EC();
    unk_1002C1EB0 = v0;
  }
}

void sub_100284CEC()
{
  {
    v0 = sub_10010840C();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284D44()
{
  {
    v0 = sub_1000715A8();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284D9C()
{
  {
    v0 = sub_1001932B0();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284DF4()
{
  {
    llvm::getTypeName<mlir::CallableOpInterface>(void)::Name = sub_1001932F8();
    *algn_1002C1FC8 = v0;
  }
}

void sub_100284E48()
{
  {
    v0 = sub_100193F70();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284EA0()
{
  {
    llvm::getTypeName<mlir::FunctionOpInterface>(void)::Name = sub_100193FB8();
    unk_1002C1FF0 = v0;
  }
}

void sub_100284EF4()
{
  {
    v0 = sub_100194A1C();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284F4C()
{
  {
    v0 = sub_100194AE4();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284FA4()
{
  {
    v0 = sub_1001084D4();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100284FFC()
{
  {
    v0 = sub_100182D68();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285054()
{
  {
    llvm::getTypeName<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100194A64();
    *algn_1002C2028 = v0;
  }
}

void sub_1002850A8()
{
  {
    llvm::getTypeName<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>>(void)::Name = sub_100194B2C();
    unk_1002C2050 = v0;
  }
}

void sub_1002850FC()
{
  {
    v0 = sub_1001464D0();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285154()
{
  {
    v0 = sub_10017FD90();
    mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002851AC()
{
  {
    v0 = sub_10019B244();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285204()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ImportableOpInterface>(void)::Name = sub_10019B28C();
    *algn_1002C2198 = v0;
  }
}

void sub_100285258()
{
  {
    v0 = sub_10019B72C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002852B0()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10019B774();
    unk_1002C21D0 = v0;
  }
}

void sub_100285304()
{
  {
    v0 = sub_100276374();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028535C()
{
  {
    v0 = sub_10019DF9C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002853B4()
{
  {
    v0 = sub_100107F5C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028540C()
{
  {
    v0 = sub_10019E064();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285464()
{
  {
    v0 = sub_10019E12C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002854BC()
{
  {
    llvm::getTypeName<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>>(void)::Name = sub_10019DFE4();
    *algn_1002C22A8 = v0;
  }
}

void sub_100285510()
{
  {
    llvm::getTypeName<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>>(void)::Name = sub_10019E0AC();
    unk_1002C22D0 = v0;
  }
}

void sub_100285564()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>>(void)::Name = sub_10019E174();
    *algn_1002C22F8 = v0;
  }
}

void sub_1002855B8()
{
  {
    v0 = sub_100062EA0();
    mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285610()
{
  {
    v0 = sub_1001797B8();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<6u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<6u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285668()
{
  {
    v0 = sub_1001A54A4();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002856C0()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::ClassOp>::Impl>(void)::Empty>>(void)::Name = sub_1001A54EC();
    *algn_1002C24B8 = v0;
  }
}

void sub_100285714()
{
  {
    v0 = sub_100107570();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028576C()
{
  {
    v0 = sub_100108024();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002857C4()
{
  {
    v0 = sub_10010859C();
    mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028581C()
{
  {
    v0 = sub_100108664();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285874()
{
  {
    v0 = sub_100173294();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002858CC()
{
  {
    v0 = sub_1001ABFD0();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285924()
{
  {
    v0 = sub_10007809C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028597C()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::GraphOp>::Impl>(void)::Empty>>(void)::Name = sub_1001AC018();
    *algn_1002C2618 = v0;
  }
}

void sub_1002859D0()
{
  {
    v0 = sub_1001B0264();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285A28()
{
  {
    llvm::getTypeName<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>>(void)::Name = sub_1001B02AC();
    unk_1002C26F0 = v0;
  }
}

void sub_100285A7C()
{
  {
    v0 = sub_1001B4470();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285AD4()
{
  {
    llvm::getTypeName<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ODIE::Compiler::CoreML::KernelNotImplemented>(void)::Empty>>(void)::Name = sub_1001B44B8();
    unk_1002C27C0 = v0;
  }
}

void sub_100285B28()
{
  {
    v0 = sub_1001B4D1C();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285B80()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::ODIE::Compiler::CoreML::FuncOp>::Impl>(void)::Empty>>(void)::Name = sub_1001B4D64();
    unk_1002C2820 = v0;
  }
}

void sub_100285BD4()
{
  {
    v0 = sub_1001BCD48();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285C2C()
{
  {
    llvm::getTypeName<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>>(void)::Name = sub_1001BCD90();
    *algn_1002C29B8 = v0;
  }
}

void sub_100285C80()
{
  {
    v0 = sub_100276C58();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285CD8()
{
  {
    v0 = sub_10018485C();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285D30()
{
  {
    v0 = sub_1001C6C48();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285D88()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::ShapedType>::Impl>(void)::Empty>>(void)::Name = sub_1001C6C90();
    unk_1002C2BA0 = v0;
  }
}

void sub_100285DDC()
{
  {
    llvm::getTypeName<mlir::DialectInlinerInterface>(void)::Name = sub_1001C74A0();
    unk_1002C2BD0 = v0;
  }
}

void sub_100285E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.cast";
  *(a2 + 24) = 11;
}

void sub_100285E74()
{
  {
    v0 = sub_1001C976C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285ECC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr>(void)::Name = sub_1001C97B4();
    unk_1002C2C20 = v0;
  }
}

void sub_100285F20()
{
  {
    v0 = sub_1001C989C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100285F78()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>>(void)::Name = sub_1001C98E4();
    *algn_1002C2C48 = v0;
  }
}

void sub_100285FCC()
{
  {
    v0 = sub_100082AFC();
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100286010()
{
  {
    v0 = sub_1001CA77C();
    mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100286068()
{
  {
    llvm::getTypeName<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>>(void)::Name = sub_1001CA7C4();
    *algn_1002C2C98 = v0;
  }
}

void sub_1002860BC()
{
  {
    v0 = sub_1001CB100();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100286114()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface>(void)::Name = sub_1001CB148();
    unk_1002C2CC0 = v0;
  }
}

void sub_100286168()
{
  {
    v0 = sub_1000E1834();
    mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_1002861C0()
{
  {
    v0 = sub_1001CB24C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100286218()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>>(void)::Name = sub_1001CB294();
    unk_1002C2D10 = v0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::YieldOp::getMutableSuccessorOperands@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100259D80(a1, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return sub_100259730(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::getMutableSuccessorOperands@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100259D80(a1, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68) - 1;
  }

  else
  {
    v5 = -1;
  }

  return sub_100259730(v2, v3, 1, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOp::getEntrySuccessorOperands(uint64_t *a1)
{
  v1 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 68);
  return *(v1 + 72);
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::print(mlir::ODIE::Compiler::CoreML::SetMemberOp *this, mlir::OpAsmPrinter *a2)
{
  sub_100259CC4();
  sub_100259C20(v6, v7);
  v10 = (*(v8 + 16))(v9);
  v11 = sub_1000C9B60(v10);
  if (v13)
  {
    llvm::raw_ostream::write(v11, "(", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v11, v12);
  }

  v14 = *(*(*v3 + 9) + 24);
  sub_10010B2A4();
  (*(v15 + 160))(v2);
  sub_10010B2A4();
  v17 = (*(v16 + 16))(v2);
  v18 = sub_10010B2C0(v17);
  if (!v13 & v20)
  {
    *v19 = 8236;
    sub_10010B2B0(v18);
  }

  else
  {
    llvm::raw_ostream::write(v18, ", ", 2uLL);
  }

  v21 = *(*(*v3 + 9) + 56);
  sub_10010B2A4();
  (*(v22 + 160))(v2);
  sub_10010B2A4();
  v24 = (*(v23 + 16))(v2);
  v25 = sub_10010B2C0(v24);
  if (!v13 & v20)
  {
    *v26 = 8233;
    sub_10010B2B0(v25);
  }

  else
  {
    llvm::raw_ostream::write(v25, ") ", 2uLL);
  }

  v27 = sub_1001D89A4(v3);
  v28 = *(*v27 + 136);
  if (v28 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v72[0] = v29;
  if (v29)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v72);
LABEL_15:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_16;
  }

  Value = v27;
  if (!v27 || v28 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_15;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v27);
LABEL_16:
  v31 = (*(*v2 + 16))(v2);
  v32 = sub_100259A90(v31);
  if (v34 > 2)
  {
    sub_10025992C(v32, v33);
  }

  else
  {
    llvm::raw_ostream::write(v32, " : ", 3uLL);
  }

  sub_100259C14();
  if (v35 < 0)
  {
    sub_100259C9C();
  }

  else
  {
    sub_1001406D8();
  }

  v71[1] = v45;
  v46 = sub_100259E38(v36, v37, v38, v39, v40, v41, v42, v43, v70, v44);
  mlir::OperandRange::getTypes(v46, v47);
  sub_100259CE0();
  if (!v13)
  {
    v48 = (v72[0] + 32 * v4);
    v49 = *(v48[3] + 8);
    sub_10010B2A4();
    v51 = *(v50 + 32);
    v52 = sub_10010B2E8();
    v53(v52);
    if (v4 + 1 != v5)
    {
      sub_100259CD0();
      do
      {
        v54 = (*(*v2 + 16))(v2);
        v55 = sub_10010B2C0(v54);
        if (!v13 & v20)
        {
          *v56 = 8236;
          sub_10010B2B0(v55);
        }

        else
        {
          llvm::raw_ostream::write(v55, ", ", 2uLL);
        }

        v57 = *v48;
        v48 += 4;
        v58 = *(v57 + 8);
        sub_10010B2A4();
        v60 = *(v59 + 32);
        v61 = sub_10010B2E8();
        v62(v61);
        --v5;
      }

      while (v5);
    }
  }

  v72[0] = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(v72);
  sub_100259A28();
  v71[0] = *v63;
  v72[0] = mlir::StringAttr::getValue(v71);
  v72[1] = v64;
  sub_10010B2A4();
  v66 = *(v65 + 200);
  v67 = sub_100259C2C();
  return v68(v67);
}

uint64_t *sub_1002866AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 72);
    v3 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v5[0] = v2;
  v5[1] = v3;
  return mlir::OperandRange::getTypes(v5, a2);
}

void sub_1002866F0(uint64_t a1, uint64_t a2, mlir::Block *this)
{
  Terminator = mlir::Block::getTerminator(this);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    v6 = Terminator;
    v7 = *(Terminator + 68);
    __src = v33;
    v32 = 0x600000000;
    if (v7 <= 6)
    {
      if (v7)
      {
        bzero(v33, 8 * v7);
      }

      LODWORD(v32) = v7;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v7, 8);
      bzero(__src, 8 * v7);
      v8 = *(v6 + 44);
      LODWORD(v32) = v7;
      if ((v8 & 0x800000) == 0)
      {
        goto LABEL_32;
      }
    }

    v9 = *(v6 + 68);
    if (v9)
    {
      v27 = a1;
      v10 = *(v6 + 72);
      v11 = &v10[4 * v9];
      do
      {
        v28[0] = v10[3];
        DefiningOp = mlir::Value::getDefiningOp(v28);
        v13 = DefiningOp;
        if (DefiningOp)
        {
          if (sub_1002500E0(DefiningOp))
          {
            v14 = sub_1002500E0(v13);
            v15 = v13;
            if (v13)
            {
              v16 = *(v13 + 36);
              if (v16)
              {
                v17 = v13 - 16;
              }

              else
              {
                v17 = 0;
              }

              v18 = 0;
              if (v16)
              {
                v19 = v10[3];
                while (mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v18) != v19)
                {
                  if (v16 == ++v18)
                  {
                    v18 = v16;
                    break;
                  }
                }
              }

              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, v18);
              (*(v14 + 8))(v28, v14, v15, a2);
              if (v30 == 1)
              {
                v21 = *(NextResultAtOffset + 8) & 7;
                if (NextResultAtOffset && v21 == 6)
                {
                  v21 = (*(NextResultAtOffset + 16) + 6);
                }

                v22 = v28[0];
                OperandNumber = mlir::OpOperand::getOperandNumber(v10);
                *(__src + OperandNumber) = v22[v21];
                if ((v30 & 1) != 0 && v28[0] != &v29)
                {
                  free(v28[0]);
                }
              }
            }
          }
        }

        v10 += 4;
      }

      while (v10 != v11);
      LODWORD(v7) = v32;
      a1 = v27;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    __src = v33;
    v32 = 0x600000000;
  }

LABEL_32:
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  v24 = __src;
  if (v7 && &__src != a1)
  {
    if (__src == v33)
    {
      v26 = v7;
      if (v7 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7, 8), v26 = v32, v24 = __src, v32))
      {
        memcpy(*a1, v24, 8 * v26);
        v24 = __src;
      }

      *(a1 + 8) = v7;
    }

    else
    {
      *a1 = __src;
      v25 = HIDWORD(v32);
      *(a1 + 8) = v7;
      *(a1 + 12) = v25;
      __src = v33;
      HIDWORD(v32) = 0;
      v24 = v33;
    }

    LODWORD(v32) = 0;
  }

  *(a1 + 64) = 1;
  if (v24 != v33)
  {
    free(v24);
  }
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getInputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *this;
  v6 = *(*this + 44);
  v7 = *(*this + 16 * ((v6 >> 23) & 1) + 64) != 0;
  __src = *(*this + 16 * ((v6 >> 23) & 1) + 64);
  LOBYTE(v40) = v7;
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(v5 + 68);
  }

  else
  {
    v8 = 0;
  }

  sub_1001E39EC(&v42, &__src, v8);
  if ((*(*this + 46) & 0x80) != 0)
  {
    sub_100259C9C();
  }

  else
  {
    sub_1001406D8();
  }

  __src = v9;
  v40 = v10;
  mlir::OperandRange::getTypes(&__src, &v36);
  v11 = v36;
  v12 = v37;
  v13 = v38;
  v14 = v42;
  v15 = v43;
  __src = v41;
  v40 = 0x600000000;
  if (!v43 || v37 == v38)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    *(a2 + 64) = 1;
    goto LABEL_40;
  }

  v16 = v38 + ~v37;
  if (v16 >= ((v43 - 1) & 0x1FFFFFFFFFFFFFFFuLL))
  {
    v16 = (v43 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  }

  v35 = v16 + 1;
  if (v16 < 6)
  {
    v17 = 0;
    v18 = v41;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v41, v16 + 1, 8);
    v17 = v40;
    v18 = __src;
  }

  v19 = &v18[8 * v17];
  v20 = 8 * v15 - 8;
  v21 = ~v12 + v13;
  v22 = v11 + 32 * v12 + 24;
  do
  {
    v23 = *(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      v25 = 1;
    }

    else
    {
      v26 = *v14;
      if (*v14)
      {
        goto LABEL_23;
      }

      v25 = 3;
    }

    Context = mlir::Attribute::getContext((*this + 24));
    v26 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, v25);
LABEL_23:
    *v19++ = v26;
    v29 = v21-- != 0;
    if (!v20)
    {
      break;
    }

    ++v14;
    v20 -= 8;
    v22 += 32;
  }

  while (v29);
  v30 = v40;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v31 = __src;
  v32 = v30 + v35;
  LODWORD(v40) = v30 + v35;
  if (v30 + v35 && &__src != a2)
  {
    if (__src == v41)
    {
      v34 = v30 + v35;
      if (v32 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), (v30 + v35), 8), v34 = v40, v31 = __src, v40))
      {
        memcpy(*a2, v31, 8 * v34);
        v31 = __src;
      }

      *(a2 + 8) = v32;
    }

    else
    {
      *a2 = __src;
      v33 = HIDWORD(v40);
      *(a2 + 8) = v32;
      *(a2 + 12) = v33;
      __src = v41;
      HIDWORD(v40) = 0;
      v31 = v41;
    }

    LODWORD(v40) = 0;
  }

  *(a2 + 64) = 1;
  if (v31 != v41)
  {
    free(v31);
  }

LABEL_40:
  if (v42 != &v44)
  {
    free(v42);
  }
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::CallOp::print(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmPrinter *a2)
{
  sub_100259CC4();
  sub_100259C20(v5, v6);
  v9 = (*(v7 + 16))(v8);
  v10 = sub_1000C9B60(v9);
  if (v12)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v10, v11);
  }

  sub_1002599DC();
  if (*(v13 + 16 * v14 + 72))
  {
    v15 = (*(*v2 + 16))(v2);
    v16 = sub_100259A90(v15);
    if (v18 > 4)
    {
      *(v17 + 4) = 32;
      *v17 = 1835624563;
      v16[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v16, "shim ", 5uLL);
    }
  }

  v19 = sub_1001E5280(v3);
  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v85 = v21;
  if (v21)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v85);
LABEL_13:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_14;
  }

  Value = v19;
  if (!v19 || v20 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_13;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v19);
LABEL_14:
  v23 = (*(*v2 + 16))(v2);
  v24 = sub_1000C9B60(v23);
  if (v12)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v24, v25);
  }

  sub_100259D2C();
  if (v27 < 0)
  {
    sub_100259CF0(v26);
  }

  else
  {
    sub_100259B3C();
  }

  (*(*v2 + 16))(v2);
  if (v4)
  {
    sub_1002597F4();
    (*(v28 + 160))(v2);
    for (i = v4 - 1; i; --i)
    {
      sub_100259858();
      if (!v12 & v31)
      {
        sub_1002597E0(v30);
      }

      else
      {
        sub_100259A40();
      }

      sub_100259848();
      (*(v32 + 160))(v2);
    }
  }

  v33 = (*(*v2 + 16))(v2);
  v34 = sub_10010B2C0(v33);
  if (!v12 & v31)
  {
    *v35 = 8233;
    sub_10010B2B0(v34);
  }

  else
  {
    llvm::raw_ostream::write(v34, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*v3);
  sub_100259D94(AttrDictionary, v37, v38, v39, v40, v41, v42, v43, v75, v77, v79, v81, v82, v83, v84, v85);
  sub_100259A28();
  v89 = *(v44 + 16);
  v85 = mlir::StringAttr::getValue(&v89);
  v86 = v45;
  v83 = *(*(*(*v3 + 6) + 96) + 8);
  v87 = mlir::StringAttr::getValue(&v83);
  v88 = v46;
  sub_10010B2A4();
  v48 = *(v47 + 192);
  v49 = sub_100259C2C();
  v50(v49);
  sub_10010B2A4();
  v52 = (*(v51 + 16))(v2);
  v53 = sub_100259A90(v52);
  if (v55 > 2)
  {
    sub_10025992C(v53, v54);
  }

  else
  {
    llvm::raw_ostream::write(v53, " : ", 3uLL);
  }

  sub_100259C14();
  if (v56 < 0)
  {
    sub_100259C9C();
  }

  else
  {
    sub_1001406D8();
  }

  v89 = v57;
  v90 = v58;
  mlir::OperandRange::getTypes(&v89, &v85);
  mlir::ValueRange::ValueRange(&v89, v85 + 32 * v86, v88 - v86);
  mlir::TypeRange::TypeRange(&v83, v89, v90);
  sub_1002599DC();
  v61 = *(v59 + 16 * v60 + 64);
  sub_10010B2F4(v59);
  v89 = v62;
  v90 = v63;
  mlir::ResultRange::getTypes(&v89, &v85);
  NextResultAtOffset = v85;
  v65 = v86;
  v66 = v88;
  if (v86)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, v86);
  }

  mlir::ValueRange::ValueRange(&v89, NextResultAtOffset, v66 - v65);
  mlir::TypeRange::TypeRange(&v81, v89, v90);
  sub_1002599DC();
  return sub_100259C38(v69, v83, v84, v70, v71, v72, v73, *(v67 + 16 * v68 + 96), v76, v78, v80, v81, v82);
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::InvokeOp::print(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmPrinter *a2)
{
  sub_100259CC4();
  sub_100259C20(v5, v6);
  v9 = (*(v7 + 16))(v8);
  v10 = sub_1000C9B60(v9);
  if (v12)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v10, v11);
  }

  v13 = sub_1001E72C4(v3);
  v14 = *(*v13 + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  AttrDictionary = v15;
  if (v15)
  {
    Value = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&AttrDictionary);
LABEL_9:
    (*(*v2 + 40))(v2, Value);
    goto LABEL_10;
  }

  Value = v13;
  if (!v13 || v14 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    goto LABEL_9;
  }

  mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(v2, v13);
LABEL_10:
  v17 = (*(*v2 + 16))(v2);
  v18 = sub_1000C9B60(v17);
  if (v12)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v18, v19);
  }

  sub_100259D2C();
  if (v21 < 0)
  {
    sub_100259CF0(v20);
  }

  else
  {
    sub_100259B3C();
  }

  (*(*v2 + 16))(v2);
  if (v4)
  {
    sub_1002597F4();
    (*(v22 + 160))(v2);
    for (i = v4 - 1; i; --i)
    {
      sub_100259858();
      if (!v12 & v25)
      {
        sub_1002597E0(v24);
      }

      else
      {
        sub_100259A40();
      }

      sub_100259848();
      (*(v26 + 160))(v2);
    }
  }

  v27 = (*(*v2 + 16))(v2);
  v28 = sub_10010B2C0(v27);
  if (!v12 & v25)
  {
    *v29 = 8233;
    sub_10010B2B0(v28);
  }

  else
  {
    llvm::raw_ostream::write(v28, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(&AttrDictionary);
  sub_100259A28();
  v70 = *(v30 + 8);
  AttrDictionary = mlir::StringAttr::getValue(&v70);
  v67 = v31;
  sub_10010B2A4();
  v33 = *(v32 + 192);
  v34 = sub_100259C2C();
  v35(v34);
  sub_10010B2A4();
  v37 = (*(v36 + 16))(v2);
  v38 = sub_100259A90(v37);
  if (v40 > 2)
  {
    sub_10025992C(v38, v39);
  }

  else
  {
    llvm::raw_ostream::write(v38, " : ", 3uLL);
  }

  sub_100259C14();
  if (v41 < 0)
  {
    sub_100259C9C();
  }

  else
  {
    sub_1001406D8();
  }

  v70 = v42;
  v71 = v43;
  mlir::OperandRange::getTypes(&v70, &AttrDictionary);
  sub_100259B88();
  mlir::ValueRange::ValueRange(&v70, v44, v45);
  mlir::TypeRange::TypeRange(v69, v70, v71);
  sub_1002599DC();
  v48 = *(v46 + 16 * v47 + 64);
  sub_10010B2F4(v46);
  v70 = v49;
  v71 = v50;
  mlir::ResultRange::getTypes(&v70, &AttrDictionary);
  NextResultAtOffset = AttrDictionary;
  v52 = v67;
  v53 = v68;
  if (v67)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v67);
  }

  mlir::ValueRange::ValueRange(&v70, NextResultAtOffset, v53 - v52);
  mlir::TypeRange::TypeRange(v65, v70, v71);
  sub_1002599DC();
  return sub_100259C38(v56, v69[0], v69[1], v57, v58, v59, v60, *(v54 + 16 * v55 + 88), v62, v63, v64, v65[0], v65[1]);
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getOperandsMutable@<X0>(mlir::ODIE::Compiler::CoreML::CallOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100259D80(this, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return sub_100259730(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getOperandsMutable@<X0>(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_100259D80(this, a2);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return sub_100259730(v2, v3, 0, v5);
}

void mlir::ODIE::Compiler::CoreML::OutputOp::print(mlir::ODIE::Compiler::CoreML::OutputOp *this, mlir::OpAsmPrinter *a2)
{
  sub_100259CC4();
  v8 = *v7;
  if ((*(v8 + 46) & 0x80) != 0 && *(v8 + 68))
  {
    v9 = (*(*v2 + 16))(v2);
    v10 = sub_1000C9AF0(v9);
    if (v12)
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      sub_10010B264(v10, v11);
    }

    sub_100259D2C();
    if (v14 < 0)
    {
      sub_100259CF0(v13);
    }

    else
    {
      sub_100259B3C();
    }

    (*(*v2 + 16))(v2);
    if (v6)
    {
      sub_1002597F4();
      (*(v15 + 160))(v2);
      v16 = v6 - 1;
      if (v16)
      {
        v5 = ", ";
        do
        {
          sub_100259858();
          if (!v18 & v12)
          {
            sub_1002597E0(v17);
          }

          else
          {
            sub_100259A40();
          }

          sub_100259848();
          (*(v19 + 160))(v2);
          --v16;
        }

        while (v16);
      }
    }

    v20 = (*(*v2 + 16))(v2);
    v21 = sub_1000C9AF0(v20);
    if (v12)
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      sub_10010B264(v21, v22);
    }

    v23 = (*(*v2 + 16))(v2);
    v24 = sub_1000C9B60(v23);
    if (v18)
    {
      llvm::raw_ostream::write(v24, ":", 1uLL);
    }

    else
    {
      sub_1000C9AA0(v24, v25);
    }

    v26 = (*(*v2 + 16))(v2);
    v27 = sub_1000C9AF0(v26);
    if (v12)
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      sub_10010B264(v27, v28);
    }

    sub_100259C14();
    if (v29 < 0)
    {
      sub_100259CFC();
    }

    else
    {
      sub_100259D08();
    }

    v62[1] = v38;
    v40 = sub_100259E38(v30, v31, v32, v33, v34, v35, v36, v37, v61, v39);
    mlir::OperandRange::getTypes(v40, v41);
    sub_100259CE0();
    if (!v18)
    {
      v42 = (v63 + 32 * v4);
      v43 = *(v42[3] + 8);
      sub_10010B2A4();
      v45 = *(v44 + 32);
      v46 = sub_10010B2E8();
      v47(v46);
      if ((v4 + 1) != v5)
      {
        sub_100259CD0();
        do
        {
          v48 = (*(*v2 + 16))(v2);
          v49 = sub_10010B2C0(v48);
          if (!v18 & v12)
          {
            *v50 = 8236;
            sub_10010B2B0(v49);
          }

          else
          {
            llvm::raw_ostream::write(v49, ", ", 2uLL);
          }

          v51 = *v42;
          v42 += 4;
          v52 = *(v51 + 8);
          sub_10010B2A4();
          v54 = *(v53 + 32);
          v55 = sub_10010B2E8();
          v56(v55);
          --v5;
        }

        while (v5);
      }
    }

    v8 = *v3;
  }

  v63 = v65;
  v64 = 0x200000000;
  v62[0] = mlir::Operation::getAttrDictionary(v8);
  mlir::DictionaryAttr::getValue(v62);
  sub_10010B2A4();
  v58 = *(v57 + 192);
  v59 = sub_10025994C();
  v60(v59);
  if (v63 != v65)
  {
    free(v63);
  }
}

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::print(mlir::ODIE::Compiler::CoreML::PlaceholderOp *this, mlir::OpAsmPrinter *a2)
{
  sub_100259CC4();
  sub_100259C20(v5, v6);
  v9 = (*(v7 + 16))(v8);
  v10 = sub_1000C9AF0(v9);
  if (v12)
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    sub_10010B264(v10, v11);
  }

  sub_1002599DC();
  v15 = *(v13 + 16 * v14 + 64);
  sub_10010B2A4();
  (*(v16 + 48))(v2);
  sub_10010B2A4();
  v18 = (*(v17 + 16))(v2);
  v19 = sub_1000C9B60(v18);
  if (v21)
  {
    llvm::raw_ostream::write(v19, "(", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v19, v20);
  }

  sub_100259D2C();
  if (v23 < 0)
  {
    sub_100259CF0(v22);
  }

  else
  {
    sub_100259B3C();
  }

  (*(*v2 + 16))(v2);
  if (v4)
  {
    sub_1002597F4();
    (*(v24 + 160))(v2);
    for (i = v4 - 1; i; --i)
    {
      sub_100259858();
      if (!v21 & v12)
      {
        sub_1002597E0(v26);
      }

      else
      {
        sub_100259A40();
      }

      sub_100259848();
      (*(v27 + 160))(v2);
    }
  }

  v28 = (*(*v2 + 16))(v2);
  v29 = sub_1000C9B60(v28);
  if (v21)
  {
    llvm::raw_ostream::write(v29, ")", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v29, v30);
  }

  v63 = v65;
  v65[0] = "opname";
  v65[1] = 6;
  v64 = 0x200000001;
  v62[0] = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(v62);
  sub_10010B2A4();
  v32 = *(v31 + 192);
  v33 = sub_10025994C();
  v34(v33);
  sub_10010B2A4();
  v36 = (*(v35 + 16))(v2);
  v37 = sub_1000C9AF0(v36);
  if (v12)
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    sub_10010B264(v37, v38);
  }

  v39 = (*(*v2 + 16))(v2);
  v40 = sub_1000C9B60(v39);
  if (v21)
  {
    llvm::raw_ostream::write(v40, ":", 1uLL);
  }

  else
  {
    sub_1000C9AA0(v40, v41);
  }

  v42 = (*(*v2 + 16))(v2);
  v43 = sub_1000C9AF0(v42);
  if (v12)
  {
    llvm::raw_ostream::write(v43, 32);
  }

  else
  {
    sub_10010B264(v43, v44);
  }

  sub_100259C14();
  if (v45 < 0)
  {
    sub_100259CFC();
  }

  else
  {
    sub_100259D08();
  }

  v61[0] = v47;
  v61[1] = v46;
  mlir::OperandRange::getTypes(v61, v62);
  sub_10010B2F4(*v3);
  v57 = sub_100259E38(v48, v49, v50, v51, v52, v53, v54, v55, v59, v56);
  mlir::ResultRange::getTypes(v57, v58);
  sub_10023BF78(v2, v62, v60);
  if (v63 != v65)
  {
    free(v63);
  }
}

void mlir::ODIE::Compiler::CoreML::ReturnOp::print(mlir::ODIE::Compiler::CoreML::ReturnOp *this, mlir::OpAsmPrinter *a2)
{
  sub_100259CC4();
  v8 = *v7;
  if ((*(v8 + 46) & 0x80) != 0 && *(v8 + 68))
  {
    v9 = (*(*v2 + 16))(v2);
    v10 = sub_1000C9AF0(v9);
    if (v12)
    {
      llvm::raw_ostream::write(v10, 32);
    }

    else
    {
      sub_10010B264(v10, v11);
    }

    sub_100259D2C();
    if (v14 < 0)
    {
      sub_100259CF0(v13);
    }

    else
    {
      sub_100259B3C();
    }

    (*(*v2 + 16))(v2);
    if (v6)
    {
      sub_1002597F4();
      (*(v15 + 160))(v2);
      v16 = v6 - 1;
      if (v16)
      {
        v5 = ", ";
        do
        {
          sub_100259858();
          if (!v18 & v12)
          {
            sub_1002597E0(v17);
          }

          else
          {
            sub_100259A40();
          }

          sub_100259848();
          (*(v19 + 160))(v2);
          --v16;
        }

        while (v16);
      }
    }

    v20 = (*(*v2 + 16))(v2);
    v21 = sub_1000C9AF0(v20);
    if (v12)
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      sub_10010B264(v21, v22);
    }

    v23 = (*(*v2 + 16))(v2);
    v24 = sub_1000C9B60(v23);
    if (v18)
    {
      llvm::raw_ostream::write(v24, ":", 1uLL);
    }

    else
    {
      sub_1000C9AA0(v24, v25);
    }

    v26 = (*(*v2 + 16))(v2);
    v27 = sub_1000C9AF0(v26);
    if (v12)
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      sub_10010B264(v27, v28);
    }

    sub_100259C14();
    if (v29 < 0)
    {
      sub_100259CFC();
    }

    else
    {
      sub_100259D08();
    }

    v62[1] = v38;
    v40 = sub_100259E38(v30, v31, v32, v33, v34, v35, v36, v37, v61, v39);
    mlir::OperandRange::getTypes(v40, v41);
    sub_100259CE0();
    if (!v18)
    {
      v42 = (v63 + 32 * v4);
      v43 = *(v42[3] + 8);
      sub_10010B2A4();
      v45 = *(v44 + 32);
      v46 = sub_10010B2E8();
      v47(v46);
      if ((v4 + 1) != v5)
      {
        sub_100259CD0();
        do
        {
          v48 = (*(*v2 + 16))(v2);
          v49 = sub_10010B2C0(v48);
          if (!v18 & v12)
          {
            *v50 = 8236;
            sub_10010B2B0(v49);
          }

          else
          {
            llvm::raw_ostream::write(v49, ", ", 2uLL);
          }

          v51 = *v42;
          v42 += 4;
          v52 = *(v51 + 8);
          sub_10010B2A4();
          v54 = *(v53 + 32);
          v55 = sub_10010B2E8();
          v56(v55);
          --v5;
        }

        while (v5);
      }
    }

    v8 = *v3;
  }

  v63 = v65;
  v64 = 0x200000000;
  v62[0] = mlir::Operation::getAttrDictionary(v8);
  mlir::DictionaryAttr::getValue(v62);
  sub_10010B2A4();
  v58 = *(v57 + 192);
  v59 = sub_10025994C();
  v60(v59);
  if (v63 != v65)
  {
    free(v63);
  }
}

uint64_t sub_100288E58(uint64_t **a1, uint64_t a2)
{
  v156 = a2;
  mlir::FunctionType::getInputs(&v156);
  sub_100259D14();
  if (v12 < 0)
  {
    sub_100259C9C();
  }

  else
  {
    sub_1001406D8();
  }

  sub_100259D5C(v13, v143, v146, v149, v152, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v4)
  {
    sub_100259A5C();
    do
    {
      if (!v6)
      {
        break;
      }

      v14 = sub_100259E68();
      if (!v14)
      {
        sub_100259B1C(v14, v15, v16, v17, v18, v19, v20, v21);
        if (v160)
        {
          sub_100259E18();
          sub_1002598B8();
          if (v46)
          {
            sub_1001404C4();
            if (v97 <= v98 && (v96 & 1) != 0)
            {
              sub_100259AFC();
              v45 = v163;
            }

            else
            {
              sub_100259AFC();
              sub_100259C08();
            }
          }

          sub_100140494(v45);
          sub_100259808();
          if (v47)
          {
            v48 = *v3;
            sub_100259BFC();
            mlir::DiagnosticArgument::DiagnosticArgument(v49, v50);
            sub_1002598A8();
            if (v46)
            {
              sub_100259770();
              if (v110 <= v3 && (v111 & 1) != 0)
              {
                v3 = &v157 - v110;
                sub_10025997C();
                sub_100259E0C();
              }

              else
              {
                sub_10025997C();
                sub_100259BF0();
              }
            }

            sub_10025973C(v51);
            sub_100259A00();
            if (v52)
            {
              sub_100259B9C();
              sub_100259890();
              if (v46)
              {
                sub_1001405E4();
                if (v123 <= v125 && (v124 & 1) != 0)
                {
                  v3 = &v157 - v123;
                  sub_100259ADC(v122);
                  v53 = v163;
                  v54 = &v3[v163];
                }

                else
                {
                  sub_100259ADC(v122);
                  sub_100259BE4();
                }
              }

              v55 = &v53[24 * v164];
              v56 = v54[1].n128_u64[0];
              sub_100259758(v55, *v54);
              if (v160)
              {
                sub_100259BFC();
                mlir::DiagnosticArgument::DiagnosticArgument(v57, v4 & 0xFFFFFFFFFFFFFFF8);
                sub_1002598A8();
                if (v46)
                {
                  sub_100259770();
                  if (v131 <= v3 && (v130 & 1) != 0)
                  {
                    sub_10025997C();
                    sub_100259E0C();
                  }

                  else
                  {
                    sub_10025997C();
                    sub_100259BF0();
                  }
                }

                sub_10025973C(v58);
                sub_10025981C();
              }
            }
          }
        }

        sub_100259ED0(v37, v38, v39, v40, v41, v42, v43, v44, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_100259DF4();
        if (v22)
        {
          if (v183 != v8)
          {
            free(v183);
          }

          v59 = __p;
          if (__p)
          {
            v60 = v181;
            v61 = __p;
            if (v181 != __p)
            {
              do
              {
                v60 = sub_100052FFC((v60 - 8));
              }

              while (v60 != v59);
              v61 = __p;
            }

            v181 = v59;
            operator delete(v61);
          }

          v62 = v177;
          if (v177)
          {
            v63 = v178;
            v64 = v177;
            if (v178 != v177)
            {
              sub_10014054C();
              do
              {
                v65 = *--v63;
                *v63 = 0;
                if (v65)
                {
                  operator delete[]();
                }
              }

              while (v63 != v62);
              v64 = v177;
            }

            v178 = v62;
            operator delete(v64);
          }

          if (v163 != v2)
          {
            free(v163);
          }
        }

        sub_100259B78();
        mlir::Diagnostic::attachNote(v7 + 1, v66, 1);
      }

      sub_100259E24();
    }

    while (!v22);
  }

  Results = mlir::FunctionType::getResults(&v156);
  v25 = v24;
  sub_10010B2F4(**a1);
  sub_100259D38(v26, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v25)
  {
    sub_100259BAC();
    do
    {
      if (v2 == v5)
      {
        break;
      }

      v27 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v5) + 8);
      v28 = mlir::ODIE::Compiler::areTypesCompatible(*Results, v27 & 0xFFFFFFFFFFFFFFF8);
      if (!v28)
      {
        sub_100259B1C(v28, v29, v30, v31, v32, v33, v34, v35);
        if (v160)
        {
          sub_100259E18();
          sub_1002598B8();
          if (v46)
          {
            sub_1001404C4();
            if (v108 <= v109 && (v107 & 1) != 0)
            {
              sub_100259ABC(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              v75 = v163;
            }

            else
            {
              sub_100259ABC(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              sub_100259C08();
            }
          }

          sub_100140494(v75);
          sub_100259808();
          if (v76)
          {
            v77 = *Results;
            sub_100259BFC();
            mlir::DiagnosticArgument::DiagnosticArgument(v78, v79);
            sub_1002598A8();
            if (v46)
            {
              sub_100259770();
              if (v121 <= Results && (v120 & 1) != 0)
              {
                sub_10025995C(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_100259E00();
              }

              else
              {
                sub_10025995C(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_100259BF0();
              }
            }

            sub_10025973C(v80);
            sub_100259A00();
            if (v81)
            {
              sub_100259B9C();
              sub_100259890();
              if (v46)
              {
                sub_1001405E4();
                if (v127 <= v129 && (v128 & 1) != 0)
                {
                  v142 = &v157 - v127;
                  sub_100259A9C(v126, v145, v148, v151, v154);
                  v82 = v163;
                  v83 = &v142[v163];
                }

                else
                {
                  sub_100259A9C(v126, v145, v148, v151, v154);
                  sub_100259BE4();
                }
              }

              v84 = &v82[24 * v164];
              v85 = v83[1].n128_u64[0];
              sub_100259758(v84, *v83);
              if (v160)
              {
                sub_100259BFC();
                mlir::DiagnosticArgument::DiagnosticArgument(v86, v27 & 0xFFFFFFFFFFFFFFF8);
                sub_1002598A8();
                if (v46)
                {
                  sub_100259770();
                  if (v141 <= Results && (v140 & 1) != 0)
                  {
                    sub_10025995C(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_100259E00();
                  }

                  else
                  {
                    sub_10025995C(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_100259BF0();
                  }
                }

                sub_10025973C(v87);
                sub_10025981C();
              }
            }
          }
        }

        sub_100259ED0(v67, v68, v69, v70, v71, v72, v73, v74, v145, v148, v151, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_100259DF4();
        if (v22)
        {
          if (v183 != v7)
          {
            free(v183);
          }

          v88 = __p;
          if (__p)
          {
            v89 = v181;
            v90 = __p;
            if (v181 != __p)
            {
              do
              {
                v89 = sub_100052FFC((v89 - 8));
              }

              while (v89 != v88);
              v90 = __p;
            }

            v181 = v88;
            operator delete(v90);
          }

          v91 = v177;
          if (v177)
          {
            v92 = v178;
            v93 = v177;
            if (v178 != v177)
            {
              sub_10014054C();
              do
              {
                v94 = *--v92;
                *v92 = 0;
                if (v94)
                {
                  operator delete[]();
                }
              }

              while (v92 != v91);
              v93 = v177;
            }

            v178 = v91;
            operator delete(v93);
          }

          if (v163 != v155)
          {
            free(v163);
          }
        }

        sub_100259B78();
        mlir::Diagnostic::attachNote((v9 + 8), v95, 1);
      }

      ++Results;
      ++v5;
      v10 -= 8;
    }

    while (v10);
  }

  return 1;
}

uint64_t sub_10028966C(uint64_t **a1, uint64_t a2)
{
  v156 = a2;
  mlir::FunctionType::getInputs(&v156);
  sub_100259D14();
  if (v12 < 0)
  {
    sub_100259C9C();
  }

  else
  {
    sub_1001406D8();
  }

  sub_100259D5C(v13, v143, v146, v149, v152, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v4)
  {
    sub_100259A5C();
    do
    {
      if (!v6)
      {
        break;
      }

      v14 = sub_100259E68();
      if (!v14)
      {
        sub_100259B1C(v14, v15, v16, v17, v18, v19, v20, v21);
        if (v160)
        {
          sub_100259E18();
          sub_1002598B8();
          if (v46)
          {
            sub_1001404C4();
            if (v97 <= v98 && (v96 & 1) != 0)
            {
              sub_100259AFC();
              v45 = v163;
            }

            else
            {
              sub_100259AFC();
              sub_100259C08();
            }
          }

          sub_100140494(v45);
          sub_100259808();
          if (v47)
          {
            v48 = *v3;
            sub_100259BFC();
            mlir::DiagnosticArgument::DiagnosticArgument(v49, v50);
            sub_1002598A8();
            if (v46)
            {
              sub_100259770();
              if (v110 <= v3 && (v111 & 1) != 0)
              {
                v3 = &v157 - v110;
                sub_10025997C();
                sub_100259E0C();
              }

              else
              {
                sub_10025997C();
                sub_100259BF0();
              }
            }

            sub_10025973C(v51);
            sub_100259A00();
            if (v52)
            {
              sub_100259B9C();
              sub_100259890();
              if (v46)
              {
                sub_1001405E4();
                if (v123 <= v125 && (v124 & 1) != 0)
                {
                  v3 = &v157 - v123;
                  sub_100259ADC(v122);
                  v53 = v163;
                  v54 = &v3[v163];
                }

                else
                {
                  sub_100259ADC(v122);
                  sub_100259BE4();
                }
              }

              v55 = &v53[24 * v164];
              v56 = v54[1].n128_u64[0];
              sub_100259758(v55, *v54);
              if (v160)
              {
                sub_100259BFC();
                mlir::DiagnosticArgument::DiagnosticArgument(v57, v4 & 0xFFFFFFFFFFFFFFF8);
                sub_1002598A8();
                if (v46)
                {
                  sub_100259770();
                  if (v131 <= v3 && (v130 & 1) != 0)
                  {
                    sub_10025997C();
                    sub_100259E0C();
                  }

                  else
                  {
                    sub_10025997C();
                    sub_100259BF0();
                  }
                }

                sub_10025973C(v58);
                sub_10025981C();
              }
            }
          }
        }

        sub_100259ED0(v37, v38, v39, v40, v41, v42, v43, v44, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_100259DF4();
        if (v22)
        {
          if (v183 != v8)
          {
            free(v183);
          }

          v59 = __p;
          if (__p)
          {
            v60 = v181;
            v61 = __p;
            if (v181 != __p)
            {
              do
              {
                v60 = sub_100052FFC((v60 - 8));
              }

              while (v60 != v59);
              v61 = __p;
            }

            v181 = v59;
            operator delete(v61);
          }

          v62 = v177;
          if (v177)
          {
            v63 = v178;
            v64 = v177;
            if (v178 != v177)
            {
              sub_10014054C();
              do
              {
                v65 = *--v63;
                *v63 = 0;
                if (v65)
                {
                  operator delete[]();
                }
              }

              while (v63 != v62);
              v64 = v177;
            }

            v178 = v62;
            operator delete(v64);
          }

          if (v163 != v2)
          {
            free(v163);
          }
        }

        sub_100259B78();
        mlir::Diagnostic::attachNote(v7 + 1, v66, 1);
      }

      sub_100259E24();
    }

    while (!v22);
  }

  Results = mlir::FunctionType::getResults(&v156);
  v25 = v24;
  sub_10010B2F4(**a1);
  sub_100259D38(v26, v144, v147, v150, v153, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
  if (v25)
  {
    sub_100259BAC();
    do
    {
      if (v2 == v5)
      {
        break;
      }

      v27 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v5) + 8);
      v28 = mlir::ODIE::Compiler::areTypesCompatible(*Results, v27 & 0xFFFFFFFFFFFFFFF8);
      if (!v28)
      {
        sub_100259B1C(v28, v29, v30, v31, v32, v33, v34, v35);
        if (v160)
        {
          sub_100259E18();
          sub_1002598B8();
          if (v46)
          {
            sub_1001404C4();
            if (v108 <= v109 && (v107 & 1) != 0)
            {
              sub_100259ABC(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              v75 = v163;
            }

            else
            {
              sub_100259ABC(v99, v100, v101, v102, v103, v104, v105, v106, v145, v148, v151, v154);
              sub_100259C08();
            }
          }

          sub_100140494(v75);
          sub_100259808();
          if (v76)
          {
            v77 = *Results;
            sub_100259BFC();
            mlir::DiagnosticArgument::DiagnosticArgument(v78, v79);
            sub_1002598A8();
            if (v46)
            {
              sub_100259770();
              if (v121 <= Results && (v120 & 1) != 0)
              {
                sub_10025995C(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_100259E00();
              }

              else
              {
                sub_10025995C(v112, v113, v114, v115, v116, v117, v118, v119, v145, v148, v151, v154);
                sub_100259BF0();
              }
            }

            sub_10025973C(v80);
            sub_100259A00();
            if (v81)
            {
              sub_100259B9C();
              sub_100259890();
              if (v46)
              {
                sub_1001405E4();
                if (v127 <= v129 && (v128 & 1) != 0)
                {
                  v142 = &v157 - v127;
                  sub_100259A9C(v126, v145, v148, v151, v154);
                  v82 = v163;
                  v83 = &v142[v163];
                }

                else
                {
                  sub_100259A9C(v126, v145, v148, v151, v154);
                  sub_100259BE4();
                }
              }

              v84 = &v82[24 * v164];
              v85 = v83[1].n128_u64[0];
              sub_100259758(v84, *v83);
              if (v160)
              {
                sub_100259BFC();
                mlir::DiagnosticArgument::DiagnosticArgument(v86, v27 & 0xFFFFFFFFFFFFFFF8);
                sub_1002598A8();
                if (v46)
                {
                  sub_100259770();
                  if (v141 <= Results && (v140 & 1) != 0)
                  {
                    sub_10025995C(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_100259E00();
                  }

                  else
                  {
                    sub_10025995C(v132, v133, v134, v135, v136, v137, v138, v139, v145, v148, v151, v154);
                    sub_100259BF0();
                  }
                }

                sub_10025973C(v87);
                sub_10025981C();
              }
            }
          }
        }

        sub_100259ED0(v67, v68, v69, v70, v71, v72, v73, v74, v145, v148, v151, v154, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, __p, v181, v182, v183, v184, v185, v186);
        if (v160)
        {
          mlir::InFlightDiagnostic::report(&v160);
        }

        sub_100259DF4();
        if (v22)
        {
          if (v183 != v7)
          {
            free(v183);
          }

          v88 = __p;
          if (__p)
          {
            v89 = v181;
            v90 = __p;
            if (v181 != __p)
            {
              do
              {
                v89 = sub_100052FFC((v89 - 8));
              }

              while (v89 != v88);
              v90 = __p;
            }

            v181 = v88;
            operator delete(v90);
          }

          v91 = v177;
          if (v177)
          {
            v92 = v178;
            v93 = v177;
            if (v178 != v177)
            {
              sub_10014054C();
              do
              {
                v94 = *--v92;
                *v92 = 0;
                if (v94)
                {
                  operator delete[]();
                }
              }

              while (v92 != v91);
              v93 = v177;
            }

            v178 = v91;
            operator delete(v93);
          }

          if (v163 != v155)
          {
            free(v163);
          }
        }

        sub_100259B78();
        mlir::Diagnostic::attachNote((v9 + 8), v95, 1);
      }

      ++Results;
      ++v5;
      v10 -= 8;
    }

    while (v10);
  }

  return 1;
}

void sub_100289E80()
{
  {
    v0 = sub_10005EA24();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100289EC4()
{
  {
    v0 = sub_10005EA24();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100289F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.create_complex";
  *(a2 + 24) = 21;
}

void sub_100289F60()
{
  {
    v0 = sub_10025388C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_100289FA4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(void)::Name = sub_100253954();
    unk_1002C2D80 = v0;
  }
}

void sub_100289FE4()
{
  {
    v0 = sub_100253A0C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A028()
{
  {
    v0 = sub_1001CB100();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A06C()
{
  {
    v0 = sub_100254834();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A0B0()
{
  {
    llvm::getTypeName<mlir::ArrayAttr>(void)::Name = sub_1002548FC();
    unk_1002C2E00 = v0;
  }
}

void sub_10028A0F0()
{
  {
    llvm::getTypeName<mlir::UnitAttr>(void)::Name = sub_10025497C();
    *algn_1002C2E18 = v0;
  }
}

void sub_10028A130()
{
  {
    llvm::getTypeName<mlir::TypeAttr>(void)::Name = sub_1002549FC();
    unk_1002C2E30 = v0;
  }
}

void sub_10028A170()
{
  {
    v0 = sub_100254AB4();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A1B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 32) >= *(a1 + 36))
  {
    sub_1001404C4();
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (a1 + 40), v4 + 1, 24);
    v2 = *(a1 + 24);
  }

  v3 = *(a1 + 32);
  sub_100140494(v2);
  ++*(a1 + 32);
}

void sub_10028A26C()
{
  {
    v0 = sub_100254BAC();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A2B0()
{
  {
    llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<signed char>>(void)::Name = sub_100254C74();
    *algn_1002C2E98 = v0;
  }
}

void sub_10028A2F0()
{
  {
    v0 = sub_100254D2C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A334()
{
  {
    llvm::getTypeName<mlir::TypedAttr>(void)::Name = sub_100062EE8();
    unk_1002C0E10 = v0;
  }
}

void sub_10028A374()
{
  {
    v0 = sub_100254E24();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A3B8()
{
  {
    llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name = sub_100254EEC();
    unk_1002C2F00 = v0;
  }
}

void sub_10028A3F8()
{
  {
    v0 = sub_1000CD018();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.add";
  *(a2 + 24) = 10;
}

void sub_10028A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.mul";
  *(a2 + 24) = 10;
}

void sub_10028A4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.sub";
  *(a2 + 24) = 10;
}

void sub_10028A508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.batch_matmul";
  *(a2 + 24) = 19;
}

void sub_10028A54C()
{
  {
    v0 = sub_100256938();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A590(mlir::Operation **a1, BOOL *a2)
{
  v10 = "failed to verify that Operation must have at least two operands.";
  v11 = 259;
  mlir::OpState::emitOpError(a1, &v10, v12);
  *a2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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
          v4 = sub_100052FFC(v4 - 1);
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
          v9 = *--v7;
          *v7 = 0;
          if (v9)
          {
            operator delete[]();
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
}

void sub_10028A6EC()
{
  {
    v0 = sub_100256A30();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A730()
{
  {
    v0 = sub_100256E88();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A774()
{
  {
    v0 = sub_100257540();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A7B8()
{
  {
    v0 = sub_100257D18();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A7FC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ExternAttr>(void)::Name = sub_100257DE0();
    unk_1002C3010 = v0;
  }
}

void sub_10028A83C()
{
  {
    *&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name = sub_1000A535C();
    *(&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name + 1) = v0;
  }
}

void sub_10028A87C()
{
  {
    v0 = sub_100257E90();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A8C0()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(void)::Name = sub_100257F58();
    *algn_1002C3068 = v0;
  }
}

void sub_10028A900()
{
  {
    v0 = sub_100258008();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A944()
{
  {
    v0 = sub_100258108();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028A988()
{
  {
    llvm::getTypeName<mlir::IntegerAttr>(void)::Name = sub_1002581D0();
    unk_1002C30D0 = v0;
  }
}

void sub_10028A9C8()
{
  {
    v0 = sub_100258280();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AA0C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(void)::Name = sub_100258348();
    unk_1002C3110 = v0;
  }
}

void sub_10028AA4C()
{
  {
    v0 = sub_1002583F8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AA90()
{
  {
    v0 = sub_100258DE8();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AAD4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>(void)::Name = sub_100258EB0();
    *algn_1002C3178 = v0;
  }
}

void sub_10028AB14()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>(void)::Name = sub_100258F30();
    unk_1002C3190 = v0;
  }
}

void sub_10028AB54()
{
  {
    v0 = sub_100258FE0();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AB98()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ScatterModeAttr>(void)::Name = sub_1002590A8();
    unk_1002C31D0 = v0;
  }
}

void sub_10028ABD8()
{
  {
    v0 = sub_100259158();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AC1C()
{
  {
    v0 = sub_100259250();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AC60()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(void)::Name = sub_100259318();
    *algn_1002C3238 = v0;
  }
}

void sub_10028ACA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.real_part";
  *(a2 + 24) = 16;
}

void sub_10028ACE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.imaginary_part";
  *(a2 + 24) = 21;
}

void sub_10028AD28()
{
  {
    v0 = sub_100193F70();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AD6C()
{
  {
    v0 = sub_10016EC6C();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028ADB0()
{
  {
    v0 = sub_1000B8330();
    mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028AE08()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims>(void)::Name = sub_100252BB0();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims>(void)::Name + 1) = v0;
  }
}

void sub_10028AE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.reshape";
  *(a2 + 24) = 14;
}

void sub_10028AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.broadcast_in_dims";
  *(a2 + 24) = 24;
}

void sub_10028AED0()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock>(void)::Name = sub_100253364();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock>(void)::Name + 1) = v0;
  }
}

void sub_10028AF10()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::Name = sub_1002538D4();
    *algn_1002C2D68 = v0;
  }
}

void sub_10028AF64()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::Name = sub_100253A54();
    unk_1002C2DC0 = v0;
  }
}

void sub_10028AFB8()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::Name = sub_10025487C();
    *algn_1002C2DE8 = v0;
  }
}

void sub_10028B00C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::Name = sub_100254AFC();
    *algn_1002C2E58 = v0;
  }
}

void sub_10028B060()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::Name = sub_100254BF4();
    unk_1002C2E80 = v0;
  }
}

void sub_10028B0B4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::Name = sub_100254D74();
    unk_1002C2EC0 = v0;
  }
}

void sub_10028B108()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::Name = sub_100254E6C();
    *algn_1002C2EE8 = v0;
  }
}

void sub_10028B15C()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>>(void)::Name = sub_1002556D0();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>>(void)::Name + 1) = v0;
  }
}

void sub_10028B19C()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>>(void)::Name = sub_100255A78();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>>(void)::Name + 1) = v0;
  }
}

void sub_10028B1DC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::Name = sub_100256980();
    *algn_1002C2F58 = v0;
  }
}

void sub_10028B230()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::Name = sub_100256A78();
    unk_1002C2F80 = v0;
  }
}

void sub_10028B284()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::Name = sub_100256ED0();
    *algn_1002C2FA8 = v0;
  }
}

void sub_10028B2D8()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::Name = sub_100257588();
    unk_1002C2FD0 = v0;
  }
}

void sub_10028B32C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::Name = sub_100257D60();
    *algn_1002C2FF8 = v0;
  }
}

void sub_10028B380()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::Name = sub_100257ED8();
    unk_1002C3050 = v0;
  }
}

void sub_10028B3D4()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::Name = sub_100258050();
    unk_1002C3090 = v0;
  }
}

void sub_10028B428()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::Name = sub_100258150();
    *algn_1002C30B8 = v0;
  }
}

void sub_10028B47C()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::Name = sub_1002582C8();
    *algn_1002C30F8 = v0;
  }
}

void sub_10028B4D0()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::Name = sub_100258440();
    *algn_1002C3138 = v0;
  }
}

void sub_10028B524()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::Name = sub_100258E30();
    unk_1002C3160 = v0;
  }
}

void sub_10028B578()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::Name = sub_100259028();
    *algn_1002C31B8 = v0;
  }
}

void sub_10028B5CC()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::Name = sub_1002591A0();
    *algn_1002C31F8 = v0;
  }
}

void sub_10028B620()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(void)::Name = sub_100259298();
    unk_1002C3220 = v0;
  }
}

void sub_10028B674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.cast";
  *(a2 + 24) = 13;
}

void sub_10028B6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.copy_with_constraints";
  *(a2 + 24) = 30;
}

void sub_10028B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.view";
  *(a2 + 24) = 13;
}

void sub_10028D0B4()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp>(void)::Name = sub_100273ED4();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyWithConstraintsOp>(void)::Name + 1) = v0;
  }
}

void sub_10028D0F4()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp>(void)::Name = sub_100274210();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteToFromPairToCastOp>(void)::Name + 1) = v0;
  }
}

void sub_10028D134()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp>(void)::Name = sub_10027454C();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::RemoveRedundantCopyDiscardingConstraintsOp>(void)::Name + 1) = v0;
  }
}

void sub_10028D174()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp>(void)::Name = sub_100274A5C();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::FoldCastOpIntoCopyWithConstraintsOp>(void)::Name + 1) = v0;
  }
}

void sub_10028D1B4()
{
  {
    *&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp>(void)::Name = sub_100274BC4();
    *(&llvm::getTypeName<mlir::ODIE::Compiler::CoreMLAX::PromoteCastOpToViewOp>(void)::Name + 1) = v0;
  }
}

void sub_10028D1F4()
{
  {
    v0 = sub_100276374();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028D248()
{
  {
    v0 = sub_100276374();
    mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028D288()
{
  {
    llvm::getTypeName<mlir::RegionBranchOpInterface>(void)::Name = sub_1002763BC();
    unk_1002C1B20 = v0;
  }
}

void sub_10028D2DC()
{
  {
    v0 = sub_100276C58();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028D330()
{
  {
    v0 = sub_100276C58();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028D370()
{
  {
    llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>(void)::Name = sub_100276CA0();
    *algn_1002C1B48 = v0;
  }
}

uint64_t mlir::detail::verifyInferredResultTypes(mlir::detail *this, mlir::Operation *a2)
{
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v64 = v4;
  v65 = v3;
  mlir::ResultRange::getTypes(&v64, &v52);
  v64 = v66;
  v65 = 0x400000000;
  v5 = v52;
  v6 = v53;
  v7 = v54;
  v8 = v54 - v53;
  if (v54 - v53 < 5)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v54 - v53, 8);
    v9 = v65;
    v10 = v65;
  }

  if (v7 == v6)
  {
    LODWORD(v65) = v10 + v8;
LABEL_11:
    v12 = sub_10027778C(this);
    goto LABEL_12;
  }

  v11 = &v64[8 * v9];
  do
  {
    *v11++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v6++) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v7 != v6);
  LODWORD(v65) = v65 + v8;
  if (this)
  {
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:
  Context = mlir::Attribute::getContext((this + 24));
  v14 = *(this + 3);
  if ((*(this + 46) & 0x80) != 0)
  {
    v15 = *(this + 9);
    v16 = *(this + 17);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  mlir::ValueRange::ValueRange(&v52, v15, v16);
  v17 = *(this + 7);
  v18 = *(this + 11);
  if (HIBYTE(*(this + 11)))
  {
    v19 = this + 16 * ((v18 >> 23) & 1) + 64;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 & 0x7FFFFF;
  if ((v18 & 0x7FFFFF) != 0)
  {
    v21 = ((this + 16 * ((v18 >> 23) & 1) + ((v18 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10);
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  mlir::RegionRange::RegionRange(&v49, v21, v20);
  v45 = v50;
  v44 = v49;
  v22 = (*(v12 + 8))(Context, v14, 1, v52, v53, v17, v19);
  if ((v22 & 1) == 0)
  {
    v51 = 257;
    mlir::Operation::emitOpError(&v52, this, &v49);
    if (v52)
    {
      LODWORD(v46) = 3;
      v47 = "failed to infer returned types";
      v48 = 30;
      v31 = &v46;
      v32 = v54;
      if (v55 >= v56)
      {
        if (v54 <= &v46 && v54 + 24 * v55 > &v46)
        {
          v43 = &v46 - v54;
          sub_100277A98(v23, v24, v25, v26, v27, v28, v29, v30, v44, v45, &v64, v46, v47, v48, v49, v50);
          v32 = v54;
          v31 = (v54 + v43);
        }

        else
        {
          sub_100277A98(v23, v24, v25, v26, v27, v28, v29, v30, v44, v45, &v64, v46, v47, v48, v49, v50);
          v31 = &v46;
          v32 = v54;
        }
      }

      v33 = &v32[24 * v55];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v61;
        v37 = __p;
        if (v61 != __p)
        {
          do
          {
            v36 = sub_100052FFC(v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v61 = v35;
        operator delete(v37);
      }

      v38 = v58;
      if (v58)
      {
        v39 = v59;
        v40 = v58;
        if (v59 != v58)
        {
          do
          {
            v41 = *--v39;
            *v39 = 0;
            if (v41)
            {
              operator delete[]();
            }
          }

          while (v39 != v38);
          v40 = v58;
        }

        v59 = v38;
        operator delete(v40);
      }

      if (v54 != &v57)
      {
        free(v54);
      }
    }
  }

  if (v64 != v66)
  {
    free(v64);
  }

  return v22;
}

void sub_10028D76C()
{
  {
    v0 = sub_1000A8650();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028D7C0()
{
  {
    v0 = sub_1000A8650();
    mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void sub_10028D800()
{
  {
    v0 = sub_1000CD018();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2, const std::nothrow_t *a3)
{
    ;
  }
}

void operator new()
{
    ;
  }
}