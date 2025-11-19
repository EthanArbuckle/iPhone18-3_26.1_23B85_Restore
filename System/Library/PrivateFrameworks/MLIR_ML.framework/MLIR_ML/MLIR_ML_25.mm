unint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  *&v46 = a2;
  v28 = a1;
  Encoding = mlir::RankedTensorType::getEncoding(&v46);
  a1 = v28;
  if (!Encoding || *(*Encoding + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
  {
    goto LABEL_2;
  }

  v30 = *a2;
  {
    v43 = v30;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v32 = *(v43 + 8);
    v33 = *(v43 + 16);
    if (v33)
    {
      goto LABEL_31;
    }

LABEL_59:
    v40 = 0;
    goto LABEL_61;
  }

  v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  if (!v33)
  {
    goto LABEL_59;
  }

LABEL_31:
  v34 = v32;
  v35 = v33;
  do
  {
    v36 = v35 >> 1;
    v37 = &v34[2 * (v35 >> 1)];
    v39 = *v37;
    v38 = v37 + 2;
    v35 += ~(v35 >> 1);
    if (v39 < v31)
    {
      v34 = v38;
    }

    else
    {
      v35 = v36;
    }
  }

  while (v35);
  if (v34 == &v32[2 * v33] || *v34 != v31)
  {
    goto LABEL_59;
  }

  v40 = v34[1];
LABEL_61:
  v48[0] = a2;
  v48[1] = v40;
  v44[0] = mlir::ShapedType::getElementType(v48);
  if (mlir::Type::isF16(v44) || mlir::Type::isF32(v44) || mlir::Type::isSignedInteger(v44, 4) || mlir::Type::isSignedInteger(v44, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v44, 32);
  a1 = v28;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(v48, a1, v44);
  if (v48[0])
  {
    LODWORD(v46) = 3;
    *(&v46 + 1) = " #";
    v47 = 2;
    if (v50 >= v51)
    {
      if (v49 > &v46 || v49 + 24 * v50 <= &v46)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v49 + 24 * v50;
    v10 = v46;
    *(v9 + 2) = v47;
    *v9 = v10;
    v11 = ++v50;
    if (v48[0])
    {
      LODWORD(v46) = 5;
      *(&v46 + 1) = a5;
      if (v11 >= v51)
      {
        if (v49 > &v46 || v49 + 24 * v11 <= &v46)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v49 + 24 * v50;
      v13 = v46;
      *(v12 + 2) = v47;
      *v12 = v13;
      v14 = ++v50;
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v47 = 144;
        if (v14 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v14 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v49 + 24 * v50;
        v16 = v46;
        *(v15 + 2) = v47;
        *v15 = v16;
        ++v50;
        if (v48[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          if (v50 >= v51)
          {
            if (v49 > &v46 || v49 + 24 * v50 <= &v46)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v17 = v49 + 24 * v50;
          v18 = v46;
          *(v17 + 2) = v47;
          *v17 = v18;
          ++v50;
        }
      }
    }
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v56;
      v22 = __p;
      if (v56 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v56 = v20;
      operator delete(v22);
    }

    v23 = v53;
    if (v53)
    {
      v24 = v54;
      v25 = v53;
      if (v54 != v53)
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
        v25 = v53;
      }

      v54 = v23;
      operator delete(v25);
    }

    if (v49 != &v52)
    {
      free(v49);
    }
  }

  return v19;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  *&v46 = a2;
  v28 = a1;
  Encoding = mlir::RankedTensorType::getEncoding(&v46);
  if (Encoding)
  {
    a1 = v28;
    if (*(*Encoding + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr,void>::id)
    {
      goto LABEL_2;
    }
  }

  v30 = *a2;
  {
    v43 = v30;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v32 = *(v43 + 8);
    v33 = *(v43 + 16);
    if (v33)
    {
      goto LABEL_31;
    }

LABEL_57:
    v40 = 0;
    goto LABEL_59;
  }

  v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  if (!v33)
  {
    goto LABEL_57;
  }

LABEL_31:
  v34 = v32;
  v35 = v33;
  do
  {
    v36 = v35 >> 1;
    v37 = &v34[2 * (v35 >> 1)];
    v39 = *v37;
    v38 = v37 + 2;
    v35 += ~(v35 >> 1);
    if (v39 < v31)
    {
      v34 = v38;
    }

    else
    {
      v35 = v36;
    }
  }

  while (v35);
  if (v34 == &v32[2 * v33] || *v34 != v31)
  {
    goto LABEL_57;
  }

  v40 = v34[1];
LABEL_59:
  v48[0] = a2;
  v48[1] = v40;
  v44[0] = mlir::ShapedType::getElementType(v48);
  if (mlir::Type::isF16(v44) || mlir::Type::isF32(v44) || mlir::Type::isSignedInteger(v44, 4) || mlir::Type::isSignedInteger(v44, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v44, 32);
  a1 = v28;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v45 = 261;
  v44[0] = a3;
  v44[1] = a4;
  mlir::Operation::emitOpError(v48, a1, v44);
  if (v48[0])
  {
    LODWORD(v46) = 3;
    *(&v46 + 1) = " #";
    v47 = 2;
    if (v50 >= v51)
    {
      if (v49 > &v46 || v49 + 24 * v50 <= &v46)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v49 + 24 * v50;
    v10 = v46;
    *(v9 + 2) = v47;
    *v9 = v10;
    v11 = ++v50;
    if (v48[0])
    {
      LODWORD(v46) = 5;
      *(&v46 + 1) = a5;
      if (v11 >= v51)
      {
        if (v49 > &v46 || v49 + 24 * v11 <= &v46)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v49 + 24 * v50;
      v13 = v46;
      *(v12 + 2) = v47;
      *v12 = v13;
      v14 = ++v50;
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = " must be ranked tensor of 16-bit float or 32-bit float or 4-bit signed integer or 8-bit signed integer or 32-bit signed integer values, but got ";
        v47 = 144;
        if (v14 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v14 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v49 + 24 * v50;
        v16 = v46;
        *(v15 + 2) = v47;
        *v15 = v16;
        ++v50;
        if (v48[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v46, a2);
          if (v50 >= v51)
          {
            if (v49 > &v46 || v49 + 24 * v50 <= &v46)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v17 = v49 + 24 * v50;
          v18 = v46;
          *(v17 + 2) = v47;
          *v17 = v18;
          ++v50;
        }
      }
    }
  }

  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
  if (v48[0])
  {
    mlir::InFlightDiagnostic::report(v48);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v56;
      v22 = __p;
      if (v56 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v56 = v20;
      operator delete(v22);
    }

    v23 = v53;
    if (v53)
    {
      v24 = v54;
      v25 = v53;
      if (v54 != v53)
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
        v25 = v53;
      }

      v54 = v23;
      operator delete(v25);
    }

    if (v49 != &v52)
    {
      free(v49);
    }
  }

  return v19;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verifyInvariants(mlir::Operation **this)
{
  result = 0;
  if (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
    if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) != 0 && mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::verify(this))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp::parse(mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
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
        if (mlir::AsmParser::parseType<mlir::FunctionType>(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          mlir::OperationState::addTypes(a2, Results, v8);
          v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v14, v13, v5, a2 + 16) & 1;
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

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verifyInvariants(mlir::Operation **this)
{
  result = 0;
  if (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
    if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) != 0 && mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::verify(this))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp::parse(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
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
        if (mlir::AsmParser::parseType<mlir::FunctionType>(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          mlir::OperationState::addTypes(a2, Results, v8);
          v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v14, v13, v5, a2 + 16) & 1;
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

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a5;
  v14 = a4;
  v11 = a7;
  v12 = a6;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v23 = v25;
  v24 = 0x200000000;
  v7 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v9 = mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(v9, v7, 1, v22[0], v22[1], v10, v11, v12, v15, v16, &v23) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = v24;
  v14 = *(a2 + 72);
  if (v14 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v14), v23, 8 * v24);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (v23 != v25)
  {
    free(v23);
  }
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a6;
  v18 = a5;
  v15 = a8;
  v16 = a7;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v13);
      *(v14 + 8 * v13++) = result;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::build(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v24;
  v19 = *(a2 + 72);
  if (v19 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v24);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps9(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps9(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps9(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v44 = v7;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v44 + 8);
    v15 = *(v44 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v49[0] = a2;
  v49[1] = v22;
  v45[0] = mlir::ShapedType::getElementType(v49);
  if (mlir::Type::isSignedInteger(v45, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v45, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v45, 8);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_24:
  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(v49, a1, v45);
  if (v49[0])
  {
    LODWORD(v47) = 3;
    *(&v47 + 1) = " #";
    v48 = 2;
    if (v51 >= v52)
    {
      if (v50 > &v47 || v50 + 24 * v51 <= &v47)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v50 + 24 * v51;
    v26 = v47;
    *(v25 + 2) = v48;
    *v25 = v26;
    v27 = ++v51;
    if (v49[0])
    {
      LODWORD(v47) = 5;
      *(&v47 + 1) = a5;
      if (v27 >= v52)
      {
        if (v50 > &v47 || v50 + 24 * v27 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v50 + 24 * v51;
      v29 = v47;
      *(v28 + 2) = v48;
      *v28 = v29;
      v30 = ++v51;
      if (v49[0])
      {
        LODWORD(v47) = 3;
        *(&v47 + 1) = " must be tensor of 4-bit signed integer or 8-bit unsigned integer or 8-bit signed integer values, but got ";
        v48 = 106;
        if (v30 >= v52)
        {
          if (v50 > &v47 || v50 + 24 * v30 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v50 + 24 * v51;
        v32 = v47;
        *(v31 + 2) = v48;
        *v31 = v32;
        ++v51;
        if (v49[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
          if (v51 >= v52)
          {
            if (v50 > &v47 || v50 + 24 * v51 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v50 + 24 * v51;
          v34 = v47;
          *(v33 + 2) = v48;
          *v33 = v34;
          ++v51;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v57;
      v37 = __p;
      if (v57 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v57 = v35;
      operator delete(v37);
    }

    v38 = v54;
    if (v54)
    {
      v39 = v55;
      v40 = v54;
      if (v55 != v54)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v54;
      }

      v55 = v38;
      operator delete(v40);
    }

    if (v50 != &v53)
    {
      free(v50);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOp::parse(mlir::ODIE::Compiler::CoreMLAX::DequantizeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
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
        if (mlir::AsmParser::parseType<mlir::FunctionType>(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          mlir::OperationState::addTypes(a2, Results, v8);
          v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v14, v13, v5, a2 + 16) & 1;
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

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a5;
  v14 = a4;
  v11 = a7;
  v12 = a6;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v23 = v25;
  v24 = 0x200000000;
  v7 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v9 = mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(v9, v7, 1, v22[0], v22[1], v10, v11, v12, v15, v16, &v23) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = v24;
  v14 = *(a2 + 72);
  if (v14 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v14), v23, 8 * v24);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (v23 != v25)
  {
    free(v23);
  }
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a6;
  v18 = a5;
  v15 = a8;
  v16 = a7;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 72);
  if (a4 + v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v13 = 0;
    v14 = *(a2 + 64) + 8 * v12;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v13);
      *(v14 + 8 * v13++) = result;
    }

    while (a4 != v13);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::build(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v24;
  v19 = *(a2 + 72);
  if (v19 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v24);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps3(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps6(*this, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps10(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_23;
  }

  v12 = a1;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v9 + 8);
    v15 = *(v9 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v44 = v9;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v44 + 8);
    v15 = *(v44 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v49[0] = a2;
  v49[1] = v22;
  v45[0] = mlir::ShapedType::getElementType(v49);
  if (mlir::Type::isUnsignedInteger(v45, 8))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(v45, 8);
  a1 = v12;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_23:
  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(v49, a1, v45);
  if (v49[0])
  {
    LODWORD(v47) = 3;
    *(&v47 + 1) = " #";
    v48 = 2;
    if (v51 >= v52)
    {
      if (v50 > &v47 || v50 + 24 * v51 <= &v47)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v50 + 24 * v51;
    v26 = v47;
    *(v25 + 2) = v48;
    *v25 = v26;
    v27 = ++v51;
    if (v49[0])
    {
      LODWORD(v47) = 5;
      *(&v47 + 1) = a5;
      if (v27 >= v52)
      {
        if (v50 > &v47 || v50 + 24 * v27 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v50 + 24 * v51;
      v29 = v47;
      *(v28 + 2) = v48;
      *v28 = v29;
      v30 = ++v51;
      if (v49[0])
      {
        LODWORD(v47) = 3;
        *(&v47 + 1) = " must be tensor of 8-bit unsigned integer or 8-bit signed integer values, but got ";
        v48 = 82;
        if (v30 >= v52)
        {
          if (v50 > &v47 || v50 + 24 * v30 <= &v47)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v50 + 24 * v51;
        v32 = v47;
        *(v31 + 2) = v48;
        *v31 = v32;
        ++v51;
        if (v49[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
          if (v51 >= v52)
          {
            if (v50 > &v47 || v50 + 24 * v51 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v50 + 24 * v51;
          v34 = v47;
          *(v33 + 2) = v48;
          *v33 = v34;
          ++v51;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
  if (v49[0])
  {
    mlir::InFlightDiagnostic::report(v49);
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v57;
      v37 = __p;
      if (v57 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v57 = v35;
      operator delete(v37);
    }

    v38 = v54;
    if (v54)
    {
      v39 = v55;
      v40 = v54;
      if (v55 != v54)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v54;
      }

      v55 = v38;
      operator delete(v40);
    }

    if (v50 != &v53)
    {
      free(v50);
    }
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOp::parse(mlir::ODIE::Compiler::CoreMLAX::QuantizeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
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
        if (mlir::AsmParser::parseType<mlir::FunctionType>(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          mlir::OperationState::addTypes(a2, Results, v8);
          v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v14, v13, v5, a2 + 16) & 1;
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

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  result = mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a5;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v10);
      *(v11 + 8 * v10++) = result;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreMLAX::ViewOp::verifyInvariants(mlir::Operation **this)
{
  result = 0;
  if (mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
    if ((mlir::ODIE::Compiler::CoreMLAX::__mlir_ods_local_type_constraint_CoreMLAXOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) != 0 && mlir::ODIE::Compiler::CoreMLAX::ViewOp::verify(this))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOp::parse(mlir::ODIE::Compiler::CoreMLAX::ViewOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
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
        if (mlir::AsmParser::parseType<mlir::FunctionType>(this, &v12))
        {
          v13[0] = mlir::FunctionType::getInputs(&v12);
          v13[1] = v6;
          Results = mlir::FunctionType::getResults(&v12);
          mlir::OperationState::addTypes(a2, Results, v8);
          v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v14, v13, v5, a2 + 16) & 1;
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

uint64_t mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v76 = a2;
  ParentOp = a2;
  do
  {
    v7 = *(ParentOp + 16);
    if (v7)
    {
      ParentOp = mlir::Block::getParentOp(v7);
      if (ParentOp)
      {
        continue;
      }
    }

    v75 = 0;
    goto LABEL_38;
  }

  while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id);
  v75 = ParentOp;
  DelegateId = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getDelegateId(&v75);
  if (v9 != 11 || (*DelegateId == 0x6572707265746E49 ? (v10 = *(DelegateId + 3) == 0x7265746572707265) : (v10 = 0), !v10))
  {
LABEL_38:
    v26 = "Needs to be Interpreter-isolated to be folded";
LABEL_39:
    v80 = v26;
    v82[8] = 259;
    v77[0] = &v80;
    v27 = a3[2];
    if (v27)
    {
      if (mlir::RewriterBase::Listener::classof(v27))
      {
        (*(*v27 + 88))(v27, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v77);
      }
    }

    return 0;
  }

  v80 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v80);
  if (!DefiningOp)
  {
    v74 = 0;
LABEL_45:
    v26 = "Non-constant or non-tensor source";
    goto LABEL_39;
  }

  v12 = *(*(DefiningOp + 48) + 16);
  v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id;
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v14 = DefiningOp;
  }

  else
  {
    v14 = 0;
  }

  v74 = v14;
  if (!v13 || *(*mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(&v74) + 136) != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    goto LABEL_45;
  }

  Value = mlir::ODIE::Compiler::CoreML::ConstantOp::getValue(&v74);
  v71 = 0;
  v72 = std::system_category();
  NumElements = mlir::DenseElementsAttr::getNumElements(&Value);
  llvm::sys::Memory::allocateMappedMemory(NumElements, 0, 50331648, &v71, &v69);
  v67 = v69;
  v16 = v69;
  v68 = v70;
  mlir::DenseElementsAttr::getRawData(&Value);
  v18 = v17;
  RawData = mlir::DenseElementsAttr::getRawData(&Value);
  v62 = v20;
  v66[0] = mlir::DenseElementsAttr::getType(&Value);
  v66[1] = v21;
  v80 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  Encoding = mlir::RankedTensorType::getEncoding(&v80);
  Shape = mlir::ShapedType::getShape(v66);
  mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::computeStrides(&Encoding, Shape, &v80);
  ElementType = mlir::ShapedType::getElementType(v66);
  v24 = *(*ElementType + 136);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v77[0] = ElementType;
    Width = mlir::IntegerType::getWidth(v77);
  }

  else
  {
    if (v24 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v25 = -1;
      goto LABEL_49;
    }

    v77[0] = ElementType;
    Width = mlir::FloatType::getWidth(v77);
  }

  v25 = Width;
LABEL_49:
  v30 = __ROR8__(v25 - 8, 3);
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v49 = mlir::ShapedType::getShape(v66);
      v51 = v50;
      v52 = v80;
      v53 = v81;
      Interleave = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(&Encoding);
      mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned int>(a1, v16, v18, RawData, v62, v18, v49, v51, v52, v53, Interleave);
    }

    else
    {
      if (v30 != 7)
      {
        goto LABEL_56;
      }

      v37 = mlir::ShapedType::getShape(v66);
      v39 = v38;
      v40 = v80;
      v41 = v81;
      v42 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(&Encoding);
      mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned long long>(a1, v16, v18, RawData, v62, v18, v37, v39, v40, v41, v42);
    }

LABEL_59:
    v64 = *(a2 + 24);
    v77[0] = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    v55 = mlir::TensorType::operator mlir::ShapedType(v77);
    v63[0] = mlir::ODIE::Compiler::CoreML::createElementsAttr(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::matchAndRewrite(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::PatternRewriter &)::{lambda(void)#2}>, &v64, v55, v56, v16, v18);
    v63[1] = v57;
    if (v63[0])
    {
      v58 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>((a3 + 1), *(a2 + 24), v63);
      (*(*a3 + 8))(a3, a2, v58);
      result = 1;
    }

    else
    {
      v77[0] = "Can't create new Attr";
      v78 = 259;
      v79 = v77;
      v59 = a3[2];
      if (v59 && mlir::RewriterBase::Listener::classof(v59))
      {
        (*(*v59 + 88))(v59, *(a2 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v79);
      }

      result = 0;
    }

    goto LABEL_65;
  }

  if (!v30)
  {
    v43 = mlir::ShapedType::getShape(v66);
    v45 = v44;
    v46 = v80;
    v47 = v81;
    v48 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(&Encoding);
    mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned char>(a1, v16, v18, RawData, v62, v18, v43, v45, v46, v47, v48);
    goto LABEL_59;
  }

  if (v30 == 1)
  {
    v31 = mlir::ShapedType::getShape(v66);
    v33 = v32;
    v34 = v80;
    v35 = v81;
    v36 = mlir::ODIE::Compiler::CoreMLAX::HardwareConstraintsAttr::getInterleave(&Encoding);
    mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned short>(a1, v16, v18, RawData, v62, v18, v31, v33, v34, v35, v36);
    goto LABEL_59;
  }

LABEL_56:
  result = mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(a3, &v76, "Can't re-layout");
LABEL_65:
  if (v80 != v82)
  {
    v60 = result;
    free(v80);
    result = v60;
  }

  if (v67)
  {
    v61 = result;
    llvm::sys::Memory::releaseMappedMemory(&v67);
    return v61;
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
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
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &>(mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned long long>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    if (a6 < 8)
    {
      return;
    }

    v16 = a6 >> 3;
    if (a6 >= 0x40 && (a4 + (a6 & 0xFFFFFFFFFFFFFFF8) <= a2 || (a2 + 1) <= a4))
    {
      v17 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      v47 = (a4 - 8);
      v48 = v16 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v47 += 4;
        v48 -= 4;
      }

      while (v48);
      *a2 = *v47;
      if (v16 == v17)
      {
        return;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 - v17;
    v19 = (a4 + 8 * v17);
    do
    {
      v20 = *v19++;
      *a2 = v20;
      --v18;
    }

    while (v18);
    return;
  }

  if (a8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(v49, 8 * a8);
  if (a6 >= 8)
  {
    v21 = a6 >> 3;
    v22 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v36 = 0;
        v37 = a11;
        v38 = v49;
        v39 = a8;
        v40 = (a9 + 8);
        do
        {
          while (1)
          {
            v43 = *v37++;
            v42 = v43;
            v45 = *v38++;
            v44 = v45;
            if (v42 != 1)
            {
              break;
            }

            v41 = *v40++;
            v36 += v41 * v44;
            if (!--v39)
            {
              goto LABEL_25;
            }
          }

          v46 = *v40++;
          v36 += v44 % v42 + v46 * (v44 / v42);
          --v39;
        }

        while (v39);
LABEL_25:
        a2[v36] = *(a4 + 8 * v22++);
      }

      while (v22 != v21);
    }

    else
    {
      do
      {
        v23 = 8 * (a8 - 1);
        v24 = v22;
        do
        {
          *&v49[v23] = v24 % *(a7 + v23);
          v24 /= *(a7 + v23);
          v23 -= 8;
        }

        while (v23 != -8);
        v25 = 0;
        v26 = a11;
        v27 = v49;
        v28 = (a9 + 8);
        v29 = a8;
        do
        {
          while (1)
          {
            v32 = *v26++;
            v31 = v32;
            v34 = *v27++;
            v33 = v34;
            if (v31 != 1)
            {
              break;
            }

            v30 = *v28++;
            v25 += v30 * v33;
            if (!--v29)
            {
              goto LABEL_17;
            }
          }

          v35 = *v28++;
          v25 += v33 % v31 + v35 * (v33 / v31);
          --v29;
        }

        while (v29);
LABEL_17:
        a2[v25] = *(a4 + 8 * v22++);
      }

      while (v22 != v21);
    }
  }
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned int>(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    if (a6 < 4)
    {
      return;
    }

    v16 = a6 >> 2;
    if (a6 >= 0x20 && (a4 + (a6 & 0xFFFFFFFFFFFFFFFCLL) <= a2 || (a2 + 1) <= a4))
    {
      v17 = v16 & 0x3FFFFFFFFFFFFFF8;
      v47 = (a4 - 4);
      v48 = v16 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        v47 += 8;
        v48 -= 8;
      }

      while (v48);
      *a2 = *v47;
      if (v16 == v17)
      {
        return;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 - v17;
    v19 = (a4 + 4 * v17);
    do
    {
      v20 = *v19++;
      *a2 = v20;
      --v18;
    }

    while (v18);
    return;
  }

  if (a8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(v49, 8 * a8);
  if (a6 >= 4)
  {
    v21 = a6 >> 2;
    v22 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v36 = 0;
        v37 = a11;
        v38 = v49;
        v39 = a8;
        v40 = (a9 + 8);
        do
        {
          while (1)
          {
            v43 = *v37++;
            v42 = v43;
            v45 = *v38++;
            v44 = v45;
            if (v42 != 1)
            {
              break;
            }

            v41 = *v40++;
            v36 += v41 * v44;
            if (!--v39)
            {
              goto LABEL_25;
            }
          }

          v46 = *v40++;
          v36 += v44 % v42 + v46 * (v44 / v42);
          --v39;
        }

        while (v39);
LABEL_25:
        a2[v36] = *(a4 + 4 * v22++);
      }

      while (v22 != v21);
    }

    else
    {
      do
      {
        v23 = 8 * (a8 - 1);
        v24 = v22;
        do
        {
          *&v49[v23] = v24 % *(a7 + v23);
          v24 /= *(a7 + v23);
          v23 -= 8;
        }

        while (v23 != -8);
        v25 = 0;
        v26 = a11;
        v27 = v49;
        v28 = (a9 + 8);
        v29 = a8;
        do
        {
          while (1)
          {
            v32 = *v26++;
            v31 = v32;
            v34 = *v27++;
            v33 = v34;
            if (v31 != 1)
            {
              break;
            }

            v30 = *v28++;
            v25 += v30 * v33;
            if (!--v29)
            {
              goto LABEL_17;
            }
          }

          v35 = *v28++;
          v25 += v33 % v31 + v35 * (v33 / v31);
          --v29;
        }

        while (v29);
LABEL_17:
        a2[v25] = *(a4 + 4 * v22++);
      }

      while (v22 != v21);
    }
  }
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned short>(uint64_t a1, _WORD *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    if (a6 < 2)
    {
      return;
    }

    v16 = a6 >> 1;
    if (a6 < 8 || a4 + (a6 & 0xFFFFFFFFFFFFFFFELL) > a2 && (a2 + 1) > a4)
    {
      v17 = 0;
      goto LABEL_9;
    }

    if (a6 >= 0x20)
    {
      v17 = v16 & 0x7FFFFFFFFFFFFFF0;
      v47 = (a4 - 2);
      v48 = v16 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v47 += 16;
        v48 -= 16;
      }

      while (v48);
      *a2 = *v47;
      if (v16 == v17)
      {
        return;
      }

      if ((a6 & 0x18) == 0)
      {
LABEL_9:
        v18 = v16 - v17;
        v19 = (a4 + 2 * v17);
        do
        {
          v20 = *v19++;
          *a2 = v20;
          --v18;
        }

        while (v18);
        return;
      }
    }

    else
    {
      v17 = 0;
    }

    v49 = v17;
    v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
    v50 = (a4 + 2 * v49 - 2);
    v51 = v49 - (v16 & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v50 += 4;
      v51 += 4;
    }

    while (v51);
    *a2 = *v50;
    if (v16 == v17)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(v52, 8 * a8);
  if (a6 >= 2)
  {
    v21 = a6 >> 1;
    v22 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v36 = 0;
        v37 = a11;
        v38 = v52;
        v39 = a8;
        v40 = (a9 + 8);
        do
        {
          while (1)
          {
            v43 = *v37++;
            v42 = v43;
            v45 = *v38++;
            v44 = v45;
            if (v42 != 1)
            {
              break;
            }

            v41 = *v40++;
            v36 += v41 * v44;
            if (!--v39)
            {
              goto LABEL_25;
            }
          }

          v46 = *v40++;
          v36 += v44 % v42 + v46 * (v44 / v42);
          --v39;
        }

        while (v39);
LABEL_25:
        a2[v36] = *(a4 + 2 * v22++);
      }

      while (v22 != v21);
    }

    else
    {
      do
      {
        v23 = 8 * (a8 - 1);
        v24 = v22;
        do
        {
          *&v52[v23] = v24 % *(a7 + v23);
          v24 /= *(a7 + v23);
          v23 -= 8;
        }

        while (v23 != -8);
        v25 = 0;
        v26 = a11;
        v27 = v52;
        v28 = (a9 + 8);
        v29 = a8;
        do
        {
          while (1)
          {
            v32 = *v26++;
            v31 = v32;
            v34 = *v27++;
            v33 = v34;
            if (v31 != 1)
            {
              break;
            }

            v30 = *v28++;
            v25 += v30 * v33;
            if (!--v29)
            {
              goto LABEL_17;
            }
          }

          v35 = *v28++;
          v25 += v33 % v31 + v35 * (v33 / v31);
          --v29;
        }

        while (v29);
LABEL_17:
        a2[v25] = *(a4 + 2 * v22++);
      }

      while (v22 != v21);
    }
  }
}

void mlir::ODIE::Compiler::CoreMLAX::FoldConstantCopyWithConstraintsOp::reLayout<unsigned char>(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    if (!a6)
    {
      return;
    }

    if (a6 < 8 || a4 + a6 > a2 && (a2 + 1) > a4)
    {
      v16 = 0;
      goto LABEL_9;
    }

    if (a6 >= 0x20)
    {
      v16 = a6 & 0xFFFFFFFFFFFFFFE0;
      v45 = (a4 - 1);
      v46 = a6 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v45 += 32;
        v46 -= 32;
      }

      while (v46);
      *a2 = *v45;
      if (v16 == a6)
      {
        return;
      }

      if ((a6 & 0x18) == 0)
      {
LABEL_9:
        v17 = a6 - v16;
        v18 = (a4 + v16);
        do
        {
          v19 = *v18++;
          *a2 = v19;
          --v17;
        }

        while (v17);
        return;
      }
    }

    else
    {
      v16 = 0;
    }

    v47 = v16;
    v16 = a6 & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + a4 - 1);
    v49 = v47 - (a6 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v48 += 8;
      v49 += 8;
    }

    while (v49);
    *a2 = *v48;
    if (v16 == a6)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  bzero(v50, 8 * a8);
  if (a6)
  {
    v20 = 0;
    if (a8 - 1 < 0)
    {
      do
      {
        v34 = 0;
        v35 = a11;
        v36 = v50;
        v37 = a8;
        v38 = (a9 + 8);
        do
        {
          while (1)
          {
            v41 = *v35++;
            v40 = v41;
            v43 = *v36++;
            v42 = v43;
            if (v40 != 1)
            {
              break;
            }

            v39 = *v38++;
            v34 += v39 * v42;
            if (!--v37)
            {
              goto LABEL_23;
            }
          }

          v44 = *v38++;
          v34 += v42 % v40 + v44 * (v42 / v40);
          --v37;
        }

        while (v37);
LABEL_23:
        a2[v34] = *(a4 + v20++);
      }

      while (v20 != a6);
    }

    else
    {
      do
      {
        v21 = 8 * (a8 - 1);
        v22 = v20;
        do
        {
          *&v50[v21] = v22 % *(a7 + v21);
          v22 /= *(a7 + v21);
          v21 -= 8;
        }

        while (v21 != -8);
        v23 = 0;
        v24 = a11;
        v25 = v50;
        v26 = (a9 + 8);
        v27 = a8;
        do
        {
          while (1)
          {
            v30 = *v24++;
            v29 = v30;
            v32 = *v25++;
            v31 = v32;
            if (v29 != 1)
            {
              break;
            }

            v28 = *v26++;
            v23 += v28 * v31;
            if (!--v27)
            {
              goto LABEL_15;
            }
          }

          v33 = *v26++;
          v23 += v31 % v29 + v33 * (v31 / v29);
          --v27;
        }

        while (v27);
LABEL_15:
        a2[v23] = *(a4 + v20++);
      }

      while (v20 != a6);
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v16[38] = *MEMORY[0x277D85DE8];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>(v16, v15, v14);
  }

  mlir::OperationState::OperationState(v16, a2, v7);
  if (*a3)
  {
    v9 = *(a3[1] + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v16, *a3, v9);
  v10 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v11;
}

uint64_t *OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
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

llvm::raw_ostream *OUTLINED_FUNCTION_22_0(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  return mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(v1, va1, va);
}

uint64_t *OUTLINED_FUNCTION_23_0@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
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

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return mlir::DictionaryAttr::getValue(&a14);
}

unint64_t OUTLINED_FUNCTION_35_0()
{
  v2 = *v0;

  return mlir::Operation::getAttrDictionary(v2);
}

void anonymous namespace::FuncInlinerInterface::~FuncInlinerInterface(_anonymous_namespace_::FuncInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FuncInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

void anonymous namespace::FuncInlinerInterface::handleTerminator(_anonymous_namespace_::FuncInlinerInterface *this, mlir::Operation *a2, mlir::Block *a3)
{
  v11 = a3;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v10 = v3;
  if (v3)
  {
    v9[0] = mlir::Attribute::getContext((a2 + 24));
    v9[1] = 0;
    v9[2] = *(a2 + 2);
    v9[3] = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
    v5 = *(a2 + 3);
    ODSOperandIndexAndLength = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v10, 0);
    if ((*(v10 + 46) & 0x80) != 0)
    {
      v7 = *(v10 + 9);
    }

    else
    {
      v7 = 0;
    }

    v8[0] = v7 + 32 * ODSOperandIndexAndLength;
    v8[1] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength;
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(v9, v5, &v11, v8);
    mlir::Operation::erase(a2);
  }
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::cf::BranchOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
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

void mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(void (*)(mlir::MLIRContext *,mlir::func::FuncDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  JUMPOUT(0x259C63180);
}

void mlir::BytecodeWriterConfig::BytecodeWriterConfig()
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

void mlir::BytecodeWriterConfig::attachFallbackResourcePrinter(mlir::BytecodeWriterConfig *this, mlir::FallbackAsmResourceMap *a2)
{
  mlir::FallbackAsmResourceMap::getPrinters(a2, &__p);
  v3 = __p;
  v4 = v13;
  if (__p == v13)
  {
    if (!__p)
    {
      return;
    }

    goto LABEL_9;
  }

  do
  {
    v5 = *v3;
    *v3 = 0;
    v6 = *this;
    v7 = *(*this + 192);
    if (v7 >= *(*this + 196))
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>();
    }

    *(*(v6 + 184) + 8 * v7) = v5;
    *(v6 + 192) = v7 + 1;
    ++v3;
  }

  while (v3 != v4);
  v3 = __p;
  if (__p)
  {
LABEL_9:
    v8 = v13;
    v9 = v3;
    if (v13 != v3)
    {
      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          (*(*v10 + 8))(v10);
        }
      }

      while (v8 != v3);
      v9 = __p;
    }

    v13 = v3;
    operator delete(v9);
  }
}

void mlir::BytecodeWriterConfig::~BytecodeWriterConfig(mlir::BytecodeWriterConfig::Impl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::BytecodeWriterConfig::Impl::~Impl(v2);
    MEMORY[0x259C63180]();
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::BytecodeWriterConfig::Impl::~Impl(v2);
    MEMORY[0x259C63180]();
  }
}

uint64_t *mlir::BytecodeWriterConfig::attachAttributeCallback(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 64);
  if (v3 >= *(*result + 68))
  {
    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AttrTypeBytecodeWriter<mlir::Attribute>>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AttrTypeBytecodeWriter<mlir::Attribute>>>();
  }

  v4 = *(v2 + 56);
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8 * v3) = v5;
  *(v2 + 64) = v3 + 1;
  return result;
}

uint64_t *mlir::BytecodeWriterConfig::attachTypeCallback(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 128);
  if (v3 >= *(*result + 132))
  {
    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AttrTypeBytecodeWriter<mlir::Type>>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AttrTypeBytecodeWriter<mlir::Type>>>();
  }

  v4 = *(v2 + 120);
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8 * v3) = v5;
  *(v2 + 128) = v3 + 1;
  return result;
}

uint64_t *mlir::BytecodeWriterConfig::attachResourcePrinter(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 192);
  if (v3 >= *(*result + 196))
  {
    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>();
  }

  v4 = *(v2 + 184);
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8 * v3) = v5;
  *(v2 + 192) = v3 + 1;
  return result;
}

uint64_t mlir::BytecodeWriterConfig::setDialectVersion(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *a4;
  *a4 = 0;
  v10 = v7;
  v8 = llvm::StringMapImpl::hash(a2, a3, a3);
  llvm::StringMap<std::unique_ptr<mlir::DialectVersion>,llvm::MallocAllocator>::try_emplace_with_hash<std::unique_ptr<mlir::DialectVersion>>((v6 + 16), a2, a3, v8, &v10);
  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void mlir::writeBytecodeToFile(mlir *this, mlir::Operation *a2, llvm::raw_ostream *a3, const mlir::BytecodeWriterConfig *a4)
{
  v286 = *MEMORY[0x277D85DE8];
  v249 = 0;
  v248 = 0u;
  v250 = v252;
  v251 = 0;
  v6 = mlir::bytecode::detail::IRNumberingState::IRNumberingState(v252, this, a3);
  v260 = *a3;
  v262 = 0u;
  v261 = 0;
  v263 = &v265;
  v264 = xmmword_2573695B0;
  v266 = 0u;
  v267 = 0;
  v224 = v6;
  v268 = v6;
  v269 = &v248;
  v270 = v260;
  *v232 = 0u;
  v233 = 0u;
  *v230 = 0u;
  v231 = 0u;
  *v229 = 0u;
  v234 = 1;
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(v229, 0, "ML\xEF\x52unsupported version requested ", "\x00unsupported version requested ", 4);
  if (*v260 >= 7uLL)
  {
    LOWORD(v243) = 257;
    mlir::Operation::emitError(__src, this, __s1);
    if (__src[0])
    {
      LODWORD(v280) = 3;
      *(&v280 + 1) = "unsupported version requested ";
      v281 = 30;
      if (LODWORD(v272[2]) >= HIDWORD(v272[2]))
      {
        if (v272[1] > &v280 || v272[1] + 24 * LODWORD(v272[2]) <= &v280)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v272[1] + 24 * LODWORD(v272[2]);
      v8 = v280;
      *(v7 + 2) = v281;
      *v7 = v8;
      v9 = ++LODWORD(v272[2]);
      if (__src[0])
      {
        v10 = *v260;
        LODWORD(v280) = 2;
        *(&v280 + 1) = v10;
        if (v9 >= HIDWORD(v272[2]))
        {
          if (v272[1] > &v280 || v272[1] + 24 * v9 <= &v280)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v272[1] + 24 * LODWORD(v272[2]);
        v12 = v280;
        *(v11 + 2) = v281;
        *v11 = v12;
        v13 = ++LODWORD(v272[2]);
        if (__src[0])
        {
          LODWORD(v280) = 3;
          *(&v280 + 1) = ", must be in range [";
          v281 = 20;
          if (v13 >= HIDWORD(v272[2]))
          {
            if (v272[1] > &v280 || v272[1] + 24 * v13 <= &v280)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v272[1] + 24 * LODWORD(v272[2]);
          v15 = v280;
          *(v14 + 2) = v281;
          *v14 = v15;
          v16 = ++LODWORD(v272[2]);
          if (__src[0])
          {
            LODWORD(v280) = 2;
            *(&v280 + 1) = 0;
            if (v16 >= HIDWORD(v272[2]))
            {
              if (v272[1] > &v280 || v272[1] + 24 * v16 <= &v280)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v17 = v272[1] + 24 * LODWORD(v272[2]);
            v18 = v280;
            *(v17 + 2) = v281;
            *v17 = v18;
            v19 = ++LODWORD(v272[2]);
            if (__src[0])
            {
              LODWORD(v280) = 3;
              *(&v280 + 1) = ", ";
              v281 = 2;
              if (v19 >= HIDWORD(v272[2]))
              {
                if (v272[1] > &v280 || v272[1] + 24 * v19 <= &v280)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v20 = v272[1] + 24 * LODWORD(v272[2]);
              v21 = v280;
              *(v20 + 2) = v281;
              *v20 = v21;
              v22 = ++LODWORD(v272[2]);
              if (__src[0])
              {
                LODWORD(v280) = 2;
                *(&v280 + 1) = 6;
                if (v22 >= HIDWORD(v272[2]))
                {
                  if (v272[1] > &v280 || v272[1] + 24 * v22 <= &v280)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v23 = v272[1] + 24 * LODWORD(v272[2]);
                v24 = v280;
                *(v23 + 2) = v281;
                *v23 = v24;
                ++LODWORD(v272[2]);
                if (__src[0])
                {
                  mlir::Diagnostic::operator<<(&__src[1], 93);
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
    if (__src[0])
    {
      mlir::InFlightDiagnostic::report(__src);
    }

    if (v279 == 1)
    {
      if (v278 != &v279)
      {
        free(v278);
      }

      v25 = __p;
      if (__p)
      {
        v26 = v277;
        v27 = __p;
        if (v277 != __p)
        {
          do
          {
            v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v277 = v25;
        operator delete(v27);
      }

      v28 = v274;
      if (v274)
      {
        v29 = v275;
        v30 = v274;
        if (v275 != v274)
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
          v30 = v274;
        }

        v275 = v28;
        operator delete(v30);
      }

      if (v272[1] != &v272[3])
      {
        free(v272[1]);
      }
    }

    v214 = v232[0];
    if (v232[0])
    {
      v215 = v232[1];
      v216 = v232[0];
      if (v232[1] != v232[0])
      {
        v217 = v232[1];
        do
        {
          v219 = *(v217 - 3);
          v217 -= 24;
          v218 = v219;
          if (v219)
          {
            *(v215 - 2) = v218;
            operator delete(v218);
          }

          v215 = v217;
        }

        while (v217 != v214);
        v216 = v232[0];
      }

      v232[1] = v214;
      operator delete(v216);
    }

    if (v230[1])
    {
      *&v231 = v230[1];
      operator delete(v230[1]);
    }

    if (v229[0])
    {
      v229[1] = v229[0];
      operator delete(v229[0]);
    }

    llvm::deallocate_buffer(v266, (24 * v267));
  }

  memset(v272, 0, sizeof(v272));
  *__src = 0u;
  v273 = 1;
  v33 = v252[18];
  v34 = v253;
  if (v34)
  {
    v35 = v33 + 24 * v34;
    do
    {
      v36 = *(v33 + 16);
      if (*v260 <= 0)
      {
      }

      else
      {
        *v244 = 0u;
        v245 = 0u;
        *v242 = 0u;
        v243 = 0u;
        *__s1 = 0u;
        v246 = 1;
        v38 = *(v36 + 24);
        if (v38)
        {
          v39 = *v260;
          *&v280 = &unk_286864648;
          *(&v280 + 1) = v39;
          v281 = __s1;
          v282 = v224;
          v283 = &v248;
          v284 = v260 + 16;
          (*(*v38 + 48))(v38, &v280);
          v40 = __s1[0];
          v41 = __s1[1] + *(&v245 + 1);
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        if (v41 != v40)
        {
        }

        v42 = v244[0];
        if (v244[0])
        {
          v43 = v244[1];
          v44 = v244[0];
          if (v244[1] != v244[0])
          {
            v45 = v244[1];
            do
            {
              v47 = *(v45 - 3);
              v45 -= 24;
              v46 = v47;
              if (v47)
              {
                *(v43 - 2) = v46;
                operator delete(v46);
              }

              v43 = v45;
            }

            while (v45 != v42);
            v44 = v244[0];
          }

          v244[1] = v42;
          operator delete(v44);
        }

        if (v242[1])
        {
          *&v243 = v242[1];
          operator delete(v242[1]);
        }

        if (__s1[0])
        {
          __s1[1] = __s1[0];
          operator delete(__s1[0]);
        }
      }

      v33 += 24;
    }

    while (v33 != v35);
  }

  if (*v260 > 3)
  {
  }

  v48 = v256;
  v49 = v257;
  if (v256 != v257)
  {
    v220 = v257;
    while (1)
    {
      v50 = v48;
      v51 = *v48++;
      v52 = *v51;
      if (v48 != v49)
      {
        do
        {
          if (**v48 != v52)
          {
            goto LABEL_63;
          }

          ++v48;
        }

        while (v48 != v49);
        v48 = v49;
      }

LABEL_63:
      if (v48 != v50)
      {
        break;
      }

LABEL_58:
      v49 = v220;
      if (v48 == v220)
      {
        goto LABEL_127;
      }
    }

    v225 = v48;
    while (1)
    {
      v53 = *v50;
      __s1[0] = *((*v50)[1] + 8);
      __s1[0] = mlir::StringAttr::getValue(__s1);
      __s1[1] = v54;
      LOBYTE(v280) = 46;
      v55 = llvm::StringRef::find(__s1, &v280, 1uLL, 0);
      if (v55 == -1)
      {
        v57 = 0;
        v58 = 0;
      }

      else
      {
        if (__s1[1] >= (v55 + 1))
        {
          v56 = (v55 + 1);
        }

        else
        {
          v56 = __s1[1];
        }

        v57 = __s1[0] + v56;
        v58 = (__s1[1] - v56);
      }

      HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v57, v58);
      __s1[0] = v57;
      __s1[1] = __PAIR64__(HashValue, v58);
      LODWORD(v242[0]) = 0;
      v60 = v251;
      if (!v249)
      {
        v90 = 0;
        v91 = 0;
        goto LABEL_96;
      }

      v226 = v53;
      v61 = 0;
      v62 = v248;
      v280 = xmmword_25736EE40;
      v63 = v249 - 1;
      v64 = 1;
      v65 = HashValue & v63;
      v66 = v248 + 24 * (HashValue & v63);
      v67 = *(v66 + 12);
      if (HashValue != v67)
      {
        goto LABEL_83;
      }

LABEL_74:
      v68 = *v66;
      if (*v66 == -2)
      {
        if (__s1[0] != -2)
        {
          goto LABEL_83;
        }
      }

      else if (v68 == -1)
      {
        if (__s1[0] != -1)
        {
          goto LABEL_83;
        }
      }

      else if (LODWORD(__s1[1]) != *(v66 + 8) || LODWORD(__s1[1]) && (v221 = v64, v222 = HashValue, v69 = v60, v70 = v63, v71 = v62, v72 = v61, v73 = v58, v74 = v57, v75 = v65, v76 = memcmp(__s1[0], v68, LODWORD(__s1[1])), v65 = v75, v57 = v74, v58 = v73, v61 = v72, v62 = v71, v63 = v70, v60 = v69, v77 = v76, v64 = v221, HashValue = v222, v77))
      {
LABEL_83:
        while (v67 || *v66 != -1)
        {
          v78 = HashValue;
          v79 = v60;
          v80 = v61;
          v223 = v57;
          v81 = v65;
          isEqual = llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(v66, &v280);
          v60 = v79;
          v83 = isEqual;
          HashValue = v78;
          if ((v83 & (v80 == 0)) != 0)
          {
            v61 = v66;
          }

          else
          {
            v61 = v80;
          }

          v84 = v81 + v64;
          v57 = v223;
          ++v64;
          v65 = v84 & v63;
          v66 = v62 + 24 * (v84 & v63);
          v67 = *(v66 + 12);
          if (HIDWORD(__s1[1]) == v67)
          {
            goto LABEL_74;
          }
        }

        if (v61)
        {
          v91 = v61;
        }

        else
        {
          v91 = v66;
        }

        v90 = v249;
        v48 = v225;
        v53 = v226;
LABEL_96:
        *&v280 = v91;
        if (4 * DWORD2(v248) + 4 >= 3 * v90)
        {
          v90 *= 2;
        }

        else if (v90 + ~DWORD2(v248) - HIDWORD(v248) > v90 >> 3)
        {
          ++DWORD2(v248);
          if (!*(v91 + 12))
          {
            goto LABEL_99;
          }

LABEL_100:
          --HIDWORD(v248);
          goto LABEL_101;
        }

        v101 = HashValue;
        v102 = v60;
        llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::grow(&v248, v90);
        llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(&v248, __s1, &v280);
        v60 = v102;
        LODWORD(HashValue) = v101;
        v91 = v280;
        ++DWORD2(v248);
        if (*(v280 + 12))
        {
          goto LABEL_100;
        }

LABEL_99:
        if (*v91 != -1)
        {
          goto LABEL_100;
        }

LABEL_101:
        *v91 = *__s1;
        *(v91 + 16) = v242[0];
        v92 = v251;
        *(v91 + 16) = v251;
        if (v92 >= HIDWORD(v251))
        {
          __s1[0] = v57;
          __s1[1] = __PAIR64__(HashValue, v58);
          v242[0] = v60;
          if (v250 > __s1 || v250 + 24 * v92 <= __s1)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v93 = v250;
        v94 = v250 + 24 * v92;
        *v94 = v57;
        *(v94 + 2) = v58;
        *(v94 + 3) = HashValue;
        *(v94 + 2) = v60;
        LODWORD(v251) = v251 + 1;
        v86 = v93[3 * v251 - 1];
        if (*v260 < 5)
        {
          goto LABEL_92;
        }

LABEL_91:
        v86 = (*(v53[1] + 16) != &mlir::detail::TypeIDResolver<void,void>::id) | (2 * v86);
        goto LABEL_92;
      }

      v85 = *(v66 + 16);
      v48 = v225;
      v53 = v226;
      v86 = *(v250 + 3 * v85 + 2);
      if (*v260 >= 5)
      {
        goto LABEL_91;
      }

LABEL_92:
      if (v86 > 0x7F)
      {
        if (++v50 == v48)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v87 = (2 * v86) | 1;
        v88 = __src[1];
        if (__src[1] >= v272[0])
        {
          v95 = __src[0];
          v96 = (__src[1] - __src[0]);
          v97 = __src[1] - __src[0] + 1;
          if (v97 < 0)
          {
LABEL_320:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v98 = v272[0] - __src[0];
          if (2 * (v272[0] - __src[0]) > v97)
          {
            v97 = 2 * v98;
          }

          if (v98 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v99 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v99 = v97;
          }

          if (v99)
          {
            operator new();
          }

          v100 = __src[1] - __src[0];
          *v96 = v87;
          v89 = v96 + 1;
          memcpy(0, v95, v100);
          __src[0] = 0;
          __src[1] = v96 + 1;
          v272[0] = 0;
          if (v95)
          {
            operator delete(v95);
          }
        }

        else
        {
          *__src[1] = v87;
          v89 = v88 + 1;
        }

        __src[1] = v89;
        if (++v50 == v48)
        {
          goto LABEL_58;
        }
      }
    }
  }

LABEL_127:
  v103 = v272[4];
  if (v272[4])
  {
    v104 = v272[5];
    v105 = v272[4];
    if (v272[5] != v272[4])
    {
      v106 = v272[5];
      do
      {
        v108 = *(v106 - 3);
        v106 -= 24;
        v107 = v108;
        if (v108)
        {
          *(v104 - 2) = v107;
          operator delete(v107);
        }

        v104 = v106;
      }

      while (v106 != v103);
      v105 = v272[4];
    }

    v272[5] = v103;
    operator delete(v105);
  }

  if (v272[1])
  {
    v272[2] = v272[1];
    operator delete(v272[1]);
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  memset(v272, 0, sizeof(v272));
  *__src = 0u;
  v273 = 1;
  *v244 = 0u;
  v245 = 0u;
  *v242 = 0u;
  v243 = 0u;
  *__s1 = 0u;
  v246 = 1;
  v109 = v254;
  if (v254 != v255)
  {
    v110 = 0;
    v111 = v255;
    v227 = v255;
    while (1)
    {
      v112 = v109;
      v113 = *v109++;
      v114 = *(v113 + 16);
      if (v109 != v111)
      {
        do
        {
          if (*(*v109 + 16) != v114)
          {
            goto LABEL_146;
          }

          ++v109;
        }

        while (v109 != v111);
        v109 = v111;
      }

LABEL_146:
      if (v109 != v112)
      {
        break;
      }

      v115 = v110;
LABEL_141:
      v110 = v115;
      v111 = v227;
      if (v109 == v227)
      {
        goto LABEL_209;
      }
    }

    while (1)
    {
      v116 = *v112;
      v117 = (**v112 & 0xFFFFFFFFFFFFFFF8);
      v118 = *v117;
      {
        mlir::writeBytecodeToFile();
      }

      v119 = (v118 + 72);
      v120 = *(v118 + 96);
      if ((v120 & 2) == 0)
      {
        v119 = *v119;
      }

      if (((*(v120 & 0xFFFFFFFFFFFFFFF8))(v119, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        v121 = *v117;
        {
          mlir::writeBytecodeToFile();
        }

        v122 = (v121 + 72);
        v123 = *(v121 + 96);
        if ((v123 & 2) == 0)
        {
          v122 = *v122;
        }

        if (!(*(v123 & 0xFFFFFFFFFFFFFFF8))(v122, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          break;
        }
      }

      DWORD2(v280) = 0;
      LOBYTE(v284) = 0;
      HIDWORD(v284) = 1;
      v282 = 0;
      v283 = 0;
      v281 = 0;
      *&v280 = &unk_2868646F8;
      v285 = __src;
      llvm::raw_ostream::SetBufferAndMode(&v280, 0, 0, 0);
      v235 = v117;
      mlir::Attribute::print(&v235, &v280);
      llvm::raw_ostream::~raw_ostream(&v280);
      v124 = __src[1];
      if (__src[1] >= v272[0])
      {
        v126 = __src[0];
        v127 = (__src[1] - __src[0]);
        v128 = __src[1] - __src[0] + 1;
        if (v128 < 0)
        {
          goto LABEL_320;
        }

        v129 = v272[0] - __src[0];
        if (2 * (v272[0] - __src[0]) > v128)
        {
          v128 = 2 * v129;
        }

        if (v129 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v130 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v130 = v128;
        }

        if (v130)
        {
          operator new();
        }

        v138 = __src[1] - __src[0];
        *v127 = 0;
        v125 = v127 + 1;
        memcpy(0, v126, v138);
        __src[0] = 0;
        __src[1] = v127 + 1;
        v272[0] = 0;
        if (v126)
        {
          operator delete(v126);
        }
      }

      else
      {
        *__src[1] = 0;
        v125 = v124 + 1;
      }

      v137 = 0;
      __src[1] = v125;
LABEL_194:
      v115 = v272[7] + v125 - __src[0];
      v147 = v137 | (2 * (v115 - v110));
      if (v147 > 0x7F)
      {
      }

      else
      {
        v148 = (2 * v147) | 1;
        v149 = __s1[1];
        if (__s1[1] >= v242[0])
        {
          v150 = __s1[0];
          v151 = (__s1[1] - __s1[0]);
          v152 = __s1[1] - __s1[0] + 1;
          if (v152 < 0)
          {
            goto LABEL_320;
          }

          v153 = v242[0] - __s1[0];
          if (2 * (v242[0] - __s1[0]) > v152)
          {
            v152 = 2 * v153;
          }

          if (v153 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v154 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v154 = v152;
          }

          if (v154)
          {
            operator new();
          }

          v155 = __s1[1] - __s1[0];
          *v151 = v148;
          memcpy(0, v150, v155);
          __s1[0] = 0;
          __s1[1] = v151 + 1;
          v242[0] = 0;
          if (v150)
          {
            operator delete(v150);
          }

          __s1[1] = v151 + 1;
        }

        else
        {
          *__s1[1] = v148;
          __s1[1] = v149 + 1;
        }
      }

      ++v112;
      v110 = v115;
      if (v112 == v109)
      {
        goto LABEL_141;
      }
    }

    v131 = *v260;
    v235 = &unk_286864648;
    v236 = v131;
    v237 = __src;
    v238 = v224;
    v239 = &v248;
    v240 = v260 + 16;
    v132 = *(v260 + 64);
    if (v132)
    {
      v133 = *(v260 + 56);
      v134 = 8 * v132;
      while (1)
      {
        v135 = *v133;
        LOBYTE(v280) = 0;
        LOBYTE(v281) = 0;
        if ((*(*v135 + 16))(v135, v117, &v280, &v235))
        {
          break;
        }

        ++v133;
        v134 -= 8;
        if (!v134)
        {
          goto LABEL_174;
        }
      }
    }

    else
    {
LABEL_174:
      v136 = *(v116[2] + 24);
      if (!v136 || ((*(*v136 + 32))(v136, v117, &v235) & 1) == 0)
      {
        DWORD2(v280) = 0;
        LOBYTE(v284) = 0;
        HIDWORD(v284) = 1;
        v282 = 0;
        v283 = 0;
        v281 = 0;
        *&v280 = &unk_2868646F8;
        v285 = __src;
        llvm::raw_ostream::SetBufferAndMode(&v280, 0, 0, 0);
        v247 = v117;
        mlir::Attribute::print(&v247, &v280);
        llvm::raw_ostream::~raw_ostream(&v280);
        v139 = __src[1];
        if (__src[1] >= v272[0])
        {
          v141 = __src[0];
          v142 = (__src[1] - __src[0]);
          v143 = __src[1] - __src[0] + 1;
          if (v143 < 0)
          {
            goto LABEL_320;
          }

          v144 = v272[0] - __src[0];
          if (2 * (v272[0] - __src[0]) > v143)
          {
            v143 = 2 * v144;
          }

          if (v144 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v145 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v145 = v143;
          }

          if (v145)
          {
            operator new();
          }

          v146 = __src[1] - __src[0];
          *v142 = 0;
          v140 = v142 + 1;
          memcpy(0, v141, v146);
          __src[0] = 0;
          __src[1] = v142 + 1;
          v272[0] = 0;
          if (v141)
          {
            operator delete(v141);
          }
        }

        else
        {
          *__src[1] = 0;
          v140 = v139 + 1;
        }

        v137 = 0;
        __src[1] = v140;
        goto LABEL_193;
      }
    }

    v137 = 1;
LABEL_193:
    v125 = __src[1];
    goto LABEL_194;
  }

  v115 = 0;
LABEL_209:
  v156 = v258;
  v157 = v259;
  if (v258 == v259)
  {
LABEL_278:
    v202 = v244[0];
    if (v244[0])
    {
      v203 = v244[1];
      v204 = v244[0];
      if (v244[1] != v244[0])
      {
        v205 = v244[1];
        do
        {
          v207 = *(v205 - 3);
          v205 -= 24;
          v206 = v207;
          if (v207)
          {
            *(v203 - 2) = v206;
            operator delete(v206);
          }

          v203 = v205;
        }

        while (v205 != v202);
        v204 = v244[0];
      }

      v244[1] = v202;
      operator delete(v204);
    }

    if (v242[1])
    {
      *&v243 = v242[1];
      operator delete(v242[1]);
    }

    if (__s1[0])
    {
      __s1[1] = __s1[0];
      operator delete(__s1[0]);
    }

    v208 = v272[4];
    if (v272[4])
    {
      v209 = v272[5];
      v210 = v272[4];
      if (v272[5] != v272[4])
      {
        v211 = v272[5];
        do
        {
          v213 = *(v211 - 3);
          v211 -= 24;
          v212 = v213;
          if (v213)
          {
            *(v209 - 2) = v212;
            operator delete(v212);
          }

          v209 = v211;
        }

        while (v211 != v208);
        v210 = v272[4];
      }

      v272[5] = v208;
      operator delete(v210);
    }

    if (v272[1])
    {
      v272[2] = v272[1];
      operator delete(v272[1]);
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    memset(&v272[1], 0, 56);
    v273 = 1;
    operator new();
  }

  v228 = v259;
  while (1)
  {
    v158 = v156;
    v159 = *v156++;
    v160 = *(v159 + 16);
    if (v156 != v157)
    {
      do
      {
        if (*(*v156 + 16) != v160)
        {
          goto LABEL_216;
        }

        ++v156;
      }

      while (v156 != v157);
      v156 = v157;
    }

LABEL_216:
    if (v156 != v158)
    {
      break;
    }

    v161 = v115;
LABEL_211:
    v115 = v161;
    v157 = v228;
    if (v156 == v228)
    {
      goto LABEL_278;
    }
  }

  while (1)
  {
    v162 = *v158;
    v163 = (**v158 & 0xFFFFFFFFFFFFFFF8);
    v164 = *v163;
    {
      mlir::writeBytecodeToFile();
    }

    v165 = (v164 + 72);
    v166 = *(v164 + 96);
    if ((v166 & 2) == 0)
    {
      v165 = *v165;
    }

    if (((*(v166 & 0xFFFFFFFFFFFFFFF8))(v165, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v167 = *v163;
      {
        mlir::writeBytecodeToFile();
      }

      v168 = (v167 + 72);
      v169 = *(v167 + 96);
      if ((v169 & 2) == 0)
      {
        v168 = *v168;
      }

      if (!(*(v169 & 0xFFFFFFFFFFFFFFF8))(v168, mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }
    }

    DWORD2(v280) = 0;
    LOBYTE(v284) = 0;
    HIDWORD(v284) = 1;
    v282 = 0;
    v283 = 0;
    v281 = 0;
    *&v280 = &unk_2868646F8;
    v285 = __src;
    llvm::raw_ostream::SetBufferAndMode(&v280, 0, 0, 0);
    v235 = v163;
    mlir::Type::print(&v235, &v280);
    llvm::raw_ostream::~raw_ostream(&v280);
    v170 = __src[1];
    if (__src[1] >= v272[0])
    {
      v172 = __src[0];
      v173 = (__src[1] - __src[0]);
      v174 = __src[1] - __src[0] + 1;
      if (v174 < 0)
      {
        goto LABEL_320;
      }

      v175 = v272[0] - __src[0];
      if (2 * (v272[0] - __src[0]) > v174)
      {
        v174 = 2 * v175;
      }

      if (v175 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v176 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v176 = v174;
      }

      if (v176)
      {
        operator new();
      }

      v184 = __src[1] - __src[0];
      *v173 = 0;
      v171 = v173 + 1;
      memcpy(0, v172, v184);
      __src[0] = 0;
      __src[1] = v173 + 1;
      v272[0] = 0;
      if (v172)
      {
        operator delete(v172);
      }
    }

    else
    {
      *__src[1] = 0;
      v171 = v170 + 1;
    }

    v183 = 0;
    __src[1] = v171;
LABEL_264:
    v161 = v272[7] + v171 - __src[0];
    v193 = v183 | (2 * (v161 - v115));
    if (v193 > 0x7F)
    {
    }

    else
    {
      v194 = (2 * v193) | 1;
      v195 = __s1[1];
      if (__s1[1] >= v242[0])
      {
        v196 = __s1[0];
        v197 = (__s1[1] - __s1[0]);
        v198 = __s1[1] - __s1[0] + 1;
        if (v198 < 0)
        {
          goto LABEL_320;
        }

        v199 = v242[0] - __s1[0];
        if (2 * (v242[0] - __s1[0]) > v198)
        {
          v198 = 2 * v199;
        }

        if (v199 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v200 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v200 = v198;
        }

        if (v200)
        {
          operator new();
        }

        v201 = __s1[1] - __s1[0];
        *v197 = v194;
        memcpy(0, v196, v201);
        __s1[0] = 0;
        __s1[1] = v197 + 1;
        v242[0] = 0;
        if (v196)
        {
          operator delete(v196);
        }

        __s1[1] = v197 + 1;
      }

      else
      {
        *__s1[1] = v194;
        __s1[1] = v195 + 1;
      }
    }

    ++v158;
    v115 = v161;
    if (v158 == v156)
    {
      goto LABEL_211;
    }
  }

  v177 = *v260;
  v235 = &unk_286864648;
  v236 = v177;
  v237 = __src;
  v238 = v224;
  v239 = &v248;
  v240 = v260 + 16;
  v178 = *(v260 + 128);
  if (v178)
  {
    v179 = *(v260 + 120);
    v180 = 8 * v178;
    while (1)
    {
      v181 = *v179;
      LOBYTE(v280) = 0;
      LOBYTE(v281) = 0;
      if ((*(*v181 + 16))(v181, v163, &v280, &v235))
      {
        break;
      }

      ++v179;
      v180 -= 8;
      if (!v180)
      {
        goto LABEL_244;
      }
    }
  }

  else
  {
LABEL_244:
    v182 = *(v162[2] + 24);
    if (!v182 || ((*(*v182 + 40))(v182, v163, &v235) & 1) == 0)
    {
      DWORD2(v280) = 0;
      LOBYTE(v284) = 0;
      HIDWORD(v284) = 1;
      v282 = 0;
      v283 = 0;
      v281 = 0;
      *&v280 = &unk_2868646F8;
      v285 = __src;
      llvm::raw_ostream::SetBufferAndMode(&v280, 0, 0, 0);
      v247 = v163;
      mlir::Type::print(&v247, &v280);
      llvm::raw_ostream::~raw_ostream(&v280);
      v185 = __src[1];
      if (__src[1] >= v272[0])
      {
        v187 = __src[0];
        v188 = (__src[1] - __src[0]);
        v189 = __src[1] - __src[0] + 1;
        if (v189 < 0)
        {
          goto LABEL_320;
        }

        v190 = v272[0] - __src[0];
        if (2 * (v272[0] - __src[0]) > v189)
        {
          v189 = 2 * v190;
        }

        if (v190 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v191 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v191 = v189;
        }

        if (v191)
        {
          operator new();
        }

        v192 = __src[1] - __src[0];
        *v188 = 0;
        v186 = v188 + 1;
        memcpy(0, v187, v192);
        __src[0] = 0;
        __src[1] = v188 + 1;
        v272[0] = 0;
        if (v187)
        {
          operator delete(v187);
        }
      }

      else
      {
        *__src[1] = 0;
        v186 = v185 + 1;
      }

      v183 = 0;
      __src[1] = v186;
      goto LABEL_263;
    }
  }

  v183 = 1;
LABEL_263:
  v171 = __src[1];
  goto LABEL_264;
}

char *anonymous namespace::EncodingEmitter::emitVarInt(char *result, unint64_t a2)
{
  if (a2 > 0x7F)
  {
  }

  else
  {
    v2 = (2 * a2) | 1;
    v4 = *(result + 1);
    v3 = *(result + 2);
    if (v4 >= v3)
    {
      v5 = *result;
      v6 = &v4[-*result];
      v7 = (v6 + 1);
      if ((v6 + 1) < 0)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v8 = v3 - v5;
      if (2 * v8 > v7)
      {
        v7 = 2 * v8;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      v10 = result;
      if (v9)
      {
        operator new();
      }

      *v6 = v2;
      memcpy(0, v5, v6);
      *v10 = 0;
      *(v10 + 1) = v6 + 1;
      *(v10 + 2) = 0;
      if (v5)
      {
        operator delete(v5);
      }

      result = v10;
      *(v10 + 1) = v6 + 1;
    }

    else
    {
      *v4 = v2;
      *(result + 1) = v4 + 1;
    }
  }

  return result;
}

void anonymous namespace::EncodingEmitter::emitNulTerminatedString(uint64_t a1, char *__src, int64_t a3)
{
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, *(a1 + 8), __src, &__src[a3], a3);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 < v4)
  {
    *v5 = 0;
    v6 = v5 + 1;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = &v5[-*a1];
  v9 = (v8 + 1);
  if ((v8 + 1) < 0)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v4 - v7;
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    operator new();
  }

  v12 = &v5[-*a1];
  *v8 = 0;
  v6 = v8 + 1;
  memcpy(0, v7, v12);
  *a1 = 0;
  *(a1 + 8) = v8 + 1;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

char *std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v23 = &__dst[a5];
      v24 = (v9 - a5);
      v25 = *(a1 + 8);
      if (v9 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_55;
        }

        v24 += a5 & 0x7FFFFFFFFFFFFFE0;
        v25 = (v9 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v26 = (v9 + 16);
        v27 = (v9 + 16 - a5);
        v28 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v29 = *v27;
          *(v26 - 1) = *(v27 - 1);
          *v26 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 32;
        }

        while (v28);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_55:
          do
          {
            v30 = *v24++;
            *v25++ = v30;
          }

          while (v24 != v9);
        }
      }

      *(a1 + 8) = v25;
      if (v9 != v23)
      {
        v31 = __src;
        memmove(v23, __dst, v9 - v23);
        __src = v31;
      }

      v32 = v5;
      v33 = __src;
      v34 = a5;
      goto LABEL_50;
    }

    v16 = &__src[v15];
    if (&__src[v15] == a4)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v17 = &__dst[a4] - __src - v9;
      if (v17 < 0x20)
      {
        v18 = *(a1 + 8);
      }

      else
      {
        v18 = *(a1 + 8);
        if ((__dst - __src) >= 0x20)
        {
          v16 += v17 & 0xFFFFFFFFFFFFFFE0;
          v18 = (v9 + (v17 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &__src[v9 + 16 - __dst];
          v21 = v17 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v20;
            *(v19 - 1) = *(v20 - 1);
            *v19 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 32;
          }

          while (v21);
          if (v17 == (v17 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_34;
          }
        }
      }

      do
      {
        v39 = *v16++;
        *v18++ = v39;
      }

      while (v16 != a4);
    }

LABEL_34:
    *(a1 + 8) = v18;
    if (v15 < 1)
    {
      return v5;
    }

    v40 = &__dst[a5];
    v41 = &v18[-a5];
    if (&v18[-a5] >= v9)
    {
      v44 = v18;
    }

    else
    {
      v42 = v9 + a5 - v18;
      v43 = v42 >= 0x20 && a5 > 0x1F;
      v44 = v18;
      if (!v43)
      {
        goto LABEL_56;
      }

      v41 += v42 & 0xFFFFFFFFFFFFFFE0;
      v44 = &v18[v42 & 0xFFFFFFFFFFFFFFE0];
      v45 = v18 + 16;
      v46 = &v18[-a5 + 16];
      v47 = v42 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 = *v46;
        *(v45 - 1) = *(v46 - 1);
        *v45 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 32;
      }

      while (v47);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_56:
        do
        {
          v49 = *v41++;
          *v44++ = v49;
        }

        while (v41 != v9);
      }
    }

    *(a1 + 8) = v44;
    if (v18 != v40)
    {
      v50 = __src;
      memmove(v40, __dst, v18 - v40);
      __src = v50;
    }

    v32 = v5;
    v33 = __src;
    v34 = v9 - v5;
LABEL_50:
    memmove(v32, v33, v34);
    return v5;
  }

  v10 = *a1;
  v11 = v9 - *a1 + a5;
  if (v11 < 0)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = (__dst - v10);
  v13 = v8 - v10;
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    operator new();
  }

  v35 = (__dst - v10);
  memcpy(v12, __src, a5);
  v36 = &v12[a5];
  v37 = v9 - v5;
  memcpy(v36, v5, v9 - v5);
  *(a1 + 8) = v5;
  v38 = &v12[v10 - v5];
  memcpy(v38, v10, v35);
  *a1 = v38;
  *(a1 + 8) = &v36[v37];
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v12;
}

char *anonymous namespace::EncodingEmitter::emitMultiByteVarInt(void *a1, unint64_t a2)
{
  v3 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (!(a2 >> 14))
  {
    v13 = &v17 + 2;
    v15 = 2;
LABEL_29:
    v17 = ((2 * a2) | 1) << (v15 - 1);
    v14 = a1[1];
    return std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, v14, &v17, v13, v15);
  }

  if (a2 < 0x200000)
  {
    v13 = &v17 + 3;
    v15 = 3;
    goto LABEL_29;
  }

  if (!(a2 >> 28))
  {
    v13 = &v17 + 4;
    v15 = 4;
    goto LABEL_29;
  }

  if (!(a2 >> 35))
  {
    v13 = &v17 + 5;
    v15 = 5;
    goto LABEL_29;
  }

  if (!(a2 >> 42))
  {
    v13 = &v17 + 6;
    v15 = 6;
    goto LABEL_29;
  }

  if (!(a2 >> 49))
  {
    v13 = &v17 + 7;
    v15 = 7;
    goto LABEL_29;
  }

  if (!HIBYTE(a2))
  {
    v13 = &v18;
    v15 = 8;
    goto LABEL_29;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = &v5[-*a1];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*a1];
    *v8 = 0;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v3 = 0;
    v3[1] = v8 + 1;
    v3[2] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = 0;
    v6 = v5 + 1;
  }

  v3[1] = v6;
  v17 = a2;
  v13 = &v18;
  a1 = v3;
  v14 = v6;
  v15 = 8;
  return std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>(a1, v14, &v17, v13, v15);
}

uint64_t anonymous namespace::anonymous namespace::StringSectionBuilder::insert(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(a2, a3);
  v7 = *(a1 + 32);
  *&v12 = a2;
  *(&v12 + 1) = __PAIR64__(HashValue, v3);
  v13 = v7;
  v15 = v12;
  v16 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::try_emplace<unsigned int>(a1, &v15, &v16, &v17);
  if (v18 != 1)
  {
    return *(*(a1 + 24) + 24 * *(v17 + 16) + 16);
  }

  v8 = *(a1 + 32);
  *(v17 + 16) = v8;
  v14 = &v13;
  *&v15 = &v12;
  if (v8 >= *(a1 + 36))
  {
    llvm::SmallVectorTemplateBase<std::pair<llvm::CachedHashStringRef,unsigned long>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::CachedHashStringRef&&>,std::tuple<unsigned long &&>>(a1 + 24, &std::piecewise_construct, &v15, &v14);
    v10 = *(a1 + 32);
  }

  else
  {
    v9 = *(a1 + 24) + 24 * v8;
    *v9 = v12;
    *(v9 + 16) = v13;
    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

  return *(*(a1 + 24) + 24 * v10 - 8);
}

void anonymous namespace::EncodingEmitter::emitSection(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = &v6[-*a1];
  v8 = *(a1 + 16);
  if (v6 >= v8)
  {
    v10 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v8 - v5;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    *v7 = a2;
    v9 = v7 + 1;
    memcpy(0, v5, v7);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v6 = a2;
    v9 = v6 + 1;
  }

  *(a1 + 8) = v9;
  v13 = *(a3 + 80);
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v13 < 2)
  {
LABEL_16:
    if (v14 == v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (((*(a1 + 72) + v15 - v14) & (*(a3 + 80) - 1)) != 0)
  {
    v7[*a1] |= 0x80u;
    v14 = *a1;
    v15 = *(a1 + 8);
    goto LABEL_16;
  }

  v21 = *(a1 + 80);
  if (v21 <= v13)
  {
    v21 = *(a3 + 80);
  }

  *(a1 + 80) = v21;
  if (v14 != v15)
  {
LABEL_17:
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(a1 + 48, a1);
  }

LABEL_18:
  v16 = *(a3 + 48);
  for (i = *(a3 + 56); v16 != i; v16 += 24)
  {
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(a1 + 48, v16);
  }

  std::vector<llvm::ArrayRef<unsigned char>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<llvm::ArrayRef<unsigned char>*>,std::__wrap_iter<llvm::ArrayRef<unsigned char>*>>(a1 + 24, *(a1 + 32), *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 4);
  *(a1 + 72) += *(a3 + 72);
  if (*a3 != *(a3 + 8))
  {
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(a1 + 48, a3);
    v18 = *(a1 + 56);
    v19 = *(v18 - 24);
    v20 = *(v18 - 16) - v19;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*(v9 + 12))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*(v9 + 12))
    {
      goto LABEL_7;
    }

LABEL_6:
    if (*v9 == -1)
    {
LABEL_8:
      *v9 = *a2;
      *(v9 + 16) = *a3;
      v10 = 1;
      goto LABEL_9;
    }

LABEL_7:
    --*(a1 + 12);
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = 0;
    v5 = *a1;
    v19 = xmmword_25736EE40;
    v20 = xmmword_25736B6D0;
    v6 = v3 - 1;
    v7 = 1;
    v8 = *(a2 + 12) & (v3 - 1);
    v9 = v5 + 24 * v8;
    if (*(a2 + 12) != *(v9 + 12))
    {
      goto LABEL_12;
    }

LABEL_3:
    v10 = *a2;
    if (*v9 == -2)
    {
      if (v10 != -2)
      {
        goto LABEL_12;
      }
    }

    else if (*v9 == -1)
    {
      if (v10 != -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = *(a2 + 8);
      if (v11 != *(v9 + 8) || v11 && (v12 = a2, v13 = a3, v14 = memcmp(v10, *v9, v11), a2 = v12, a3 = v13, v14))
      {
LABEL_12:
        while (1)
        {
          v15 = a2;
          v16 = a3;
          if (llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(v9, &v20))
          {
            break;
          }

          if ((llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(v9, &v19) & (v4 == 0)) != 0)
          {
            v4 = v9;
          }

          v17 = v8 + v7++;
          a2 = v15;
          a3 = v16;
          v8 = v17 & v6;
          v9 = v5 + 24 * (v17 & v6);
          if (*(v15 + 12) == *(v9 + 12))
          {
            goto LABEL_3;
          }
        }

        result = 0;
        if (v4)
        {
          v9 = v4;
        }

        a3 = v16;
        goto LABEL_18;
      }
    }

    result = 1;
LABEL_18:
    *a3 = v9;
    return result;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::DenseMapInfo<llvm::CachedHashStringRef,void>::isEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v3 = *a1;
  v5 = *a2;
  if (v5 == -2)
  {
    return v3 == -2;
  }

  if (v5 == -1)
  {
    return v3 == -1;
  }

  v7 = *(a1 + 8);
  if (v7 != *(a2 + 8))
  {
    return 0;
  }

  if (v7)
  {
    return memcmp(v3, v5, v7) == 0;
  }

  return 1;
}

_OWORD *llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::grow(uint64_t a1, int a2)
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
    if (v10)
    {
      v11 = 24 * v10 - 24;
      if (v11 >= 0x18)
      {
        v16 = v11 / 0x18 + 1;
        v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
        v17 = result;
        v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *v17 = xmmword_25736B6D0;
          *(v17 + 24) = xmmword_25736B6D0;
          v17 += 3;
          v18 -= 2;
        }

        while (v18);
        if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = result;
      }

      v19 = (result + 24 * v10);
      do
      {
        *v12 = xmmword_25736B6D0;
        v12 = (v12 + 24);
      }

      while (v12 != v19);
    }

LABEL_16:
    v20 = 3 * v3;
    if (!v3)
    {
LABEL_25:
      llvm::deallocate_buffer(v4, (8 * v20));
    }

    v21 = 24 * v3;
    v22 = v4;
    while (1)
    {
      v24 = *(v22 + 12);
      if (v24 != 1)
      {
        break;
      }

      if (*v22 != -2)
      {
        goto LABEL_19;
      }

LABEL_20:
      v22 += 24;
      v21 -= 24;
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    if (!v24 && *v22 == -1)
    {
      goto LABEL_20;
    }

LABEL_19:
    v29 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>,llvm::CachedHashStringRef,unsigned int,llvm::DenseMapInfo<llvm::CachedHashStringRef,void>,llvm::detail::DenseMapPair<llvm::CachedHashStringRef,unsigned int>>::LookupBucketFor<llvm::CachedHashStringRef>(a1, v22, &v29);
    v23 = v29;
    *v29 = *v22;
    *(v23 + 4) = *(v22 + 16);
    ++*(a1 + 8);
    goto LABEL_20;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_29:
      v28 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 = (v15 + 24);
      }

      while (v15 != v28);
      return result;
    }

    v25 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v25 & 0x1FFFFFFFFFFFFFFELL));
    v26 = result;
    v27 = v25 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v26 = xmmword_25736B6D0;
      *(v26 + 24) = xmmword_25736B6D0;
      v26 += 3;
      v27 -= 2;
    }

    while (v27);
    if (v25 != (v25 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<llvm::CachedHashStringRef,unsigned long>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<llvm::CachedHashStringRef&&>,std::tuple<unsigned long &&>>(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t **a4)
{
  v4 = *a4;
  v10 = **a3;
  v11 = *v4;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (v5 >= *(a1 + 12))
  {
    if (v6 > &v10 || v6 + 24 * v5 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v6 + 24 * *(a1 + 8);
  v8 = v10;
  *(v7 + 16) = v11;
  *v7 = v8;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

char *anonymous namespace::DialectWriter::writeAttribute(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v6 = a2;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2, &v6);
}

void anonymous namespace::DialectWriter::writeOptionalAttribute(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    v15 = a2;
    v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2, &v15);
  }

  else
  {
    v5 = *(a1 + 16);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    if (v7 >= v6)
    {
      v9 = *v5;
      v10 = &v7[-*v5];
      v11 = (v10 + 1);
      if ((v10 + 1) < 0)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v12 = v6 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v14 = &v7[-*v5];
      *v10 = 1;
      v8 = v10 + 1;
      memcpy(0, v9, v14);
      *v5 = 0;
      *(v5 + 8) = v10 + 1;
      *(v5 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = 1;
      v8 = v7 + 1;
    }

    *(v5 + 8) = v8;
  }
}

char *anonymous namespace::DialectWriter::writeType(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v6 = a2;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2 + 72, &v6);
}

char *anonymous namespace::DialectWriter::writeResourceHandle(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(*llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::operator[](*(a1 + 24) + 232, a2) + 24);
}

void anonymous namespace::DialectWriter::writeAPIntWithKnownWidth(char **this, const llvm::APInt *a2)
{
  v3 = *(a2 + 2);
  if (v3 > 8)
  {
    if (v3 > 0x40)
    {
      v15 = a2;
      v16 = llvm::APInt::countLeadingZerosSlowCase(a2);
      if (v3 == v16)
      {
        v17 = 1;
      }

      else
      {
        v17 = ((v3 + ~v16) >> 6) + 1;
      }

      if (*(v15 + 2) >= 0x41u)
      {
        v15 = *v15;
      }

      do
      {
        v18 = *v15;
        v15 = (v15 + 8);
        --v17;
      }

      while (v17);
    }

    else
    {
      v8 = this[2];
      v9 = (2 * *a2) ^ (*a2 >> 63);
    }
  }

  else
  {
    v4 = this[2];
    v5 = *a2;
    v7 = *(v4 + 1);
    v6 = *(v4 + 2);
    if (v7 >= v6)
    {
      v10 = *v4;
      v11 = &v7[-*v4];
      v12 = (v11 + 1);
      if ((v11 + 1) < 0)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = v6 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      v19 = &v7[-*v4];
      *v11 = v5;
      memcpy(0, v10, v19);
      *v4 = 0;
      *(v4 + 1) = v11 + 1;
      *(v4 + 2) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      *(v4 + 1) = v11 + 1;
    }

    else
    {
      *v7 = v5;
      *(v4 + 1) = v7 + 1;
    }
  }
}

uint64_t anonymous namespace::DialectWriter::writeAPFloatWithKnownSemantics(_anonymous_namespace_::DialectWriter *this, const llvm::APFloat *a2)
{
  v3 = (a2 + 8);
  v4 = *(a2 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v3, &v6);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v3, &v6);
  }

  result = (*(*this + 64))(this, &v6);
  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

char *anonymous namespace::DialectWriter::writeOwnedString(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
}

void anonymous namespace::DialectWriter::writeOwnedBlob(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  if (*v6 != v6[1])
  {
    std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>((v6 + 6), v6);
  }
}

void anonymous namespace::DialectWriter::writeOwnedBool(_anonymous_namespace_::DialectWriter *this, char a2)
{
  v2 = *(this + 2);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  if (v4 < v3)
  {
    *v4 = a2;
    v5 = v4 + 1;
LABEL_3:
    *(v2 + 8) = v5;
    return;
  }

  v6 = *v2;
  v7 = &v4[-*v2];
  v8 = (v7 + 1);
  if ((v7 + 1) < 0)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v3 - v6;
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    operator new();
  }

  v11 = &v4[-*v2];
  *v7 = a2;
  v5 = v7 + 1;
  memcpy(0, v6, v11);
  *v2 = 0;
  *(v2 + 8) = v7 + 1;
  *(v2 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(v2 + 8) = v5;
}

uint64_t anonymous namespace::DialectWriter::getDialectVersion(uint64_t a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = *(a1 + 40);
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = *v6 + 8 * v9;
  if (v10 == **(a1 + 40) + 8 * *(*(a1 + 40) + 8))
  {
    return 0;
  }

  else
  {
    return *(*v10 + 8);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
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
    llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v14, v13, &v15);
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
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 3;
    }

    v9 = 0;
    v10 = 1;
    while (v5 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v5 == -8192;
      }

      if (v11)
      {
        v9 = v4;
      }

      v12 = v3 + v10++;
      v3 = v12 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 3;
      }
    }

    if (v9)
    {
      v4 = v9;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v4 = v15;
    ++*(v14 + 8);
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
  v8 = a2[2];
  *v4 = *a2;
  v4[2] = v8;
  v4[3] = 0;
  return v4 + 3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
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
        v7 = (v4 + 32 * v6);
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

void *llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::grow(uint64_t a1, int a2)
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
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *(v13 - 3) = -4096;
        *v13 = -4096;
        v13[1] = -4096;
        *(v13 - 2) = 0;
        v13[2] = 0;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10[1] = -4096;
          v10[2] = 0;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 32 * v26);
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 32 * v26);
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *v16;
          v22[2] = *(v16 + 2);
          *v22 = v23;
          v22[3] = *(v16 + 3);
          ++*(a1 + 8);
        }

        v16 = (v16 + 32);
      }

      while (v16 != (v4 + 32 * v3));
    }

    llvm::deallocate_buffer(v4, (32 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *(v19 - 3) = -4096;
      *v19 = -4096;
      v19[1] = -4096;
      *(v19 - 2) = 0;
      v19[2] = 0;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10[1] = -4096;
        v10[2] = 0;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void anonymous namespace::EncodingEmitter::appendOwnedResult(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    a1[9] += a3;
    v4 = a1[4];
    v5 = a1[5];
    if (v4 >= v5)
    {
      v7 = a1[3];
      v8 = v4 - v7;
      v9 = v8 >> 4;
      v10 = (v8 >> 4) + 1;
      if (v10 >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v11 = v5 - v7;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 60))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = (16 * v9);
      *v13 = a2;
      v13[1] = a3;
      v6 = 16 * v9 + 16;
      memcpy(0, v7, v8);
      a1[3] = 0;
      a1[4] = v6;
      a1[5] = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v4 = a2;
      *(v4 + 1) = a3;
      v6 = (v4 + 16);
    }

    a1[4] = v6;
  }
}

uint64_t std::vector<std::vector<unsigned char>>::emplace_back<std::vector<unsigned char>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = v10 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
  return v5 - 24;
}

void anonymous namespace::EncodingEmitter::alignTo(_anonymous_namespace_::EncodingEmitter *this, unsigned int a2)
{
  if (a2 >= 2)
  {
    v4 = *(this + 1);
    v5 = &v4[*(this + 9)];
    v6 = v5 != *this;
    v7 = &v5[-*this];
    v8 = &v7[-v6] / a2;
    if (v7)
    {
      ++v8;
    }

    for (i = v8 * a2 - v7; i; --i)
    {
      v10 = *(this + 2);
      if (v4 < v10)
      {
        *v4++ = -53;
      }

      else
      {
        v11 = *this;
        v12 = &v4[-*this];
        v13 = (v12 + 1);
        if ((v12 + 1) < 0)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v14 = v10 - v11;
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          operator new();
        }

        v16 = &v4[-*this];
        *v12 = -53;
        v4 = v12 + 1;
        memcpy(0, v11, v16);
        *this = 0;
        *(this + 1) = v12 + 1;
        *(this + 2) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      *(this + 1) = v4;
    }

    v17 = *(this + 20);
    if (v17 <= a2)
    {
      v17 = a2;
    }

    *(this + 20) = v17;
  }
}

char *std::vector<llvm::ArrayRef<unsigned char>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<llvm::ArrayRef<unsigned char>*>,std::__wrap_iter<llvm::ArrayRef<unsigned char>*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v28 = 16 * ((__dst - v10) >> 4);
    v29 = 16 * a5;
    v30 = v28 + 16 * a5;
    v31 = v28;
    do
    {
      v32 = *v6;
      v6 += 16;
      *v31++ = v32;
      v29 -= 16;
    }

    while (v29);
    v33 = *(a1 + 8) - __dst;
    memcpy((v28 + 16 * a5), __dst, v33);
    v34 = v30 + v33;
    *(a1 + 8) = v5;
    v35 = *a1;
    v36 = &v5[-*a1];
    v37 = v28 - v36;
    memcpy((v28 - v36), *a1, v36);
    *a1 = v37;
    *(a1 + 8) = v34;
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }

    return v28;
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 4;
  if (v15 >= a5)
  {
    v14 = 16 * a5;
    v24 = &__dst[16 * a5];
    v25 = (v9 - 16 * a5);
    for (i = *(a1 + 8); v25 < v9; ++i)
    {
      v27 = *v25++;
      *i = v27;
    }

    *(a1 + 8) = i;
    if (v9 != v24)
    {
      memmove(&__dst[16 * a5], __dst, v9 - v24);
    }

    goto LABEL_28;
  }

  v16 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v17 = a5;
    v18 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v18;
    a5 = v17;
  }

  v19 = (v9 + v16);
  *(a1 + 8) = v9 + v16;
  if (v15 >= 1)
  {
    v20 = &v5[16 * a5];
    v21 = v9 + v16;
    if (&v19[-16 * a5] < v9)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -16 * a5];
      do
      {
        *(v22 - v6) = *(v23 - v6);
        v23 += 16;
        v22 += 16;
      }

      while (v23 - v6 < v9);
      v21 = v22 - v6;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[16 * a5], v5, v19 - v20);
    }

    if (v9 != v5)
    {
LABEL_28:
      memmove(v5, v6, v14);
    }
  }

  return v5;
}

const char *llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::StorageUserTrait::IsMutable<Empty>]";
  v6 = 98;
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

void anonymous namespace::RawEmitterOstream::~RawEmitterOstream(_anonymous_namespace_::RawEmitterOstream *this)
{
  llvm::raw_ostream::~raw_ostream(this);

  JUMPOUT(0x259C63180);
}

BOOL anonymous namespace::BytecodeWriter::writeOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = *MEMORY[0x277D85DE8];
  *&v95 = *(a3 + 48);
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 88, &v95);
  v7 = *(a2 + 72);
  v8 = *a2;
  v9 = *(a2 + 8);
  v82 = 0;
  v10 = *(a2 + 16);
  if (v9 >= v10)
  {
    v12 = v9 - v8 + 1;
    if (v12 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = v10 - v8;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    *(v9 - v8) = 0;
    v11 = v9 - v8 + 1;
    memcpy(0, v8, v9 - v8);
    *a2 = 0;
    *(a2 + 8) = v11;
    *(a2 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v9 = 0;
    v11 = (v9 + 1);
  }

  *(a2 + 8) = v11;
  *&v95 = *(a3 + 24);
  v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 40, &v95);
  DiscardableAttrDictionary = mlir::Operation::getDiscardableAttrDictionary(a3);
  if (**(a1 + 984) < 5 || !*(a3 + 47))
  {
    DiscardableAttrDictionary = mlir::Operation::getAttrDictionary(a3);
  }

  if (mlir::DictionaryAttr::size(&DiscardableAttrDictionary))
  {
    v16 = 1;
    v82 = 1;
    *&v95 = DiscardableAttrDictionary;
    v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 40, &v95);
    if (**(a1 + 984) < 5)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v16 = 0;
    if (**(a1 + 984) < 5)
    {
      goto LABEL_46;
    }
  }

  if (!HIBYTE(*(a3 + 44)))
  {
    goto LABEL_46;
  }

  if (*(*(a3 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v32 = *(a3 + 16 * ((*(a3 + 44) >> 23) & 1) + 64);
    if (!v32)
    {
      goto LABEL_46;
    }

    __p = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v100 = 1;
    v33 = *(a1 + 1104);
    v87 = v32;
    v34 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v33, &v87);
    *(a1 + 1024) = 0;
    LODWORD(v88) = 2;
    v92 = 0;
    v93 = 1;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v87 = &unk_2868A3F88;
    v94 = a1 + 1016;
    llvm::raw_ostream::SetBufferAndMode(&v87, 0, 0, 0);
    v35 = *(&v96 + 1);
    v36 = v97;
    while (v35 != v36)
    {
      v37 = *v35;
      v38 = *(v35 + 8);
      v35 += 16;
      llvm::raw_ostream::write(&v87, v37, v38);
    }

    llvm::raw_ostream::write(&v87, v95, *(&v95 + 1) - v95);
    llvm::raw_ostream::~raw_ostream(&v87);
    v26 = __p;
    if (!__p)
    {
      goto LABEL_41;
    }

    v39 = *(&__p + 1);
    v28 = __p;
    if (*(&__p + 1) == __p)
    {
      goto LABEL_40;
    }

    v40 = *(&__p + 1);
    do
    {
      v42 = *(v40 - 24);
      v40 -= 24;
      v41 = v42;
      if (v42)
      {
        *(v39 - 16) = v41;
        operator delete(v41);
      }

      v39 = v40;
    }

    while (v40 != v26);
    goto LABEL_39;
  }

  __p = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v100 = 1;
  v18 = *(a1 + 1120);
  v19 = *v18;
  v84[0] = &unk_286864648;
  v84[1] = v19;
  v84[2] = &v95;
  v85 = *(a1 + 1104);
  v86 = v18 + 2;
  InterfaceFor = mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  v83[0] = a3;
  v83[1] = InterfaceFor;
  mlir::BytecodeOpInterface::writeProperties(v83, v84);
  *(a1 + 1024) = 0;
  LODWORD(v88) = 2;
  v92 = 0;
  v93 = 1;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  v87 = &unk_2868A3F88;
  v94 = a1 + 1016;
  llvm::raw_ostream::SetBufferAndMode(&v87, 0, 0, 0);
  v21 = *(&v96 + 1);
  v22 = v97;
  while (v21 != v22)
  {
    v23 = *v21;
    v24 = *(v21 + 8);
    v21 += 16;
    llvm::raw_ostream::write(&v87, v23, v24);
  }

  llvm::raw_ostream::write(&v87, v95, *(&v95 + 1) - v95);
  llvm::raw_ostream::~raw_ostream(&v87);
  v26 = __p;
  if (!__p)
  {
    goto LABEL_41;
  }

  v27 = *(&__p + 1);
  v28 = __p;
  if (*(&__p + 1) != __p)
  {
    v29 = *(&__p + 1);
    do
    {
      v31 = *(v29 - 24);
      v29 -= 24;
      v30 = v31;
      if (v31)
      {
        *(v27 - 16) = v30;
        operator delete(v30);
      }

      v27 = v29;
    }

    while (v29 != v26);
LABEL_39:
    v28 = __p;
  }

LABEL_40:
  *(&__p + 1) = v26;
  operator delete(v28);
LABEL_41:
  if (*(&v96 + 1))
  {
    *&v97 = *(&v96 + 1);
    operator delete(*(&v96 + 1));
  }

  if (v95)
  {
    *(&v95 + 1) = v95;
    operator delete(v95);
  }

  v16 |= 0x40u;
  v82 = v16;
LABEL_46:
  v43 = *(a3 + 36);
  if (v43)
  {
    v16 |= 2u;
    v82 = v16;
    v44 = *(a3 + 36);
    v45 = (a3 - 16);
    if (!v44)
    {
      v45 = 0;
    }

    v87 = v45;
    v88 = v44;
    mlir::ResultRange::getTypes(&v87, &v95);
    v46 = *(&v95 + 1);
    v47 = *(&v96 + 1);
    if (*(&v95 + 1) != *(&v96 + 1))
    {
      v48 = v95;
      do
      {
        v87 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v48, v46) + 8) & 0xFFFFFFFFFFFFFFF8);
        v49 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 112, &v87);
        ++v46;
      }

      while (v47 != v46);
    }
  }

  if ((*(a3 + 46) & 0x80) != 0)
  {
    v50 = *(a3 + 68);
    if (v50)
    {
      v16 |= 4u;
      v82 = v16;
      if ((*(a3 + 46) & 0x80) != 0)
      {
        v51 = *(a3 + 68);
        if (v51)
        {
          v52 = (*(a3 + 72) + 24);
          do
          {
            v53 = *v52;
            v52 += 4;
            *&v95 = v53;
            v54 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](a1 + 896, &v95);
            --v51;
          }

          while (v51);
        }
      }
    }
  }

  v55 = *(a3 + 40);
  if (v55)
  {
    v82 = v16 | 8;
    mlir::SuccessorRange::SuccessorRange(&v95, a3);
    v56 = *(&v95 + 1);
    if (*(&v95 + 1))
    {
      v57 = (v95 + 24);
      do
      {
        v58 = *v57;
        v57 += 4;
        *&v95 = v58;
        v59 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a1 + 872, &v95);
        --v56;
      }

      while (v56);
    }
  }

  if (**(a1 + 984) >= 3)
  {
    v60 = *(a3 + 36);
    if (v60)
    {
      v61 = a3 - 16;
    }

    else
    {
      v61 = 0;
    }

    mlir::ValueRange::ValueRange(&v95, v61, v60);
  }

  v62 = &v9[v7] - v8;
  v63 = *(a3 + 44);
  v64 = *&v63 & 0x7FFFFFLL;
  if ((v63 & 0x7FFFFF) == 0)
  {
    *(*a2 + v62 - *(a2 + 72)) = v82;
    return 1;
  }

  *(*a2 + v62 - *(a2 + 72)) = v82 | 0x10;
  *&v95 = a3;
  v65 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 64, &v95);
  if (*(*v65 + 5))
  {
    v66 = *(*v65 + 4);
    if (v66 == 1 && **(a1 + 984) >= 2)
    {
      __p = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      v100 = 1;
      v67 = *(a3 + 44);
      v68 = v67 & 0x7FFFFF;
      if ((v67 & 0x7FFFFF) != 0)
      {
        v69 = (((a3 + 16 * ((v67 >> 23) & 1) + ((v67 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 40));
      }

      else
      {
        v69 = 0;
        v68 = 0;
      }

      v87 = a1;
      v88 = &v95;
      v74 = v73;
      if (v73)
      {
      }

      v75 = __p;
      if (__p)
      {
        v76 = *(&__p + 1);
        v77 = __p;
        if (*(&__p + 1) != __p)
        {
          v78 = *(&__p + 1);
          do
          {
            v80 = *(v78 - 24);
            v78 -= 24;
            v79 = v80;
            if (v80)
            {
              *(v76 - 16) = v79;
              operator delete(v79);
            }

            v76 = v78;
          }

          while (v78 != v75);
          v77 = __p;
        }

        *(&__p + 1) = v75;
        operator delete(v77);
      }

      if (*(&v96 + 1))
      {
        *&v97 = *(&v96 + 1);
        operator delete(*(&v96 + 1));
      }

      if (v95)
      {
        *(&v95 + 1) = v95;
        operator delete(v95);
      }

      return (v74 & 1) != 0;
    }
  }

  else
  {
  }

  v70 = *(a3 + 44);
  if ((v70 & 0x7FFFFF) != 0)
  {
    v71 = (((a3 + 16 * ((v70 >> 23) & 1) + ((v70 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a3 + 40));
    *&v95 = a1;
    *(&v95 + 1) = a2;
    {
      return 1;
    }
  }

  else
  {
    *&v95 = a1;
    *(&v95 + 1) = a2;
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::Operation::getDiscardableAttrDictionary(mlir::Operation *this)
{
  v16[6] = *MEMORY[0x277D85DE8];
  if (*(this + 47))
  {
    return *(this + 7);
  }

  Context = mlir::Attribute::getContext((this + 24));
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
  result = mlir::DictionaryAttr::get(Context, v14, v15);
  if (v14 != v16)
  {
    v4 = result;
    free(v14);
    return v4;
  }

  return result;
}

void anonymous namespace::BytecodeWriter::writeUseListOrders(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v155 = *MEMORY[0x277D85DE8];
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v152 = 0;
  v153 = a4;
  v154 = 0;
  if (!a5)
  {
    goto LABEL_183;
  }

  v6 = a5;
  v9 = 0;
  v10 = 0;
LABEL_4:
  v11 = mlir::ValueRange::dereference_iterator(&v153, v10);
  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_3;
  }

  if (!*v12)
  {
    goto LABEL_3;
  }

  v13 = v11;
  __dst = v12[2];
  v14 = **llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](a1 + 64, &__dst);
  v15 = mlir::OpOperand::getOperandNumber(v12) | (v14 << 32);
  __dst = &v150;
  v150 = 0;
  v151 = v15;
  v149 = 0x300000001;
  v16 = **v13;
  if (!v16)
  {
    goto LABEL_3;
  }

  v17 = v5 & 0xFFFFFFFF00000000;
  v18 = 1;
  v19 = 1;
  while (1)
  {
    v20 = *(v16 + 2);
    v21 = *(a1 + 80);
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = *(a1 + 64);
    v23 = v21 - 1;
    v24 = ((v20 >> 4) ^ (v20 >> 9)) & (v21 - 1);
    v25 = (v22 + 16 * v24);
    v26 = *v25;
    if (v20 != *v25)
    {
      break;
    }

LABEL_24:
    v31 = *v25[1];
    v32 = mlir::OpOperand::getOperandNumber(v16) | (v31 << 32);
    v33 = v15 > v32;
    if (v149 >= HIDWORD(v149))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 &= v33;
    v5 = v19 | v17;
    v34 = (__dst + 16 * v149);
    *v34 = v5;
    v34[1] = v32;
    v35 = (v149 + 1);
    LODWORD(v149) = v149 + 1;
    ++v19;
    v16 = *v16;
    v15 = v32;
    if (!v16)
    {
      v46 = __dst;
      if (v18)
      {
        v6 = a5;
        goto LABEL_85;
      }

      v47 = 126 - 2 * __clz(v35);
      if (v35)
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      v143 = v9;
      v46 = __dst;
      v49 = v149;
      v50 = v146;
      v6 = a5;
      if (v146)
      {
        v51 = (v146 - 1) & (37 * v9);
        v52 = (v144 + 72 * v51);
        v53 = *v52;
        if (*v52 == v9)
        {
          goto LABEL_85;
        }

        v54 = 0;
        v55 = 1;
        while (v53 != -1)
        {
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v53 == -2;
          }

          if (v56)
          {
            v54 = v52;
          }

          v57 = v51 + v55++;
          v51 = v57 & (v146 - 1);
          v52 = (v144 + 72 * v51);
          v53 = *v52;
          if (*v52 == v9)
          {
            goto LABEL_85;
          }
        }

        if (v54)
        {
          v58 = v54;
        }

        else
        {
          v58 = v52;
        }
      }

      else
      {
        v58 = 0;
      }

      v147 = v58;
      v59 = __dst;
      if (4 * v145 + 4 >= 3 * v146)
      {
        v50 = 2 * v146;
      }

      else if (v146 + ~v145 - HIDWORD(v145) > v146 >> 3)
      {
        LODWORD(v145) = v145 + 1;
        if (*v58 != -1)
        {
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::grow(&v144, v50);
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>,unsigned int,llvm::SmallVector<unsigned int,12u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,12u>>>::LookupBucketFor<unsigned int>(&v144, &v143, &v147);
      v58 = v147;
      LODWORD(v145) = v145 + 1;
      if (*v147 != -1)
      {
LABEL_69:
        --HIDWORD(v145);
      }

LABEL_70:
      *v58 = v143;
      *(v58 + 1) = v58 + 6;
      v60 = (v58 + 2);
      *(v58 + 2) = 0xC00000000;
      if (v49 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v49)
      {
        v62 = *v60;
        v63 = (v49 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v63 < 0xC)
        {
          v61 = v59;
        }

        else if (v62 >= &v59[16 * v49 - 8] || (v61 = v59, v59 >= &(*v60)->i8[4 * v63 + 4]))
        {
          v64 = v63 + 1;
          v65 = (v63 + 1) & 7;
          if (!v65)
          {
            v65 = 8;
          }

          v66 = v64 - v65;
          v67 = (v62 + 4 * v66);
          v61 = &v59[16 * v66];
          v68 = (v59 + 64);
          v69 = v62 + 1;
          do
          {
            v70 = v68 - 8;
            v71 = vld2q_f64(v70);
            v72 = v68 - 4;
            v73 = vld2q_f64(v72);
            v74 = v68 + 16;
            v76 = vld2q_f64(v68);
            v75 = v68 + 4;
            v77 = vld2q_f64(v75);
            v69[-1] = vuzp1q_s32(v71, v73);
            *v69 = vuzp1q_s32(v76, v77);
            v69 += 2;
            v68 = v74;
            v66 -= 8;
          }

          while (v66);
          v62 = v67;
        }

        do
        {
          v78 = *v61;
          v61 += 16;
          v62->i32[0] = v78;
          v62 = (v62 + 4);
        }

        while (v61 != &v59[16 * v49]);
        v79 = v58[4];
      }

      else
      {
        v79 = 0;
      }

      v58[4] = v79 + v49;
      v46 = __dst;
LABEL_85:
      if (v46 != &v150)
      {
        free(v46);
      }

LABEL_3:
      v9 = v152 + 1;
      v10 = v154 + 1;
      ++v152;
      v154 = v10;
      if (v10 != v6)
      {
        goto LABEL_4;
      }

      v80 = v145;
      if (v145)
      {
        *a3 |= 0x20u;
        if (a5 != 1)
        {
        }

        if (v145)
        {
          if (v146)
          {
            v81 = 72 * v146;
            j = v144;
            while (*j >= 0xFFFFFFFE)
            {
              j = (j + 72);
              v81 -= 72;
              if (!v81)
              {
                goto LABEL_183;
              }
            }
          }

          else
          {
            j = v144;
          }

          if (j != (v144 + 72 * v146))
          {
            v139 = vdupq_n_s64(2uLL);
            v141 = (v144 + 72 * v146);
            while (1)
            {
              v83 = 0;
              v84 = *j;
              __dst = &v150;
              v149 = 0xC00000000;
              if (&__dst == (j + 8))
              {
                v86 = 0;
                goto LABEL_121;
              }

              v85 = *(j + 4);
              v86 = 0;
              if (!*(j + 4))
              {
                goto LABEL_121;
              }

              if (v85 >= 0xD)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              memcpy(&v150, *(j + 1), 4 * *(j + 4));
              LODWORD(v149) = v85;
              v87 = (v85 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v87 < 3)
              {
                break;
              }

              v90 = v87 + 1;
              v88 = (v87 + 1) & 0x7FFFFFFFFFFFFFFCLL;
              v89 = (__dst + 4 * v88);
              v91 = __dst + 8;
              v92 = 0uLL;
              v93 = v88;
              v94 = 0uLL;
              v95 = xmmword_2573686A0;
              do
              {
                v96 = *(v91 - 1);
                v97.i64[0] = v96;
                v97.i64[1] = HIDWORD(v96);
                v98 = v97;
                v97.i64[0] = *v91;
                v97.i64[1] = HIDWORD(*v91);
                v92 = vsubq_s64(v92, vmvnq_s8(vceqq_s64(v95, v98)));
                v94 = vsubq_s64(v94, vmvnq_s8(vceqq_s64(vaddq_s64(v95, v139), v97)));
                v95 = vaddq_s64(v95, vdupq_n_s64(4uLL));
                v91 += 2;
                v93 -= 4;
              }

              while (v93);
              v86 = vaddvq_s64(vaddq_s64(v94, v92));
              if (v90 != v88)
              {
                goto LABEL_117;
              }

LABEL_120:
              v83 = v85 >> 1;
LABEL_121:
              if (a5 != 1)
              {
              }

              if (v86 >= v83)
              {
                if (v149)
                {
                  v122 = __dst;
                  v123 = 4 * v149;
                  do
                  {
                    v124 = *v122;
                    if (v124 > 0x7F)
                    {
                    }

                    else
                    {
                      v125 = (2 * v124) | 1;
                      v127 = *(a2 + 8);
                      v126 = *(a2 + 16);
                      if (v127 >= v126)
                      {
                        v128 = *a2;
                        v129 = &v127[-*a2];
                        v130 = (v129 + 1);
                        if ((v129 + 1) < 0)
                        {
LABEL_192:
                          std::string::__throw_length_error[abi:nn200100]();
                        }

                        v131 = v126 - v128;
                        if (2 * v131 > v130)
                        {
                          v130 = 2 * v131;
                        }

                        if (v131 >= 0x3FFFFFFFFFFFFFFFLL)
                        {
                          v132 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v132 = v130;
                        }

                        if (v132)
                        {
                          operator new();
                        }

                        v133 = &v127[-*a2];
                        *v129 = v125;
                        memcpy(0, v128, v133);
                        *a2 = 0;
                        *(a2 + 8) = v129 + 1;
                        *(a2 + 16) = 0;
                        if (v128)
                        {
                          operator delete(v128);
                        }

                        *(a2 + 8) = v129 + 1;
                      }

                      else
                      {
                        *v127 = v125;
                        *(a2 + 8) = v127 + 1;
                      }
                    }

                    ++v122;
                    v123 -= 4;
                  }

                  while (v123);
                }
              }

              else
              {
                if (v149)
                {
                  v100 = 0;
                  v101 = __dst;
                  for (i = 4 * v149; i; i -= 4)
                  {
                    v103 = v101[v100];
                    if (v100 == v103)
                    {
                      goto LABEL_127;
                    }

                    if (v103 > 0x7F)
                    {
                      if (v100 > 0x7F)
                      {
                        goto LABEL_126;
                      }
                    }

                    else
                    {
                      v104 = (2 * v103) | 1;
                      v106 = *(a2 + 8);
                      v105 = *(a2 + 16);
                      if (v106 >= v105)
                      {
                        v107 = *a2;
                        v108 = &v106[-*a2];
                        v109 = (v108 + 1);
                        if ((v108 + 1) < 0)
                        {
                          goto LABEL_192;
                        }

                        v110 = v105 - v107;
                        if (2 * v110 > v109)
                        {
                          v109 = 2 * v110;
                        }

                        if (v110 >= 0x3FFFFFFFFFFFFFFFLL)
                        {
                          v111 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v111 = v109;
                        }

                        if (v111)
                        {
                          operator new();
                        }

                        v112 = &v106[-*a2];
                        *v108 = v104;
                        memcpy(0, v107, v112);
                        *a2 = 0;
                        *(a2 + 8) = v108 + 1;
                        *(a2 + 16) = 0;
                        if (v107)
                        {
                          operator delete(v107);
                        }

                        *(a2 + 8) = v108 + 1;
                        if (v100 > 0x7F)
                        {
LABEL_126:
                          goto LABEL_127;
                        }
                      }

                      else
                      {
                        *v106 = v104;
                        *(a2 + 8) = v106 + 1;
                        if (v100 > 0x7F)
                        {
                          goto LABEL_126;
                        }
                      }
                    }

                    v113 = (2 * v100) | 1;
                    v115 = *(a2 + 8);
                    v114 = *(a2 + 16);
                    if (v115 >= v114)
                    {
                      v116 = *a2;
                      v117 = &v115[-*a2];
                      v118 = (v117 + 1);
                      if ((v117 + 1) < 0)
                      {
                        goto LABEL_192;
                      }

                      v119 = v114 - v116;
                      if (2 * v119 > v118)
                      {
                        v118 = 2 * v119;
                      }

                      if (v119 >= 0x3FFFFFFFFFFFFFFFLL)
                      {
                        v120 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v120 = v118;
                      }

                      if (v120)
                      {
                        operator new();
                      }

                      v121 = &v115[-*a2];
                      *v117 = v113;
                      memcpy(0, v116, v121);
                      *a2 = 0;
                      *(a2 + 8) = v117 + 1;
                      *(a2 + 16) = 0;
                      if (v116)
                      {
                        operator delete(v116);
                      }

                      *(a2 + 8) = v117 + 1;
                    }

                    else
                    {
                      *v115 = v113;
                      *(a2 + 8) = v115 + 1;
                    }

LABEL_127:
                    ++v100;
                  }
                }
              }

              if (__dst != &v150)
              {
                free(__dst);
              }

              for (j = (j + 72); j != v141; j = (j + 72))
              {
                if (*j < 0xFFFFFFFE)
                {
                  break;
                }
              }

              if (j == v141)
              {
                goto LABEL_183;
              }
            }

            v86 = 0;
            v88 = 0;
            v89 = __dst;
            do
            {
LABEL_117:
              v99 = *v89++;
              if (v88 != v99)
              {
                ++v86;
              }

              ++v88;
            }

            while (v89 != (__dst + 4 * v85));
            goto LABEL_120;
          }
        }
      }

LABEL_183:
      v134 = v144;
      if (v146)
      {
        v135 = 72 * v146;
        v136 = v144 + 24;
        do
        {
          if (*(v136 - 6) <= 0xFFFFFFFD)
          {
            v137 = *(v136 - 2);
            if (v136 != v137)
            {
              free(v137);
            }
          }

          v136 += 72;
          v135 -= 72;
        }

        while (v135);
        v134 = v144;
        v138 = 72 * v146;
      }

      else
      {
        v138 = 0;
      }

      llvm::deallocate_buffer(v134, v138);
    }
  }

  v27 = 0;
  v28 = 1;
  while (v26 != -4096)
  {
    if (v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = v26 == -8192;
    }

    if (v29)
    {
      v27 = v25;
    }

    v30 = v24 + v28++;
    v24 = v30 & v23;
    v25 = (v22 + 16 * (v30 & v23));
    v26 = *v25;
    if (v20 == *v25)
    {
      goto LABEL_24;
    }
  }

  if (v27)
  {
    v25 = v27;
  }

  v36 = *(a1 + 72);
  if (4 * v36 + 4 < 3 * v21)
  {
    if (v21 + ~v36 - *(a1 + 76) > v21 >> 3)
    {
      *(a1 + 72) = v36 + 1;
      if (*v25 == -4096)
      {
LABEL_23:
        *v25 = v20;
        v25[1] = 0;
        goto LABEL_24;
      }

LABEL_22:
      --*(a1 + 76);
      goto LABEL_23;
    }
  }

  else
  {
LABEL_31:
    v21 *= 2;
  }

  llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::grow(a1 + 64, v21);
  v37 = *(a1 + 80);
  if (v37)
  {
    v38 = *(a1 + 64);
    v39 = v37 - 1;
    v40 = (v37 - 1) & ((v20 >> 4) ^ (v20 >> 9));
    v25 = (v38 + 16 * v40);
    v41 = *v25;
    if (v20 != *v25)
    {
      v42 = 0;
      v43 = 1;
      while (v41 != -4096)
      {
        if (v42)
        {
          v44 = 0;
        }

        else
        {
          v44 = v41 == -8192;
        }

        if (v44)
        {
          v42 = v25;
        }

        v45 = v40 + v43++;
        v40 = v45 & v39;
        v25 = (v38 + 16 * (v45 & v39));
        v41 = *v25;
        if (v20 == *v25)
        {
          goto LABEL_44;
        }
      }

      if (v42)
      {
        v25 = v42;
      }
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_44:
  ++*(a1 + 72);
  if (*v25 == -4096)
  {
    goto LABEL_23;
  }

  goto LABEL_22;
}

void *mlir::Operation::getDiscardableAttrs@<X0>(mlir::Operation *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 6);
  if (*(v4 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    result = mlir::DictionaryAttr::getValue((this + 56));
    v8 = result;
    v10 = &result[2 * v14];
    v5 = 0;
    if (!v14)
    {
LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }

    v11 = this + 44;
LABEL_15:
    v15 = v8[1];
    *&v16 = *v8;
    *(&v16 + 1) = v15;
    if (!v11[3])
    {
      result = mlir::NamedAttribute::getName(&v16);
    }

    goto LABEL_17;
  }

  v5 = *(v4 + 96);
  v6 = *(v4 + 104);
  result = mlir::DictionaryAttr::getValue((this + 56));
  v8 = result;
  v10 = &result[2 * v9];
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = this + 44;
  if (!v6)
  {
    goto LABEL_15;
  }

  v12 = 8 * v6;
  while (1)
  {
    v16 = *v8;
    if (*(this + 47))
    {
      break;
    }

    result = mlir::NamedAttribute::getName(&v16);
    v13 = 0;
    while (*(v5 + v13) != result)
    {
      v13 += 8;
      if (v12 == v13)
      {
        goto LABEL_18;
      }
    }

    if (v12 == v13)
    {
      break;
    }

    v8 += 2;
    if (v8 == v10)
    {
      v8 = v10;
      break;
    }
  }

LABEL_18:
  *a2 = v8;
  a2[1] = v10;
  a2[2] = this;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v10;
  a2[6] = v10;
  a2[7] = this;
  a2[8] = v5;
  a2[9] = v6;
  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::NamedAttribute>::append<llvm::filter_iterator_impl<mlir::NamedAttribute const*,mlir::Operation::getDiscardableAttrs(void)::{lambda(mlir::NamedAttribute)#1},std::bidirectional_iterator_tag>,void>(uint64_t result, __int128 **a2, __int128 **a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *a3;
  if (*a2 == *a3)
  {
    v11 = 0;
  }

  else
  {
    v8 = a2[4];
    v9 = a2[1];
    v10 = a2[2];
    v11 = 0;
    if (v8)
    {
      v12 = a2[3];
      v13 = 8 * v8;
      do
      {
        do
        {
          if (++v6 == v9)
          {
            break;
          }

          v29 = *v6;
          if (*(v10 + 47))
          {
            break;
          }

          result = mlir::NamedAttribute::getName(&v29);
          v14 = v13;
          v15 = v12;
          while (*v15 != result)
          {
            v15 = (v15 + 8);
            v14 -= 8;
            if (!v14)
            {
              goto LABEL_10;
            }
          }
        }

        while (v14);
LABEL_10:
        ++v11;
      }

      while (v6 != v7);
    }

    else
    {
      v26 = v6 + 1;
      do
      {
        if (v26 != v9)
        {
          v29 = *v26;
          if (!*(v10 + 47))
          {
            result = mlir::NamedAttribute::getName(&v29);
          }
        }

        ++v11;
        v27 = v26++ == v7;
      }

      while (!v27);
    }
  }

  if (v11 + *(v5 + 8) > *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = *a2;
  v17 = *a3;
  if (*a2 != v17)
  {
    v18 = (*v5 + 16 * *(v5 + 8));
    v19 = a2[4];
    v20 = a2[1];
    v21 = a2[2];
    if (v19)
    {
      v22 = a2[3];
      v23 = 8 * v19;
      do
      {
        *v18 = *v16;
        do
        {
          if (++v16 == v20)
          {
            break;
          }

          v29 = *v16;
          if (*(v21 + 47))
          {
            break;
          }

          result = mlir::NamedAttribute::getName(&v29);
          v24 = v23;
          v25 = v22;
          while (*v25 != result)
          {
            v25 = (v25 + 8);
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_18;
            }
          }
        }

        while (v24);
LABEL_18:
        ++v18;
      }

      while (v16 != v17);
    }

    else
    {
      v28 = v16 + 1;
      do
      {
        *v18 = *(v28 - 1);
        if (v28 != v20)
        {
          v29 = *v28;
          if (!*(v21 + 47))
          {
            result = mlir::NamedAttribute::getName(&v29);
          }
        }

        ++v18;
        v27 = v28++ == v17;
      }

      while (!v27);
    }
  }

  *(v5 + 8) += v11;
  return result;
}

uint64_t anonymous namespace::anonymous namespace::PropertiesSectionBuilder::emit(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v47[5] = *MEMORY[0x277D85DE8];
  v45 = v47;
  v46 = xmmword_2573695B0;
  *__p = 0u;
  v43 = 0u;
  *v40 = 0u;
  v41 = 0u;
  *v39 = 0u;
  v44 = 1;
  DWORD2(v34) = 2;
  v36 = 0;
  v37 = 1;
  memset(v35, 0, sizeof(v35));
  *&v34 = &unk_2868A3F88;
  v38 = &v45;
  llvm::raw_ostream::SetBufferAndMode(&v34, 0, 0, 0);
  v6 = v40[1];
  v7 = v41;
  while (v6 != v7)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v6 += 16;
    llvm::raw_ostream::write(&v34, v8, v9);
  }

  llvm::raw_ostream::write(&v34, v39[0], v39[1] - v39[0]);
  llvm::raw_ostream::~raw_ostream(&v34);
  v10 = __p[0];
  if (__p[0])
  {
    v11 = __p[1];
    v12 = __p[0];
    if (__p[1] != __p[0])
    {
      v13 = __p[1];
      do
      {
        v15 = *(v13 - 3);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 2) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = __p[0];
    }

    __p[1] = v10;
    operator delete(v12);
  }

  if (v40[1])
  {
    *&v41 = v40[1];
    operator delete(v40[1]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  v17 = *a1;
  v16 = *(a1 + 8);
  v18 = v16 - *a1;
  v19 = (0xAAAAAAAAAAAAAAABLL * (v18 >> 3));
  v20 = *(a1 + 16);
  if (v16 >= v20)
  {
    v22 = (v19 + 1);
    if ((v19 + 1) > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v17) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x555555555555555)
    {
      v24 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v25 = (8 * (v18 >> 3));
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    v21 = v25 + 3;
    v26 = v25 - v18;
    memcpy(v25 - v18, v17, v18);
    *a1 = v26;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v16 = 0;
    v16[1] = 0;
    v21 = v16 + 3;
    v16[2] = 0;
  }

  *(a1 + 8) = v21;
  if (*(v21 - 1) - *(v21 - 3) < v46 + a3)
  {
    if (((v46 + a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  std::vector<char>::__insert_with_size[abi:nn200100]<char *,char *>((v21 - 3), *(v21 - 2), v45, v45 + v46, v46);
  std::vector<unsigned char>::__insert_with_size[abi:nn200100]<unsigned char const*,unsigned char const*>((v21 - 3), *(v21 - 2), a2, &a2[a3], a3);
  v27 = *(v21 - 2) - *(v21 - 3);
  *&v34 = *(v21 - 3);
  *(&v34 + 1) = v27;
  v35[0] = v19;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::try_emplace<long long>(a1 + 88, &v34, v35, v39);
  if ((v40[0] & 1) == 0)
  {
    v28 = *(a1 + 8);
    v31 = *(v28 - 24);
    v30 = v28 - 24;
    v29 = v31;
    if (v31)
    {
      *(*(a1 + 8) - 16) = v29;
      operator delete(v29);
    }

    *(a1 + 8) = v30;
  }

  v32 = *(v39[0] + 2);
  if (v45 != v47)
  {
    free(v45);
  }

  return v32;
}

char *std::vector<char>::__insert_with_size[abi:nn200100]<char *,char *>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) < a5)
  {
    v11 = *a1;
    v12 = v10 - *a1 + a5;
    if (v12 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v41 = (__dst - v11);
    memcpy(v13, __src, a5);
    v42 = v10 - v5;
    memcpy(&v13[a5], v5, v42);
    *(a1 + 8) = v5;
    v43 = &v13[v11 - v5];
    memcpy(v43, v11, v41);
    *a1 = v43;
    *(a1 + 8) = &v13[a5 + v42];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if ((v10 - __dst) >= a5)
  {
    v30 = &__dst[a5];
    v31 = (v10 - a5);
    v32 = *(a1 + 8);
    if (v10 >= a5)
    {
      if (a5 <= 0x1F)
      {
        goto LABEL_44;
      }

      v31 += a5 & 0x7FFFFFFFFFFFFFE0;
      v32 = (v10 + (a5 & 0x7FFFFFFFFFFFFFE0));
      v33 = (v10 + 16);
      v34 = (v10 + 16 - a5);
      v35 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
      {
LABEL_44:
        do
        {
          v37 = *v31++;
          *v32++ = v37;
        }

        while (v31 != v10);
      }
    }

    *(a1 + 8) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[a5], __dst, v10 - v30);
    }

    v38 = v5;
    v39 = __src;
    v40 = a5;
    goto LABEL_39;
  }

  v17 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    v18 = a4;
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
    a4 = v18;
  }

  v19 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v20 = v5 + a5;
    v21 = &v19[-a5];
    if (&v19[-a5] >= v10)
    {
      v23 = (v10 + v17);
    }

    else
    {
      v22 = &__src[v10 + a5] - (v5 + a4);
      v23 = (v10 + v17);
      if (v22 < 0x20)
      {
        goto LABEL_45;
      }

      if (a5 <= 0x1F)
      {
        goto LABEL_45;
      }

      v21 += v22 & 0xFFFFFFFFFFFFFFE0;
      v23 = &v19[v22 & 0xFFFFFFFFFFFFFFE0];
      v24 = &a4[v5 + 16];
      v25 = (v24 - __src);
      v26 = (v24 - &__src[a5]);
      v27 = v22 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 32;
      }

      while (v27);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_45:
        do
        {
          v29 = *v21++;
          *v23++ = v29;
        }

        while (v21 < v10);
      }
    }

    *(a1 + 8) = v23;
    if (v19 != v20)
    {
      memmove(v5 + a5, v5, v19 - v20);
    }

    v38 = v5;
    v39 = __src;
    v40 = v10 - v5;
LABEL_39:
    memmove(v38, v39, v40);
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::try_emplace<long long>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 == -1)
      {
LABEL_7:
        *v9 = *a2;
        v9[2] = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(uint64_t *a1, uint64_t a2, char ***a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = *a1;
    v7 = v4 - 1;
    v8 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(*a2, *a2 + *(a2 + 8));
    v9 = *a2;
    v10 = *(a2 + 8);
    if (v9 == -2)
    {
      v11 = 1;
      v12 = (v5 + 24 * v8);
      v13 = *v12;
      if (*v12 == -2)
      {
LABEL_27:
        result = 1;
        goto LABEL_28;
      }

      while (v13 != -1)
      {
        if (v10 != v12[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v13, v10))
        {
          v14 = v8 + v11++;
          v8 = v14 & v7;
          v12 = (v5 + 24 * (v14 & v7));
          v13 = *v12;
          if (*v12 != -2)
          {
            continue;
          }
        }

        goto LABEL_27;
      }

      v16 = 0;
    }

    else
    {
      v16 = 0;
      v18 = 1;
      v12 = (v5 + 24 * v8);
      v19 = *v12;
      if (*v12 != -2)
      {
        goto LABEL_24;
      }

      while (1)
      {
        do
        {
          if (v16)
          {
            v20 = 0;
          }

          else
          {
            v20 = v19 + 2 == 0;
          }

          if (v20)
          {
            v16 = v12;
          }

          v21 = v8 + v18++;
          v8 = v21 & v7;
          v12 = (v5 + 24 * (v21 & v7));
          v19 = *v12;
        }

        while (*v12 == -2);
LABEL_24:
        if (v19 == -1)
        {
          break;
        }

        if (v10 == v12[1] && !memcmp(v9, v19, v10))
        {
          goto LABEL_27;
        }
      }
    }

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (v9 == -1)
    {
      result = 1;
    }

    else
    {
      v12 = v17;
      result = 0;
    }
  }

  else
  {
    v12 = 0;
    result = 0;
  }

LABEL_28:
  *a3 = v12;
  return result;
}

_OWORD *llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::grow(uint64_t a1, int a2)
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
        *v17 = xmmword_25736B6D0;
        *(v17 + 24) = xmmword_25736B6D0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        v20 = 3 * v3;
        if (v3)
        {
          v21 = 24 * v3;
          v22 = v4;
          do
          {
            if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = 0;
              llvm::DenseMapBase<llvm::DenseMap<llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>,llvm::ArrayRef<char>,long long,llvm::DenseMapInfo<llvm::ArrayRef<char>,void>,llvm::detail::DenseMapPair<llvm::ArrayRef<char>,long long>>::LookupBucketFor<llvm::ArrayRef<char>>(a1, v22, &v28);
              v23 = v28;
              *v28 = *v22;
              v23[2] = *(v22 + 16);
              ++*(a1 + 8);
            }

            v22 += 24;
            v21 -= 24;
          }

          while (v21);
        }

        llvm::deallocate_buffer(v4, (8 * v20));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_25736B6D0;
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
LABEL_25:
      v27 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_25736B6D0;
        v15 = (v15 + 24);
      }

      while (v15 != v27);
      return result;
    }

    v24 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v24 & 0x1FFFFFFFFFFFFFFELL));
    v25 = result;
    v26 = v24 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v25 = xmmword_25736B6D0;
      *(v25 + 24) = xmmword_25736B6D0;
      v25 += 3;
      v26 -= 2;
    }

    while (v26);
    if (v24 != (v24 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[167];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 16 * v6;
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 8;
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
      v7 = *a1 + 16 * (v14 & v5);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 8;
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
    llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
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
  *(v7 + 8) = 0;
  return v7 + 8;
}

void *llvm::DenseMap<mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(uint64_t a1, int a2)
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
      v16 = 0;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          LODWORD(v25) = -348639895 * ((v26 >> 47) ^ v26);
          v27 = *(a1 + 16) - 1;
          v28 = v27 & v25;
          v23 = &result[2 * v28];
          v29 = *v23;
          if (v24 != *v23)
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
                v30 = v23;
              }

              v33 = v28 + v31++;
              v28 = v33 & v27;
              v23 = &result[2 * (v33 & v27)];
              v29 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_24;
              }
            }

            if (v30)
            {
              v23 = v30;
            }
          }

LABEL_24:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 8) = ++v16;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 16 * v4;
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
      v5 = *a1 + 16 * (v12 & v3);
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
    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v14, v13, &v15);
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
  *(v5 + 8) = 0;
  return v5 + 8;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::BytecodeWriter::writeUseListOrders(anonymous namespace::EncodingEmitter &,unsigned char &,mlir::ValueRange)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(unint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v82 = *(a2 - 1);
      v83 = *(v8 + 8);
      if (v82 > v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 4);
        *(a2 - 4) = v84;
        *(v8 + 8) = v82;
        *(a2 - 1) = v83;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v101 = *(v99 + 3);
            v102 = *(v99 + 1);
            v99 = v95;
            if (v101 > v102)
            {
              v103 = *v95;
              v104 = v98;
              do
              {
                v105 = v8 + v104;
                *(v105 + 16) = *(v8 + v104);
                *(v105 + 24) = *(v8 + v104 + 8);
                if (!v104)
                {
                  v100 = v8;
                  goto LABEL_126;
                }

                v104 -= 16;
              }

              while (v101 > *(v105 - 8));
              v100 = v8 + v104 + 16;
LABEL_126:
              *v100 = v103;
              *(v100 + 8) = v101;
            }

            v95 = v99 + 4;
            v98 += 16;
          }

          while (v99 + 4 != a2);
        }
      }

      else if (!v97)
      {
        v142 = (v8 + 24);
        do
        {
          v143 = *(v7 + 24);
          v144 = *(v7 + 8);
          v7 = v95;
          if (v143 > v144)
          {
            v145 = *v95;
            v146 = v142;
            do
            {
              v147 = v146;
              *(v146 - 2) = *(v146 - 6);
              v148 = *(v146 - 2);
              v146 -= 2;
              *v147 = v148;
            }

            while (v143 > *(v147 - 4));
            *(v146 - 2) = v145;
            *v146 = v143;
          }

          v95 = (v7 + 16);
          v142 += 2;
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          if (v106 >= v107)
          {
            v109 = (2 * (v107 & 0xFFFFFFFFFFFFFFFLL)) | 1;
            v110 = v8 + 16 * v109;
            if (2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2 < v9)
            {
              v108 = *(v110 + 8) > *(v110 + 24);
              v110 += 16 * v108;
              if (v108)
              {
                v109 = 2 * (v107 & 0xFFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v111 = v8 + 16 * v107;
            v112 = *(v110 + 8);
            v113 = *(v111 + 8);
            if (v112 <= v113)
            {
              v114 = *v111;
              do
              {
                v115 = v111;
                v111 = v110;
                *v115 = *v110;
                *(v115 + 8) = v112;
                if (v106 < v109)
                {
                  break;
                }

                v116 = (2 * v109) | 1;
                v110 = v8 + 16 * v116;
                v117 = 2 * v109 + 2;
                if (v117 < v9)
                {
                  result = *(v110 + 24);
                  v108 = *(v110 + 8) > result;
                  v110 += 16 * v108;
                  if (v108)
                  {
                    v116 = v117;
                  }
                }

                v112 = *(v110 + 8);
                v109 = v116;
              }

              while (v112 <= v113);
              *v111 = v114;
              *(v111 + 8) = v113;
            }
          }

          v108 = v107-- <= 0;
        }

        while (!v108);
        do
        {
          v118 = 0;
          v119 = *v8;
          v120 = *(v8 + 8);
          v121 = v8;
          do
          {
            v125 = v121 + 16 * v118;
            v124 = v125 + 16;
            v126 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 < v9)
            {
              v122 = *(v125 + 24);
              result = *(v125 + 40);
              v123 = v125 + 32;
              if (v122 <= result)
              {
                v118 = v126;
              }

              else
              {
                v124 = v123;
              }
            }

            else
            {
              v118 = v126;
            }

            *v121 = *v124;
            *(v121 + 8) = *(v124 + 8);
            v121 = v124;
          }

          while (v118 <= ((v9 - 2) >> 1));
          if (v124 == a2 - 4)
          {
            *v124 = v119;
            *(v124 + 8) = v120;
          }

          else
          {
            *v124 = *(a2 - 4);
            *(v124 + 8) = *(a2 - 1);
            *(a2 - 4) = v119;
            *(a2 - 1) = v120;
            v127 = (v124 - v8 + 16) >> 4;
            v108 = v127 < 2;
            v128 = v127 - 2;
            if (!v108)
            {
              v129 = v128 >> 1;
              v130 = v8 + 16 * (v128 >> 1);
              v131 = *(v130 + 8);
              v132 = *(v124 + 8);
              if (v131 > v132)
              {
                v133 = *v124;
                do
                {
                  v134 = v124;
                  v124 = v130;
                  *v134 = *v130;
                  *(v134 + 8) = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v8 + 16 * v129;
                  v131 = *(v130 + 8);
                }

                while (v131 > v132);
                *v124 = v133;
                *(v124 + 8) = v132;
              }
            }
          }

          a2 -= 4;
          v108 = v9-- <= 2;
        }

        while (!v108);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v15 = *(v8 + 8);
      v16 = *(v10 + 8);
      if (v15 > v16)
      {
        v17 = *v10;
        if (v11 > v15)
        {
          *v10 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v10 + 8) = v11;
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v17;
        *(v10 + 8) = v15;
        *(v8 + 8) = v16;
        v37 = *(a2 - 1);
        if (v37 > v16)
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v17;
          *(v8 + 8) = v37;
LABEL_37:
          *(a2 - 1) = v16;
        }

LABEL_38:
        --a3;
        v26 = *v8;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 <= v15)
      {
        goto LABEL_38;
      }

      v22 = *v8;
      *v8 = *(a2 - 4);
      *(a2 - 4) = v22;
      *(v8 + 8) = v11;
      *(a2 - 1) = v15;
      v23 = *(v8 + 8);
      v24 = *(v10 + 8);
      if (v23 <= v24)
      {
        goto LABEL_38;
      }

      v25 = *v10;
      *v10 = *v8;
      *v8 = v25;
      *(v10 + 8) = v23;
      *(v8 + 8) = v24;
      --a3;
      v26 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v38 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 24);
        v57 += 16;
      }

      while (v58 > v38);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 4;
          v64 = *(v63 - 1);
          v63 -= 4;
          if (v64 > v38)
          {
            goto LABEL_72;
          }
        }

        v61 = v63;
        v8 = v59;
      }

      else
      {
        do
        {
          v61 = v60 - 4;
          v62 = *(v60 - 1);
          v60 -= 4;
        }

        while (v62 <= v38);
LABEL_72:
        v8 = v59;
        if (v59 < v61)
        {
          v65 = v61;
          do
          {
            v66 = *v8;
            *v8 = *v65;
            *v65 = v66;
            v67 = *(v8 + 8);
            *(v8 + 8) = *(v65 + 8);
            *(v65 + 8) = v67;
            do
            {
              v68 = *(v8 + 24);
              v8 += 16;
            }

            while (v68 > v38);
            do
            {
              v69 = *(v65 - 8);
              v65 -= 16;
            }

            while (v69 <= v38);
          }

          while (v8 < v65);
        }
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v26;
      *(v8 - 8) = v38;
      if (v59 < v61)
      {
        goto LABEL_83;
      }

      if (result)
      {
        a2 = (v8 - 16);
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_83:
        a4 = 0;
      }
    }

    else
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 4);
          *(a2 - 4) = v18;
          *(v10 + 8) = v11;
          *(a2 - 1) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 <= v12)
        {
          *v8 = *v10;
          *v10 = v14;
          *(v8 + 8) = v12;
          *(v10 + 8) = v13;
          v27 = *(a2 - 1);
          if (v27 <= v13)
          {
            goto LABEL_29;
          }

          *v10 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v10 + 8) = v27;
        }

        else
        {
          *v8 = *(a2 - 4);
          *(a2 - 4) = v14;
          *(v8 + 8) = v11;
        }

        *(a2 - 1) = v13;
      }

LABEL_29:
      v28 = (v10 - 16);
      v29 = *(v10 - 8);
      v30 = *(v8 + 24);
      v31 = *(a2 - 3);
      if (v29 <= v30)
      {
        if (v31 > v29)
        {
          v33 = *v28;
          *v28 = *(a2 - 8);
          *(a2 - 8) = v33;
          *(v10 - 8) = v31;
          *(a2 - 3) = v29;
          v34 = *(v10 - 8);
          v35 = *(v8 + 24);
          if (v34 > v35)
          {
            v36 = *(v8 + 16);
            *(v8 + 16) = *v28;
            *v28 = v36;
            *(v8 + 24) = v34;
            *(v10 - 8) = v35;
          }
        }
      }

      else
      {
        v32 = *(v8 + 16);
        if (v31 <= v29)
        {
          *(v8 + 16) = *v28;
          *v28 = v32;
          *(v8 + 24) = v29;
          *(v10 - 8) = v30;
          v39 = *(a2 - 3);
          if (v39 <= v30)
          {
            goto LABEL_43;
          }

          *v28 = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v10 - 8) = v39;
        }

        else
        {
          *(v8 + 16) = *(a2 - 8);
          *(a2 - 8) = v32;
          *(v8 + 24) = v31;
        }

        *(a2 - 3) = v30;
      }

LABEL_43:
      v40 = *(v10 + 24);
      v41 = *(v8 + 40);
      v42 = *(a2 - 5);
      if (v40 <= v41)
      {
        if (v42 > v40)
        {
          v44 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v44;
          *(v10 + 24) = v42;
          *(a2 - 5) = v40;
          v45 = *(v10 + 24);
          v46 = *(v8 + 40);
          if (v45 > v46)
          {
            v47 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v47;
            *(v8 + 40) = v45;
            *(v10 + 24) = v46;
          }
        }
      }

      else
      {
        v43 = *(v8 + 32);
        if (v42 <= v40)
        {
          *(v8 + 32) = *(v10 + 16);
          *(v10 + 16) = v43;
          *(v8 + 40) = v40;
          *(v10 + 24) = v41;
          v48 = *(a2 - 5);
          if (v48 <= v41)
          {
            goto LABEL_52;
          }

          *(v10 + 16) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v10 + 24) = v48;
        }

        else
        {
          *(v8 + 32) = *(a2 - 12);
          *(a2 - 12) = v43;
          *(v8 + 40) = v42;
        }

        *(a2 - 5) = v41;
      }

LABEL_52:
      v49 = *(v10 + 8);
      v50 = *(v10 - 8);
      v51 = *(v10 + 24);
      if (v49 <= v50)
      {
        v52 = *v10;
        if (v51 <= v49)
        {
          v50 = *(v10 + 8);
        }

        else
        {
          v53 = *(v10 + 16);
          *v10 = v53;
          *(v10 + 16) = v52;
          *(v10 + 8) = v51;
          *(v10 + 24) = v49;
          if (v51 <= v50)
          {
            v50 = v51;
            v52 = v53;
          }

          else
          {
            v52 = *v28;
            *v28 = v53;
            *v10 = v52;
            *(v10 - 8) = v51;
            *(v10 + 8) = v50;
          }
        }
      }

      else
      {
        v52 = *v28;
        if (v51 <= v49)
        {
          *v28 = *v10;
          *v10 = v52;
          *(v10 - 8) = v49;
          *(v10 + 8) = v50;
          if (v51 > v50)
          {
            v54 = *(v10 + 16);
            *v10 = v54;
            *(v10 + 16) = v52;
            *(v10 + 8) = v51;
            *(v10 + 24) = v50;
            v50 = v51;
            v52 = v54;
          }
        }

        else
        {
          *v28 = *(v10 + 16);
          *(v10 + 16) = v52;
          *(v10 - 8) = v51;
          *(v10 + 24) = v50;
          v52 = *v10;
          v50 = v49;
        }
      }

      v55 = *v8;
      *v8 = v52;
      *v10 = v55;
      v56 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v10 + 8) = v56;
      --a3;
      v26 = *v8;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_63:
      v38 = *(v8 + 8);
      if (*(v8 - 8) > v38)
      {
        goto LABEL_64;
      }

      if (v38 <= *(a2 - 1))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v38 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v38 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 4;
          v77 = *(v76 - 1);
          v76 -= 4;
        }

        while (v38 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 1);
        *(v75 + 1) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v38 <= v80);
        do
        {
          v81 = *(v75 - 1);
          v75 -= 4;
        }

        while (v38 > v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v26;
      *(v8 - 8) = v38;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 <= v91)
      {
        if (v93 > v90)
        {
          v139 = *(v8 + 16);
          v140 = *(v8 + 32);
          *(v8 + 16) = v140;
          *(v8 + 32) = v139;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 > v91)
          {
            v141 = *v8;
            *v8 = v140;
            *(v8 + 16) = v141;
            goto LABEL_184;
          }

LABEL_185:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_183;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 > v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_183:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_184:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_185;
        }
      }

      v150 = *(a2 - 1);
      if (v150 > v93)
      {
        v151 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 4);
        *(a2 - 4) = v151;
        *(v8 + 40) = v150;
        *(a2 - 1) = v93;
        v152 = *(v8 + 40);
        v153 = *(v8 + 24);
        if (v152 > v153)
        {
          v154 = *(v8 + 16);
          v155 = *(v8 + 32);
          *(v8 + 16) = v155;
          *(v8 + 32) = v154;
          *(v8 + 24) = v152;
          *(v8 + 40) = v153;
          v156 = *(v8 + 8);
          if (v152 > v156)
          {
            v157 = *v8;
            *v8 = v155;
            *(v8 + 16) = v157;
            *(v8 + 8) = v152;
            *(v8 + 24) = v156;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
    }

    goto LABEL_10;
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 1);
  if (v85 <= v86)
  {
    if (v87 > v85)
    {
      v135 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v135;
      *(v8 + 24) = v87;
      *(a2 - 1) = v85;
      v136 = *(v8 + 24);
      v137 = *(v8 + 8);
      if (v136 > v137)
      {
        v138 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v138;
        *(v8 + 8) = v136;
        *(v8 + 24) = v137;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 <= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v149 = *(a2 - 1);
      if (v149 <= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 24) = v149;
    }

    else
    {
      *v8 = *(a2 - 4);
      *(a2 - 4) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 1) = v86;
  }

  return result;
}