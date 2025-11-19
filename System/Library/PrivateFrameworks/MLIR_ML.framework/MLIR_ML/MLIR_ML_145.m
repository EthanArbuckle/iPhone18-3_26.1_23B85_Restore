uint64_t mlir::memref::AssumeAlignmentOp::parse(mlir::memref::AssumeAlignmentOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  v15 = 0;
  v16 = 0;
  v14[0] = &v15;
  v14[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 32))(this);
  IntegerType = mlir::Builder::getIntegerType(v6, 32);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v16, IntegerType))
  {
    return 0;
  }

  if (v16)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v16;
  }

  v13 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 1);
  v12[0] = this;
  v12[1] = &v13;
  v12[2] = a2;
  v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
  if (v10)
  {
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(v10, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AssumeAlignmentOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v12[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v12))
  {
    return 0;
  }

  v15 = v12[0];
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v17, v14, v5, a2 + 16) & 1;
}

void mlir::memref::AssumeAlignmentOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v19 = v21;
  v21[0] = "alignment";
  v21[1] = 9;
  v20 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v19, v20);
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
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::AtomicRMWOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::AtomicRMWOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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

uint64_t mlir::memref::AtomicRMWOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'memref.atomic_rmw' op requires attribute 'kind'";
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

uint64_t mlir::memref::AtomicRMWOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "kind", 4uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (mlir::arith::AtomicRMWKindAttr::classof(v8))
  {
    *a1 = v9;
    return 1;
  }

  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 49;
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

uint64_t mlir::memref::AtomicRMWOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "kind", 4, *a2);
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

unint64_t mlir::memref::AtomicRMWOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::AtomicRMWOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1684957547)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::memref::AtomicRMWOp::setInherentAttr(uint64_t *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1684957547)
  {
    if (a4)
    {
      v4 = result;
      v6 = mlir::arith::AtomicRMWKindAttr::classof(a4);
      result = v4;
      if (v6)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      *v4 = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::memref::AtomicRMWOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "kind", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::arith::AtomicRMWKindAttr::classof(a1) & 1) != 0)
  {
    return 1;
  }

  a4(&v26, a5);
  if (v26)
  {
    LODWORD(v23) = 3;
    *(&v23 + 1) = "attribute '";
    v24 = 11;
    if (v29 >= v30)
    {
      if (v28 > &v23 || v28 + 24 * v29 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v28 + 24 * v29;
    v12 = v23;
    *(v11 + 2) = v24;
    *v11 = v12;
    ++v29;
    if (v26)
    {
      v25 = 261;
      *&v23 = a2;
      *(&v23 + 1) = a3;
      mlir::Diagnostic::operator<<(&v27, &v23);
      if (v26)
      {
        LODWORD(v23) = 3;
        *(&v23 + 1) = "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14";
        v24 = 119;
        if (v29 >= v30)
        {
          if (v28 > &v23 || v28 + 24 * v29 <= &v23)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v28 + 24 * v29;
        v14 = v23;
        *(v13 + 2) = v24;
        *v13 = v14;
        ++v29;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v35;
      v17 = __p;
      if (v35 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v35 = v15;
      operator delete(v17);
    }

    v18 = v32;
    if (v32)
    {
      v19 = v33;
      v20 = v32;
      if (v33 != v32)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v19 != v18);
        v20 = v32;
      }

      v33 = v18;
      operator delete(v20);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v9;
}

BOOL mlir::memref::AtomicRMWOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::arith::AtomicRMWKindAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::AtomicRMWKindAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (mlir::arith::AtomicRMWKindAttr::classof(v27))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v33 + 24 * v34;
    v8 = v28;
    *(v7 + 2) = v29;
    *v7 = v8;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::AtomicRMWKindAttr]";
  *(&v28 + 1) = 80;
  v9 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(&v28 + 1);
    }

    v11 = 18;
    if (*(&v28 + 1) - v10 < 0x12)
    {
      v11 = *(&v28 + 1) - v10;
    }

    v12 = *(&v28 + 1) - v10 - v11;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v30 = 261;
    *&v28 = v28 + v10 + v11;
    *(&v28 + 1) = v12;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v33 + 24 * v34;
      v14 = v28;
      *(v13 + 2) = v29;
      *v13 = v14;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v33 + 24 * v34;
        v16 = v28;
        *(v15 + 2) = v29;
        *v15 = v16;
        ++v34;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::memref::AtomicRMWOp::setKind(uint64_t a1, unint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::AtomicRMWKindAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::memref::AtomicRMWOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a4;
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::memref::AtomicRMWOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = a5;
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a3;
  __src = v23;
  v22 = 0x200000000;
  mlir::ValueRange::ValueRange(&v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
  v24 = v20;
  if (v22 != 1)
  {
    if (!v22)
    {
      if (!HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v22) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(&v24, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v22;
  v16 = *(a2 + 72);
  if (v16 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v22);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v23)
  {
    free(__src);
  }
}

uint64_t mlir::memref::AtomicRMWOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::memref::AtomicRMWOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v19 = a7;
  v20 = a6;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, a9, a10);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a5;
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

uint64_t mlir::memref::AtomicRMWOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::arith::AtomicRMWKindAttr::get(*a1, a4);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = result;
  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v16) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::memref::AtomicRMWOp::build(uint64_t **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a5;
  v20 = a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v12 = mlir::arith::AtomicRMWKindAttr::get(*a1, a3);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = v12;
  __src = v25;
  v24 = 0x200000000;
  mlir::ValueRange::ValueRange(&v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  v26 = v22;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v15 = mlir::ValueRange::dereference_iterator(&v26, 0);
  v16 = __src;
  *__src = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = v24;
  v18 = *(a2 + 72);
  if (v18 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v24);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

unint64_t mlir::memref::AtomicRMWOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v20 = a7;
  v21 = a6;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::arith::AtomicRMWKindAttr::get(*a1, a5);
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

uint64_t mlir::memref::AtomicRMWOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::memref::AtomicRMWOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
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
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  v26[0] = a3;
  v26[1] = a4;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(v26, 0);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

BOOL mlir::memref::AtomicRMWOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v26 = v2;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(v3, "kind", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v26) & 1) == 0 || !mlir::memref::__mlir_ods_local_type_constraint_MemRefOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps3(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      if (*(v4 + 17) == 2)
      {
        goto LABEL_7;
      }

      if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
      {
        return 0;
      }
    }

    else if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

    v4 = v26;
LABEL_7:
    v5 = *(v4 + 9);
    v6 = v4 - 16;
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
    if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      if (*(*this + 9))
      {
        v10 = *this - 16;
      }

      else
      {
        v10 = 0;
      }

      v9 = *(*(*(*this + 9) + 24) + 8);
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7 && (*(*this + 9) ? (v11 = *this - 16) : (v11 = 0), v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0), v13 = *(*this + 9), (*(*(v13 + 24) + 8) ^ *(v12 + 8)) < 8))
      {
        v26 = *(*(v13 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (mlir::MemRefType::getElementType(&v26) == (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        else
        {
          v24[0] = "failed to verify that value type matches element type of memref";
          v25 = 259;
          mlir::OpState::emitOpError(this, v24, &v26);
          v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
        }
      }

      else
      {
        v24[0] = "failed to verify that all of {value, result} have same type";
        v25 = 259;
        mlir::OpState::emitOpError(this, v24, &v26);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
        if (v26)
        {
          mlir::InFlightDiagnostic::report(&v26);
        }

        if (v35 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v27);
        }
      }

      return v14;
    }

    return 0;
  }

  v24[0] = "requires attribute 'kind'";
  v25 = 259;
  mlir::OpState::emitOpError(this, v24, &v26);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v33;
      v17 = __p;
      if (v33 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v33 = v15;
      operator delete(v17);
    }

    v18 = v30;
    if (v30)
    {
      v19 = v31;
      v20 = v30;
      if (v31 != v30)
      {
        do
        {
          v22 = *--v19;
          v21 = v22;
          *v19 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v19 != v18);
        v20 = v30;
      }

      v31 = v18;
      operator delete(v20);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v14;
}

BOOL mlir::memref::__mlir_ods_local_type_constraint_MemRefOps2(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v37 = a2;
  if (mlir::Type::isSignlessInteger(&v37))
  {
    return 1;
  }

  v9 = *(*v37 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v9 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v36 = 261;
    v35[0] = a3;
    v35[1] = a4;
    mlir::Operation::emitOpError(v40, a1, v35);
    if (v40[0])
    {
      LODWORD(v38) = 3;
      *(&v38 + 1) = " #";
      v39 = 2;
      if (v42 >= v43)
      {
        if (v41 > &v38 || v41 + 24 * v42 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = v41 + 24 * v42;
      v17 = v38;
      *(v16 + 2) = v39;
      *v16 = v17;
      v18 = ++v42;
      if (v40[0])
      {
        LODWORD(v38) = 5;
        *(&v38 + 1) = a5;
        if (v18 >= v43)
        {
          if (v41 > &v38 || v41 + 24 * v18 <= &v38)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v19 = v41 + 24 * v42;
        v20 = v38;
        *(v19 + 2) = v39;
        *v19 = v20;
        v21 = ++v42;
        if (v40[0])
        {
          LODWORD(v38) = 3;
          *(&v38 + 1) = " must be signless integer or floating-point, but got ";
          v39 = 53;
          if (v21 >= v43)
          {
            if (v41 > &v38 || v41 + 24 * v21 <= &v38)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v22 = v41 + 24 * v42;
          v23 = v38;
          *(v22 + 2) = v39;
          *v22 = v23;
          ++v42;
          if (v40[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v38, v37);
            if (v42 >= v43)
            {
              if (v41 > &v38 || v41 + 24 * v42 <= &v38)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v24 = v41 + 24 * v42;
            v25 = v38;
            *(v24 + 2) = v39;
            *v24 = v25;
            ++v42;
          }
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    v26 = result;
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
      result = v26;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v26;
      }

      v27 = __p;
      if (__p)
      {
        v28 = v48;
        v29 = __p;
        if (v48 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v48 = v27;
        operator delete(v29);
        result = v26;
      }

      v30 = v45;
      if (v45)
      {
        v31 = v46;
        v32 = v45;
        if (v46 != v45)
        {
          do
          {
            v34 = *--v31;
            v33 = v34;
            *v31 = 0;
            if (v34)
            {
              MEMORY[0x259C63150](v33, 0x1000C8077774924);
            }
          }

          while (v31 != v30);
          v32 = v45;
        }

        v46 = v30;
        operator delete(v32);
        result = v26;
      }

      if (v41 != &v44)
      {
        free(v41);
        return v26;
      }
    }
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps3(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
LABEL_2:
    v57 = 261;
    v56[0] = a3;
    v56[1] = a4;
    mlir::Operation::emitOpError(v60, a1, v56);
    if (v60[0])
    {
      LODWORD(v58) = 3;
      *(&v58 + 1) = " #";
      v59 = 2;
      if (v62 >= v63)
      {
        if (v61 > &v58 || v61 + 24 * v62 <= &v58)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v61 + 24 * v62;
      v9 = v58;
      *(v8 + 2) = v59;
      *v8 = v9;
      v10 = ++v62;
      if (v60[0])
      {
        LODWORD(v58) = 5;
        *(&v58 + 1) = a5;
        if (v10 >= v63)
        {
          if (v61 > &v58 || v61 + 24 * v10 <= &v58)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v61 + 24 * v62;
        v12 = v58;
        *(v11 + 2) = v59;
        *v11 = v12;
        v13 = ++v62;
        if (v60[0])
        {
          LODWORD(v58) = 3;
          *(&v58 + 1) = " must be memref of signless integer or floating-point values, but got ";
          v59 = 70;
          if (v13 >= v63)
          {
            if (v61 > &v58 || v61 + 24 * v13 <= &v58)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v61 + 24 * v62;
          v15 = v58;
          *(v14 + 2) = v59;
          *v14 = v15;
          ++v62;
          if (v60[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
            if (v62 >= v63)
            {
              if (v61 > &v58 || v61 + 24 * v62 <= &v58)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v61 + 24 * v62;
            v17 = v58;
            *(v16 + 2) = v59;
            *v16 = v17;
            ++v62;
          }
        }
      }
    }

    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v60);
    if (v60[0])
    {
      mlir::InFlightDiagnostic::report(v60);
    }

    if (v70 == 1)
    {
      if (v69 != &v70)
      {
        free(v69);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v68;
        v21 = __p;
        if (v68 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v68 = v19;
        operator delete(v21);
      }

      v22 = v65;
      if (v65)
      {
        v23 = v66;
        v24 = v65;
        if (v66 != v65)
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
          v24 = v65;
        }

        v66 = v22;
        operator delete(v24);
      }

      if (v61 != &v64)
      {
        free(v61);
      }
    }

    return v18;
  }

  v27 = a1;
  v28 = a4;
  v29 = a3;
  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v7 + 8);
    v32 = *(v7 + 16);
    if (!v32)
    {
      goto LABEL_55;
    }
  }

  else
  {
    mlir::tensor::ExpandShapeOp::fold();
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = *(v7 + 8);
    v32 = *(v7 + 16);
    if (!v32)
    {
      goto LABEL_55;
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
  if (v33 != &v31[2 * v32] && *v33 == v30)
  {
    v39 = v33[1];
    goto LABEL_57;
  }

LABEL_55:
  v39 = 0;
LABEL_57:
  v60[0] = a2;
  v60[1] = v39;
  v56[0] = mlir::ShapedType::getElementType(v60);
  if (mlir::Type::isSignlessInteger(v56))
  {
    return 1;
  }

  v40 = *(*v56[0] + 17);
  v41 = v40 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v40 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v42 = v41 || v40 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v43 = v42 || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v44 = v43 || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v45 = v44 || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v46 = v45 || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v47 = v46 || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v48 = v47 || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v49 = v48 || v40 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v50 = v49 || v40 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v51 = v50 || v40 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v52 = v51 || v40 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v53 = v52 || v40 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  if (v53 || v40 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return 1;
  }

  v18 = 1;
  if (v40 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    a1 = v27;
    a4 = v28;
    a3 = v29;
    if (v40 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      goto LABEL_2;
    }
  }

  return v18;
}

BOOL mlir::memref::AtomicRMWOp::parse(mlir::memref::AtomicRMWOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v73[16] = *MEMORY[0x277D85DE8];
  memset(v56, 0, sizeof(v56));
  v57 = 0;
  v55[0] = v56;
  v55[1] = 1;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  v52[0] = v53;
  v52[1] = 1;
  v71 = v73;
  v72 = 0x400000000;
  v50[1] = 1;
  v51 = 0;
  v49 = 0;
  v50[0] = &v51;
  v48[0] = &v49;
  v48[1] = 1;
  v47 = 0;
  v46 = 0uLL;
  v69[0] = v70;
  v69[1] = 0x400000000;
  v70[8] = 4;
  v5 = (*(*this + 40))(this, a2, a3);
  v68[0] = xmmword_27983AE68;
  v68[1] = *&off_27983AE78;
  v68[2] = xmmword_27983AE88;
  v64 = xmmword_27983AE28;
  v65 = *&off_27983AE38;
  __p = xmmword_27983AE48;
  v67 = *&off_27983AE58;
  v63[2] = xmmword_27983ADE8;
  v63[3] = *&off_27983ADF8;
  v63[4] = xmmword_27983AE08;
  v63[5] = *&off_27983AE18;
  v61 = xmmword_27983ADA8;
  v62 = *&off_27983ADB8;
  v63[0] = xmmword_27983ADC8;
  v63[1] = *&off_27983ADD8;
  if ((*(*this + 424))(this, &v46, &v61, 15))
  {
    v6 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v69[0] != v70)
    {
      free(v69[0]);
    }

    v13 = (*(*this + 40))(this);
    if (((*(*this + 704))(this, v56, 1) & 1) == 0)
    {
      goto LABEL_49;
    }

    if (((*(*this + 120))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    v14 = (*(*this + 40))(this);
    if (((*(*this + 704))(this, v53, 1) & 1) == 0)
    {
      goto LABEL_49;
    }

    if (((*(*this + 312))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v71, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
    {
      goto LABEL_49;
    }

    if (((*(*this + 328))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    v69[0] = (*(*this + 40))(this);
    if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
    {
      goto LABEL_49;
    }

    v15 = *(a2 + 1);
    *&v61 = this;
    *(&v61 + 1) = v69;
    *&v62 = a2;
    if (!mlir::memref::AtomicRMWOp::verifyInherentAttrs(v15, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AtomicRMWOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v61))
    {
      goto LABEL_49;
    }

    if (((*(*this + 104))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    if (((*(*this + 280))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    *&v61 = 0;
    if (((*(*this + 536))(this, &v61) & 1) == 0)
    {
      goto LABEL_49;
    }

    v51 = v61;
    if (((*(*this + 120))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    *&v61 = 0;
    if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, &v61))
    {
      goto LABEL_49;
    }

    v49 = v61;
    if (((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    if (((*(*this + 56))(this) & 1) == 0)
    {
      goto LABEL_49;
    }

    *&v61 = 0;
    if (((*(*this + 536))(this, &v61) & 1) == 0)
    {
      goto LABEL_49;
    }

    v47 = v61;
    v16 = (*(*this + 32))(this);
    IndexType = mlir::Builder::getIndexType(v16, v17);
    mlir::OperationState::addTypes(a2, &v47, 1);
    if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v55, v50, v13, a2 + 16) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v52, v48, v14, a2 + 16) & 1) == 0)
    {
      goto LABEL_49;
    }

    if (v72)
    {
      v19 = v71;
      v20 = 32 * v72;
      while (((*(*this + 728))(this, v19, IndexType, a2 + 16) & 1) != 0)
      {
        v19 += 4;
        v21 = 1;
        v20 -= 32;
        if (!v20)
        {
          goto LABEL_82;
        }
      }

LABEL_49:
      v21 = 0;
      v34 = v71;
      if (v71 == v73)
      {
        return v21;
      }

      goto LABEL_83;
    }

    v21 = 1;
    v34 = v71;
    if (v71 == v73)
    {
      return v21;
    }

LABEL_83:
    free(v34);
    return v21;
  }

  v44[0] = 0;
  v22 = (*(*this + 32))(this);
  NoneType = mlir::Builder::getNoneType(v22, v23);
  v25 = (*(*this + 472))(this, v44, NoneType);
  if ((v25 & 0x100) == 0)
  {
    *&v58 = "expected string or keyword containing one of the following enum values for attribute 'kind' [addf, addi, assign, maximumf, maxs, maxu, minimumf, mins, minu, mulf, muli, ori, andi, maxnumf, minnumf]";
    v60 = 259;
    (*(*this + 24))(&v61, this, v5, &v58);
    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
    if (v61)
    {
      mlir::InFlightDiagnostic::report(&v61);
    }

    if (BYTE8(v68[0]) != 1)
    {
      goto LABEL_80;
    }

    if (*(&v67 + 1) != (v68 + 8))
    {
      free(*(&v67 + 1));
    }

    v26 = __p;
    if (__p)
    {
      v27 = *(&__p + 1);
      v28 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      *(&__p + 1) = v26;
      operator delete(v28);
    }

    v29 = *(&v64 + 1);
    if (!*(&v64 + 1))
    {
      goto LABEL_78;
    }

    v30 = v65;
    v31 = *(&v64 + 1);
    if (v65 == *(&v64 + 1))
    {
      goto LABEL_77;
    }

    do
    {
      v33 = *--v30;
      v32 = v33;
      *v30 = 0;
      if (v33)
      {
        MEMORY[0x259C63150](v32, 0x1000C8077774924);
      }
    }

    while (v30 != v29);
    goto LABEL_76;
  }

  if ((v25 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_80;
  }

  mlir::NamedAttrList::append(v69, "kind", 4uLL, v44[0]);
  *&v46 = mlir::StringAttr::getValue(v44);
  *(&v46 + 1) = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = mlir::arith::symbolizeAtomicRMWKind(v46, v6);
  if (v8)
  {
    v9 = v7;
    v10 = (*(*this + 32))(this);
    v11 = mlir::arith::AtomicRMWKindAttr::get(*v10, v9);
    v12 = *(a2 + 32);
    if (!v12)
    {
      operator new();
    }

    *v12 = v11;
    goto LABEL_7;
  }

  v44[0] = "invalid ";
  v45 = 259;
  (*(*this + 24))(&v61, this, v5, v44);
  if (v61)
  {
    LODWORD(v58) = 3;
    *(&v58 + 1) = "kind attribute specification: ";
    v59 = 31;
    if (LODWORD(v63[0]) >= DWORD1(v63[0]))
    {
      if (*(&v62 + 1) > &v58 || *(&v62 + 1) + 24 * LODWORD(v63[0]) <= &v58)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v35 = *(&v62 + 1) + 24 * LODWORD(v63[0]);
    v36 = v58;
    *(v35 + 16) = v59;
    *v35 = v36;
    ++LODWORD(v63[0]);
    if (v61)
    {
      v60 = 261;
      v58 = v46;
      mlir::Diagnostic::operator<<(&v61 + 8, &v58);
      if (v61)
      {
        mlir::Diagnostic::operator<<(&v61 + 8, 34);
      }
    }
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v61);
  if (v61)
  {
    mlir::InFlightDiagnostic::report(&v61);
  }

  if (BYTE8(v68[0]))
  {
    if (*(&v67 + 1) != (v68 + 8))
    {
      free(*(&v67 + 1));
    }

    v37 = __p;
    if (__p)
    {
      v38 = *(&__p + 1);
      v39 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      *(&__p + 1) = v37;
      operator delete(v39);
    }

    v29 = *(&v64 + 1);
    if (!*(&v64 + 1))
    {
      goto LABEL_78;
    }

    v40 = v65;
    v31 = *(&v64 + 1);
    if (v65 == *(&v64 + 1))
    {
LABEL_77:
      *&v65 = v29;
      operator delete(v31);
LABEL_78:
      if (*(&v62 + 1) != (v63 + 8))
      {
        free(*(&v62 + 1));
      }

      goto LABEL_80;
    }

    do
    {
      v42 = *--v40;
      v41 = v42;
      *v40 = 0;
      if (v42)
      {
        MEMORY[0x259C63150](v41, 0x1000C8077774924);
      }
    }

    while (v40 != v29);
LABEL_76:
    v31 = *(&v64 + 1);
    goto LABEL_77;
  }

LABEL_80:
  if (v69[0] != v70)
  {
    free(v69[0]);
  }

LABEL_82:
  v34 = v71;
  if (v71 != v73)
  {
    goto LABEL_83;
  }

  return v21;
}

void mlir::memref::AtomicRMWOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v12 = a2;
    v13 = a1;
    mlir::mps::ReadVariableOp::getEffects();
    a1 = v13;
    a2 = v12;
  }

  v24 = *(*a1 + 72) + 32;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v23 = 0;
  v22 = 0;
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
  mlir::affine::AffineDmaStartOp::getEffects();
  a1 = v19;
  a2 = v18;
LABEL_6:
  v24 = *(*a1 + 72) + 32;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v23 = 0;
  v22 = 0;
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
      *(v8 + 16) = v9 & 0xFFFFFFFFFFFFFFF9 | 2;
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

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
}

unint64_t mlir::memref::AtomicYieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::AtomicYieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::AtomicYieldOp::parse(mlir::memref::AtomicYieldOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
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

  v7 = 0;
  if (((*(*this + 536))(this, &v7) & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::memref::AtomicYieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::memref::CopyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v7 = a3;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  return mlir::OperationState::addOperands(a2, &v6, 1uLL);
}

unint64_t mlir::memref::CopyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::memref::CopyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::CopyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1;
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    else
    {
      mlir::tensor::ExpandShapeOp::fold();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9)
    {
      v38 = v12[1];
      goto LABEL_61;
    }

LABEL_59:
    v38 = 0;
LABEL_61:
    v44[0] = a2;
    v44[1] = v38;
    mlir::ShapedType::getElementType(v44);
    return 1;
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(v44, a1, v40);
  if (v44[0])
  {
    LODWORD(v42) = 3;
    *(&v42 + 1) = " #";
    v43 = 2;
    if (v46 >= v47)
    {
      if (v45 > &v42 || v45 + 24 * v46 <= &v42)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v19 = v45 + 24 * v46;
    v20 = v42;
    *(v19 + 2) = v43;
    *v19 = v20;
    v21 = ++v46;
    if (v44[0])
    {
      LODWORD(v42) = 5;
      *(&v42 + 1) = a5;
      if (v21 >= v47)
      {
        if (v45 > &v42 || v45 + 24 * v21 <= &v42)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v45 + 24 * v46;
      v23 = v42;
      *(v22 + 2) = v43;
      *v22 = v23;
      v24 = ++v46;
      if (v44[0])
      {
        LODWORD(v42) = 3;
        *(&v42 + 1) = " must be ranked or unranked memref of any type values, but got ";
        v43 = 63;
        if (v24 >= v47)
        {
          if (v45 > &v42 || v45 + 24 * v24 <= &v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v25 = v45 + 24 * v46;
        v26 = v42;
        *(v25 + 2) = v43;
        *v25 = v26;
        ++v46;
        if (v44[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
          if (v46 >= v47)
          {
            if (v45 > &v42 || v45 + 24 * v46 <= &v42)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v27 = v45 + 24 * v46;
          v28 = v42;
          *(v27 + 2) = v43;
          *v27 = v28;
          ++v46;
        }
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v33 = v49;
    if (v49)
    {
      v34 = v50;
      v35 = v49;
      if (v50 != v49)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            MEMORY[0x259C63150](v36, 0x1000C8077774924);
          }
        }

        while (v34 != v33);
        v35 = v49;
      }

      v50 = v33;
      operator delete(v35);
    }

    if (v45 != &v48)
    {
      free(v45);
    }
  }

  return v29;
}

uint64_t mlir::memref::CopyOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
  {
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1;
  }

  return result;
}

uint64_t mlir::memref::CopyOp::parse(mlir::memref::CopyOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v8[0] = &v9;
  v8[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v16, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && (v6 = (*(*this + 40))(this), ((*(*this + 704))(this, v13, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v18[0] = 0, mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, v18)) && (v11 = v18[0], v19 = 257, ((*(*this + 400))(this, "to", 2, v18)) && (v18[0] = 0, mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, v18)) && (v9 = v18[0], (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v15, v10, v5, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v12, v8, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::memref::CopyOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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
  v25 = v27;
  v26 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v25, v26);
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
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (v20[3] - v21 > 1uLL)
  {
    *v21 = 28532;
    v20[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, "to", 2uLL);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }
}

void mlir::memref::CopyOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v12 = a2;
    v13 = a1;
    mlir::mps::ReadVariableOp::getEffects();
    a1 = v13;
    a2 = v12;
  }

  v24 = *(*a1 + 72);
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
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
  mlir::affine::AffineDmaStartOp::getEffects();
  a1 = v19;
  a2 = v18;
LABEL_6:
  v24 = *(*a1 + 72) + 32;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v23 = 0;
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
      *(v8 + 16) = v9 & 0xFFFFFFFFFFFFFFF9 | 2;
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

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
}

unint64_t mlir::memref::detail::GenericAtomicRMWOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::GenericAtomicRMWOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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

BOOL mlir::memref::GenericAtomicRMWOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
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
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7) & 1) != 0)
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
  v10 = v8 ? v9 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  if (!mlir::memref::__mlir_ods_local_type_constraint_MemRefOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v26[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::MemRefType::getElementType(v26);
  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  if (ElementType == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v24 = "failed to verify that result type matches element type of memref";
  v25 = 259;
  mlir::OpState::emitOpError(this, &v24, v26);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  v15 = result;
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
    result = v15;
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v32;
      v18 = __p;
      if (v32 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v32 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v29;
    if (v29)
    {
      v20 = v30;
      v21 = v29;
      if (v30 != v29)
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
        v21 = v29;
      }

      v30 = v19;
      operator delete(v21);
      result = v15;
    }

    if (v27 != &v28)
    {
      free(v27);
      return v15;
    }
  }

  return result;
}

uint64_t mlir::memref::GenericAtomicRMWOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v13 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::MemRefType::getElementType(&v13);
  return 1;
}

void mlir::memref::GenericAtomicRMWOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v12 = a2;
    v13 = a1;
    mlir::mps::ReadVariableOp::getEffects();
    a1 = v13;
    a2 = v12;
  }

  v24 = *(*a1 + 72);
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v23 = 0;
  v22 = 0;
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
  mlir::affine::AffineDmaStartOp::getEffects();
  a1 = v19;
  a2 = v18;
LABEL_6:
  v24 = *(*a1 + 72);
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v23 = 0;
  v22 = 0;
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
      *(v8 + 16) = v9 & 0xFFFFFFFFFFFFFFF9 | 2;
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

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
}

uint64_t mlir::memref::detail::LoadOpGenericAdaptorBase::LoadOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::memref::detail::LoadOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::LoadOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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

uint64_t mlir::memref::detail::LoadOpGenericAdaptorBase::getNontemporalAttr(mlir::memref::detail::LoadOpGenericAdaptorBase *this)
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

BOOL mlir::memref::detail::LoadOpGenericAdaptorBase::getNontemporal(mlir::memref::detail::LoadOpGenericAdaptorBase *this)
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

uint64_t mlir::memref::LoadOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::memref::LoadOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

unint64_t mlir::memref::LoadOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::LoadOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

void *mlir::memref::LoadOp::setInherentAttr(void *result, void *a2, uint64_t a3, void *a4)
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

uint64_t mlir::memref::LoadOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "nontemporal", 0xBuLL, *a2);
  }

  return result;
}

BOOL mlir::memref::LoadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(a1, v2);
}

BOOL mlir::memref::LoadOp::getNontemporal(mlir::memref::LoadOp *this)
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

uint64_t mlir::memref::LoadOp::setNontemporal(uint64_t result, __int16 a2)
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

uint64_t mlir::memref::LoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
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
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::memref::LoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  __src = v22;
  v21 = 0x200000000;
  mlir::ValueRange::ValueRange(&v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  v23 = v19;
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

  v17 = *(mlir::ValueRange::dereference_iterator(&v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::MemRefType::getElementType(&v17);
  v13 = __src;
  *__src = ElementType;
  v14 = v21;
  v15 = *(a2 + 72);
  if (v15 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v21);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t mlir::memref::LoadOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v13 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::MemRefType::getElementType(&v13);
  return 1;
}

unint64_t mlir::memref::LoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v19 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  if (a8)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a8;
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

uint64_t mlir::memref::LoadOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, mlir::MLIRContext *a7)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::Builder::getBoolAttr(a1, a7);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = result;
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::memref::LoadOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, mlir::MLIRContext *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a6);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = BoolAttr;
  __src = v24;
  v23 = 0x200000000;
  mlir::ValueRange::ValueRange(&v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v20, *(a2 + 224), *(a2 + 232));
  v25 = v21;
  if (v23 != 1)
  {
    if (!v23)
    {
      if (!HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v23) = 1;
  }

  v19 = *(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::MemRefType::getElementType(&v19);
  v15 = __src;
  *__src = ElementType;
  v16 = v23;
  v17 = *(a2 + 72);
  if (v17 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v23);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v24)
  {
    free(__src);
  }
}

unint64_t mlir::memref::LoadOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, mlir::MLIRContext *a8)
{
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  result = mlir::Builder::getBoolAttr(a1, a8);
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

uint64_t mlir::memref::LoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::memref::LoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x277D85DE8];
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
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v26;
  v25 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v27[0] = a3;
  v27[1] = a4;
  if (v25 != 1)
  {
    if (!v25)
    {
      if (!HIDWORD(v25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v25) = 1;
  }

  v22 = *(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::MemRefType::getElementType(&v22);
  v19 = __src;
  *__src = ElementType;
  v20 = v25;
  v21 = *(a2 + 72);
  if (v21 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v25);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::memref::LoadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v27[0] = v2;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v3, "nontemporal", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27) & 1) == 0 || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v6 = -1;
    v7 = 32;
LABEL_6:
    v8 = v7 + 24;
    v9 = 1;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v9) & 1) != 0)
    {
      ++v9;
      v8 += 32;
      if (!--v6)
      {
        v4 = *this;
        goto LABEL_10;
      }
    }

    return 0;
  }

  v5 = *(v4 + 17);
  v6 = v5 - 1;
  if (v5 != 1)
  {
    v7 = *(v4 + 9) + 32;
    goto LABEL_6;
  }

LABEL_10:
  v10 = *(v4 + 9);
  v11 = v4 - 16;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  v27[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::MemRefType::getElementType(v27);
  if (*(*this + 9))
  {
    v14 = *this - 16;
  }

  else
  {
    v14 = 0;
  }

  if (ElementType == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v25 = "failed to verify that result type matches element type of 'memref'";
  v26 = 259;
  mlir::OpState::emitOpError(this, &v25, v27);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
  v16 = result;
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
    result = v16;
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
      result = v16;
    }

    v17 = __p;
    if (__p)
    {
      v18 = v33;
      v19 = __p;
      if (v33 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v33 = v17;
      operator delete(v19);
      result = v16;
    }

    v20 = v30;
    if (v30)
    {
      v21 = v31;
      v22 = v30;
      if (v31 != v30)
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
        v22 = v30;
      }

      v31 = v20;
      operator delete(v22);
      result = v16;
    }

    if (v28 != &v29)
    {
      free(v28);
      return v16;
    }
  }

  return result;
}

BOOL mlir::memref::LoadOp::parse(mlir::memref::LoadOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v45[16] = *MEMORY[0x277D85DE8];
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  v43 = v45;
  v44 = 0x400000000;
  v35[1] = 1;
  v36 = 0;
  v35[0] = &v36;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v38, 1) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_33;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v43, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (((*(*this + 328))(this) & 1) == 0)
  {
    goto LABEL_33;
  }

  v32[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_33;
  }

  v6 = *(a2 + 1);
  ElementType = this;
  v41 = v32;
  v42 = a2;
  v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
  if (v7)
  {
    if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v7, "nontemporal", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::LoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &ElementType) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_33;
  }

  ElementType = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, &ElementType))
  {
    goto LABEL_33;
  }

  v8 = ElementType;
  v36 = ElementType;
  v34 = ElementType;
  v9 = *ElementType;
  if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = (*(*this + 16))(this);
    v33 = 257;
    (*(*this + 24))(&ElementType, this, v10, v32);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&ElementType, "'memref' must be memref of any type values, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v11, &v34);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&ElementType);
    v14 = v43;
    if (v43 == v45)
    {
      return v13;
    }

    goto LABEL_35;
  }

  {
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v16 = *(v9 + 8);
    v17 = *(v9 + 16);
    if (v17)
    {
      goto LABEL_15;
    }

LABEL_22:
    v17 = 0;
    v18 = v16;
    goto LABEL_23;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v16 = *(v9 + 8);
  v17 = *(v9 + 16);
  if (!v17)
  {
    goto LABEL_22;
  }

LABEL_15:
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
LABEL_23:
  if (v18 != &v16[2 * v17] && *v18 == v15)
  {
    v24 = v18[1];
  }

  else
  {
    v24 = 0;
  }

  ElementType = v8;
  v41 = v24;
  mlir::ShapedType::getElementType(&ElementType);
  v25 = v35[0];
  v26 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v26, v27);
  v32[0] = *v25;
  ElementType = mlir::MemRefType::getElementType(v32);
  mlir::OperationState::addTypes(a2, &ElementType, 1);
  if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v37, v35, v5, a2 + 16))
  {
    if (!v44)
    {
      v13 = 1;
      v14 = v43;
      if (v43 == v45)
      {
        return v13;
      }

      goto LABEL_35;
    }

    v29 = v43;
    v30 = 32 * v44;
    while (((*(*this + 728))(this, v29, IndexType, a2 + 16) & 1) != 0)
    {
      v29 += 4;
      v13 = 1;
      v30 -= 32;
      if (!v30)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v13 = 0;
LABEL_34:
  v14 = v43;
  if (v43 != v45)
  {
LABEL_35:
    free(v14);
  }

  return v13;
}

void mlir::memref::LoadOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::mps::ReadVariableOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *(*a1 + 72);
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
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

uint64_t mlir::memref::detail::AllocOpGenericAdaptorBase::AllocOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
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
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::detail::AllocOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::AllocOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 32);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 48);
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

  v10 = (this + 4 * v3 + 32);
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

uint64_t mlir::memref::detail::AllocOpGenericAdaptorBase::getAlignment(mlir::memref::detail::AllocOpGenericAdaptorBase *this)
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

uint64_t mlir::memref::AllocOpAdaptor::verify(uint64_t a1, uint64_t a2)
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

  v14[0] = "'memref.alloc' op attribute 'alignment' failed to satisfy constraint: 64-bit signless integer attribute whose minimum value is 0";
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

unint64_t mlir::memref::AllocOp::getODSOperandIndexAndLength(mlir::memref::AllocOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 72);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 88);
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

  v12 = (16 * v2 + 4 * v5 + *this + 72);
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

uint64_t mlir::memref::AllocOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_52;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_51;
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
    goto LABEL_50;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "alignment", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
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

      if ((v44 & 1) == 0)
      {
        return 0;
      }

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
LABEL_52:
        if (v35 != &v38)
        {
          free(v35);
        }

        return 0;
      }

      v18 = v40;
      v19 = v39;
      if (v40 == v39)
      {
LABEL_51:
        v40 = v17;
        operator delete(v19);
        goto LABEL_52;
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
LABEL_50:
      v19 = v39;
      goto LABEL_51;
    }

    *a1 = v8;
  }

  if (mlir::DictionaryAttr::get(&v31, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v31, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::memref::AllocOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v8;
  v7 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v5, "alignment", 9, *a2);
    if (v7 >= HIDWORD(v7))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = (v6 + 16 * v7);
    *v4 = NamedAttr;
    v4[1] = v3;
    LODWORD(v7) = v7 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::memref::AllocOp::computePropertiesHash(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = *(a1 + 12) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * *(a1 + 8) + 8));
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

uint64_t mlir::memref::AllocOp::getInherentAttr(int a1, uint64_t a2, void *__s1, size_t __n)
{
  if (__n == 21)
  {
    if (memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (__n == 19)
  {
    if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return 0;
    }

LABEL_13:
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
  {
    return *a2;
  }

  return 0;
}

uint64_t mlir::memref::AllocOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  if (a3 == 21)
  {
    result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
    if (result)
    {
      return result;
    }
  }

  else
  {
    if (a3 != 19)
    {
      if (a3 == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          *result = v6;
        }

        else
        {
          *result = 0;
        }
      }

      return result;
    }

    result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
    if (result)
    {
      return result;
    }
  }

  if (a4)
  {
    mlir::detail::DenseArrayAttrImpl<int>::classof();
  }

  return result;
}

void mlir::memref::AllocOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "alignment", 9uLL, *a2);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *&v27 = a1;
    v8 = a4;
    v9 = a5;
    Type = mlir::IntegerAttr::getType(&v27);
    isSignlessInteger = mlir::Type::isSignlessInteger(&Type, 64);
    a5 = v9;
    a4 = v8;
    if (isSignlessInteger)
    {
      v26 = a1;
      Int = mlir::IntegerAttr::getInt(&v26);
      a5 = v9;
      a4 = v8;
      if ((Int & 0x8000000000000000) == 0)
      {
        return 1;
      }
    }
  }

  a4(&Type, a5);
  if (Type)
  {
    LODWORD(v27) = 3;
    *(&v27 + 1) = "attribute '";
    v28 = 11;
    if (v33 >= v34)
    {
      if (v32 > &v27 || v32 + 24 * v33 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = v32 + 24 * v33;
    v14 = v27;
    *(v13 + 2) = v28;
    *v13 = v14;
    ++v33;
    if (Type)
    {
      v29 = 261;
      *&v27 = a2;
      *(&v27 + 1) = a3;
      mlir::Diagnostic::operator<<(&v31, &v27);
      if (Type)
      {
        LODWORD(v27) = 3;
        *(&v27 + 1) = "' failed to satisfy constraint: 64-bit signless integer attribute whose minimum value is 0";
        v28 = 90;
        if (v33 >= v34)
        {
          if (v32 > &v27 || v32 + 24 * v33 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v32 + 24 * v33;
        v16 = v27;
        *(v15 + 2) = v28;
        *v15 = v16;
        ++v33;
      }
    }
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
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
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v12;
}

uint64_t mlir::memref::AllocOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 8), 2uLL))
      {
        return 1;
      }
    }

    else
    {
      v15 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v15) < 3)
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
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::memref::AllocOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 8), 2);
  }

  return result;
}

uint64_t mlir::memref::AllocOp::getAlignment(mlir::memref::AllocOp *this)
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

uint64_t mlir::memref::AllocOp::setAlignment(uint64_t result, unint64_t a2, char a3)
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

void mlir::memref::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v8, 0, 0);
  v6 = v8[0];
  v7 = v8[1];
  mlir::ValueRange::ValueRange(v9, 0, 0);
  mlir::memref::AllocOp::build(a1, a2, a3, v6, v7, v9[0], v9[1]);
}

void mlir::memref::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v10, 0, 0);
  mlir::memref::AllocOp::build(a1, a2, a3, a4, a5, v10[0], v10[1]);
}

void mlir::memref::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = *(a2 + 72);
  if (v10 < *(a2 + 76))
  {
    *(*(a2 + 64) + 8 * v10) = a3;
    ++*(a2 + 72);
    mlir::OperationState::addOperands(a2, a4, a5);
    mlir::OperationState::addOperands(a2, a6, a7);
    mlir::Builder::getDenseI32ArrayAttr();
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void mlir::memref::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = &v19;
  v18 = 0x600000000;
  v14 = &v16;
  v15 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, &v14, &v17);
  v10 = mlir::MemRefType::get(v17, v18, a5, 0, 0, a6);
  mlir::ValueRange::ValueRange(v13, v14, v15);
  v11 = v13[0];
  v12 = v13[1];
  mlir::ValueRange::ValueRange(v20, 0, 0);
  mlir::memref::AllocOp::build(a1, a2, v10, v11, v12, v20[0], v20[1]);
}

uint64_t mlir::memref::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v11 = a5;
  mlir::OperationState::addOperands(a2, a4, a5);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = v11 | (a7 << 32);
  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *v16 = a8;
  }

  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v11 = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v11 | (a8 << 32);
  if (a9)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = a9;
  }

  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

uint64_t mlir::memref::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::AllocOp::verifyInvariantsImpl(mlir::memref::AllocOp *this)
{
  v1 = *this;
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v4 = v1;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v2, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v4) & 1) == 0)
  {
    return 0;
  }

  mlir::memref::AllocOp::verifyInvariantsImpl();
  return v5;
}

uint64_t mlir::memref::AllocOp::parse(mlir::memref::AllocOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  v21 = v23;
  v22 = 0x400000000;
  if (((*(*this + 280))() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((*(*this + 320))(this))
  {
    (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v21, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 328))(this) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v20 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(a2 + 1);
  v19[0] = this;
  v19[1] = &v20;
  v19[2] = a2;
  v6 = mlir::NamedAttrList::get(a2 + 112, **(v5 + 96));
  if (v6)
  {
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v6, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, &v20))
  {
    goto LABEL_21;
  }

  v19[0] = v20;
  v7 = v25;
  v8 = v22;
  *(mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocOpGenericAdaptorBase::Properties>(a2) + 8) = v7 | (v8 << 32);
  v9 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v9, v10);
  mlir::OperationState::addTypes(a2, v19, 1);
  if (v25)
  {
    v12 = v24;
    v13 = 32 * v25;
    while (((*(*this + 728))(this, v12, IndexType, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

LABEL_21:
    v16 = 0;
LABEL_22:
    v17 = v21;
    if (v21 != v23)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (v22)
  {
    v14 = v21;
    v15 = 32 * v22;
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

    goto LABEL_21;
  }

  v16 = 1;
  v17 = v21;
  if (v21 != v23)
  {
LABEL_23:
    free(v17);
  }

LABEL_24:
  if (v24 != v26)
  {
    free(v24);
  }

  return v16;
}

void mlir::memref::AllocOp::getEffects(void *a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::memref::AllocOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *a1 - 16;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
  v12 = 0;
  v11 = 1;
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
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 4;
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

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

uint64_t mlir::memref::detail::AllocaOpGenericAdaptorBase::AllocaOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
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
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

unint64_t mlir::memref::detail::AllocaOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::memref::detail::AllocaOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 32);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 48);
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

  v10 = (this + 4 * v3 + 32);
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

uint64_t mlir::memref::detail::AllocaOpGenericAdaptorBase::getAlignment(mlir::memref::detail::AllocaOpGenericAdaptorBase *this)
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

uint64_t mlir::memref::AllocaOpAdaptor::verify(uint64_t a1, uint64_t a2)
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

  v14[0] = "'memref.alloca' op attribute 'alignment' failed to satisfy constraint: 64-bit signless integer attribute whose minimum value is 0";
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

unint64_t mlir::memref::AllocaOp::getODSOperandIndexAndLength(mlir::memref::AllocaOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 72);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 88);
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

  v12 = (16 * v2 + 4 * v5 + *this + 72);
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

uint64_t mlir::memref::AllocaOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_52;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_51;
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
    goto LABEL_50;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "alignment", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
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

      if ((v44 & 1) == 0)
      {
        return 0;
      }

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
LABEL_52:
        if (v35 != &v38)
        {
          free(v35);
        }

        return 0;
      }

      v18 = v40;
      v19 = v39;
      if (v40 == v39)
      {
LABEL_51:
        v40 = v17;
        operator delete(v19);
        goto LABEL_52;
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
LABEL_50:
      v19 = v39;
      goto LABEL_51;
    }

    *a1 = v8;
  }

  if (mlir::DictionaryAttr::get(&v31, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v31, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::memref::AllocaOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v8;
  v7 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v5, "alignment", 9, *a2);
    if (v7 >= HIDWORD(v7))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = (v6 + 16 * v7);
    *v4 = NamedAttr;
    v4[1] = v3;
    LODWORD(v7) = v7 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::memref::AllocaOp::computePropertiesHash(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = *(a1 + 12) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * *(a1 + 8) + 8));
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

uint64_t mlir::memref::AllocaOp::getInherentAttr(int a1, uint64_t a2, void *__s1, size_t __n)
{
  if (__n == 21)
  {
    if (memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (__n == 19)
  {
    if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return 0;
    }

LABEL_13:
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
  {
    return *a2;
  }

  return 0;
}

uint64_t mlir::memref::AllocaOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  if (a3 == 21)
  {
    result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
    if (result)
    {
      return result;
    }
  }

  else
  {
    if (a3 != 19)
    {
      if (a3 == 9 && *__s1 == 0x6E656D6E67696C61 && *(__s1 + 8) == 116)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          *result = v6;
        }

        else
        {
          *result = 0;
        }
      }

      return result;
    }

    result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
    if (result)
    {
      return result;
    }
  }

  if (a4)
  {
    mlir::detail::DenseArrayAttrImpl<int>::classof();
  }

  return result;
}

void mlir::memref::AllocaOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "alignment", 9uLL, *a2);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

uint64_t mlir::memref::AllocaOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 8), 2uLL))
      {
        return 1;
      }
    }

    else
    {
      v15 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v15) < 3)
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
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::memref::AllocaOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 8), 2);
  }

  return result;
}

uint64_t mlir::memref::AllocaOp::getAlignment(mlir::memref::AllocaOp *this)
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

uint64_t mlir::memref::AllocaOp::setAlignment(uint64_t result, unint64_t a2, char a3)
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

void mlir::memref::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v8, 0, 0);
  v6 = v8[0];
  v7 = v8[1];
  mlir::ValueRange::ValueRange(v9, 0, 0);
  mlir::memref::AllocaOp::build(a1, a2, a3, v6, v7, v9[0], v9[1]);
}

void mlir::memref::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v10, 0, 0);
  mlir::memref::AllocaOp::build(a1, a2, a3, a4, a5, v10[0], v10[1]);
}

void mlir::memref::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = *(a2 + 72);
  if (v10 < *(a2 + 76))
  {
    *(*(a2 + 64) + 8 * v10) = a3;
    ++*(a2 + 72);
    mlir::OperationState::addOperands(a2, a4, a5);
    mlir::OperationState::addOperands(a2, a6, a7);
    mlir::Builder::getDenseI32ArrayAttr();
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void mlir::memref::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = &v19;
  v18 = 0x600000000;
  v14 = &v16;
  v15 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, &v14, &v17);
  v10 = mlir::MemRefType::get(v17, v18, a5, 0, 0, a6);
  mlir::ValueRange::ValueRange(v13, v14, v15);
  v11 = v13[0];
  v12 = v13[1];
  mlir::ValueRange::ValueRange(v20, 0, 0);
  mlir::memref::AllocaOp::build(a1, a2, v10, v11, v12, v20[0], v20[1]);
}

uint64_t mlir::memref::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v11 = a5;
  mlir::OperationState::addOperands(a2, a4, a5);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = v11 | (a7 << 32);
  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *v16 = a8;
  }

  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::memref::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v11 = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v11 | (a8 << 32);
  if (a9)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = a9;
  }

  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

uint64_t mlir::memref::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::AllocaOp::verifyInvariantsImpl(mlir::memref::AllocaOp *this)
{
  v1 = *this;
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v4 = v1;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v2, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v4) & 1) == 0)
  {
    return 0;
  }

  mlir::memref::AllocOp::verifyInvariantsImpl();
  return v5;
}

uint64_t mlir::memref::AllocaOp::parse(mlir::memref::AllocaOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  v21 = v23;
  v22 = 0x400000000;
  if (((*(*this + 280))() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((*(*this + 320))(this))
  {
    (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v21, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 328))(this) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v20 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(a2 + 1);
  v19[0] = this;
  v19[1] = &v20;
  v19[2] = a2;
  v6 = mlir::NamedAttrList::get(a2 + 112, **(v5 + 96));
  if (v6)
  {
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps4(v6, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AllocaOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, &v20))
  {
    goto LABEL_21;
  }

  v19[0] = v20;
  v7 = v25;
  v8 = v22;
  *(mlir::OperationState::getOrAddProperties<mlir::memref::detail::AllocaOpGenericAdaptorBase::Properties>(a2) + 8) = v7 | (v8 << 32);
  v9 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v9, v10);
  mlir::OperationState::addTypes(a2, v19, 1);
  if (v25)
  {
    v12 = v24;
    v13 = 32 * v25;
    while (((*(*this + 728))(this, v12, IndexType, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

LABEL_21:
    v16 = 0;
LABEL_22:
    v17 = v21;
    if (v21 != v23)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (v22)
  {
    v14 = v21;
    v15 = 32 * v22;
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

    goto LABEL_21;
  }

  v16 = 1;
  v17 = v21;
  if (v21 != v23)
  {
LABEL_23:
    free(v17);
  }

LABEL_24:
  if (v24 != v26)
  {
    free(v24);
  }

  return v16;
}

void mlir::memref::AllocaOp::getEffects(void *a1, uint64_t a2)
{
  {
    v7 = a1;
    v8 = a2;
    mlir::memref::AllocOp::getEffects();
    a1 = v7;
    a2 = v8;
  }

  v13 = *a1 - 16;
  v14 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>(void)::instance;
  v12 = 0;
  v11 = 1;
  {
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v13;
      v5 = v12;
      v6 = v11;
      *v3 = v14;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 4;
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
    mlir::memref::AllocaOp::getEffects();
    a2 = v9;
    v10 = mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v9 + 8);
    if (v2 < *(v9 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v14, &v13, &v12, &v11, &v10);
}

void mlir::memref::AllocaScopeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::memref::AllocaScopeOp::verifyInvariantsImpl(unsigned int **this)
{
  v44 = *MEMORY[0x277D85DE8];
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

  v6 = ((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10];
  v7 = *(v6 + 8);
  if (v7 != v6 && *(v7 + 8) == v6)
  {
    return 1;
  }

  v28 = "region #";
  v29 = 259;
  mlir::Operation::emitOpError(&v32, v2, &v28);
  if (v32)
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = 0;
    if (v35 >= v36)
    {
      if (v34 > &v25 || v34 + 24 * v35 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v34 + 24 * v35;
    v9 = v25;
    *(v8 + 2) = v26;
    *v8 = v9;
    ++v35;
    v10 = v32 == 0;
  }

  else
  {
    v10 = 1;
  }

  v24 = 1283;
  v23[0] = " ('";
  v23[2] = "bodyRegion";
  v23[3] = 10;
  *&v25 = v23;
  v26 = "') ";
  v27 = 770;
  if (!v10)
  {
    mlir::Diagnostic::operator<<(&v33, &v25);
    if (v32)
    {
      LODWORD(v30) = 3;
      *(&v30 + 1) = "failed to verify constraint: region with 1 blocks";
      v31 = 49;
      if (v35 >= v36)
      {
        if (v34 > &v30 || v34 + 24 * v35 <= &v30)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v34 + 24 * v35;
      v12 = v30;
      *(v11 + 2) = v31;
      *v11 = v12;
      ++v35;
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v41;
      v16 = __p;
      if (v41 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v41 = v14;
      operator delete(v16);
    }

    v17 = v38;
    if (v38)
    {
      v18 = v39;
      v19 = v38;
      if (v39 != v38)
      {
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
        v19 = v38;
      }

      v39 = v17;
      operator delete(v19);
    }

    if (v34 != &v37)
    {
      free(v34);
    }
  }

  return v13;
}

unint64_t mlir::memref::AllocaScopeReturnOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::AllocaScopeReturnOp::parse(mlir::memref::AllocaScopeReturnOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0x400000000;
  v9[0] = &v10;
  v9[1] = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0 || (v5 = (*(*this + 40))(this), ((*(*this + 720))(this, &v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || v12 && (((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v9) & 1) == 0))
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

uint64_t mlir::memref::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::memref::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::CastOp::verifyInvariantsImpl(mlir::Operation **this)
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
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::memref::CastOp::verifyInvariants(mlir::Operation **this)
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
    return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps6(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::memref::CastOp::parse(mlir::memref::CastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
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

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, v13))
  {
    return 0;
  }

  v9 = v13[0];
  v14 = 257;
  if (((*(*this + 400))(this, "to", 2, v13) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, &v7))
  {
    return 0;
  }

  v13[0] = v7;
  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::memref::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
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
  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v7, v23, v24);
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
  if (v16[3] - v17 > 1uLL)
  {
    *v17 = 28532;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "to", 2uLL);
  }

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

  if (*(*this + 9))
  {
    v20 = *this - 16;
  }

  else
  {
    v20 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::CollapseShapeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::memref::CollapseShapeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v27 = *(a1 + 24);
    Value = mlir::ArrayAttr::getValue(&v27);
    v4 = mlir::ArrayAttr::getValue(&v27);
    v6 = v4 + 8 * v5;
    if (v6 == Value)
    {
      return 1;
    }

    while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v30 = *Value;
      v7 = mlir::ArrayAttr::getValue(&v30);
      v8 = mlir::ArrayAttr::getValue(&v30);
      v10 = v8 + 8 * v9;
      if (v10 != v7)
      {
        while (*v7)
        {
          if (*(**v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            break;
          }

          v28[0] = *v7;
          v31[0] = mlir::IntegerAttr::getType(v28);
          if (!mlir::Type::isSignlessInteger(v31, 64))
          {
            break;
          }

          v7 += 8;
          if (v7 == v10)
          {
            goto LABEL_10;
          }
        }

        break;
      }

LABEL_10:
      Value += 8;
      if (Value == v6)
      {
        return 1;
      }
    }

    v28[0] = "'memref.collapse_shape' op attribute 'reassociation' failed to satisfy constraint: Array of 64-bit integer array attributes";
    v29 = 259;
    mlir::emitError(a2, v28, v31);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
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
      if (!v34)
      {
        goto LABEL_46;
      }

      v16 = v35;
      v17 = v34;
      if (v35 == v34)
      {
LABEL_45:
        v35 = v15;
        operator delete(v17);
LABEL_46:
        if (v32 != &v33)
        {
          free(v32);
        }

        return v11;
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
LABEL_44:
      v17 = v34;
      goto LABEL_45;
    }
  }

  else
  {
    v28[0] = "'memref.collapse_shape' op requires attribute 'reassociation'";
    v29 = 259;
    mlir::emitError(a2, v28, v31);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v39 == 1)
    {
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
      if (!v34)
      {
        goto LABEL_46;
      }

      v23 = v35;
      v17 = v34;
      if (v35 == v34)
      {
        goto LABEL_45;
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
      goto LABEL_44;
    }
  }

  return v11;
}

uint64_t mlir::memref::CollapseShapeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "reassociation", 0xDuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 58;
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

uint64_t mlir::memref::CollapseShapeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "reassociation", 0xD, *a2);
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

unint64_t mlir::memref::CollapseShapeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::memref::CollapseShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x69636F7373616572 ? (v4 = *(a3 + 5) == 0x6E6F69746169636FLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::memref::CollapseShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

uint64_t mlir::memref::CollapseShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "reassociation", 0xDuLL, *a2);
  }

  return result;
}

uint64_t mlir::memref::CollapseShapeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2) & 1;
}

void mlir::memref::CollapseShapeOp::build(uint64_t **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v18[8] = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a4, a5, &v16);
  mlir::memref::CollapseShapeOp::build(a1, a2, a3, v16, v17, a6, a7);
  v12 = v16;
  if (v17)
  {
    v13 = v16 + 32 * v17 - 16;
    v14 = -32 * v17;
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
    v12 = v16;
  }

  if (v12 != v18)
  {
    free(v12);
  }
}

uint64_t mlir::memref::CollapseShapeOp::build(uint64_t **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  Context = mlir::Attribute::getContext(a2);
  v22 = 261;
  v20 = "reassociation";
  v21 = 13;
  v14 = mlir::StringAttr::get(Context, &v20, v13);
  mlir::NamedAttribute::NamedAttribute(v19, v14, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(a2 + 112, v19[0], v19[1]);
  v15 = mlir::TypeRange::TypeRange(&v20, &v18, 1uLL);
  return mlir::memref::CollapseShapeOp::build(v15, a2, v20, v21, &v17, 1uLL, a7, a8);
}

void mlir::memref::CollapseShapeOp::build(uint64_t **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v32 = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a5, a6, &v26);
  v23 = a4;
  v24 = a3;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, v26, v27);
  Context = mlir::Attribute::getContext(a2);
  v31 = 261;
  v29 = "reassociation";
  v30 = 13;
  v17 = mlir::StringAttr::get(Context, &v29, v16);
  mlir::NamedAttribute::NamedAttribute(v25, v17, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(a2 + 112, v25[0], v25[1]);
  v18 = mlir::TypeRange::TypeRange(&v29, &v24, 1uLL);
  mlir::memref::CollapseShapeOp::build(v18, a2, v29, v30, &v23, 1uLL, a7, a8);
  v19 = v26;
  if (v27)
  {
    v20 = v26 + 32 * v27 - 16;
    v21 = -32 * v27;
    do
    {
      v22 = *(v20 - 2);
      if (v20 != v22)
      {
        free(v22);
      }

      v20 -= 32;
      v21 += 32;
    }

    while (v21);
    v19 = v26;
  }

  if (v19 != &v28)
  {
    free(v19);
  }
}

uint64_t mlir::memref::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

BOOL mlir::memref::CollapseShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v3, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
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
    v16 = "requires attribute 'reassociation'";
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

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps8(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    goto LABEL_18;
  }

  v10 = a1;
  {
    v42 = v9;
    mlir::tensor::ExpandShapeOp::fold();
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v42 + 8);
    v13 = *(v42 + 16);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_16;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v20 = v14[1];
LABEL_16:
  v47[0] = a2;
  v47[1] = v20;
  mlir::ShapedType::getElementType(v47);
  isStrided = mlir::isStrided(a2);
  a1 = v10;
  if (isStrided)
  {
    return 1;
  }

LABEL_18:
  v44 = 261;
  v43[0] = a3;
  v43[1] = a4;
  mlir::Operation::emitOpError(v47, a1, v43);
  if (v47[0])
  {
    LODWORD(v45) = 3;
    *(&v45 + 1) = " #";
    v46 = 2;
    if (v49 >= v50)
    {
      if (v48 > &v45 || v48 + 24 * v49 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v48 + 24 * v49;
    v24 = v45;
    *(v23 + 2) = v46;
    *v23 = v24;
    v25 = ++v49;
    if (v47[0])
    {
      LODWORD(v45) = 5;
      *(&v45 + 1) = a5;
      if (v25 >= v50)
      {
        if (v48 > &v45 || v48 + 24 * v25 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = v48 + 24 * v49;
      v27 = v45;
      *(v26 + 2) = v46;
      *v26 = v27;
      v28 = ++v49;
      if (v47[0])
      {
        LODWORD(v45) = 3;
        *(&v45 + 1) = " must be strided memref of any type values, but got ";
        v46 = 52;
        if (v28 >= v50)
        {
          if (v48 > &v45 || v48 + 24 * v28 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = v48 + 24 * v49;
        v30 = v45;
        *(v29 + 2) = v46;
        *v29 = v30;
        ++v49;
        if (v47[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v45, a2);
          if (v49 >= v50)
          {
            if (v48 > &v45 || v48 + 24 * v49 <= &v45)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v31 = v48 + 24 * v49;
          v32 = v45;
          *(v31 + 2) = v46;
          *v31 = v32;
          ++v49;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v55;
      v35 = __p;
      if (v55 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v55 = v33;
      operator delete(v35);
    }

    v36 = v52;
    if (v52)
    {
      v37 = v53;
      v38 = v52;
      if (v53 != v52)
      {
        do
        {
          v40 = *--v37;
          v39 = v40;
          *v37 = 0;
          if (v40)
          {
            MEMORY[0x259C63150](v39, 0x1000C8077774924);
          }
        }

        while (v37 != v36);
        v38 = v52;
      }

      v53 = v36;
      operator delete(v38);
    }

    if (v48 != &v51)
    {
      free(v48);
    }
  }

  return v22;
}

uint64_t mlir::memref::CollapseShapeOp::parse(mlir::memref::CollapseShapeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v14 = 0;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*this + 32))(this);
  v8 = mlir::NoneType::get(*v6, v7);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v17, v8))
  {
    return 0;
  }

  if (v17)
  {
    v9 = *(a2 + 32);
    if (!v9)
    {
      operator new();
    }

    *v9 = v17;
  }

  v13 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 1);
  v21[0] = this;
  v21[1] = &v13;
  v21[2] = a2;
  v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96));
  if (v11)
  {
    if ((mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v11, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v21[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v21))
  {
    return 0;
  }

  v16 = v21[0];
  v22 = 257;
  if (((*(*this + 400))(this, "into", 4, v21) & 1) == 0)
  {
    return 0;
  }

  v21[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(this, v21))
  {
    return 0;
  }

  v14 = v21[0];
  mlir::OperationState::addTypes(a2, &v14, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v18, v15, v5, a2 + 16) & 1;
}

void mlir::memref::CollapseShapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v25 = v27;
  v27[0] = "reassociation";
  v27[1] = 13;
  v26 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v9, v25, v26);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (v18[3] - v19 > 3uLL)
  {
    *v19 = 1869901417;
    v18[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v18, "into", 4uLL);
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
  if (v25 != v27)
  {
    free(v25);
  }
}

unint64_t mlir::memref::DeallocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::memref::DeallocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::memref::DeallocOp::parse(mlir::memref::DeallocOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
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

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::BaseMemRefType>(this, &v7))
  {
    return 0;
  }

  v9 = v7;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::memref::DeallocOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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