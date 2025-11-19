uint64_t mlir::memref::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::memref::RankOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  v5 = *a1;
  mlir::ValueRange::ValueRange(&v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v14, *(a2 + 224), *(a2 + 232));
  if (v17 != 1)
  {
    if (!v17)
    {
      if (!HIDWORD(v17))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v17) = 1;
  }

  v13 = v5;
  IndexType = mlir::Builder::getIndexType(&v13, v7);
  v9 = __src;
  *__src = IndexType;
  v10 = v17;
  v11 = *(a2 + 72);
  if (v11 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v11), v9, 8 * v17);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v18)
  {
    free(__src);
  }
}

uint64_t mlir::memref::RankOp::inferReturnTypes(mlir::IndexType *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 8);
  if (v12 != 1)
  {
    if (!v12)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v14 = a1;
  **a11 = mlir::Builder::getIndexType(&v14, a2);
  return 1;
}

unint64_t mlir::memref::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::memref::RankOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x277D85DE8];
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
  __src = v22;
  v21 = 0x200000000;
  v11 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
  if (v21 != 1)
  {
    if (!v21)
    {
      if (!HIDWORD(v21))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v21) = 1;
  }

  v18 = v11;
  IndexType = mlir::Builder::getIndexType(&v18, v13);
  v15 = __src;
  *__src = IndexType;
  v16 = v21;
  v17 = *(a2 + 72);
  if (v17 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v21);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::memref::RankOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::memref::RankOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::memref::RankOp::parse(mlir::memref::RankOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v15, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, &v11))
  {
    return 0;
  }

  v13 = v11;
  v6 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v6, v7);
  v9 = *(a2 + 18);
  if (v9 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v9) = IndexType;
  ++*(a2 + 18);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v14, v12, v5, a2 + 16) & 1;
}

void mlir::memref::RankOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
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
  v15 = v17;
  v16 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v15, v16);
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

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, ":", 1uLL);
  }

  else
  {
    *v11 = 58;
    ++v10[4];
  }

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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t mlir::memref::detail::ReallocOpGenericAdaptorBase::ReallocOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::detail::ReallocOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::ReallocOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_N_118SimplifyAllocConstIN4mlir6memref7AllocOpEEE";
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
      v28 = &dword_25738CB7F + v6 + 3;
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
  v25 = (&dword_25738CB7F + v23 + 3);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
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
  if (*(&dword_25738CB7F + v5 + 3))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::memref::detail::ReallocOpGenericAdaptorBase::getAlignment(mlir::memref::detail::ReallocOpGenericAdaptorBase *this)
{
  v7 = *(this + 3);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &v5);
  if (v6 >= 0x41)
  {
    v1 = v5;
  }

  else
  {
    v1 = &v5;
  }

  result = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    v4 = *v1;
    MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    return v4;
  }

  return result;
}

uint64_t mlir::memref::ReallocOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 1;
  }

  v14[0] = *(a1 + 24);
  v17[0] = mlir::IntegerAttr::getType(v14);
  if (mlir::Type::isSignlessInteger(v17, 64))
  {
    v16 = v2;
    if ((mlir::IntegerAttr::getInt(&v16) & 0x8000000000000000) == 0)
    {
      return 1;
    }
  }

  v14[0] = "'memref.realloc' op attribute 'alignment' failed to satisfy constraint: 64-bit signless integer attribute whose minimum value is 0";
  v15 = 259;
  mlir::emitError(a2, v14, v17);
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

  return v4;
}

uint64_t mlir::memref::ReallocOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v42;
      v26 = __p;
      if (v42 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v42 = v24;
      operator delete(v26);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "alignment", 9uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 54;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
    }

    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::memref::ReallocOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "alignment", 9, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::memref::ReallocOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::ReallocOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x6E656D6E67696C61 ? (v4 = *(a3 + 8) == 116) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::memref::ReallocOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9 && *a2 == 0x6E656D6E67696C61 && *(a2 + 8) == 116)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::memref::ReallocOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "alignment", 9uLL, *a2);
  }

  return result;
}

BOOL mlir::memref::ReallocOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

uint64_t mlir::memref::ReallocOp::getAlignment(mlir::memref::ReallocOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &v5);
  if (v6 >= 0x41)
  {
    v1 = v5;
  }

  else
  {
    v1 = &v5;
  }

  result = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    v4 = *v1;
    MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    return v4;
  }

  return result;
}

uint64_t mlir::memref::ReallocOp::setAlignment(uint64_t result, unint64_t a2, char a3)
{
  v3 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (a3)
  {
    v5 = result;
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = mlir::Attribute::getContext((*v5 + 24));
    IntegerType = mlir::Builder::getIntegerType(&v7, 64);
    result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
    *(v3 + 64) = result;
  }

  else
  {
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t mlir::memref::ReallocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a5;
  v14 = a4;
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  if (a5)
  {
    result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  }

  if (a6)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a6;
  }

  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::ReallocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a6;
  v18 = a5;
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  if (a6)
  {
    result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  }

  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a7;
  }

  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v15);
      *(v16 + 8 * v15++) = result;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  return result;
}

uint64_t mlir::memref::ReallocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

BOOL mlir::memref::ReallocOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v31[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v3, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31) & 1) == 0 || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    goto LABEL_5;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 1;
  if ((v5 - 1) <= 1)
  {
    if (v5 == 1)
    {
LABEL_31:
      if (*(v4 + 9))
      {
        v25 = v4 - 16;
      }

      else
      {
        v25 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(v4, *(*(*(v4 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      v4 = *this;
      goto LABEL_31;
    }

    return 0;
  }

LABEL_5:
  v27 = "operand group starting at #";
  v28 = 259;
  mlir::OpState::emitOpError(this, &v27, v31);
  if (v31[0])
  {
    LODWORD(v29) = 5;
    *(&v29 + 1) = 1;
    if (v33 >= v34)
    {
      if (v32 > &v29 || v32 + 24 * v33 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v32 + 24 * v33;
    v8 = v29;
    *(v7 + 2) = v30;
    *v7 = v8;
    v9 = ++v33;
    if (v31[0])
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = " requires 0 or 1 element, but found ";
      v30 = 36;
      if (v9 >= v34)
      {
        if (v32 > &v29 || v32 + 24 * v9 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v32 + 24 * v33;
      v11 = v29;
      *(v10 + 2) = v30;
      *v10 = v11;
      v12 = ++v33;
      if (v31[0])
      {
        LODWORD(v29) = 5;
        *(&v29 + 1) = v6;
        if (v12 >= v34)
        {
          if (v32 > &v29 || v32 + 24 * v12 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v32 + 24 * v33;
        v14 = v29;
        *(v13 + 2) = v30;
        *v13 = v14;
        ++v33;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  v16 = result;
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
    result = v16;
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
      result = v16;
    }

    v17 = __p;
    if (__p)
    {
      v18 = v39;
      v19 = __p;
      if (v39 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v39 = v17;
      operator delete(v19);
      result = v16;
    }

    v20 = v36;
    if (v36)
    {
      v21 = v37;
      v22 = v36;
      if (v37 != v36)
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
        v22 = v36;
      }

      v37 = v20;
      operator delete(v22);
      result = v16;
    }

    if (v32 != &v35)
    {
      free(v32);
      return v16;
    }
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps13(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v87 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_2;
  }

  v29 = a1;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v9[1];
    v32 = *(v9 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v40 = v9;
    mlir::tensor::ExpandShapeOp::fold();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v40[1];
    v32 = *(v40 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  v33 = v31;
  v34 = v32;
  do
  {
    v35 = v34 >> 1;
    v36 = &v33[2 * (v34 >> 1)];
    v38 = *v36;
    v37 = v36 + 2;
    v34 += ~(v34 >> 1);
    if (v38 < v30)
    {
      v33 = v37;
    }

    else
    {
      v34 = v35;
    }
  }

  while (v34);
  if (v33 == &v31[2 * v32] || *v33 != v30)
  {
LABEL_56:
    v75 = a2;
    v76 = 0;
    mlir::ShapedType::getElementType(&v75);
    v41 = *a2;
    {
      goto LABEL_57;
    }

LABEL_66:
    v69 = v41;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = v69[1];
    v44 = *(v69 + 4);
    if (!v44)
    {
      goto LABEL_69;
    }

    goto LABEL_58;
  }

  v51 = v33[1];
  v75 = a2;
  v76 = v51;
  mlir::ShapedType::getElementType(&v75);
  v41 = *a2;
  {
    goto LABEL_66;
  }

LABEL_57:
  v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v43 = v41[1];
  v44 = *(v41 + 4);
  if (!v44)
  {
    goto LABEL_69;
  }

LABEL_58:
  v45 = v43;
  v46 = v44;
  do
  {
    v47 = v46 >> 1;
    v48 = &v45[2 * (v46 >> 1)];
    v50 = *v48;
    v49 = v48 + 2;
    v46 += ~(v46 >> 1);
    if (v50 < v42)
    {
      v45 = v49;
    }

    else
    {
      v46 = v47;
    }
  }

  while (v46);
  if (v45 != &v43[2 * v44] && *v45 == v42)
  {
    v53 = v45[1];
    v70 = a2;
    v71 = v53;
    hasRank = mlir::ShapedType::hasRank(&v70);
    a1 = v29;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_72;
  }

LABEL_69:
  v70 = a2;
  v71 = 0;
  v52 = mlir::ShapedType::hasRank(&v70);
  a1 = v29;
  if (!v52)
  {
    goto LABEL_2;
  }

LABEL_72:
  v55 = *a2;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = v55[1];
    v58 = *(v55 + 4);
    if (!v58)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v65 = v55;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = v65[1];
    v58 = *(v65 + 4);
    if (!v58)
    {
      goto LABEL_84;
    }
  }

  v59 = v57;
  v60 = v58;
  do
  {
    v61 = v60 >> 1;
    v62 = &v59[2 * (v60 >> 1)];
    v64 = *v62;
    v63 = v62 + 2;
    v60 += ~(v60 >> 1);
    if (v64 < v56)
    {
      v59 = v63;
    }

    else
    {
      v60 = v61;
    }
  }

  while (v60);
  if (v59 == &v57[2 * v58] || *v59 != v56)
  {
LABEL_84:
    v73 = a2;
    mlir::ShapedType::getShape(&v73);
    a1 = v29;
    if (v66 == 1)
    {
      return 1;
    }

    goto LABEL_2;
  }

  v67 = v59[1];
  *&v73 = a2;
  *(&v73 + 1) = v67;
  mlir::ShapedType::getShape(&v73);
  a1 = v29;
  if (v68 == 1)
  {
    return 1;
  }

LABEL_2:
  v72 = 261;
  v70 = a3;
  v71 = a4;
  mlir::Operation::emitOpError(&v75, a1, &v70);
  if (v75)
  {
    LODWORD(v73) = 3;
    *(&v73 + 1) = " #";
    v74 = 2;
    if (v78 >= v79)
    {
      if (v77 > &v73 || v77 + 24 * v78 <= &v73)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v77 + 24 * v78;
    v11 = v73;
    *(v10 + 2) = v74;
    *v10 = v11;
    v12 = ++v78;
    if (v75)
    {
      LODWORD(v73) = 5;
      *(&v73 + 1) = a5;
      if (v12 >= v79)
      {
        if (v77 > &v73 || v77 + 24 * v12 <= &v73)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v77 + 24 * v78;
      v14 = v73;
      *(v13 + 2) = v74;
      *v13 = v14;
      v15 = ++v78;
      if (v75)
      {
        LODWORD(v73) = 3;
        *(&v73 + 1) = " must be 1D memref of any type values, but got ";
        v74 = 47;
        if (v15 >= v79)
        {
          if (v77 > &v73 || v77 + 24 * v15 <= &v73)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v77 + 24 * v78;
        v17 = v73;
        *(v16 + 2) = v74;
        *v16 = v17;
        ++v78;
        if (v75)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, a2);
          if (v78 >= v79)
          {
            if (v77 > &v73 || v77 + 24 * v78 <= &v73)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v77 + 24 * v78;
          v19 = v73;
          *(v18 + 2) = v74;
          *v18 = v19;
          ++v78;
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
  if (v75)
  {
    mlir::InFlightDiagnostic::report(&v75);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v84;
      v23 = __p;
      if (v84 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v84 = v21;
      operator delete(v23);
    }

    v24 = v81;
    if (v81)
    {
      v25 = v82;
      v26 = v81;
      if (v82 != v81)
      {
        do
        {
          v28 = *--v25;
          v27 = v28;
          *v25 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v25 != v24);
        v26 = v81;
      }

      v82 = v24;
      operator delete(v26);
    }

    if (v77 != &v80)
    {
      free(v77);
    }
  }

  return v20;
}

uint64_t mlir::memref::ReallocOp::parse(mlir::memref::ReallocOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v33[16] = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  v31 = v33;
  v32 = 0x400000000;
  v20[1] = 1;
  v21 = 0;
  v20[0] = &v21;
  v28 = &v30;
  v29 = 0x100000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v23, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 40))(this);
    v25 = 0uLL;
    *&v26 = 0;
    v6 = (*(*this + 712))(this, &v25, 1);
    if ((v6 & 0x100) != 0)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (v32 >= HIDWORD(v32))
      {
        if (v31 > &v25 || v31 + 32 * v32 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v7 = v31 + 32 * v32;
      v8 = v26;
      *v7 = v25;
      v7[1] = v8;
      LODWORD(v32) = v32 + 1;
    }

    if (((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v19 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(a2 + 1);
  *&v25 = this;
  *(&v25 + 1) = &v19;
  *&v26 = a2;
  v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
  if (v10)
  {
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v10, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::ReallocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v25) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_21;
  }

  *&v25 = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, &v25))
  {
    goto LABEL_21;
  }

  v21 = v25;
  v27 = 257;
  if (((*(*this + 400))(this, "to", 2, &v25) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((mlir::AsmParser::parseTypeList(this, &v28) & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v11, v12);
  mlir::OperationState::addTypes(a2, v28, v29);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v22, v20, v5, a2 + 16) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v32)
  {
    v14 = v31;
    v15 = 32 * v32;
    while (((*(*this + 728))(this, v14, IndexType, a2 + 16) & 1) != 0)
    {
      v14 += 32;
      v16 = 1;
      v15 -= 32;
      if (!v15)
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    v16 = 0;
LABEL_22:
    v17 = v28;
    if (v28 != &v30)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = 1;
  v17 = v28;
  if (v28 != &v30)
  {
LABEL_23:
    free(v17);
  }

LABEL_24:
  if (v31 != v33)
  {
    free(v31);
  }

  return v16;
}

void mlir::memref::ReallocOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
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
  if (*(*this + 17) == 1 || !*(*(*this + 9) + 56))
  {
    goto LABEL_15;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, "(", 1uLL);
    v8 = *this;
    if (*(*this + 17) == 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (*(*(v8 + 9) + 56))
    {
      (*(*a2 + 160))(a2);
    }

    goto LABEL_12;
  }

  *v7 = 40;
  ++v6[4];
  v8 = *this;
  if (*(*this + 17) != 1)
  {
    goto LABEL_10;
  }

LABEL_12:
  v9 = (*(*a2 + 16))(a2);
  v10 = v9[4];
  if (v9[3] == v10)
  {
    llvm::raw_ostream::write(v9, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++v9[4];
  }

LABEL_15:
  v39 = v41;
  v40 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v12, v39, v40);
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, ":", 1uLL);
  }

  else
  {
    *v16 = 58;
    ++v15[4];
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = v21[4];
  if (v21[3] - v22 > 1uLL)
  {
    *v22 = 28532;
    v21[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v21, "to", 2uLL);
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = *(*this + 9);
  v26 = *this - 16;
  if (!v25)
  {
    v26 = 0;
  }

  v38[0] = v26;
  v38[1] = v25;
  mlir::ResultRange::getTypes(v38, &AttrDictionary);
  v27 = v36;
  v28 = v37;
  if (v36 != v37)
  {
    v29 = AttrDictionary;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v36);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v27 + 1; v28 != i; ++i)
    {
      v33 = (*(*a2 + 16))(a2);
      v34 = v33[4];
      if (v33[3] - v34 > 1uLL)
      {
        *v34 = 8236;
        v33[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v33, ", ", 2uLL);
      }

      v32 = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, i);
      (*(*a2 + 32))(a2, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v39 != v41)
  {
    free(v39);
  }
}

void mlir::memref::ReallocOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v12 = a2;
    v13 = a1;
    mlir::memref::DeallocOp::getEffects();
    a1 = v13;
    a2 = v12;
  }

  v24 = *(*a1 + 72);
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Free>(void)::instance;
  v23 = 0;
  v22 = 1;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = a2;
    v17 = a1;
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
    a1 = v17;
    a2 = v16;
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v14 = a2;
  v15 = a1;
  mlir::mps::AssignVariableOp::getEffects();
  a1 = v15;
  a2 = v14;
  v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(v14 + 8);
  if (v2 >= *(v14 + 12))
  {
    goto LABEL_10;
  }

LABEL_5:
  v3 = *a2 + 40 * v2;
  v4 = v24;
  v5 = v23;
  v6 = v22;
  *v3 = v25;
  *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v3 + 24) = 0;
  *(v3 + 32) = v5;
  *(v3 + 36) = v6;
  ++*(a2 + 8);
  {
    goto LABEL_6;
  }

LABEL_11:
  v18 = a2;
  v19 = a1;
  mlir::memref::ReallocOp::getEffects();
  a1 = v19;
  a2 = v18;
LABEL_6:
  v24 = *a1 - 16;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
  v23 = 1;
  v22 = 1;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(a2 + 8);
    if (v7 < *(a2 + 12))
    {
LABEL_8:
      v8 = *a2 + 40 * v7;
      v9 = v24;
      v10 = v23;
      v11 = v22;
      *v8 = v25;
      *(v8 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v8 + 16) = v9 & 0xFFFFFFFFFFFFFFF9 | 4;
      *(v8 + 24) = 0;
      *(v8 + 32) = v10;
      *(v8 + 36) = v11;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v20 = a2;
    mlir::affine::AffineDmaStartOp::getEffects();
    a2 = v20;
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(v20 + 8);
    if (v7 < *(v20 + 12))
    {
      goto LABEL_8;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
}

uint64_t mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::ReinterpretCastOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 48);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

uint64_t mlir::memref::ReinterpretCastOpAdaptor::verify(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      if (a1[5])
      {
        return 1;
      }

      v24[0] = "'memref.reinterpret_cast' op requires attribute 'static_strides'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v32;
          v19 = __p;
          if (v32 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v32 = v17;
          operator delete(v19);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v20 = v30;
        v8 = v29;
        if (v30 == v29)
        {
LABEL_54:
          v30 = v6;
          operator delete(v8);
LABEL_55:
          if (v27 != &v28)
          {
            free(v27);
          }

          return v2;
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

        while (v20 != v6);
LABEL_53:
        v8 = v29;
        goto LABEL_54;
      }
    }

    else
    {
      v24[0] = "'memref.reinterpret_cast' op requires attribute 'static_sizes'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v14 = v30;
        v8 = v29;
        if (v30 == v29)
        {
          goto LABEL_54;
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

        while (v14 != v6);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v24[0] = "'memref.reinterpret_cast' op requires attribute 'static_offsets'";
    v25 = 259;
    mlir::emitError(a2, v24, v26);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v32;
        v5 = __p;
        if (v32 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v32 = v3;
        operator delete(v5);
      }

      v6 = v29;
      if (!v29)
      {
        goto LABEL_55;
      }

      v7 = v30;
      v8 = v29;
      if (v30 == v29)
      {
        goto LABEL_54;
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
      goto LABEL_53;
    }
  }

  return v2;
}

unint64_t mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(mlir::memref::ReinterpretCastOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 88);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

uint64_t mlir::memref::ReinterpretCastOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  if (v4)
  {
    if (mlir::DictionaryAttr::get(&v16, "static_offsets", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_sizes", 0xCuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_strides", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v16, "operand_segment_sizes", 0x15uLL))
    {
      mlir::convertFromAttribute();
    }

    return 1;
  }

  else
  {
    a3(v19, a4);
    if (v19[0])
    {
      LODWORD(v17) = 3;
      *(&v17 + 1) = "expected DictionaryAttr to set properties";
      v18 = 41;
      if (v21 >= v22)
      {
        if (v20 > &v17 || v20 + 24 * v21 <= &v17)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v20 + 24 * v21;
      v7 = v17;
      *(v6 + 2) = v18;
      *v6 = v7;
      ++v21;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
      }
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v27;
        v10 = __p;
        if (v27 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v27 = v8;
        operator delete(v10);
      }

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        v13 = v24;
        if (v25 != v24)
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
          v13 = v24;
        }

        v25 = v11;
        operator delete(v13);
      }

      if (v20 != &v23)
      {
        free(v20);
      }
    }

    return 0;
  }
}

void mlir::memref::ReinterpretCastOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "static_offsets", 0xE, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "static_sizes", 0xC, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "static_strides", 0xE, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::memref::ReinterpretCastOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = a1[4];
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::memref::ReinterpretCastOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::ReinterpretCastOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 8) = 0;
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *result = 0;
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *(v5 + 16) = 0;
      }
    }
  }

  return result;
}

void mlir::memref::ReinterpretCastOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 0xEuLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::memref::ReinterpretCastOp::verifyInherentAttrs(uint64_t a1, uint64_t a2)
{
  v4 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v4 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0)
  {
    v5 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v5 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) != 0)
    {
      v6 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v6 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) > 5)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 4uLL)))
    {
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
    {
      if (mlir::DenseArrayAttr::getSize(&v15) < 5)
      {
        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
      }

      v13 = "size mismatch for operand/result_segment_size";
      v14 = 259;
      (*(*a1 + 16))(v16, a1, &v13);
      if (v16[0])
      {
        mlir::InFlightDiagnostic::report(v16);
      }

      if (v24 == 1)
      {
        if (v23 != &v24)
        {
          free(v23);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v22;
          v6 = __p;
          if (v22 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v22 = v4;
          operator delete(v6);
        }

        v7 = v19;
        if (v19)
        {
          v8 = v20;
          v9 = v19;
          if (v20 != v19)
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
            v9 = v19;
          }

          v20 = v7;
          operator delete(v9);
        }

        if (v17 != &v18)
        {
          free(v17);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 4);
  }

  return result;
}

unint64_t mlir::memref::ReinterpretCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a11, a12);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  v21[6] = 1;
  v21[7] = a7;
  v21[8] = a10;
  v21[9] = a12;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a13;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a14;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 16) = a15;
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v26);
      *(v27 + 8 * v26++) = result;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
  return result;
}

void mlir::memref::ReinterpretCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  v14[6] = 1;
  v14[7] = a6;
  v14[8] = a8;
  v14[9] = a10;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::memref::ReinterpretCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  v14[6] = 1;
  v14[7] = a7;
  v14[8] = a10;
  v14[9] = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::memref::ReinterpretCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
      {
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
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
      {
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
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v2) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) == 0)
    {
      return 0;
    }

    mlir::memref::ReinterpretCastOp::verifyInvariantsImpl();
    return LOBYTE(v35[0]);
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::memref::ReinterpretCastOp::parse(mlir::memref::ReinterpretCastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v46[16] = *MEMORY[0x277D85DE8];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v44 = v46;
  v45 = 0x400000000;
  v31 = 0;
  v32 = 0;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v29 = 0;
  v30 = 0;
  v28[0] = &v29;
  v28[1] = 1;
  v27 = 0;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v34, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v37 = 257;
  if (((*(*this + 400))(this, "to", 2, v36) & 1) == 0)
  {
    goto LABEL_36;
  }

  v37 = 257;
  if (((*(*this + 400))(this, "offset", 6, v36) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v44, &v32, v36, 0))
  {
    goto LABEL_36;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    operator new();
  }

  *v6 = v32;
  if (((*(*this + 120))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  v37 = 257;
  if (((*(*this + 400))(this, "sizes", 5, v36) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v41, &v31, v36, 0))
  {
    goto LABEL_36;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 8) = v31;
  if (((*(*this + 120))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  v37 = 257;
  if (((*(*this + 400))(this, "strides", 7, v36) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v38, &v30, v36, 0))
  {
    goto LABEL_36;
  }

  v8 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  *(v8 + 16) = v30;
  v26 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_36;
  }

  v9 = *(a2 + 1);
  v36[0] = this;
  v36[1] = &v26;
  v36[2] = a2;
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v9, a2 + 112))
  {
    goto LABEL_36;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, v36))
  {
    goto LABEL_36;
  }

  v29 = v36[0];
  v37 = 257;
  if (((*(*this + 400))(this, "to", 2, v36) & 1) == 0)
  {
    goto LABEL_36;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v36))
  {
    goto LABEL_36;
  }

  v27 = v36[0];
  v10 = v45;
  v11 = v42;
  v12 = v39;
  v13 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::ReinterpretCastOpGenericAdaptorBase::Properties>(a2);
  v13[6] = 1;
  v13[7] = v10;
  v13[8] = v11;
  v13[9] = v12;
  v14 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v14, v15);
  mlir::OperationState::addTypes(a2, &v27, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v33, v28, v5, a2 + 16) & 1) == 0)
  {
    goto LABEL_36;
  }

  if (v45)
  {
    v17 = v44;
    v18 = 32 * v45;
    while (((*(*this + 728))(this, v17, IndexType, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_27;
      }
    }

LABEL_36:
    v23 = 0;
LABEL_37:
    v24 = v38;
    if (v38 != v40)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_27:
  if (v42)
  {
    v19 = v41;
    v20 = 32 * v42;
    while (((*(*this + 728))(this, v19, IndexType, a2 + 16) & 1) != 0)
    {
      v19 += 32;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

LABEL_31:
  if (v39)
  {
    v21 = v38;
    v22 = 32 * v39;
    while (((*(*this + 728))(this, v21, IndexType, a2 + 16) & 1) != 0)
    {
      v21 += 32;
      v23 = 1;
      v22 -= 32;
      if (!v22)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

  v23 = 1;
  v24 = v38;
  if (v38 != v40)
  {
LABEL_38:
    free(v24);
  }

LABEL_39:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v23;
}

uint64_t mlir::memref::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::memref::ReshapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::ReshapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v81 = *MEMORY[0x277D85DE8];
  if ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
LABEL_3:
    v66 = 261;
    v64 = "operand";
    v65 = 7;
    mlir::Operation::emitOpError(v70, v2, &v64);
    if (v70[0])
    {
      LODWORD(v68) = 3;
      *(&v68 + 1) = " #";
      v69 = 2;
      if (v72 >= v73)
      {
        if (v71 > &v68 || v71 + 24 * v72 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v71 + 24 * v72;
      v6 = v68;
      *(v5 + 2) = v69;
      *v5 = v6;
      v7 = ++v72;
      if (v70[0])
      {
        LODWORD(v68) = 5;
        *(&v68 + 1) = 1;
        if (v7 >= v73)
        {
          if (v71 > &v68 || v71 + 24 * v7 <= &v68)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v71 + 24 * v72;
        v9 = v68;
        *(v8 + 2) = v69;
        *v8 = v9;
        v10 = ++v72;
        if (v70[0])
        {
          LODWORD(v68) = 3;
          *(&v68 + 1) = " must be 1D memref of signless integer or index values, but got ";
          v69 = 64;
          if (v10 >= v73)
          {
            if (v71 > &v68 || v71 + 24 * v10 <= &v68)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v71 + 24 * v72;
          v12 = v68;
          *(v11 + 2) = v69;
          *v11 = v12;
          ++v72;
          if (v70[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v68, v3);
            if (v72 >= v73)
            {
              if (v71 > &v68 || v71 + 24 * v72 <= &v68)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v13 = v71 + 24 * v72;
            v14 = v68;
            *(v13 + 2) = v69;
            *v13 = v14;
            ++v72;
          }
        }
      }
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v78;
        v18 = __p;
        if (v78 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v78 = v16;
        operator delete(v18);
      }

      v19 = v75;
      if (v75)
      {
        v20 = v76;
        v21 = v75;
        if (v76 != v75)
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
          v21 = v75;
        }

        v76 = v19;
        operator delete(v21);
      }

      if (v71 != &v74)
      {
        free(v71);
      }
    }

    if (v15)
    {
      goto LABEL_42;
    }

    return 0;
  }

  {
    v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v25 = v4[1];
    v26 = *(v4 + 4);
    if (!v26)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v36 = v4;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v25 = v36[1];
    v26 = *(v36 + 4);
    if (!v26)
    {
      goto LABEL_62;
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
  if (v27 != &v25[2 * v26] && *v27 == v24)
  {
    v37 = v27[1];
    goto LABEL_64;
  }

LABEL_62:
  v37 = 0;
LABEL_64:
  v70[0] = v3;
  v70[1] = v37;
  ElementType = mlir::ShapedType::getElementType(v70);
  if (!mlir::Type::isSignlessInteger(&ElementType) && *(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_3;
  }

  v38 = *v3;
  {
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = v38[1];
    v41 = *(v38 + 4);
    if (!v41)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v63 = v38;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = v63[1];
    v41 = *(v63 + 4);
    if (!v41)
    {
      goto LABEL_78;
    }
  }

  v42 = v40;
  v43 = v41;
  do
  {
    v44 = v43 >> 1;
    v45 = &v42[2 * (v43 >> 1)];
    v47 = *v45;
    v46 = v45 + 2;
    v43 += ~(v43 >> 1);
    if (v47 < v39)
    {
      v42 = v46;
    }

    else
    {
      v43 = v44;
    }
  }

  while (v43);
  if (v42 == &v40[2 * v41] || *v42 != v39)
  {
LABEL_78:
    v64 = v3;
    v65 = 0;
    if (!mlir::ShapedType::hasRank(&v64))
    {
      goto LABEL_3;
    }

    goto LABEL_81;
  }

  v48 = v42[1];
  v64 = v3;
  v65 = v48;
  if (!mlir::ShapedType::hasRank(&v64))
  {
    goto LABEL_3;
  }

LABEL_81:
  v49 = *v3;
  {
    v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v51 = v49[1];
    v52 = *(v49 + 4);
    if (!v52)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v59 = v49;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v51 = v59[1];
    v52 = *(v59 + 4);
    if (!v52)
    {
      goto LABEL_94;
    }
  }

  v53 = v51;
  v54 = v52;
  do
  {
    v55 = v54 >> 1;
    v56 = &v53[2 * (v54 >> 1)];
    v58 = *v56;
    v57 = v56 + 2;
    v54 += ~(v54 >> 1);
    if (v58 < v50)
    {
      v53 = v57;
    }

    else
    {
      v54 = v55;
    }
  }

  while (v54);
  if (v53 == &v51[2 * v52] || *v53 != v50)
  {
LABEL_94:
    v68 = v3;
    mlir::ShapedType::getShape(&v68);
    if (v60 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

  v61 = v53[1];
  *&v68 = v3;
  *(&v68 + 1) = v61;
  mlir::ShapedType::getShape(&v68);
  if (v62 != 1)
  {
    goto LABEL_3;
  }

LABEL_42:
  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::memref::ReshapeOp::parse(mlir::memref::ReshapeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, &v11))
  {
    return 0;
  }

  v12[0] = mlir::FunctionType::getInputs(&v11);
  v12[1] = v5;
  Results = mlir::FunctionType::getResults(&v11);
  mlir::OperationState::addTypes(a2, Results, v7);
  v10[0] = v16;
  v10[1] = v13;
  v8 = (*(*this + 16))(this);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(this, v10, v12, v8, a2 + 16) & 1;
}

uint64_t mlir::memref::detail::StoreOpGenericAdaptorBase::StoreOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::detail::StoreOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::StoreOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_118SimplifyAllocConstIN4mlir6memref7AllocOpEEE";
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
      v28 = &byte_25738CB84[v6];
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
  v25 = &byte_25738CB84[v23];
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
  if (byte_25738CB84[v5])
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t mlir::memref::detail::StoreOpGenericAdaptorBase::getNontemporalAttr(mlir::memref::detail::StoreOpGenericAdaptorBase *this)
{
  result = *(this + 3);
  if (!result)
  {
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = mlir::Attribute::getContext(this);
    return mlir::Builder::getBoolAttr(v5, 0);
  }

  return result;
}

BOOL mlir::memref::detail::StoreOpGenericAdaptorBase::getNontemporal(mlir::memref::detail::StoreOpGenericAdaptorBase *this)
{
  if (*(this + 3))
  {
    Context = *(this + 3);
    return mlir::BoolAttr::getValue(&Context);
  }

  else
  {
    Context = mlir::Attribute::getContext(this);
    Context = mlir::Builder::getBoolAttr(&Context, 0);
    if (Context)
    {
      return mlir::BoolAttr::getValue(&Context);
    }

    else
    {
      v3 = mlir::Attribute::getContext(this);
      BoolAttr = mlir::Builder::getBoolAttr(&v3, 0);
      return mlir::BoolAttr::getValue(&BoolAttr);
    }
  }
}

uint64_t mlir::memref::StoreOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v35 + 24 * v36;
      v12 = v32;
      *(v11 + 2) = v33;
      *v11 = v12;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v42;
      v15 = __p;
      if (v42 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v42 = v13;
      operator delete(v15);
    }

    v16 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v17 = v40;
    v18 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
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
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "nontemporal", 0xBuLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (mlir::BoolAttr::classof(v8))
  {
    *a1 = v9;
    return 1;
  }

  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 56;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = v35 + 24 * v36;
    v22 = v32;
    *(v21 + 2) = v33;
    *v21 = v22;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v23 = v35 + 24 * v36;
      v24 = v32;
      *(v23 + 2) = v33;
      *v23 = v24;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
  {
    if (v43 != &v44)
    {
      free(v43);
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
    }

    v16 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v28 = v40;
    v18 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v16;
      operator delete(v18);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
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
LABEL_47:
    v18 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::memref::StoreOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "nontemporal", 0xB, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::memref::StoreOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::StoreOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6F706D65746E6F6ELL ? (v4 = *(a3 + 3) == 0x6C61726F706D6574) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::memref::StoreOp::setInherentAttr(void *result, void *a2, uint64_t a3, void *a4)
{
  if (a3 == 11 && *a2 == 0x6F706D65746E6F6ELL && *(a2 + 3) == 0x6C61726F706D6574)
  {
    if (a4)
    {
      v5 = result;
      v7 = mlir::BoolAttr::classof(a4);
      result = v5;
      if (v7)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      *v5 = v8;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::memref::StoreOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "nontemporal", 0xBuLL, *a2);
  }

  return result;
}

BOOL mlir::memref::StoreOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v2);
}

BOOL mlir::memref::StoreOp::getNontemporal(mlir::memref::StoreOp *this)
{
  v1 = *this;
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v5)
  {
    return mlir::BoolAttr::getValue(&v5);
  }

  Context = mlir::Attribute::getContext((v1 + 24));
  BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
  return mlir::BoolAttr::getValue(&BoolAttr);
}

uint64_t mlir::memref::StoreOp::setNontemporal(uint64_t result, __int16 a2)
{
  v2 = a2;
  v3 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if ((a2 & 0x100) != 0)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    result = mlir::Builder::getBoolAttr(&Context, (v2 & 1));
    *(v3 + 64) = result;
  }

  else
  {
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t mlir::memref::StoreOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = a3;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  return mlir::OperationState::addOperands(a2, &v6, 1uLL);
}

uint64_t mlir::memref::StoreOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

  return result;
}

unint64_t mlir::memref::StoreOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v19 = a6;
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  if (a9)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a9;
  }

  v16 = *(a2 + 72);
  if (a4 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a4 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a4;
  return result;
}

uint64_t mlir::memref::StoreOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, mlir::MLIRContext *a7)
{
  v14 = a4;
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::Builder::getBoolAttr(a1, a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
  return result;
}

unint64_t mlir::memref::StoreOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9)
{
  v20 = a6;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::Builder::getBoolAttr(a1, a9);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = result;
  v17 = *(a2 + 72);
  if (a4 + v17 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v18 = 0;
    v19 = *(a2 + 64) + 8 * v17;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v18);
      *(v19 + 8 * v18++) = result;
    }

    while (a4 != v18);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + a4;
  return result;
}

uint64_t mlir::memref::StoreOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

BOOL mlir::memref::StoreOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v21[0] = v2;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v3, "nontemporal", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v21) & 1) == 0 || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v5 = 0;
    v6 = 64;
LABEL_6:
    v7 = v6 + 24;
    v8 = 2;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8) & 1) != 0)
    {
      ++v8;
      v7 += 32;
      if (v5 == v8)
      {
        v4 = *this;
        goto LABEL_10;
      }
    }

    return 0;
  }

  v5 = *(v4 + 17);
  if (v5 != 2)
  {
    v6 = *(v4 + 9) + 64;
    goto LABEL_6;
  }

LABEL_10:
  v21[0] = *(*(*(v4 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::MemRefType::getElementType(v21) == (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v19 = "failed to verify that type of 'value' matches element type of 'memref'";
  v20 = 259;
  mlir::OpState::emitOpError(this, &v19, v21);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v10 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v10;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v10;
    }

    v11 = __p;
    if (__p)
    {
      v12 = v27;
      v13 = __p;
      if (v27 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v27 = v11;
      operator delete(v13);
      result = v10;
    }

    v14 = v24;
    if (v24)
    {
      v15 = v25;
      v16 = v24;
      if (v25 != v24)
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
        v16 = v24;
      }

      v25 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v10;
    }
  }

  return result;
}

BOOL mlir::memref::StoreOp::parse(mlir::memref::StoreOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v35[16] = *MEMORY[0x277D85DE8];
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v25[0] = v26;
  v25[1] = 1;
  v33 = v35;
  v34 = 0x400000000;
  v23[1] = 1;
  v24 = 0;
  v23[0] = &v24;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v28, 1) & 1) != 0 && ((*(*this + 120))(this))
  {
    v5 = (*(*this + 40))(this);
    if ((*(*this + 704))(this, v26, 1) & 1) != 0 && ((*(*this + 312))(this))
    {
      (*(*this + 40))(this);
      if ((*(*this + 720))(this, &v33, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 328))(this))
      {
        v20[0] = (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112))
        {
          v6 = *(a2 + 1);
          v30 = this;
          v31 = v20;
          v32 = a2;
          if (mlir::memref::StoreOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30) && ((*(*this + 104))(this) & 1) != 0)
          {
            v30 = 0;
            if (mlir::AsmParser::parseType<mlir::MemRefType>(this, &v30))
            {
              v24 = v30;
              v22 = v30;
              if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
              {
                v7 = (*(*this + 16))(this);
                v21 = 257;
                (*(*this + 24))(&v30, this, v7, v20);
                mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v30, "'memref' must be memref of any type values, but got ");
                mlir::InFlightDiagnostic::append<mlir::Type const&>(v8, &v22);
                v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
                v11 = v33;
                if (v33 == v35)
                {
                  return v10;
                }

                goto LABEL_23;
              }

              v30 = llvm::cast<mlir::ShapedType,mlir::Type>(&v22);
              v31 = v12;
              mlir::ShapedType::getElementType(&v30);
              v13 = (*(*this + 32))(this);
              IndexType = mlir::Builder::getIndexType(v13, v14);
              v30 = v24;
              ElementType = mlir::MemRefType::getElementType(&v30);
              if ((*(*this + 728))(this, v28, ElementType, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v25, v23, v5, a2 + 16))
              {
                if (!v34)
                {
                  v10 = 1;
                  v11 = v33;
                  if (v33 == v35)
                  {
                    return v10;
                  }

                  goto LABEL_23;
                }

                v17 = v33;
                v18 = 32 * v34;
                while (((*(*this + 728))(this, v17, IndexType, a2 + 16) & 1) != 0)
                {
                  v17 += 4;
                  v10 = 1;
                  v18 -= 32;
                  if (!v18)
                  {
                    goto LABEL_22;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v10 = 0;
LABEL_22:
  v11 = v33;
  if (v33 != v35)
  {
LABEL_23:
    free(v11);
  }

  return v10;
}

void mlir::memref::StoreOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72) + 32;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v12 = 0;
  v11 = 0;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v3 + 24) = 0;
      *(v3 + 32) = v5;
      *(v3 + 36) = v6;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v9 = a2;
    mlir::mps::AssignVariableOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::memref::detail::TransposeOpGenericAdaptorBase::TransposeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 32), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 32), 0, 0);
  }

  return a1;
}

uint64_t mlir::memref::TransposeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'memref.transpose' op requires attribute 'permutation'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
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

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::memref::TransposeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v42;
      v26 = __p;
      if (v42 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v42 = v24;
      operator delete(v26);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "permutation", 0xBuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 56;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if (v44)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_49;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
LABEL_49:
      if (v35 != &v38)
      {
        free(v35);
      }

      return 0;
    }

    do
    {
      v21 = *--v18;
      v20 = v21;
      *v18 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v18 != v17);
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::memref::TransposeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "permutation", 0xB, *a2);
  if (v12 >= HIDWORD(v12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v11 + 16 * v12);
  *v4 = NamedAttr;
  v4[1] = v3;
  v5 = v11;
  v6 = __CFADD__(v12, 1);
  v7 = (v12 + 1);
  LODWORD(v12) = v12 + 1;
  if (v6)
  {
    result = 0;
    if (v11 == v13)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = mlir::Builder::getDictionaryAttr(&v10, v11, v7);
  v5 = v11;
  if (v11 != v13)
  {
LABEL_9:
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

unint64_t mlir::memref::TransposeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::TransposeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x746174756D726570 ? (v4 = *(a3 + 3) == 0x6E6F69746174756DLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::memref::TransposeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x746174756D726570 && *(a2 + 3) == 0x6E6F69746174756DLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::memref::TransposeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "permutation", 0xBuLL, *a2);
  }

  return result;
}

uint64_t mlir::memref::TransposeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v2) & 1;
}

uint64_t mlir::memref::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a5;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a6;
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

uint64_t mlir::memref::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::AffineMapAttr::get(a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = result;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::TransposeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v15 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::AffineMapAttr::get(a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
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

BOOL mlir::memref::TransposeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v3, "permutation", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
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
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'permutation'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

unint64_t mlir::memref::detail::ViewOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::ViewOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "_118SimplifyAllocConstIN4mlir6memref7AllocOpEEE";
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
      v28 = &byte_25738CB84[v6];
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
  v25 = &byte_25738CB84[v23];
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
  if (byte_25738CB84[v5])
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t mlir::memref::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v15);
      *(v16 + 8 * v15++) = result;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  return result;
}

unint64_t mlir::memref::ViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::ViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_47;
  }

  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = v4[1];
    v7 = *(v4 + 4);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_16;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v6 = v4[1];
  v7 = *(v4 + 4);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
    goto LABEL_14;
  }

  v14 = v8[1];
LABEL_16:
  v70[0] = v3;
  v70[1] = v14;
  ElementType = mlir::ShapedType::getElementType(v70);
  if (!mlir::Type::isSignlessInteger(&ElementType, 8))
  {
    goto LABEL_47;
  }

  v15 = *v3;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = v15[1];
    v18 = *(v15 + 4);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = v15[1];
    v18 = *(v15 + 4);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

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
  if (v19 != &v17[2 * v18] && *v19 == v16)
  {
    v25 = v19[1];
    v64 = v3;
    v65 = v25;
    if (mlir::ShapedType::hasRank(&v64))
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_29:
  v64 = v3;
  v65 = 0;
  if (mlir::ShapedType::hasRank(&v64))
  {
LABEL_32:
    v26 = *v3;
    {
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = v26[1];
      v29 = *(v26 + 4);
      if (v29)
      {
LABEL_34:
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
        if (v30 != &v28[2 * v29] && *v30 == v27)
        {
          v37 = v30[1];
          *&v68 = v3;
          *(&v68 + 1) = v37;
          mlir::ShapedType::getShape(&v68);
          if (v38 == 1)
          {
            goto LABEL_77;
          }

          goto LABEL_47;
        }
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v28 = v26[1];
      v29 = *(v26 + 4);
      if (v29)
      {
        goto LABEL_34;
      }
    }

    v68 = v3;
    mlir::ShapedType::getShape(&v68);
    if (v36 == 1)
    {
      goto LABEL_77;
    }
  }

LABEL_47:
  v66 = 261;
  v64 = "operand";
  v65 = 7;
  mlir::Operation::emitOpError(v70, v2, &v64);
  if (v70[0])
  {
    LODWORD(v68) = 3;
    *(&v68 + 1) = " #";
    v69 = 2;
    if (v72 >= v73)
    {
      if (v71 > &v68 || v71 + 24 * v72 <= &v68)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v71 + 24 * v72;
    v40 = v68;
    *(v39 + 2) = v69;
    *v39 = v40;
    v41 = ++v72;
    if (v70[0])
    {
      LODWORD(v68) = 5;
      *(&v68 + 1) = 0;
      if (v41 >= v73)
      {
        if (v71 > &v68 || v71 + 24 * v41 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v71 + 24 * v72;
      v43 = v68;
      *(v42 + 2) = v69;
      *v42 = v43;
      v44 = ++v72;
      if (v70[0])
      {
        LODWORD(v68) = 3;
        *(&v68 + 1) = " must be 1D memref of 8-bit signless integer values, but got ";
        v69 = 61;
        if (v44 >= v73)
        {
          if (v71 > &v68 || v71 + 24 * v44 <= &v68)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v71 + 24 * v72;
        v46 = v68;
        *(v45 + 2) = v69;
        *v45 = v46;
        ++v72;
        if (v70[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v68, v3);
          if (v72 >= v73)
          {
            if (v71 > &v68 || v71 + 24 * v72 <= &v68)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v71 + 24 * v72;
          v48 = v68;
          *(v47 + 2) = v69;
          *v47 = v48;
          ++v72;
        }
      }
    }
  }

  v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
  if (v70[0])
  {
    mlir::InFlightDiagnostic::report(v70);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v78;
      v52 = __p;
      if (v78 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v78 = v50;
      operator delete(v52);
    }

    v53 = v75;
    if (v75)
    {
      v54 = v76;
      v55 = v75;
      if (v76 != v75)
      {
        do
        {
          v57 = *--v54;
          v56 = v57;
          *v54 = 0;
          if (v57)
          {
            MEMORY[0x259C63150](v56, 0x1000C8077774924);
          }
        }

        while (v54 != v53);
        v55 = v75;
      }

      v76 = v53;
      operator delete(v55);
    }

    if (v71 != &v74)
    {
      free(v71);
    }
  }

  if (!v49)
  {
    return 0;
  }

LABEL_77:
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps5(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v58 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

    goto LABEL_94;
  }

  if (*(v58 + 17) != 2)
  {
    if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

LABEL_94:
    v58 = v70[0];
  }

  v59 = *(v58 + 9);
  v60 = v58 - 16;
  if (v59)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::memref::ViewOp::parse(mlir::memref::ViewOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28[16] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v26 = v28;
  v27 = 0x400000000;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  v23 = &v25;
  v24 = 0x100000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v16, 1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*this + 328))(this) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v26, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*this + 328))(this) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_20;
  }

  v21[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v21))
  {
    goto LABEL_20;
  }

  v15 = v21[0];
  v22 = 257;
  if (((*(*this + 400))(this, "to", 2, v21) & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((mlir::AsmParser::parseTypeList(this, &v23) & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v6, v7);
  mlir::OperationState::addTypes(a2, v23, v24);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v18, v14, v5, a2 + 16) & 1) == 0 || ((*(*this + 728))(this, v16, IndexType, a2 + 16) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v27)
  {
    v9 = v26;
    v10 = 32 * v27;
    while (((*(*this + 728))(this, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v11 = 1;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    v11 = 0;
LABEL_21:
    v12 = v23;
    if (v23 != &v25)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v11 = 1;
  v12 = v23;
  if (v23 != &v25)
  {
LABEL_22:
    free(v12);
  }

LABEL_23:
  if (v26 != v28)
  {
    free(v26);
  }

  return v11;
}

uint64_t mlir::memref::detail::SubViewOpGenericAdaptorBase::SubViewOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::detail::SubViewOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::SubViewOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 48);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

uint64_t mlir::memref::SubViewOpAdaptor::verify(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      if (a1[5])
      {
        return 1;
      }

      v24[0] = "'memref.subview' op requires attribute 'static_strides'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v32;
          v19 = __p;
          if (v32 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v32 = v17;
          operator delete(v19);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v20 = v30;
        v8 = v29;
        if (v30 == v29)
        {
LABEL_54:
          v30 = v6;
          operator delete(v8);
LABEL_55:
          if (v27 != &v28)
          {
            free(v27);
          }

          return v2;
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

        while (v20 != v6);
LABEL_53:
        v8 = v29;
        goto LABEL_54;
      }
    }

    else
    {
      v24[0] = "'memref.subview' op requires attribute 'static_sizes'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v14 = v30;
        v8 = v29;
        if (v30 == v29)
        {
          goto LABEL_54;
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

        while (v14 != v6);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v24[0] = "'memref.subview' op requires attribute 'static_offsets'";
    v25 = 259;
    mlir::emitError(a2, v24, v26);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v32;
        v5 = __p;
        if (v32 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v32 = v3;
        operator delete(v5);
      }

      v6 = v29;
      if (!v29)
      {
        goto LABEL_55;
      }

      v7 = v30;
      v8 = v29;
      if (v30 == v29)
      {
        goto LABEL_54;
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
      goto LABEL_53;
    }
  }

  return v2;
}

unint64_t mlir::memref::SubViewOp::getODSOperandIndexAndLength(mlir::memref::SubViewOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 88);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

uint64_t mlir::memref::SubViewOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  if (v4)
  {
    if (mlir::DictionaryAttr::get(&v16, "static_offsets", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_sizes", 0xCuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_strides", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v16, "operand_segment_sizes", 0x15uLL))
    {
      mlir::convertFromAttribute();
    }

    return 1;
  }

  else
  {
    a3(v19, a4);
    if (v19[0])
    {
      LODWORD(v17) = 3;
      *(&v17 + 1) = "expected DictionaryAttr to set properties";
      v18 = 41;
      if (v21 >= v22)
      {
        if (v20 > &v17 || v20 + 24 * v21 <= &v17)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v20 + 24 * v21;
      v7 = v17;
      *(v6 + 2) = v18;
      *v6 = v7;
      ++v21;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
      }
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v27;
        v10 = __p;
        if (v27 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v27 = v8;
        operator delete(v10);
      }

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        v13 = v24;
        if (v25 != v24)
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
          v13 = v24;
        }

        v25 = v11;
        operator delete(v13);
      }

      if (v20 != &v23)
      {
        free(v20);
      }
    }

    return 0;
  }
}

void mlir::memref::SubViewOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "static_offsets", 0xE, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "static_sizes", 0xC, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "static_strides", 0xE, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::memref::SubViewOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = a1[4];
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::memref::SubViewOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::memref::SubViewOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 8) = 0;
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *result = 0;
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *(v5 + 16) = 0;
      }
    }
  }

  return result;
}

void mlir::memref::SubViewOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 0xEuLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::memref::SubViewOp::verifyInherentAttrs(uint64_t a1, uint64_t a2)
{
  v4 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v4 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0)
  {
    v5 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v5 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) != 0)
    {
      v6 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v6 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::memref::SubViewOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) > 5)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 4uLL)))
    {
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
    {
      if (mlir::DenseArrayAttr::getSize(&v15) < 5)
      {
        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
      }

      v13 = "size mismatch for operand/result_segment_size";
      v14 = 259;
      (*(*a1 + 16))(v16, a1, &v13);
      if (v16[0])
      {
        mlir::InFlightDiagnostic::report(v16);
      }

      if (v24 == 1)
      {
        if (v23 != &v24)
        {
          free(v23);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v22;
          v6 = __p;
          if (v22 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v22 = v4;
          operator delete(v6);
        }

        v7 = v19;
        if (v19)
        {
          v8 = v20;
          v9 = v19;
          if (v20 != v19)
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
            v9 = v19;
          }

          v20 = v7;
          operator delete(v9);
        }

        if (v17 != &v18)
        {
          free(v17);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::memref::SubViewOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 4);
  }

  return result;
}

unint64_t mlir::memref::SubViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a11, a12);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  v21[6] = 1;
  v21[7] = a7;
  v21[8] = a10;
  v21[9] = a12;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a13;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a14;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 16) = a15;
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v26);
      *(v27 + 8 * v26++) = result;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
  return result;
}

void mlir::memref::SubViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  v14[6] = 1;
  v14[7] = a6;
  v14[8] = a8;
  v14[9] = a10;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::memref::SubViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  v14[6] = 1;
  v14[7] = a7;
  v14[8] = a10;
  v14[9] = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::memref::SubViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

uint64_t mlir::memref::SubViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
      {
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
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
      {
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
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v2) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) == 0)
    {
      return 0;
    }

    mlir::memref::SubViewOp::verifyInvariantsImpl();
    return LOBYTE(v35[0]);
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
      {
        do
        {
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v27 != v26);
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::memref::SubViewOp::parse(mlir::memref::SubViewOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v46[16] = *MEMORY[0x277D85DE8];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v44 = v46;
  v45 = 0x400000000;
  v31 = 0;
  v32 = 0;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v29 = 0;
  v30 = 0;
  v28[0] = &v29;
  v28[1] = 1;
  v27 = 0;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v34, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v44, &v32, v36, 0))
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    operator new();
  }

  *v6 = v32;
  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v41, &v31, v36, 0))
  {
    goto LABEL_31;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 8) = v31;
  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v38, &v30, v36, 0))
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 16) = v30;
  v26 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_31;
  }

  v9 = *(a2 + 1);
  v36[0] = this;
  v36[1] = &v26;
  v36[2] = a2;
  if (!mlir::memref::SubViewOp::verifyInherentAttrs(v9, a2 + 112))
  {
    goto LABEL_31;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v36))
  {
    goto LABEL_31;
  }

  v29 = v36[0];
  v37 = 257;
  if (((*(*this + 400))(this, "to", 2, v36) & 1) == 0)
  {
    goto LABEL_31;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v36))
  {
    goto LABEL_31;
  }

  v27 = v36[0];
  v10 = v45;
  v11 = v42;
  v12 = v39;
  v13 = mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(a2);
  v13[6] = 1;
  v13[7] = v10;
  v13[8] = v11;
  v13[9] = v12;
  v14 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v14, v15);
  mlir::OperationState::addTypes(a2, &v27, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v33, v28, v5, a2 + 16) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v45)
  {
    v17 = v44;
    v18 = 32 * v45;
    while (((*(*this + 728))(this, v17, IndexType, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    v23 = 0;
LABEL_32:
    v24 = v38;
    if (v38 != v40)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

LABEL_22:
  if (v42)
  {
    v19 = v41;
    v20 = 32 * v42;
    while (((*(*this + 728))(this, v19, IndexType, a2 + 16) & 1) != 0)
    {
      v19 += 32;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_31;
  }

LABEL_26:
  if (v39)
  {
    v21 = v38;
    v22 = 32 * v39;
    while (((*(*this + 728))(this, v21, IndexType, a2 + 16) & 1) != 0)
    {
      v21 += 32;
      v23 = 1;
      v22 -= 32;
      if (!v22)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  v23 = 1;
  v24 = v38;
  if (v38 != v40)
  {
LABEL_33:
    free(v24);
  }

LABEL_34:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v23;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void mlir::OpBuilder::createOrFold<mlir::memref::DimOp,mlir::Value &,long long &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::OperationState **a5)
{
  v29[38] = *MEMORY[0x277D85DE8];
  v26 = a3;
  Context = mlir::Attribute::getContext(&v26);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::DimOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::createOrFold<mlir::memref::DimOp,mlir::Value &,long long &>(v29, v28, v27);
  }

  mlir::OperationState::OperationState(v29, a3, v11);
  v13 = *a4;
  v28[0] = *a5;
  v14 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v29[0], v28);
  mlir::memref::DimOp::build(a1, v29, v13, v14 - 16);
  v16 = mlir::Operation::create(v29, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v17 + 32, v16);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v16);
    v20 = *v18;
    *NodePtr = *v18;
    NodePtr[1] = v18;
    *(v20 + 8) = NodePtr;
    *v18 = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v16);
  }

  if ((mlir::OpBuilder::tryFold(a1, v16, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v16);
    goto LABEL_18;
  }

  v21 = v16[9];
  if (v21)
  {
    v22 = (v16 - 4);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 8) = 0;
  if (v21 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    v23 = 0;
    v24 = *a2;
    do
    {
      *(v24 + 8 * v23) = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v23);
      ++v23;
    }

    while (v21 != v23);
    *(a2 + 8) += v21;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    (*(*v25 + 16))(v25, v16, 0, 0);
  }

LABEL_18:
  mlir::OperationState::~OperationState(v29);
}

void *anonymous namespace::SimplifyAllocConst<mlir::memref::AllocOp>::~SimplifyAllocConst(void *a1)
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

void anonymous namespace::SimplifyAllocConst<mlir::memref::AllocOp>::~SimplifyAllocConst(void *a1)
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

void mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType &,llvm::SmallVector<mlir::Value,4u> &,mlir::OperandRange,mlir::IntegerAttr>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v15, a2, v11);
    v13 = *a3;
    mlir::ValueRange::ValueRange(v17, *a4, *(a4 + 8));
    mlir::ValueRange::ValueRange(v16, *a5, *(a5 + 8));
    mlir::memref::AllocOp::build(a1, v15, v13, v17[0], v17[1], v16[0], v16[1]);
  }

  mlir::OpBuilder::create<mlir::memref::AllocOp,mlir::MemRefType &,llvm::SmallVector<mlir::Value,4u> &,mlir::OperandRange,mlir::IntegerAttr>(v15, v17, v16);
}

uint64_t mlir::OpBuilder::create<mlir::memref::CastOp,mlir::MemRefType,mlir::memref::AllocOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
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
  v17[0] = *a4 - 16;
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

void *anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocOp>::~SimplifyDeadAlloc(void *a1)
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

void anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocOp>::~SimplifyDeadAlloc(void *a1)
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

uint64_t anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v27.n128_u64[0] = v7;
  v27.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v27, &v28);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v27.n128_u64[0] = v9;
  v27.n128_u64[1] = v8;
  mlir::ResultRange::use_end(&v27, v25);
  v10 = v30;
  j = v30;
  v22 = v28;
  v23 = v29;
  for (i = v26; v30 != i; v10 = v30)
  {
    v12 = *(v10 + 16);
    v13 = *(*(v12 + 48) + 16);
    if (v12)
    {
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::memref::StoreOp,void>::id;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (*(*(v12 + 72) + 24) == v6)
      {
        return 0;
      }
    }

    else if (v13 != &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
    {
      return 0;
    }

    mlir::ResultRange::UseIterator::operator++(&v28);
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *&v22 = v17;
  *(&v22 + 1) = v16;
  mlir::ResultRange::use_begin(&v22, &v28);
  v18 = *(a2 + 36);
  if (v18)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v27.n128_u64[0] = v19;
  v27.n128_u64[1] = v18;
  mlir::ResultRange::use_end(&v27, v25);
  v20 = v26;
  v22 = v28;
  v23 = v29;
  v21 = v30;
  for (j = v30; j != v20; v21 = j)
  {
    mlir::ResultRange::UseIterator::operator++(&v22);
    (*(*a3 + 16))(a3, *(v21 + 16));
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

void *anonymous namespace::SimplifyAllocConst<mlir::memref::AllocaOp>::~SimplifyAllocConst(void *a1)
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

void anonymous namespace::SimplifyAllocConst<mlir::memref::AllocaOp>::~SimplifyAllocConst(void *a1)
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

void mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &,llvm::SmallVector<mlir::Value,4u> &,mlir::OperandRange,mlir::IntegerAttr>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id, Context);
  if (v12)
  {
    mlir::OperationState::OperationState(v15, a2, v11);
    v13 = *a3;
    mlir::ValueRange::ValueRange(v17, *a4, *(a4 + 8));
    mlir::ValueRange::ValueRange(v16, *a5, *(a5 + 8));
    mlir::memref::AllocaOp::build(a1, v15, v13, v17[0], v17[1], v16[0], v16[1]);
  }

  mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(v15, v17, v16);
}

void *anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocaOp>::~SimplifyDeadAlloc(void *a1)
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

void anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocaOp>::~SimplifyDeadAlloc(void *a1)
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

uint64_t anonymous namespace::SimplifyDeadAlloc<mlir::memref::AllocaOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v27.n128_u64[0] = v7;
  v27.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v27, &v28);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v27.n128_u64[0] = v9;
  v27.n128_u64[1] = v8;
  mlir::ResultRange::use_end(&v27, v25);
  v10 = v30;
  j = v30;
  v22 = v28;
  v23 = v29;
  for (i = v26; v30 != i; v10 = v30)
  {
    v12 = *(v10 + 16);
    v13 = *(*(v12 + 48) + 16);
    if (v12)
    {
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::memref::StoreOp,void>::id;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (*(*(v12 + 72) + 24) == v6)
      {
        return 0;
      }
    }

    else if (v13 != &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
    {
      return 0;
    }

    mlir::ResultRange::UseIterator::operator++(&v28);
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *&v22 = v17;
  *(&v22 + 1) = v16;
  mlir::ResultRange::use_begin(&v22, &v28);
  v18 = *(a2 + 36);
  if (v18)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v27.n128_u64[0] = v19;
  v27.n128_u64[1] = v18;
  mlir::ResultRange::use_end(&v27, v25);
  v20 = v26;
  v22 = v28;
  v23 = v29;
  v21 = v30;
  for (j = v30; j != v20; v21 = j)
  {
    mlir::ResultRange::UseIterator::operator++(&v22);
    (*(*a3 + 16))(a3, *(v21 + 16));
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

void *anonymous namespace::SimplifyDeadAlloc<mlir::memref::ReallocOp>::~SimplifyDeadAlloc(void *a1)
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

void anonymous namespace::SimplifyDeadAlloc<mlir::memref::ReallocOp>::~SimplifyDeadAlloc(void *a1)
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

uint64_t anonymous namespace::SimplifyDeadAlloc<mlir::memref::ReallocOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 36);
  v6 = a2 - 16;
  if (v5)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v27.n128_u64[0] = v7;
  v27.n128_u64[1] = v5;
  mlir::ResultRange::use_begin(&v27, &v28);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v27.n128_u64[0] = v9;
  v27.n128_u64[1] = v8;
  mlir::ResultRange::use_end(&v27, v25);
  v10 = v30;
  j = v30;
  v22 = v28;
  v23 = v29;
  for (i = v26; v30 != i; v10 = v30)
  {
    v12 = *(v10 + 16);
    v13 = *(*(v12 + 48) + 16);
    if (v12)
    {
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::memref::StoreOp,void>::id;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (*(*(v12 + 72) + 24) == v6)
      {
        return 0;
      }
    }

    else if (v13 != &mlir::detail::TypeIDResolver<mlir::memref::DeallocOp,void>::id)
    {
      return 0;
    }

    mlir::ResultRange::UseIterator::operator++(&v28);
  }

  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *&v22 = v17;
  *(&v22 + 1) = v16;
  mlir::ResultRange::use_begin(&v22, &v28);
  v18 = *(a2 + 36);
  if (v18)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  v27.n128_u64[0] = v19;
  v27.n128_u64[1] = v18;
  mlir::ResultRange::use_end(&v27, v25);
  v20 = v26;
  v22 = v28;
  v23 = v29;
  v21 = v30;
  for (j = v30; j != v20; v21 = j)
  {
    mlir::ResultRange::UseIterator::operator++(&v22);
    (*(*a3 + 16))(a3, *(v21 + 16));
  }

  (*(*a3 + 16))(a3, a2);
  return 1;
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::memref::AllocaScopeReturnOp>::Impl<mlir::memref::AllocaScopeOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "memref.alloca_scope.return", 26);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void AllocaScopeInliner::~AllocaScopeInliner(AllocaScopeInliner *this)
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

uint64_t AllocaScopeInliner::matchAndRewrite(uint64_t a1, mlir::ForwardIterator *a2)
{
  v11 = &v12;
  v12 = a2;
  if (mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)::{lambda(mlir::Operation *)#1}>, &v11, 0))
  {
    goto LABEL_17;
  }

  ParentOp = *(v12 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  {
    v10 = ParentOp;
    AllocaScopeInliner::matchAndRewrite();
    ParentOp = v10;
  }

  result = (*(**(ParentOp + 6) + 32))(*(ParentOp + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v4 = v12;
    v5 = *(v12 + 2);
    if (*(v12 + 1) == (v5 + 32))
    {
      if (mlir::Block::getTerminator(v5))
      {
        return 0;
      }
    }

    else
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v12 + 1));
      if (ValuePtr != mlir::Block::getTerminator(*(v4 + 2)))
      {
        return 0;
      }
    }

    Parent = mlir::Block::getParent(*(v4 + 2));
    v8 = *(Parent + 8);
    if (v8 == Parent)
    {
      return 0;
    }

    v9 = 1;
    do
    {
      v8 = *(v8 + 8);
      --v9;
    }

    while (v8 != Parent);
    if (v9)
    {
      return 0;
    }

LABEL_17:
    AllocaScopeInliner::matchAndRewrite();
    return 1;
  }

  return result;
}

uint64_t AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()(void **a1, uint64_t a2)
{
  v16[20] = *MEMORY[0x277D85DE8];
  if (**a1 == a2)
  {
    return 1;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_5;
  }

  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v11 = 0;
    InterfaceFor = 0;
    return 0;
  }

  v11 = a2;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!a2)
  {
    return 0;
  }

  v5 = *(a2 + 36);
  if (v5)
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    for (i = 0; v5 != i; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, i);
      v14 = v16;
      v15 = 0x400000000;
      mlir::MemoryEffectOpInterface::getEffects(&v11, &v14);
      v8 = llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(&v14, &NextResultAtOffset);
      v9 = (v14 + 40 * v15);
      if (v8 != v9)
      {
        v2 = v8[1];
      }

      if (v14 != v16)
      {
        free(v14);
      }

      if (v8 != v9)
      {
        v10 = v2[1];
        {
          if (v10 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
          {
            return 0;
          }
        }

        else
        {
          AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()();
          if (v10 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
          {
            return 0;
          }
        }
      }
    }
  }

LABEL_5:
  {
    AllocaScopeInliner::matchAndRewrite();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t **llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(uint64_t ***a1, void *a2)
{
  result = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = &result[5 * v4];
    v6 = 40 * v4;
    while (1)
    {
      v8 = **result;
      {
        if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v17 = result;
        v14 = a2;
        v16 = v5;
        v13 = v6;
        v15 = v8;
        llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>();
        a2 = v14;
        v6 = v13;
        v5 = v16;
        result = v17;
        if (v15 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
        {
LABEL_8:
          v9 = result[2];
          if (v9 >= 8 && (v10 = result[2] & 6, (v9 & 6) != 0))
          {
            v7 = v9 & 0xFFFFFFFFFFFFFFF8;
            if (v10 != 2 || v7 == 0)
            {
              if (v10 == 4)
              {
                v12 = v7;
              }

              else
              {
                v12 = 0;
              }

              if (v12)
              {
                v7 = v12;
              }
            }

            else
            {
              v7 = *(v7 + 24);
            }
          }

          else
          {
            v7 = 0;
          }

          if (v7 == *a2)
          {
            return result;
          }
        }
      }

      result += 5;
      v6 -= 40;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SideEffects::AutomaticAllocationScopeResource]";
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

void AllocaScopeHoister::~AllocaScopeHoister(AllocaScopeHoister *this)
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

uint64_t AllocaScopeHoister::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[6] = *MEMORY[0x277D85DE8];
  result = mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>(a2);
  if (!result)
  {
    return result;
  }

  result = *(a2 + 16);
  if (!result)
  {
    return result;
  }

  result = mlir::Block::getParentOp(result);
  if (!result)
  {
    return result;
  }

  v6 = result;
  {
    mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>();
  }

  if ((*(**(v6 + 48) + 32))(*(v6 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (*(a2 + 8) == (v7 + 32))
  {
    if (!mlir::Block::getTerminator(v7))
    {
      goto LABEL_11;
    }

    return 0;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(a2 + 8));
  if (ValuePtr != mlir::Block::getTerminator(*(a2 + 16)))
  {
    return 0;
  }

LABEL_11:
  Parent = mlir::Block::getParent(*(a2 + 16));
  v10 = *(Parent + 8);
  if (v10 == Parent)
  {
    return 0;
  }

  v11 = 1;
  do
  {
    v10 = *(v10 + 8);
    --v11;
  }

  while (v10 != Parent);
  if (v11)
  {
    return 0;
  }

  v12 = *(v6 + 16);
  if (*(v6 + 8) == (v12 + 32))
  {
    v13 = 0;
  }

  else
  {
    v13 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v6 + 8));
    v12 = *(v6 + 16);
  }

  if (v13 != mlir::Block::getTerminator(v12))
  {
    return 0;
  }

  v14 = mlir::Block::getParent(*(v6 + 16));
  v15 = *(v14 + 8);
  if (v15 == v14)
  {
    return 0;
  }

  v16 = 1;
  do
  {
    v15 = *(v15 + 8);
    --v16;
  }

  while (v15 != v14);
  if (v16)
  {
    return 0;
  }

  while (1)
  {
    ParentOp = *(v6 + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    {
      v22 = ParentOp;
      mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>();
      ParentOp = v22;
    }

    if ((*(**(ParentOp + 6) + 32))(*(ParentOp + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      break;
    }

    result = *(v6 + 16);
    if (!result)
    {
      return result;
    }

    result = mlir::Block::getParentOp(result);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v17 = *(result + 16);
    if (*(v6 + 8) == (v17 + 32))
    {
      v18 = 0;
    }

    else
    {
      v18 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v6 + 8));
      v17 = *(v6 + 16);
    }

    if (v18 != mlir::Block::getTerminator(v17))
    {
      return 0;
    }

    v19 = mlir::Block::getParent(*(v6 + 16));
    v20 = *(v19 + 8);
    if (v20 == v19)
    {
      return 0;
    }

    v21 = 1;
    do
    {
      v20 = *(v20 + 8);
      --v21;
    }

    while (v20 != v19);
    result = 0;
    if (v21)
    {
      return result;
    }
  }

  v24 = *(v6 + 44);
  v25 = 0;
  if ((v24 & 0x7FFFFF) != 0)
  {
    v26 = (((v6 + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v6 + 40));
    v27 = 24 * (v24 & 0x7FFFFF);
    do
    {
      v28 = *(a2 + 16);
      if (v28)
      {
        v29 = mlir::Block::getParent(v28);
      }

      else
      {
        v29 = 0;
      }

      if (v26 == v29 || mlir::Region::isProperAncestor(v26, v29))
      {
        v25 = v26;
      }

      v26 = (v26 + 24);
      v27 -= 24;
    }

    while (v27);
  }

  v34[1] = &v35;
  v35 = v37;
  v36 = 0x600000000;
  v33 = v25;
  v34[0] = &v33;
  mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<AllocaScopeHoister::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)::{lambda(mlir::Operation *)#1}>, v34, 1);
  if (v36)
  {
    v30 = *(v6 + 16);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v6);
    *(a3 + 24) = v30;
    *(a3 + 32) = NodePtr;
    if (v36)
    {
      mlir::OpBuilder::clone((a3 + 8), *v35);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v35 != v37)
  {
    v32 = result;
    free(v35);
    return v32;
  }

  return result;
}

uint64_t AllocaScopeHoister::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v23[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v18 = 0;
    InterfaceFor = 0;
    return 2;
  }

  if (!a2)
  {
    v18 = 0;
    InterfaceFor = 0;
    return 2;
  }

  v16 = a1;
  v18 = a2;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v4 = *(a2 + 36);
  if (v4)
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (!v4)
  {
    return 2;
  }

  v6 = 0;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v6);
    v21 = v23;
    v22 = 0x400000000;
    mlir::MemoryEffectOpInterface::getEffects(&v18, &v21);
    v7 = llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(&v21, &NextResultAtOffset);
    v8 = (v21 + 40 * v22);
    if (v7 != v8)
    {
      a1 = v7[1];
    }

    if (v21 != v23)
    {
      free(v21);
    }

    if (v7 == v8)
    {
      goto LABEL_12;
    }

    v9 = a1[1];
    {
      break;
    }

    AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()();
    if (v9 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
    {
      goto LABEL_20;
    }

LABEL_12:
    if (v4 == ++v6)
    {
      return 2;
    }
  }

  if (v9 != mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
  {
    goto LABEL_12;
  }

LABEL_20:
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v10 = *(a2 + 68);
    if (v10)
    {
      v11 = *v16;
      v12 = (*(a2 + 72) + 24);
      do
      {
        v21 = *v12;
        v13 = *v11;
        ParentRegion = mlir::Value::getParentRegion(&v21);
        if (v13 == ParentRegion || (mlir::Region::isProperAncestor(v13, ParentRegion) & 1) != 0)
        {
          return 2;
        }

        v12 += 4;
      }

      while (--v10);
    }
  }

  AllocaScopeHoister::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()(v16, a2);
  return 1;
}

void anonymous namespace::FoldCopyOfCast::~FoldCopyOfCast(_anonymous_namespace_::FoldCopyOfCast *this)
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