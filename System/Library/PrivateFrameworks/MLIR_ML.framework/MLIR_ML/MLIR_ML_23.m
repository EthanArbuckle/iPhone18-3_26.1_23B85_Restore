uint64_t mlir::ODIE::Compiler::CoreML::RealPartOp::parse(mlir::ODIE::Compiler::CoreML::RealPartOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v8))
  {
    return 0;
  }

  v10 = v8;
  if (((*(*this + 296))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 56))(this) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v7))
  {
    return 0;
  }

  v8 = v7;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::OperationState::addTypes(a2, &v8, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v11, v9, v5, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::RealPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, "(", 1uLL);
  }

  else
  {
    *v13 = 40;
    ++v12[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] - v19 > 1uLL)
  {
    *v19 = 15917;
    v18[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "->", 2uLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = v29;
  v28 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v25, v27, v28);
  if (v27 != v29)
  {
    free(v27);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReduceMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReduceMaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceMeanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReduceSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReduceSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ReduceSumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ReshapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReturnOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::ODIE::Compiler::CoreML::ReturnOp::parse(mlir::ODIE::Compiler::CoreML::ReturnOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x400000000;
  v9[0] = &v10;
  v9[1] = 0x100000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 720))(this, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v12 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v9) & 1) == 0) || ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0))
  {
    v6 = 0;
    v7 = v9[0];
    if (v9[0] == &v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v11, v9, v5, a2 + 16) & 1;
  v7 = v9[0];
  if (v9[0] != &v10)
  {
LABEL_9:
    free(v7);
  }

LABEL_10:
  if (v11 != v13)
  {
    free(v11);
  }

  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::RsqrtOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::RsqrtOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::RsqrtOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::RsqrtOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ScatterNdOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v45 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps21(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)))
    {
      v32 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v35 = mlir::Type::cast<mlir::ShapedType>(&v32);
      v36 = v6;
      Shape = mlir::ShapedType::getShape(&v35);
      v9 = v8;
      v31 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v33[0] = mlir::Type::cast<mlir::ShapedType>(&v31);
      v33[1] = v10;
      v11 = mlir::ShapedType::getShape(v33);
      if (v9 == v12 && !memcmp(Shape, v11, 8 * v9))
      {
        return 1;
      }

      v33[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
      v34 = 259;
      mlir::OpState::emitOpError(this, v33, &v35);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
      if (v35)
      {
        v14 = result;
        mlir::InFlightDiagnostic::report(&v35);
        result = v14;
      }

      if (v44 == 1)
      {
        v15 = result;
        mlir::Diagnostic::~Diagnostic(&v36);
        return v15;
      }

      return result;
    }

    v33[0] = "failed to verify that Result 0 element type must match element type of operand 2.";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, &v35);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    v16 = result;
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
      result = v16;
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
        result = v16;
      }

      v25 = __p;
      if (__p)
      {
        v26 = v42;
        v27 = __p;
        if (v42 != __p)
        {
          do
          {
            v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v42 = v25;
        operator delete(v27);
        result = v16;
      }

      v20 = v39;
      if (!v39)
      {
        goto LABEL_52;
      }

      v28 = v40;
      v22 = v39;
      if (v40 == v39)
      {
LABEL_51:
        v40 = v20;
        operator delete(v22);
        result = v16;
LABEL_52:
        if (v37 != &v38)
        {
          free(v37);
          return v16;
        }

        return result;
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

      while (v28 != v20);
LABEL_50:
      v22 = v39;
      goto LABEL_51;
    }
  }

  else
  {
    v33[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, &v35);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    v16 = result;
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
      result = v16;
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
        result = v16;
      }

      v17 = __p;
      if (__p)
      {
        v18 = v42;
        v19 = __p;
        if (v42 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v42 = v17;
        operator delete(v19);
        result = v16;
      }

      v20 = v39;
      if (!v39)
      {
        goto LABEL_52;
      }

      v21 = v40;
      v22 = v39;
      if (v40 == v39)
      {
        goto LABEL_51;
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
      goto LABEL_50;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::parse(mlir::ODIE::Compiler::CoreML::ScatterNdOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v23, 1) & 1) != 0 && (v26 = 257, ((*(*this + 400))(this, "with", 4, v25)) && (v6 = (*(*this + 40))(this), ((*(*this + 704))(this, v20, 1)) && (v26 = 257, ((*(*this + 400))(this, "at", 2, v25)) && (v7 = (*(*this + 40))(this), ((*(*this + 704))(this, v17, 1)) && ((*(*this + 104))(this) & 1) != 0 && ((*(*this + 280))(this) & 1) != 0 && (v25[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v25)) && (v15 = v25[0], ((*(*this + 120))(this)) && (v25[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v25)) && (v13 = v25[0], ((*(*this + 120))(this)) && (v25[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v25)) && (v11 = v25[0], ((*(*this + 296))(this)) && (v26 = 257, ((*(*this + 400))(this, "to", 2, v25)) && (v25[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v25)) && (v9 = v25[0], (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (mlir::OperationState::addTypes(a2, &v9, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v22, v14, v5, a2 + 16)) && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v16, v10, v7, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v19, v12, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ScatterNdOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 3uLL)
  {
    *v9 = 1752459639;
    v8[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "with", 4uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 29793;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "at", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, "(", 1uLL);
  }

  else
  {
    *v25 = 40;
    ++v24[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, ",", 1uLL);
  }

  else
  {
    *v27 = 44;
    ++v26[4];
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = (*(*a2 + 16))(a2);
  v31 = v30[4];
  if (v30[3] == v31)
  {
    llvm::raw_ostream::write(v30, ",", 1uLL);
  }

  else
  {
    *v31 = 44;
    ++v30[4];
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, ")", 1uLL);
  }

  else
  {
    *v35 = 41;
    ++v34[4];
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] - v39 > 1uLL)
  {
    *v39 = 28532;
    v38[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v38, "to", 2uLL);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  if (*(*this + 9))
  {
    v42 = *this - 16;
  }

  else
  {
    v42 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v47 = v49;
  v48 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v45, v47, v48);
  if (v47 != v49)
  {
    free(v47);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SelectOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::parse(mlir::ODIE::Compiler::CoreML::ShrinkDimsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v10 = 0;
  v11[0] = &v12;
  v9[0] = &v10;
  v9[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v17, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && (v6 = (*(*this + 40))(this), ((*(*this + 704))(this, v14, 1)) && ((*(*this + 104))(this) & 1) != 0 && ((*(*this + 280))(this) & 1) != 0 && (v19[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v19)) && (v12 = v19[0], ((*(*this + 120))(this)) && (v19[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v19)) && (v10 = v19[0], ((*(*this + 296))(this)) && (v20 = 257, ((*(*this + 400))(this, "to", 2, v19)) && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, &v8)) && (v19[0] = v8, (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (mlir::OperationState::addTypes(a2, v19, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v16, v11, v5, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v13, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++v12[4];
  }

  v14 = (*(*a2 + 16))(a2);
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

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++v16[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++v18[4];
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = v26[4];
  if (v26[3] - v27 > 1uLL)
  {
    *v27 = 28532;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "to", 2uLL);
  }

  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  if (*(*this + 9))
  {
    v30 = *this - 16;
  }

  else
  {
    v30 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v37;
  v36 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v33, v35, v36);
  if (v35 != v37)
  {
    free(v35);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SigmoidOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SiluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::SiluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::SiluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SiluOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SinOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

unint64_t mlir::ODIE::Compiler::CoreML::SliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

unint64_t mlir::ODIE::Compiler::CoreML::SliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v22 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v23[0] = mlir::Type::cast<mlir::ShapedType>(&v22);
  v23[1] = v4;
  mlir::ShapedType::getShape(v23);
  v6 = v5;
  v21 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v19[0] = mlir::Type::cast<mlir::ShapedType>(&v21);
  v19[1] = v7;
  mlir::ShapedType::getShape(v19);
  if (v6 == v8)
  {
    return 1;
  }

  v19[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
  v20 = 259;
  mlir::OpState::emitOpError(this, v19, v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  v10 = result;
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
    result = v10;
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v29;
      v13 = __p;
      if (v29 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v29 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v26;
    if (v26)
    {
      v15 = v27;
      v16 = v26;
      if (v27 != v26)
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
        v16 = v26;
      }

      v27 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v24 != &v25)
    {
      free(v24);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a4;
  v14 = a6;
  v15 = a5;
  v12 = a8;
  v13 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = a6;
  v20 = a5;
  v17 = a8;
  v18 = a7;
  v16 = a9;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v40 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v42 = 259;
    mlir::OpState::emitOpError(this, &v40, &v43);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    v16 = result;
    if (v43)
    {
      mlir::InFlightDiagnostic::report(&v43);
      result = v16;
    }

    if (v52 != 1)
    {
      return result;
    }

    if (v51 != &v52)
    {
      free(v51);
      result = v16;
    }

    v17 = __p;
    if (__p)
    {
      v18 = v50;
      v19 = __p;
      if (v50 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v50 = v17;
      operator delete(v19);
      result = v16;
    }

    v20 = v47;
    if (v47)
    {
      v21 = v48;
      v22 = v47;
      if (v48 != v47)
      {
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
        goto LABEL_52;
      }

LABEL_53:
      v48 = v20;
      operator delete(v22);
      result = v16;
    }

LABEL_54:
    if (v45 != &v46)
    {
      free(v45);
      return v16;
    }

    return result;
  }

  v5 = mlir::getElementTypeOrSelf(*this - 16);
  if (v5 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 152)))
  {
    v40 = "failed to verify that Result 0 element type must match element type of operand 4.";
    v42 = 259;
    mlir::OpState::emitOpError(this, &v40, &v43);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    v16 = result;
    if (v43)
    {
      mlir::InFlightDiagnostic::report(&v43);
      result = v16;
    }

    if (v52 != 1)
    {
      return result;
    }

    if (v51 != &v52)
    {
      free(v51);
      result = v16;
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
      result = v16;
    }

    v20 = v47;
    if (v47)
    {
      v28 = v48;
      v22 = v47;
      if (v48 != v47)
      {
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

        while (v28 != v20);
LABEL_52:
        v22 = v47;
        goto LABEL_53;
      }

      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v39 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v43 = mlir::Type::cast<mlir::ShapedType>(&v39);
  v44 = v6;
  Shape = mlir::ShapedType::getShape(&v43);
  v9 = v8;
  v38 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v40 = mlir::Type::cast<mlir::ShapedType>(&v38);
  v41 = v10;
  v11 = mlir::ShapedType::getShape(&v40);
  if (v9 == v12 && !memcmp(Shape, v11, 8 * v9))
  {
    v31 = *this;
    v43 = 0x200000001;
    LODWORD(v44) = 3;
    if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v31, &v43, 3))
    {
      v39 = (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
      v43 = mlir::Type::cast<mlir::ShapedType>(&v39);
      v44 = v32;
      mlir::ShapedType::getShape(&v43);
      v34 = v33;
      v38 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v40 = mlir::Type::cast<mlir::ShapedType>(&v38);
      v41 = v35;
      mlir::ShapedType::getShape(&v40);
      if (v34 == v36)
      {
        return 1;
      }

      v37 = "failed to verify that Result 0 and operand 4 must have the same rank.";
    }

    else
    {
      v37 = "failed to verify that Operands should have same shape.";
    }

    v40 = v37;
    v42 = 259;
    mlir::OpState::emitOpError(this, &v40, &v43);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    return v15;
  }

  v40 = "failed to verify that Result 0 and operand 0 must have the same shape.";
  v42 = 259;
  mlir::OpState::emitOpError(this, &v40, &v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
  if (v43)
  {
    v14 = result;
    mlir::InFlightDiagnostic::report(&v43);
    result = v14;
  }

  if (v52 == 1)
  {
    v15 = result;
    mlir::Diagnostic::~Diagnostic(&v44);
    return v15;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::parse(mlir::ODIE::Compiler::CoreML::SliceUpdateOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  v20[1] = 1;
  v21 = 0;
  v19 = 0;
  v20[0] = &v21;
  v18[0] = &v19;
  v18[1] = 1;
  v16[1] = 1;
  v17 = 0;
  v15 = 0;
  v16[0] = &v17;
  v14[0] = &v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v11 = 0;
  v12[0] = &v13;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v35, 1) & 1) != 0 && (v38 = 257, ((*(*this + 400))(this, "with", 4, v37)) && (v6 = (*(*this + 40))(this), ((*(*this + 704))(this, v32, 1)) && (v38 = 257, ((*(*this + 400))(this, "at", 2, v37)) && ((*(*this + 280))(this) & 1) != 0 && (v7 = (*(*this + 40))(this), ((*(*this + 704))(this, v29, 1)) && ((*(*this + 120))(this) & 1) != 0 && (v8 = (*(*this + 40))(this), ((*(*this + 704))(this, v26, 1)) && ((*(*this + 120))(this) & 1) != 0 && (v9 = (*(*this + 40))(this), ((*(*this + 704))(this, v23, 1)) && ((*(*this + 296))(this) & 1) != 0 && ((*(*this + 104))(this) & 1) != 0 && ((*(*this + 280))(this) & 1) != 0 && (v37[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v37)) && (v21 = v37[0], ((*(*this + 120))(this)) && (v37[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v37)) && (v19 = v37[0], ((*(*this + 120))(this)) && (v37[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v37)) && (v17 = v37[0], ((*(*this + 120))(this)) && (v37[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v37)) && (v15 = v37[0], ((*(*this + 120))(this)) && (v37[0] = 0, mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v37)) && (v13 = v37[0], ((*(*this + 296))(this)) && (v38 = 257, ((*(*this + 400))(this, "to", 2, v37)) && (v37[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, v37)) && (v11 = v37[0], (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (mlir::OperationState::addTypes(a2, &v11, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v34, v20, v5, a2 + 16)) && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v28, v16, v7, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v25, v14, v8, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v22, v12, v9, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v31, v18, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::SliceUpdateOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 3uLL)
  {
    *v9 = 1752459639;
    v8[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "with", 4uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 152));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 29793;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "at", 2uLL);
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++v18[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ",", 1uLL);
  }

  else
  {
    *v21 = 44;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ",", 1uLL);
  }

  else
  {
    *v25 = 44;
    ++v24[4];
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 120));
  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] == v29)
  {
    llvm::raw_ostream::write(v28, ")", 1uLL);
  }

  else
  {
    *v29 = 41;
    ++v28[4];
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = v32[4];
  if (v32[3] == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++v32[4];
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "(", 1uLL);
  }

  else
  {
    *v37 = 40;
    ++v36[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = (*(*a2 + 16))(a2);
  v39 = v38[4];
  if (v38[3] == v39)
  {
    llvm::raw_ostream::write(v38, ",", 1uLL);
  }

  else
  {
    *v39 = 44;
    ++v38[4];
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8);
  v42 = (*(*a2 + 16))(a2);
  v43 = v42[4];
  if (v42[3] == v43)
  {
    llvm::raw_ostream::write(v42, ",", 1uLL);
  }

  else
  {
    *v43 = 44;
    ++v42[4];
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (*(*a2 + 16))(a2);
  v47 = v46[4];
  if (v46[3] == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++v46[4];
  }

  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v50 = (*(*a2 + 16))(a2);
  v51 = v50[4];
  if (v50[3] == v51)
  {
    llvm::raw_ostream::write(v50, ",", 1uLL);
  }

  else
  {
    *v51 = 44;
    ++v50[4];
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = (*(*a2 + 16))(a2);
  v55 = v54[4];
  if (v54[3] == v55)
  {
    llvm::raw_ostream::write(v54, ")", 1uLL);
  }

  else
  {
    *v55 = 41;
    ++v54[4];
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  v58 = (*(*a2 + 16))(a2);
  v59 = v58[4];
  if (v58[3] - v59 > 1uLL)
  {
    *v59 = 28532;
    v58[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v58, "to", 2uLL);
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  if (*(*this + 9))
  {
    v62 = *this - 16;
  }

  else
  {
    v62 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v62, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v67 = v69;
  v68 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v65, v67, v68);
  if (v67 != v69)
  {
    free(v67);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SoftmaxOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SplitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SplitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SplitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v135 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    if (*(v4 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_4;
    }

    goto LABEL_128;
  }

  {
    v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v25 = *(v4 + 1);
    v26 = v4[4];
    if (!v26)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v49 = v4;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v25 = *(v49 + 1);
    v26 = v49[4];
    if (!v26)
    {
      goto LABEL_91;
    }
  }

  v27 = v25;
  v28 = v26;
  do
  {
    v29 = v28 >> 1;
    v30 = &v27[2 * (v28 >> 1)];
    v32 = *v30;
    v31 = v30 + 2;
    v28 += ~(v28 >> 1);
    if (v32 < v24)
    {
      v27 = v31;
    }

    else
    {
      v28 = v29;
    }
  }

  while (v28);
  if (v27 == &v25[2 * v26] || *v27 != v24)
  {
LABEL_91:
    v123 = v3;
    v124 = 0;
    hasRank = mlir::ShapedType::hasRank(&v123);
    v4 = *v3;
    if (!hasRank)
    {
      goto LABEL_3;
    }

    goto LABEL_94;
  }

  v51 = v27[1];
  v123 = v3;
  v124 = v51;
  v52 = mlir::ShapedType::hasRank(&v123);
  v4 = *v3;
  if (!v52)
  {
    goto LABEL_3;
  }

LABEL_94:
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v4 + 1);
    v55 = v4[4];
    if (!v55)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v111 = v4;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v111 + 1);
    v55 = v111[4];
    if (!v55)
    {
      goto LABEL_106;
    }
  }

  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
  if (v56 == &v54[2 * v55] || *v56 != v53)
  {
LABEL_106:
    v112 = v3;
    v113 = 0;
    mlir::ShapedType::getShape(&v112);
    v4 = *v3;
    if (v62)
    {
      goto LABEL_3;
    }

    goto LABEL_109;
  }

  v63 = v56[1];
  v112 = v3;
  v113 = v63;
  mlir::ShapedType::getShape(&v112);
  v4 = *v3;
  if (v64)
  {
    goto LABEL_3;
  }

LABEL_109:
  {
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = *(v4 + 1);
    v67 = v4[4];
    if (v67)
    {
      goto LABEL_111;
    }

LABEL_120:
    v67 = 0;
    v68 = v66;
    goto LABEL_121;
  }

  v74 = v4;
  mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
  v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v66 = *(v74 + 1);
  v67 = v74[4];
  if (!v67)
  {
    goto LABEL_120;
  }

LABEL_111:
  v68 = v66;
  v69 = v67;
  do
  {
    v70 = v69 >> 1;
    v71 = &v68[2 * (v69 >> 1)];
    v73 = *v71;
    v72 = v71 + 2;
    v69 += ~(v69 >> 1);
    if (v73 < v65)
    {
      v68 = v72;
    }

    else
    {
      v69 = v70;
    }
  }

  while (v69);
LABEL_121:
  if (v68 != &v66[2 * v67] && *v68 == v65)
  {
    v75 = v68[1];
  }

  else
  {
    v75 = 0;
  }

  *&v121 = v3;
  *(&v121 + 1) = v75;
  ElementType = mlir::ShapedType::getElementType(&v121);
  if (mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32))
  {
    goto LABEL_43;
  }

  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_4;
  }

LABEL_128:
  {
    v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v77 = *(v4 + 1);
    v78 = v4[4];
    if (!v78)
    {
      goto LABEL_140;
    }
  }

  else
  {
    v85 = v4;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v76 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v77 = *(v85 + 1);
    v78 = v85[4];
    if (!v78)
    {
      goto LABEL_140;
    }
  }

  v79 = v77;
  v80 = v78;
  do
  {
    v81 = v80 >> 1;
    v82 = &v79[2 * (v80 >> 1)];
    v84 = *v82;
    v83 = v82 + 2;
    v80 += ~(v80 >> 1);
    if (v84 < v76)
    {
      v79 = v83;
    }

    else
    {
      v80 = v81;
    }
  }

  while (v80);
  if (v79 == &v77[2 * v78] || *v79 != v76)
  {
LABEL_140:
    v118 = v3;
    v119 = 0;
    if (!mlir::ShapedType::hasRank(&v118))
    {
      goto LABEL_4;
    }

    goto LABEL_143;
  }

  v86 = v79[1];
  v118 = v3;
  v119 = v86;
  if (!mlir::ShapedType::hasRank(&v118))
  {
    goto LABEL_4;
  }

LABEL_143:
  v87 = *v3;
  {
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = v87[1];
    v90 = *(v87 + 4);
    if (!v90)
    {
      goto LABEL_155;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = v87[1];
    v90 = *(v87 + 4);
    if (!v90)
    {
      goto LABEL_155;
    }
  }

  v91 = v89;
  v92 = v90;
  do
  {
    v93 = v92 >> 1;
    v94 = &v91[2 * (v92 >> 1)];
    v96 = *v94;
    v95 = v94 + 2;
    v92 += ~(v92 >> 1);
    if (v96 < v88)
    {
      v91 = v95;
    }

    else
    {
      v92 = v93;
    }
  }

  while (v92);
  if (v91 != &v89[2 * v90] && *v91 == v88)
  {
    v98 = v91[1];
    v116 = v3;
    v117 = v98;
    mlir::ShapedType::getShape(&v116);
    if (v99 == 1)
    {
      goto LABEL_158;
    }

    goto LABEL_4;
  }

LABEL_155:
  v116 = v3;
  v117 = 0;
  mlir::ShapedType::getShape(&v116);
  if (v97 == 1)
  {
LABEL_158:
    v100 = *v3;
    {
      v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v102 = v100[1];
      v103 = *(v100 + 4);
      if (!v103)
      {
        goto LABEL_170;
      }
    }

    else
    {
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v102 = v100[1];
      v103 = *(v100 + 4);
      if (!v103)
      {
        goto LABEL_170;
      }
    }

    v104 = v102;
    v105 = v103;
    do
    {
      v106 = v105 >> 1;
      v107 = &v104[2 * (v105 >> 1)];
      v109 = *v107;
      v108 = v107 + 2;
      v105 += ~(v105 >> 1);
      if (v109 < v101)
      {
        v104 = v108;
      }

      else
      {
        v105 = v106;
      }
    }

    while (v105);
    if (v104 != &v102[2 * v103] && *v104 == v101)
    {
      v110 = v104[1];
      goto LABEL_172;
    }

LABEL_170:
    v110 = 0;
LABEL_172:
    v115[0] = v3;
    v115[1] = v110;
    ElementType = mlir::ShapedType::getElementType(v115);
    if (mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32))
    {
      goto LABEL_43;
    }
  }

LABEL_4:
  v114 = 261;
  v112 = "operand";
  v113 = 7;
  mlir::Operation::emitOpError(&v123, v2, &v112);
  if (v123)
  {
    LODWORD(v121) = 3;
    *(&v121 + 1) = " #";
    v122 = 2;
    if (v126 >= v127)
    {
      if (v125 > &v121 || v125 + 24 * v126 <= &v121)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v125 + 24 * v126;
    v6 = v121;
    *(v5 + 2) = v122;
    *v5 = v6;
    v7 = ++v126;
    if (v123)
    {
      LODWORD(v121) = 5;
      *(&v121 + 1) = 1;
      if (v7 >= v127)
      {
        if (v125 > &v121 || v125 + 24 * v7 <= &v121)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v125 + 24 * v126;
      v9 = v121;
      *(v8 + 2) = v122;
      *v8 = v9;
      v10 = ++v126;
      if (v123)
      {
        LODWORD(v121) = 3;
        *(&v121 + 1) = " must be 0D tensor of Index type. values or 1D tensor of Index type. values, but got ";
        v122 = 85;
        if (v10 >= v127)
        {
          if (v125 > &v121 || v125 + 24 * v10 <= &v121)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v125 + 24 * v126;
        v12 = v121;
        *(v11 + 2) = v122;
        *v11 = v12;
        ++v126;
        if (v123)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v121, v3);
          if (v126 >= v127)
          {
            if (v125 > &v121 || v125 + 24 * v126 <= &v121)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v125 + 24 * v126;
          v14 = v121;
          *(v13 + 2) = v122;
          *v13 = v14;
          ++v126;
        }
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v123);
  if (v123)
  {
    mlir::InFlightDiagnostic::report(&v123);
  }

  if (v134 == 1)
  {
    if (v133 != &v134)
    {
      free(v133);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v132;
      v18 = __p;
      if (v132 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v132 = v16;
      operator delete(v18);
    }

    v19 = v129;
    if (v129)
    {
      v20 = v130;
      v21 = v129;
      if (v130 != v129)
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
        v21 = v129;
      }

      v130 = v19;
      operator delete(v21);
    }

    if (v125 != v128)
    {
      free(v125);
    }
  }

  if (!v15)
  {
    return 0;
  }

LABEL_43:
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v33 = *this;
  v34 = *(*this + 9);
  if (*(*this + 9))
  {
    v35 = *this - 16;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v36);
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps28(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v36) & 1) == 0)
      {
        return 0;
      }

      if (v34 == ++v36)
      {
        v33 = *this;
        break;
      }
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33 - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v112 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v114 = 259;
  mlir::OpState::emitOpError(this, &v112, &v123);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v123);
  v40 = result;
  if (v123)
  {
    mlir::InFlightDiagnostic::report(&v123);
    result = v40;
  }

  if (v134 == 1)
  {
    if (v133 != &v134)
    {
      free(v133);
      result = v40;
    }

    v41 = __p;
    if (__p)
    {
      v42 = v132;
      v43 = __p;
      if (v132 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v132 = v41;
      operator delete(v43);
      result = v40;
    }

    v44 = v129;
    if (v129)
    {
      v45 = v130;
      v46 = v129;
      if (v130 != v129)
      {
        do
        {
          v48 = *--v45;
          v47 = v48;
          *v45 = 0;
          if (v48)
          {
            MEMORY[0x259C63150](v47, 0x1000C8077774924);
          }
        }

        while (v45 != v44);
        v46 = v129;
      }

      v130 = v44;
      operator delete(v46);
      result = v40;
    }

    if (v125 != v128)
    {
      free(v125);
      return v40;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps28(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_36;
  }

  v12 = *a2;
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
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
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v50[0] = a2;
  v50[1] = v22;
  v43[0] = mlir::ShapedType::getElementType(v50);
  if (mlir::Type::isF16(v43))
  {
    return 1;
  }

  if (mlir::Type::isF32(v43))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 4))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v43, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 4))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v43, 64))
  {
    return 1;
  }

  if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v47 = v43[0];
    *&v48 = mlir::ComplexType::getElementType(&v47);
    if (mlir::Type::isF16(&v48))
    {
      return 1;
    }

    if (*(*v43[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v45 = v43[0];
      ElementType = mlir::ComplexType::getElementType(&v45);
      if (mlir::Type::isF32(&ElementType))
      {
        return 1;
      }
    }
  }

  v23 = 1;
  if (mlir::Type::isSignlessInteger(v43, 1))
  {
    return v23;
  }

LABEL_36:
  v44 = 261;
  v43[0] = a3;
  v43[1] = a4;
  mlir::Operation::emitOpError(v50, a1, v43);
  if (v50[0])
  {
    LODWORD(v48) = 3;
    *(&v48 + 1) = " #";
    v49 = 2;
    if (v52 >= v53)
    {
      if (v51 > &v48 || v51 + 24 * v52 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v51 + 24 * v52;
    v25 = v48;
    *(v24 + 2) = v49;
    *v24 = v25;
    v26 = ++v52;
    if (v50[0])
    {
      LODWORD(v48) = 5;
      *(&v48 + 1) = a5;
      if (v26 >= v53)
      {
        if (v51 > &v48 || v51 + 24 * v26 <= &v48)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v51 + 24 * v52;
      v28 = v48;
      *(v27 + 2) = v49;
      *v27 = v28;
      v29 = ++v52;
      if (v50[0])
      {
        LODWORD(v48) = 3;
        *(&v48 + 1) = " must be variadic of CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
        v49 = 258;
        if (v29 >= v53)
        {
          if (v51 > &v48 || v51 + 24 * v29 <= &v48)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v51 + 24 * v52;
        v31 = v48;
        *(v30 + 2) = v49;
        *v30 = v31;
        ++v52;
        if (v50[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
          if (v52 >= v53)
          {
            if (v51 > &v48 || v51 + 24 * v52 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v51 + 24 * v52;
          v33 = v48;
          *(v32 + 2) = v49;
          *v32 = v33;
          ++v52;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v58;
      v36 = __p;
      if (v58 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v58 = v34;
      operator delete(v36);
    }

    v37 = v55;
    if (v55)
    {
      v38 = v56;
      v39 = v55;
      if (v56 != v55)
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
        v39 = v55;
      }

      v56 = v37;
      operator delete(v39);
    }

    if (v51 != &v54)
    {
      free(v51);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::SqrtOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::SqrtOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::SqrtOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SqrtOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::detail::StackOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::detail::StackOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "ction6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3$_0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EEE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &byte_25736D3A0[v6];
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = &byte_25736D3A0[v23];
  v26 = v23 - v6;
  do
  {
    v27 = *v25;
    v25 += 4;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (byte_25736D3A0[v5])
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::StackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::StackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    v5 = 32;
LABEL_5:
    v6 = v5 + 24;
    v7 = 1;
    while ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps28(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v7) & 1) != 0)
    {
      ++v7;
      v6 += 32;
      if (!--v4)
      {
        v2 = *this;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v3 = *(v2 + 17);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = *(v2 + 9) + 32;
    goto LABEL_5;
  }

LABEL_9:
  v8 = *(v2 + 9);
  v9 = v2 - 16;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v9[1] = a4;
  mlir::ValueRange::ValueRange(v10, v9, 2uLL);
  result = mlir::OperationState::addOperands(a2, v10[0], v10[1]);
  v7 = *(a3 + 8);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = v7 & 0xFFFFFFFFFFFFFFF8;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SubOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::SubOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::SubOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v22[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    v7 = result;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
      result = v7;
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
        result = v7;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v30;
        v18 = __p;
        if (v30 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v30 = v16;
        operator delete(v18);
        result = v7;
      }

      v11 = v27;
      if (!v27)
      {
        goto LABEL_46;
      }

      v19 = v28;
      v13 = v27;
      if (v28 == v27)
      {
LABEL_45:
        v28 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v25 != &v26)
        {
          free(v25);
          return v7;
        }

        return result;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v11);
LABEL_44:
      v13 = v27;
      goto LABEL_45;
    }
  }

  else
  {
    v22[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    v7 = result;
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
      result = v7;
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
        result = v7;
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
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v30 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v27;
      if (!v27)
      {
        goto LABEL_46;
      }

      v12 = v28;
      v13 = v27;
      if (v28 == v27)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::TanhOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::TanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps9(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::TileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::TileOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x259C63150](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v7 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v25 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v7);
    v26 = v8;
    if (v25)
    {
      v32 = &v27;
      *&v29 = a4;
      DefiningOp = mlir::Value::getDefiningOp(&v29);
      if (DefiningOp)
      {
        if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v32, DefiningOp))
        {
          mlir::ShapedType::getShape(&v25);
          mlir::ShapedType::getShape(&v25);
          if (v10)
          {
            if (!(v10 >> 61))
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          mlir::DenseElementsAttr::getValues<llvm::APInt>(&v27, &v29);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(a3);
          v24 = mlir::RankedTensorType::get(0, 0, ElementTypeOrSelf, 0);
          mlir::TypeRange::TypeRange(&v32, &v24, 1uLL);
          v28[0] = a3;
          v28[1] = a4;
          mlir::ValueRange::ValueRange(&v30, v28, 2uLL);
          v19 = v33;
          v18 = v32;
          mlir::OperationState::addOperands(a2, v30, v31);
          *(a2 + 192) = 0;
          v20 = *(a2 + 120);
          if (v20 > *(a2 + 124))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(a2 + 120) = v20;
          v21 = *(a2 + 72);
          if (v19 + v21 > *(a2 + 76))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v19)
          {
            v22 = 0;
            v23 = *(a2 + 64) + 8 * v21;
            do
            {
              *(v23 + 8 * v22) = mlir::TypeRange::dereference_iterator(v18, v22);
              ++v22;
            }

            while (v19 != v22);
            *(a2 + 72) += v19;
          }

          else
          {
            *(a2 + 72) = v21;
          }

          return;
        }
      }
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v11 = mlir::getElementTypeOrSelf(a3);
  v28[0] = mlir::UnrankedTensorType::get(v11);
  mlir::TypeRange::TypeRange(&v29, v28, 1uLL);
  v30 = a3;
  v31 = a4;
  mlir::ValueRange::ValueRange(&v32, &v30, 2uLL);
  v12 = v29;
  mlir::OperationState::addOperands(a2, v32, v33);
  *(a2 + 192) = 0;
  v13 = *(a2 + 120);
  if (v13 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 120) = v13;
  v14 = *(a2 + 72);
  if (*(&v12 + 1) + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (*(&v12 + 1))
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(v12, v15);
      ++v15;
    }

    while (*(&v12 + 1) != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + DWORD2(v12);
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5;
  v10 = a4;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v9, 1uLL);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (a4 + v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 0;
    v12 = *(a2 + 64) + 8 * v10;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v11);
      *(v12 + 8 * v11++) = result;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v27 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v30[0] = mlir::Type::cast<mlir::ShapedType>(&v27);
    v30[1] = v5;
    mlir::ShapedType::getShape(v30);
    v7 = v6;
    v26 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = mlir::Type::cast<mlir::ShapedType>(&v26);
    v28[1] = v8;
    mlir::ShapedType::getShape(v28);
    if (v7 == v9)
    {
      return 1;
    }

    v28[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v11 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v11;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v11;
      }

      v20 = __p;
      if (__p)
      {
        v21 = v36;
        v22 = __p;
        if (v36 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v36 = v20;
        operator delete(v22);
        result = v11;
      }

      v15 = v33;
      if (!v33)
      {
        goto LABEL_46;
      }

      v23 = v34;
      v17 = v33;
      if (v34 == v33)
      {
LABEL_45:
        v34 = v15;
        operator delete(v17);
        result = v11;
LABEL_46:
        if (v31 != &v32)
        {
          free(v31);
          return v11;
        }

        return result;
      }

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
LABEL_44:
      v17 = v33;
      goto LABEL_45;
    }
  }

  else
  {
    v28[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v11 = result;
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
      result = v11;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v36;
        v14 = __p;
        if (v36 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v36 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v33;
      if (!v33)
      {
        goto LABEL_46;
      }

      v16 = v34;
      v17 = v33;
      if (v34 == v33)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::WhereOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::WhereOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::WhereOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::WhereOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 88));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      v6 = *this;
      v27 = 0x100000000;
      v28[0] = 2;
      if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v6, &v27, 3))
      {
        return 1;
      }

      v25[0] = "failed to verify that Operands should have same shape.";
      v26 = 259;
      mlir::OpState::emitOpError(this, v25, &v27);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
      if (v27)
      {
        v23 = result;
        mlir::InFlightDiagnostic::report(&v27);
        result = v23;
      }

      if (v36 == 1)
      {
        v24 = result;
        mlir::Diagnostic::~Diagnostic(v28);
        return v24;
      }

      return result;
    }

    v25[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, &v27);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    v8 = result;
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
      result = v8;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v8;
      }

      v17 = __p;
      if (__p)
      {
        v18 = v34;
        v19 = __p;
        if (v34 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v34 = v17;
        operator delete(v19);
        result = v8;
      }

      v12 = v31;
      if (!v31)
      {
        goto LABEL_48;
      }

      v20 = v32;
      v14 = v31;
      if (v32 == v31)
      {
LABEL_47:
        v32 = v12;
        operator delete(v14);
        result = v8;
LABEL_48:
        if (v29 != &v30)
        {
          free(v29);
          return v8;
        }

        return result;
      }

      do
      {
        v22 = *--v20;
        v21 = v22;
        *v20 = 0;
        if (v22)
        {
          MEMORY[0x259C63150](v21, 0x1000C8077774924);
        }
      }

      while (v20 != v12);
LABEL_46:
      v14 = v31;
      goto LABEL_47;
    }
  }

  else
  {
    v25[0] = "failed to verify that Operands should have same element type.";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, &v27);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    v8 = result;
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
      result = v8;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v8;
      }

      v9 = __p;
      if (__p)
      {
        v10 = v34;
        v11 = __p;
        if (v34 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v34 = v9;
        operator delete(v11);
        result = v8;
      }

      v12 = v31;
      if (!v31)
      {
        goto LABEL_48;
      }

      v13 = v32;
      v14 = v31;
      if (v32 == v31)
      {
        goto LABEL_47;
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
      goto LABEL_46;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::WhileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = v2[9];
  if (v2[9])
  {
    v4 = (v2 - 4);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  v6 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10], "before", 6, 0);
  result = 0;
  if (v6)
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 24, "after", 5, 1u) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::WriteHandleOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  __src = v21;
  v20 = 0x200000000;
  v7 = *a1;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v20) = 1;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v7);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  v11 = __src;
  *__src = SingletonImpl;
  v12 = v20;
  v13 = *(a2 + 72);
  if (v13 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v20);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::WriteHandleOp::inferReturnTypes(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = a1;
      bzero(*a11, 8uLL);
      a1 = v12;
    }

    *(a11 + 8) = 1;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a1);
  **a11 = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  return 1;
}

unint64_t mlir::ODIE::Compiler::CoreML::WriteHandleOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v12);
      *(v13 + 8 * v12++) = result;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::WriteHandleOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::WriteHandleOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v10 = *(a2 + 120);
  if (a6 + v10 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v10), a5, 16 * a6);
    LODWORD(v10) = *(a2 + 120);
  }

  *(a2 + 120) = v10 + a6;
  __src = v21;
  v20 = 0x200000000;
  v11 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v20) = 1;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  v15 = __src;
  *__src = SingletonImpl;
  v16 = v20;
  v17 = *(a2 + 72);
  if (v17 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v20);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v21)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps26(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 9);
  v5 = *(v4 + 24);
  HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*(v4 + 88));
  if (HandleForToken)
  {
    v7 = HandleForToken == v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  v18 = "failed to verify that input token must come from an operation on the same handle";
  v19 = 259;
  mlir::OpState::emitOpError(this, &v18, v20);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  v9 = result;
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
    result = v9;
  }

  if (v28 == 1)
  {
    if (v27 != &v28)
    {
      free(v27);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v26;
      v12 = __p;
      if (v26 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v26 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
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
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v21 != &v22)
    {
      free(v21);
      return v9;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::YieldOp::build(mlir::ODIE::Compiler::CoreML::YieldOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v5, 0, 0);
  return mlir::OperationState::addOperands(a2, v5[0], v5[1]);
}

unint64_t mlir::ODIE::Compiler::CoreML::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(v18, v17, v16);
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
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RealPartOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(v18, v17, v16);
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
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,void>::id)
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

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868634C8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EEclEOSE_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v4 = *(result + 8);
    v12 = *a2;
    Name = mlir::ODIE::Compiler::CoreML::ParamRefAttr::getName(&v12);
    Value = mlir::StringAttr::getValue(&Name);
    v7 = v6;
    v9 = llvm::StringMapImpl::hash(Value, v6, v8);
    result = llvm::StringMapImpl::FindKey(v4, Value, v7, v9);
    if (result == -1 || result == *(v4 + 8) || (v10 = *(*(*v4 + 8 * result) + 8)) == 0)
    {
      v10 = v12;
    }

    *a3 = v10;
    *(a3 + 8) = 1;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENSA_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENSC_15MallocAllocatorEEERNSC_15SmallVectorImplINSA_21PendingSpecializationEEEE3__0NSA_12ParamRefAttrESE_SE_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISR_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSE_E_NS_9allocatorIS12_EEFNST_INSU_ISE_SV_EEEESE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEE3$_0NS7_12ParamRefAttrESB_SB_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSM_8optionalINSM_4pairISP_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSB_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1>(mlir::Operation ***a1, mlir::Operation *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || **a1 == a2)
  {
    mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn();
  }

  mlir::Operation::erase(a2);
  return 2;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286863558;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EEclEOSB_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (*v4 + 16 * v5);
  *v6 = *(**(a1 + 16) + 24);
  v6[1] = v2;
  ++*(v4 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIRZZNS2_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS7_21ParamScopeOpInterfaceERKN4llvm9StringMapINS2_9AttributeENS9_15MallocAllocatorEEERNS9_15SmallVectorImplINS7_21PendingSpecializationEEEENK3__1clEPNS2_9OperationEEUlNS7_13ParamBindAttrEE_SN_SB_vEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_NS_9allocatorISY_EEFNS2_10WalkResultESB_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14AttrTypeWalker7addWalkIRZZNS_4ODIE8Compiler6CoreMLL22specializeParamScopeOpENS4_21ParamScopeOpInterfaceERKN4llvm9StringMapINS_9AttributeENS6_15MallocAllocatorEEERNS6_15SmallVectorImplINS4_21PendingSpecializationEEEENK3$_1clEPNS_9OperationEEUlNS4_13ParamBindAttrEE_SK_S8_vEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlS8_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::MemberOp>@<D0>(mlir::Region *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::Region::OpIterator::OpIterator(&v18, a1, 1);
  mlir::Region::OpIterator::OpIterator(&v14, a1, 0);
  *&v12[8] = v18;
  v4 = v15;
  *v12 = v15;
  v11 = v14;
  *&v12[24] = v19;
  for (i = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::MemberOp,mlir::Region::OpIterator>::filter; *v12 != *&v12[24]; v4 = *v12)
  {
    v5 = i;
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
    if ((v5)(ValuePtr))
    {
      break;
    }

    mlir::Region::OpIterator::operator++(&v11);
  }

  v14 = v11;
  v15 = *v12;
  v16 = *&v12[16];
  v17 = i;
  *v12 = v19;
  *&v12[8] = v18;
  *&v12[24] = v19;
  i = mlir::detail::op_filter_iterator<mlir::ODIE::Compiler::CoreML::MemberOp,mlir::Region::OpIterator>::filter;
  v7 = *v12;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  *(a2 + 96) = *&v12[16];
  v8 = i;
  v9 = v15;
  *a2 = v14;
  *(a2 + 16) = v9;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::MemberOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v8;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::ODIE::Compiler::CoreML::MemberOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

__n128 mlir::DenseElementsAttr::tryGetValues<mlir::IntegerAttr,void>@<Q0>(mlir::DenseElementsAttr *a1@<X0>, __n128 *a2@<X8>)
{
  Type = mlir::DenseElementsAttr::getType(a1);
  v6 = v5;
  mlir::DenseElementsAttr::getType(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(v15, *a1, 0);
  v7 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v14, v7, NumElements);
  v9 = v15[0];
  v10 = v15[1];
  mlir::DenseElementsAttr::getType(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(v15, *a1, 0);
  v11 = *a1;
  v12 = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v14, v11, v12);
  result = v14;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  a2[1] = result;
  a2[2].n128_u64[0] = Type;
  a2[2].n128_u64[1] = v6;
  a2[3].n128_u8[0] = 1;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(void *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = a1;
  CoreMLTensorEncoding = mlir::ODIE::Compiler::CoreML::getCoreMLTensorEncoding(a1);
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
  result = 0;
  v29[0] = v4;
  v29[1] = v6;
  if (CoreMLTensorEncoding && v4)
  {
    Shape = mlir::ShapedType::getShape(v29);
    v9 = v8;
    ElementType = mlir::ShapedType::getElementType(v29);
    v27[0] = &v31;
    if (mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(&CoreMLTensorEncoding, v11, v12, v13, v14, Shape, v9, ElementType, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(mlir::Type,mlir::Operation *)::$_0>, v27))
    {
      DimsOrdering = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::getDimsOrdering(&CoreMLTensorEncoding);
      if (v16 < 1)
      {
        return 1;
      }

      v17 = 0;
      while (v17 == *(DimsOrdering + 4 * v17))
      {
        if ((v16 & 0x7FFFFFFF) == ++v17)
        {
          return 1;
        }
      }

      v18 = *(a2 + 24);
      v27[0] = "only contiguous layout is supported";
      v28 = 259;
      mlir::emitError(v18, v27, v32);
      if (v32[0])
      {
        mlir::InFlightDiagnostic::report(v32);
      }

      if (v40 == 1)
      {
        if (v39 != &v40)
        {
          free(v39);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v38;
          v21 = __p;
          if (v38 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v38 = v19;
          operator delete(v21);
        }

        v22 = v35;
        if (v35)
        {
          v23 = v36;
          v24 = v35;
          if (v36 != v35)
          {
            do
            {
              v26 = *--v23;
              v25 = v26;
              *v23 = 0;
              if (v26)
              {
                MEMORY[0x259C63150](v25, 0x1000C8077774924);
              }
            }

            while (v23 != v22);
            v24 = v35;
          }

          v36 = v22;
          operator delete(v24);
        }

        if (v33 != &v34)
        {
          free(v33);
        }
      }
    }

    return 0;
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(mlir::Type,mlir::Operation *)::$_0>(mlir::Type **a1@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Type::getContext(*a1);
  v5 = mlir::UnknownLoc::get(Context, v4);

  mlir::emitError(v5, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void *llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr const,void>>::doCastIfPossible(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      v11 = v1;
      v12 = result;
      mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v3 = *(v11 + 8);
      v4 = *(v11 + 16);
      if (!v4)
      {
        return result;
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
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void *mlir::ODIE::Compiler::extract1DIntVector<int>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v11, a1, NumElements); v14 != v12; ++v14)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &v9);
    v6 = v10;
    if (v10 >= 0x41)
    {
      result = llvm::APInt::countLeadingZerosSlowCase(&v9);
      if (v6 - result <= 0x40)
      {
        v7 = *v9;
      }

      else
      {
        LODWORD(v7) = -1;
      }
    }

    else
    {
      LODWORD(v7) = v9;
    }

    v8 = *(a2 + 8);
    if (v8 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a2 + 4 * v8) = v7;
    ++*(a2 + 8);
    if (v10 >= 0x41)
    {
      result = v9;
      if (v9)
      {
        result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims::~ReplaceBroadcastToWithBroadcastInDims(mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims *this)
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

uint64_t mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v112[6] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 72);
  v96 = *(v5 + 24);
  v6 = *(v96 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v5 + 56);
  v94 = v7[1] & 0xFFFFFFFFFFFFFFF8;
  v95 = v6;
  result = mlir::TensorType::hasRank(&v95);
  if (result)
  {
    Shape = mlir::TensorType::getShape(&v95);
    if (v10)
    {
      v11 = 8 * v10;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    result = mlir::TensorType::hasRank(&v94);
    if (!result)
    {
      return result;
    }

    v12 = mlir::RankedTensorType::getShape(&v94);
    if (v13)
    {
      v14 = 8 * v13;
      while (*v12 != 0x8000000000000000)
      {
        ++v12;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    v110 = 0;
    v103 = &v110;
    __src = v7;
    result = mlir::Value::getDefiningOp(&__src);
    if (result)
    {
      result = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v103, result);
      if (result)
      {
        mlir::TensorType::getShape(&v95);
        v16 = v15;
        mlir::ODIE::Compiler::extract1DIntVector<int>(v7, &__src);
        if ((v109 & 1) == 0)
        {
          v89 = std::__throw_bad_optional_access[abi:nn200100]();
          return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(v89, v90, v91);
        }

        v110 = v112;
        v111 = 0xC00000000;
        v17 = v107;
        if (v107)
        {
          if (__src == v108)
          {
            if (v107 >= 0xD)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy(v110, __src, 4 * v107);
            LODWORD(v111) = v17;
            LODWORD(v107) = 0;
            if ((v109 & 1) == 0)
            {
LABEL_24:
              v18 = v17 - v16;
              if (v17 <= v16)
              {
                goto LABEL_56;
              }

              __src = v108;
              v107 = 0xC00000000;
              if (v17)
              {
                if (v17 >= 0xD)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                bzero(__src, 4 * v17);
                LODWORD(v107) = v17;
              }

              if (v18 >= 1)
              {
                memset_pattern16(__src, &unk_25736D390, 4 * v18);
              }

              v19 = mlir::TensorType::getShape(&v95);
              if (v16 >= 1)
              {
                v20 = __src;
                if (v16 <= 7)
                {
                  v21 = 0;
LABEL_37:
                  v29 = v21 - v16;
                  v30 = (v19 + 8 * v21);
                  v31 = &v20[4 * v17];
                  do
                  {
                    v32 = *v30++;
                    *&v31[4 * v29] = v32;
                  }

                  while (!__CFADD__(v29++, 1));
                  goto LABEL_40;
                }

                v21 = v16 & 0x7FFFFFFFFFFFFFF8;
                v22 = (v19 + 32);
                v23 = (__src + 4 * v17 + -4 * v16 + 16);
                v24 = v16 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v26 = v22[-2];
                  v25 = v22[-1];
                  v28 = *v22;
                  v27 = v22[1];
                  v22 += 4;
                  v23[-1] = vuzp1q_s32(v26, v25);
                  *v23 = vuzp1q_s32(v28, v27);
                  v23 += 2;
                  v24 -= 8;
                }

                while (v24);
                if (v16 != v21)
                {
                  goto LABEL_37;
                }
              }

LABEL_40:
              v103 = v105;
              v104 = 0x600000000;
              if (v17)
              {
                if (v17 >= 7)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                bzero(v103, 8 * v17);
                LODWORD(v104) = v17;
              }

              v34 = v107;
              if (!v107)
              {
                goto LABEL_52;
              }

              v35 = __src;
              v36 = v103;
              v37 = (v107 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v37 > 6)
              {
                v40 = v37 + 1;
                v38 = (v37 + 1) & 0x7FFFFFFFFFFFFFF8;
                v39 = (__src + 4 * v38);
                v41 = v103 + 32;
                v42 = __src + 16;
                v43 = v38;
                do
                {
                  v44 = *(v42 - 1);
                  *&v45 = v44;
                  *(&v45 + 1) = SDWORD1(v44);
                  v46 = v45;
                  *&v45 = SDWORD2(v44);
                  *(&v45 + 1) = SHIDWORD(v44);
                  v47 = v45;
                  *&v45 = *v42;
                  *(&v45 + 1) = HIDWORD(*v42);
                  v48 = v45;
                  *&v45 = *(v42 + 1);
                  *(&v45 + 1) = HIDWORD(*v42);
                  *(v41 - 2) = v46;
                  *(v41 - 1) = v47;
                  *v41 = v48;
                  v41[1] = v45;
                  v41 += 4;
                  v42 += 32;
                  v43 -= 8;
                }

                while (v43);
                if (v40 == v38)
                {
                  goto LABEL_52;
                }
              }

              else
              {
                v38 = 0;
                v39 = __src;
              }

              v49 = &v35[4 * v34];
              v50 = &v36[8 * v38];
              do
              {
                v51 = *v39++;
                *v50 = v51;
                v50 += 8;
              }

              while (v39 != v49);
LABEL_52:
              v52 = *(a2 + 24);
              v102 = v17;
              IntegerType = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v92 = mlir::RankedTensorType::get(&v102, 1, IntegerType, 0);
              v54 = mlir::TensorType::operator mlir::ShapedType(&v92);
              RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v54);
              v97 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v52, &RawIntOrFloat);
              v55 = *(a2 + 24);
              v56 = v103;
              v57 = v104;
              ElementType = mlir::TensorType::getElementType(&v95);
              RawIntOrFloat = mlir::RankedTensorType::get(v56, v57, ElementType, 0);
              v59 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 1), v55, &RawIntOrFloat, &v96, &v97);
              v96 = v59 - 16;
              v95 = *(v59 - 8) & 0xFFFFFFFFFFFFFFF8;
              if (v103 != v105)
              {
                free(v103);
              }

              if (__src != v108)
              {
                free(__src);
              }

LABEL_56:
              mlir::TensorType::getShape(&v95);
              __src = v108;
              v107 = 0xC00000000;
              v103 = v105;
              v104 = 0xC00000000;
              v60 = mlir::TensorType::getShape(&v95);
              if (v61)
              {
                v62 = 0;
                v63 = 8 * v61;
                do
                {
                  if (*(v60 + 8 * v62) != *&v110[4 * v62])
                  {
                    if (v107 >= HIDWORD(v107))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    *(__src + v107) = v62;
                    LODWORD(v107) = v107 + 1;
                    if (v104 >= HIDWORD(v104))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    *(v103 + v104) = *&v110[4 * v62];
                    LODWORD(v104) = v104 + 1;
                  }

                  ++v62;
                  v63 -= 8;
                }

                while (v63);
              }

              v64 = *(a2 + 24);
              v102 = v107;
              v65 = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v92 = mlir::RankedTensorType::get(&v102, 1, v65, 0);
              v66 = mlir::TensorType::operator mlir::ShapedType(&v92);
              v97 = mlir::DenseElementsAttr::getRawIntOrFloat(v66);
              RawIntOrFloat = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v64, &v97);
              v67 = *(a2 + 24);
              v101 = v107;
              v68 = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
              v102 = mlir::RankedTensorType::get(&v101, 1, v68, 0);
              v69 = mlir::TensorType::operator mlir::ShapedType(&v102);
              v97 = mlir::DenseElementsAttr::getRawIntOrFloat(v69);
              v92 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v67, &v97);
              v97 = v99;
              v98 = 0x600000000;
              if (v17)
              {
                if (v17 >= 7)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                bzero(v99, 8 * v17);
                LODWORD(v98) = v17;
              }

              v70 = v111;
              if (!v111)
              {
                goto LABEL_78;
              }

              v71 = v110;
              v72 = (v111 - 1) & 0x3FFFFFFFFFFFFFFFLL;
              if (v72 > 6)
              {
                v75 = v72 + 1;
                v73 = (v72 + 1) & 0x7FFFFFFFFFFFFFF8;
                v74 = &v110[4 * v73];
                v76 = &v100;
                v77 = v110 + 16;
                v78 = v73;
                do
                {
                  v79 = *(v77 - 1);
                  *&v80 = v79;
                  *(&v80 + 1) = SDWORD1(v79);
                  v81 = v80;
                  *&v80 = SDWORD2(v79);
                  *(&v80 + 1) = SHIDWORD(v79);
                  v82 = v80;
                  *&v80 = *v77;
                  *(&v80 + 1) = HIDWORD(*v77);
                  v83 = v80;
                  *&v80 = *(v77 + 1);
                  *(&v80 + 1) = HIDWORD(*v77);
                  *(v76 - 2) = v81;
                  *(v76 - 1) = v82;
                  *v76 = v83;
                  *(v76 + 1) = v80;
                  v76 += 8;
                  v77 += 32;
                  v78 -= 8;
                }

                while (v78);
                if (v75 == v73)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                v73 = 0;
                v74 = v110;
              }

              v84 = &v71[4 * v70];
              v85 = &v99[v73];
              do
              {
                v86 = *v74++;
                *v85++ = v86;
              }

              while (v74 != v84);
LABEL_78:
              v87 = mlir::TensorType::getElementType(&v95);
              v102 = mlir::RankedTensorType::get(v99, v17, v87, 0);
              v88 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 1), *(a2 + 24), &v102, &v96, &RawIntOrFloat, &v92);
              ((*a3)[1])(a3, a2, v88);
              if (v97 != v99)
              {
                free(v97);
              }

              if (v103 != v105)
              {
                free(v103);
              }

              if (__src != v108)
              {
                free(__src);
              }

              if (v110 != v112)
              {
                free(v110);
              }

              return 1;
            }
          }

          else
          {
            v110 = __src;
            v111 = v107;
            __src = v108;
            v107 = 0;
          }
        }

        if (__src != v108)
        {
          free(__src);
          v17 = v111;
        }

        goto LABEL_24;
      }
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v22[24] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::Type &,mlir::TypedAttr>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v7);
  v9 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v9)
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
  }

  v17[0] = v9;
  v17[1] = v11;
  mlir::NamedAttribute::NamedAttribute(v18, **(v19[1] + 96), v9);
  mlir::NamedAttrList::push_back(v22, v18[0], v18[1]);
  Type = mlir::TypedAttr::getType(v17);
  if (v20 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v19[8] + 8 * v20++) = Type;
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v20[0] = *a4;
  v19[0] = v14;
  mlir::OperationState::addOperands(v21, v20, 1uLL);
  mlir::OperationState::addOperands(v21, v19, 1uLL);
  if (v22 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v21[8] + 8 * v22++) = v13;
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(v25, v23, v22);
  }

  mlir::OperationState::OperationState(v25, a2, v13);
  v15 = *a3;
  v16 = *a5 - 16;
  v17 = *a6 - 16;
  v23[0] = *a4;
  v22[0] = v16;
  v24 = v17;
  mlir::OperationState::addOperands(v25, v23, 1uLL);
  mlir::OperationState::addOperands(v25, v22, 1uLL);
  mlir::OperationState::addOperands(v25, &v24, 1uLL);
  if (v26 >= v27)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v25[8] + 8 * v26++) = v15;
  v18 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v19;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48[6] = *MEMORY[0x277D85DE8];
  v43 = 0;
  v5 = *(*(a2 + 72) + 24);
  v35[0] = &v43;
  *&v42[0] = v5;
  result = mlir::Value::getDefiningOp(v42);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v35, result);
    if (result)
    {
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v43, v42);
      *v35 = v42[0];
      *v36 = v42[1];
      v7 = &v46;
      mlir::DenseElementsAttr::IntElementIterator::operator*(v35, &v46);
      v8 = v47;
      if (v47 >= 0x41)
      {
        if (v8 - llvm::APInt::countLeadingZerosSlowCase(&v46) > 0x40)
        {
          goto LABEL_12;
        }

        v7 = v46;
      }

      if (*v7 == 1)
      {
        v9 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
        if (v9)
        {
          v10 = (v9 - 8);
        }

        else
        {
          v10 = 0;
        }

        if (v8 < 0x41)
        {
LABEL_21:
          v14 = *(a2 + 16);
          NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
          *(a3 + 24) = v14;
          *(a3 + 32) = NodePtr;
          v35[0] = 0;
          v35[1] = 0;
          LODWORD(v36[0]) = 0;
          v38 = 0;
          v36[1] = 0;
          v37 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v16 = v10[5];
          v17 = v10 + 4;
          if (v16 != v10 + 4)
          {
            for (i = *v17; v16 != i; v16 = v16[1])
            {
              ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v16);
              mlir::OpBuilder::clone((a3 + 8), ValuePtr, v35);
            }
          }

          v46 = v48;
          v47 = 0x600000000;
          Terminator = mlir::Block::getTerminator(v10);
          if ((*(Terminator + 46) & 0x80) == 0 || (v21 = *(Terminator + 68), !v21))
          {
LABEL_38:
            v33 = *(a2 + 36);
            if (v33)
            {
              v34 = a2 - 16;
            }

            else
            {
              v34 = 0;
            }

            mlir::ValueRange::ValueRange(v45, v34, v33);
            mlir::ValueRange::ValueRange(v44, v46, v47);
            mlir::RewriterBase::replaceAllUsesWith(a3, v45[0], v45[1], v44[0], v44[1]);
            (*(*a3 + 16))(a3, a2);
            if (v46 != v48)
            {
              free(v46);
            }

            llvm::deallocate_buffer(v39, (16 * v41));
          }

          v22 = 0;
          v23 = *(Terminator + 72);
          while (1)
          {
            if (LODWORD(v36[0]))
            {
              v26 = *(v23 + 32 * v22 + 24);
              v27 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ HIDWORD(v26));
              v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
              v29 = (-348639895 * ((v28 >> 47) ^ v28)) & (LODWORD(v36[0]) - 1);
              v30 = *(v35[0] + 2 * v29);
              if (v30 == v26)
              {
LABEL_31:
                if (v29 != LODWORD(v36[0]))
                {
                  v24 = *(v35[0] + 2 * v29 + 1);
                  v25 = v47;
                  if (v47 >= HIDWORD(v47))
                  {
LABEL_33:
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  goto LABEL_28;
                }
              }

              else
              {
                v31 = 1;
                while (v30 != -4096)
                {
                  v32 = v29 + v31++;
                  v29 = v32 & (LODWORD(v36[0]) - 1);
                  v30 = *(v35[0] + 2 * v29);
                  if (v30 == v26)
                  {
                    goto LABEL_31;
                  }
                }
              }
            }

            v24 = 0;
            v25 = v47;
            if (v47 >= HIDWORD(v47))
            {
              goto LABEL_33;
            }

LABEL_28:
            v46[v25] = v24;
            LODWORD(v47) = v47 + 1;
            if (++v22 == v21)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_19:
        if (v46)
        {
          MEMORY[0x259C63150](v46, 0x1000C8000313F17);
        }

        goto LABEL_21;
      }

LABEL_12:
      v11 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v12 = *(v11 + 24);
      if (v12 == v11 + 24 || v12 == 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = (v12 - 8);
      }

      if (v8 < 0x41)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_6FuncOpENSA_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286863728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_6FuncOpENSA_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EEclEOSK_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v7 = *(result + 8);
    v6 = *(result + 16);
    v18 = *a2;
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(v6);
    v9 = *(v7 + 8);
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = result;
      v12 = *v7;
      v13 = 16 * v8 - 16;
      v14 = 8 * v9 - 8;
      while (1)
      {
        Name = mlir::ODIE::Compiler::CoreML::ParamRefAttr::getName(&v18);
        result = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(v12);
        if (Name == result)
        {
          break;
        }

        v16 = &v18;
        if (v14)
        {
          v12 = (v12 + 8);
          v11 += 2;
          v17 = v13;
          v13 -= 16;
          v14 -= 8;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v16 = v11;
LABEL_13:
      v4 = *v16;
    }

    *a3 = v4;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_6FuncOpENSA_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_6FuncOpENS7_6CallOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_7GraphOpENSA_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE7__cloneEPNS0_6__baseIS11_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868637A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_7GraphOpENSA_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EEclEOSK_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v7 = *(result + 8);
    v6 = *(result + 16);
    v18 = *a2;
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(v6);
    v9 = *(v7 + 8);
    if (v9)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = result;
      v12 = *v7;
      v13 = 16 * v8 - 16;
      v14 = 8 * v9 - 8;
      while (1)
      {
        Name = mlir::ODIE::Compiler::CoreML::ParamRefAttr::getName(&v18);
        result = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::getName(v12);
        if (Name == result)
        {
          break;
        }

        v16 = &v18;
        if (v14)
        {
          v12 = (v12 + 8);
          v11 += 2;
          v17 = v13;
          v13 -= 16;
          v14 -= 8;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v16 = v11;
LABEL_13:
      v4 = *v16;
    }

    *a3 = v4;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINSA_7GraphOpENSA_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNSA_12ParamRefAttrEE_SI_NS2_9AttributeESK_EENS_9enable_ifIXoontsr3stdE9is_same_vISH_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISM_NS2_10WalkResultEEEEEEEvE4typeEOSG_EUlSK_E_NS_9allocatorISW_EEFNSO_INSP_ISK_SQ_EEEESK_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreMLL26verifyMatchForParametricOpINS7_7GraphOpENS7_8InvokeOpEEEN4llvm13LogicalResultET_T0_EUlNS7_12ParamRefAttrEE_SF_NS_9AttributeESH_EENSt3__19enable_ifIXoontsr3stdE9is_same_vISE_T1_Entsr3stdE16is_convertible_vIT2_NSI_8optionalINSI_4pairISK_NS_10WalkResultEEEEEEEvE4typeEOSD_EUlSH_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties]";
  v6 = 126;
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

uint64_t mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v45[6] = *MEMORY[0x277D85DE8];
  v39 = *(*(a2 + 72) + 24);
  v38 = *(v39 + 8) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::TensorType::hasRank(&v38);
  if (result)
  {
    Shape = mlir::TensorType::getShape(&v38);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    result = mlir::TensorType::hasRank(&v37);
    if (!result)
    {
      return result;
    }

    v9 = mlir::TensorType::getShape(&v37);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    v12 = *(*(a2 + 72) + 56);
    RawIntOrFloat = &v41;
    v41 = 0;
    v43 = v12;
    result = mlir::Value::getDefiningOp(&v43);
    if (result)
    {
      result = mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&RawIntOrFloat, result);
      if (result)
      {
        mlir::TensorType::getShape(&v37);
        v43 = v45;
        v44 = 0xC00000000;
        if (v13)
        {
          v14 = v13;
          if (v13 >= 0xD)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          bzero(v43, 4 * v13);
          LODWORD(v44) = v14;
        }

        v15 = mlir::TensorType::getShape(&v37);
        if (!v16)
        {
          goto LABEL_27;
        }

        v17 = v43;
        v18 = (v16 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v18 > 6)
        {
          v21 = v18 + 1;
          v19 = (v18 + 1) & 0x3FFFFFFFFFFFFFF8;
          v20 = (v15 + 8 * v19);
          v22 = (v43 + 16);
          v23 = (v15 + 32);
          v24 = v19;
          do
          {
            v26 = v23[-2];
            v25 = v23[-1];
            v28 = *v23;
            v27 = v23[1];
            v23 += 4;
            v22[-1] = vuzp1q_s32(v26, v25);
            *v22 = vuzp1q_s32(v28, v27);
            v22 += 2;
            v24 -= 8;
          }

          while (v24);
          if (v21 == v19)
          {
LABEL_27:
            v31 = *(a2 + 24);
            mlir::TensorType::getShape(&v37);
            v42 = v32;
            IntegerType = mlir::Builder::getIntegerType(a3 + 1, 32, 1);
            v36 = mlir::RankedTensorType::get(&v42, 1, IntegerType, 0);
            v34 = mlir::TensorType::operator mlir::ShapedType(&v36);
            RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v34);
            v41 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 1), v31, &RawIntOrFloat);
            v35 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 1), *(a2 + 24), &v37, &v39, &v41);
            ((*a3)[1])(a3, a2, v35);
            if (v43 != v45)
            {
              free(v43);
            }

            return 1;
          }
        }

        else
        {
          v19 = 0;
          v20 = v15;
        }

        v29 = &v17[4 * v19];
        do
        {
          v30 = *v20++;
          *v29 = v30;
          v29 += 4;
        }

        while (v20 != (v15 + 8 * v16));
        goto LABEL_27;
      }
    }
  }

  return result;
}

__n128 llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v29 = v5;
    v30 = v6;
    v11 = *(a3 + 16);
    v12 = *a1;
    v27.n128_u32[0] = 2;
    v27.n128_u64[1] = v12;
    v13 = *(a3 + 24);
    if (v13 >= *(a3 + 28))
    {
      if (v11 > &v27 || v11 + 24 * v13 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v11 + 24 * *(a3 + 24));
    result = v27;
    v14[1].n128_u64[0] = v28;
    *v14 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v17 = *a5;
      if (*a5)
      {
        v18 = strlen(*a5);
        v27.n128_u32[0] = 3;
        v27.n128_u64[1] = v17;
        v28 = v18;
        v19 = *(a4 + 24);
        v20 = *(a4 + 16);
        if (v19 >= *(a4 + 28))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v27.n128_u32[0] = 3;
        v27.n128_u64[1] = 0;
        v28 = 0;
        v19 = *(a4 + 24);
        v20 = *(a4 + 16);
        if (v19 >= *(a4 + 28))
        {
LABEL_11:
          if (v20 <= &v27 && v20 + 24 * v19 > &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      v21 = (v20 + 24 * *(a4 + 24));
      v22 = v27;
      v21[1].n128_u64[0] = v28;
      *v21 = v22;
      ++*(a4 + 24);
      v23 = *i;
      v27.n128_u32[0] = 2;
      v27.n128_u64[1] = v23;
      v24 = *(a3 + 24);
      v25 = *(a3 + 16);
      if (v24 >= *(a3 + 28))
      {
        if (v25 > &v27 || v25 + 24 * v24 <= &v27)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = (v25 + 24 * *(a3 + 24));
      result = v27;
      v26[1].n128_u64[0] = v28;
      *v26 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_(mlir::ODIE::Compiler::CoreML::AsyncValueType **a1, mlir::AsmParser *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(*a1, a2);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 124;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 128;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties]";
  v6 = 128;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties]";
  v6 = 125;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ErrorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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