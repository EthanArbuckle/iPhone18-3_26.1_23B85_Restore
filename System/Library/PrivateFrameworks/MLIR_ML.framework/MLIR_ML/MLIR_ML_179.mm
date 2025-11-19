uint64_t mlir::arith::OrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::OrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::arith::OrIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::OrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::OrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::OrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::arith::OrIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::OrIOp::parse(mlir::arith::OrIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v10, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v8, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v6 = 0, ((*(*this + 536))(this, &v6)) && (v7 = v6, mlir::OperationState::addTypes(a2, &v7, 1), ((*(*this + 728))(this, v10, v7, a2 + 16)))
  {
    return (*(*this + 728))(this, v8, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::OrIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
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
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v21, v22);
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t mlir::arith::detail::RemFOpGenericAdaptorBase::RemFOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::RemFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "fastmath", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 53;
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

uint64_t mlir::arith::RemFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "fastmath", 8, *a2);
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

unint64_t mlir::arith::RemFOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::RemFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::RemFOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::arith::RemFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "fastmath", 8uLL, *a2);
  }

  return result;
}

BOOL mlir::arith::RemFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v2);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::RemFOp::setFastmath(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::FastMathFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::RemFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a5;
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::RemFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a5)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a5;
  }

  __src = v19;
  v18 = 0x200000000;
  mlir::ValueRange::ValueRange(&v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  v20 = v16;
  if (v18 != 1)
  {
    if (!v18)
    {
      if (!HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v18) = 1;
  }

  v9 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v10 = __src;
  *__src = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v18;
  v12 = *(a2 + 72);
  if (v12 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v18);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::arith::RemFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::RemFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

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

uint64_t mlir::arith::RemFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::RemFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v8 = mlir::arith::FastMathFlagsAttr::get(*a1, a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v21;
  v20 = 0x200000000;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v22 = v18;
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

  v11 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v12 = __src;
  *__src = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  v13 = v20;
  v14 = *(a2 + 72);
  if (v14 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v20);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::arith::RemFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
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

uint64_t mlir::arith::RemFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::RemFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

mlir::MLIRContext *mlir::arith::RemFOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::FastMathFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::arith::RemFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v7 = v2;
  if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::arith::RemFOp::parse(mlir::arith::RemFOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 408))(this, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(this, &v11, 0))
    {
      return 0;
    }

    if (v11)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::RemFOpGenericAdaptorBase::Properties>(a2);
      *v5 = v11;
    }
  }

  v10 = (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v6 = *(a2 + 1);
    v9[0] = this;
    v9[1] = &v10;
    v9[2] = a2;
    v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
    if (!v7 || (mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v7, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::RemFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*this + 104))(this))
    {
      v10 = 0;
      if ((*(*this + 536))(this, &v10))
      {
        v9[0] = v10;
        mlir::OperationState::addTypes(a2, v9, 1);
        if ((*(*this + 728))(this, v14, v9[0], a2 + 16))
        {
          return (*(*this + 728))(this, v12, v9[0], a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::RemFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v10 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
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
    if (v14[3] - v15 > 7uLL)
    {
      *v15 = 0x6874616D74736166;
      v14[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "fastmath", 8uLL);
    }

    v32 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v16 = (*(*a2 + 16))(a2);
      v17 = (*(*v16 + 80))(v16) + v16[4] - v16[2];
      mlir::arith::FastMathFlagsAttr::print(&v32, a2);
      if (v17 == (*(*v16 + 80))(v16) + v16[4] - v16[2])
      {
        (*(*a2 + 40))(a2, v32);
      }
    }
  }

  v32 = v34;
  v34[0] = "fastmath";
  v34[1] = 8;
  v33 = 0x200000001;
  v18 = mlir::Attribute::getContext((*this + 24));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v19 && v19 == mlir::arith::FastMathFlagsAttr::get(v18, 0))
  {
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v32 + 16 * v33;
    *v20 = "fastmath";
    v20[1] = 8;
    LODWORD(v33) = v33 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v22, v32, v33);
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

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  if (*(*this + 9))
  {
    v29 = *this - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }
}

uint64_t mlir::arith::RemSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::RemSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::arith::RemSIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::RemSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::RemSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::RemSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::arith::RemSIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::RemSIOp::parse(mlir::arith::RemSIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v10, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v8, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v6 = 0, ((*(*this + 536))(this, &v6)) && (v7 = v6, mlir::OperationState::addTypes(a2, &v7, 1), ((*(*this + 728))(this, v10, v7, a2 + 16)))
  {
    return (*(*this + 728))(this, v8, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::RemSIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
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
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v21, v22);
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t mlir::arith::RemUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::RemUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::arith::RemUIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::RemUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::RemUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::RemUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::arith::RemUIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::RemUIOp::parse(mlir::arith::RemUIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v10, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v8, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v6 = 0, ((*(*this + 536))(this, &v6)) && (v7 = v6, mlir::OperationState::addTypes(a2, &v7, 1), ((*(*this + 728))(this, v10, v7, a2 + 16)))
  {
    return (*(*this + 728))(this, v8, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::RemUIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
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
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v21, v22);
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t mlir::arith::SIToFPOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::arith::SIToFPOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::arith::SIToFPOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::arith::SIToFPOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Shape = mlir::TensorType::getShape(v43);
    v9 = v7;
    v4 = *this;
  }

  else
  {
    v9 = 0;
    Shape = 0;
  }

  v11 = *(v4 + 9);
  v12 = v4 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 9))
    {
      v16 = *this - 16;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = mlir::TensorType::getShape(v39);
    if (v9 != v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (!memcmp(Shape, v17, 8 * v9))
  {
    if (*(*this + 9))
    {
      v28 = *this - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (*(*this + 9))
      {
        v31 = *this - 16;
      }

      else
      {
        v31 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::TensorType::getShape(&v42);
      v33 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v41 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = mlir::TensorType::getShape(&v41);
      if (v33 != v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    if (!memcmp(v34, v37, 8 * v33))
    {
      return 1;
    }
  }

LABEL_28:
  v39[0] = "failed to verify that input and output have the same tensor dimensions";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v19 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v19;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v49;
      v22 = __p;
      if (v49 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v49 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v46;
    if (v46)
    {
      v24 = v47;
      v25 = v46;
      if (v47 != v46)
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
        v25 = v46;
      }

      v47 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v44 != &v45)
    {
      free(v44);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::arith::SIToFPOp::parse(mlir::arith::SIToFPOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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
  if (((*(*this + 536))(this, v13) & 1) == 0)
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
  if (((*(*this + 536))(this, &v7) & 1) == 0)
  {
    return 0;
  }

  v13[0] = v7;
  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::arith::SIToFPOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::detail::ShLIOpGenericAdaptorBase::ShLIOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::ShLIOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "overflowFlags", 0xDuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::ShLIOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "overflowFlags", 0xD, *a2);
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

unint64_t mlir::arith::ShLIOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::ShLIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::ShLIOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::ShLIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "overflowFlags", 0xDuLL, *a2);
  }

  return result;
}

BOOL mlir::arith::ShLIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, v2);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::ShLIOp::setOverflowFlags(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::IntegerOverflowFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::ShLIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a5;
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::ShLIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a5)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a5;
  }

  __src = v19;
  v18 = 0x200000000;
  mlir::ValueRange::ValueRange(&v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  v20 = v16;
  if (v18 != 1)
  {
    if (!v18)
    {
      if (!HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v18) = 1;
  }

  v9 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v10 = __src;
  *__src = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v18;
  v12 = *(a2 + 72);
  if (v12 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v18);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::arith::ShLIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::ShLIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

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

uint64_t mlir::arith::ShLIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::arith::IntegerOverflowFlagsAttr::get(*a1, a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::ShLIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v8 = mlir::arith::IntegerOverflowFlagsAttr::get(*a1, a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v21;
  v20 = 0x200000000;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v22 = v18;
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

  v11 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v12 = __src;
  *__src = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  v13 = v20;
  v14 = *(a2 + 72);
  if (v14 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v20);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::arith::ShLIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::arith::IntegerOverflowFlagsAttr::get(*a1, a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
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

uint64_t mlir::arith::ShLIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::ShLIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

mlir::MLIRContext *mlir::arith::ShLIOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::IntegerOverflowFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

uint64_t mlir::arith::ShLIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v7 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::ShLIOp::parse(mlir::arith::ShLIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 408))(this, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(this, &v11, 0))
    {
      return 0;
    }

    if (v11)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ShLIOpGenericAdaptorBase::Properties>(a2);
      *v5 = v11;
    }
  }

  v10 = (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v6 = *(a2 + 1);
    v9[0] = this;
    v9[1] = &v10;
    v9[2] = a2;
    v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
    if (!v7 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v7, "overflowFlags", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ShLIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*this + 104))(this))
    {
      v10 = 0;
      if ((*(*this + 536))(this, &v10))
      {
        v9[0] = v10;
        mlir::OperationState::addTypes(a2, v9, 1);
        if ((*(*this + 728))(this, v14, v9[0], a2 + 16))
        {
          return (*(*this + 728))(this, v12, v9[0], a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::ShLIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(Context, 0))
  {
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
    if (v14[3] - v15 > 7uLL)
    {
      *v15 = 0x776F6C667265766FLL;
      v14[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "overflow", 8uLL);
    }

    v32 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v16 = (*(*a2 + 16))(a2);
      v17 = (*(*v16 + 80))(v16) + v16[4] - v16[2];
      mlir::arith::IntegerOverflowFlagsAttr::print(&v32, a2);
      if (v17 == (*(*v16 + 80))(v16) + v16[4] - v16[2])
      {
        (*(*a2 + 40))(a2, v32);
      }
    }
  }

  v32 = v34;
  v34[0] = "overflowFlags";
  v34[1] = 13;
  v33 = 0x200000001;
  v18 = mlir::Attribute::getContext((*this + 24));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v19 && v19 == mlir::arith::IntegerOverflowFlagsAttr::get(v18, 0))
  {
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v32 + 16 * v33;
    *v20 = "overflowFlags";
    v20[1] = 13;
    LODWORD(v33) = v33 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v22, v32, v33);
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

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  if (*(*this + 9))
  {
    v29 = *this - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }
}

uint64_t mlir::arith::ShRSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::ShRSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::arith::ShRSIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::ShRSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::ShRSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::ShRSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::arith::ShRSIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::ShRSIOp::parse(mlir::arith::ShRSIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v10, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v8, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v6 = 0, ((*(*this + 536))(this, &v6)) && (v7 = v6, mlir::OperationState::addTypes(a2, &v7, 1), ((*(*this + 728))(this, v10, v7, a2 + 16)))
  {
    return (*(*this + 728))(this, v8, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::ShRSIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
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
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v21, v22);
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t mlir::arith::ShRUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::ShRUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::arith::ShRUIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::ShRUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::ShRUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::ShRUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::arith::ShRUIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::ShRUIOp::parse(mlir::arith::ShRUIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v10, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v8, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v6 = 0, ((*(*this + 536))(this, &v6)) && (v7 = v6, mlir::OperationState::addTypes(a2, &v7, 1), ((*(*this + 728))(this, v10, v7, a2 + 16)))
  {
    return (*(*this + 728))(this, v8, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::ShRUIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
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
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v21, v22);
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t mlir::arith::detail::SubFOpGenericAdaptorBase::SubFOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::SubFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "fastmath", 8uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 53;
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

uint64_t mlir::arith::SubFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "fastmath", 8, *a2);
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

unint64_t mlir::arith::SubFOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::SubFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::SubFOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }

      *result = v4;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::arith::SubFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "fastmath", 8uLL, *a2);
  }

  return result;
}

BOOL mlir::arith::SubFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v2);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::SubFOp::setFastmath(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::FastMathFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::SubFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a5;
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::SubFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a5)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a5;
  }

  __src = v19;
  v18 = 0x200000000;
  mlir::ValueRange::ValueRange(&v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  v20 = v16;
  if (v18 != 1)
  {
    if (!v18)
    {
      if (!HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v18) = 1;
  }

  v9 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v10 = __src;
  *__src = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v18;
  v12 = *(a2 + 72);
  if (v12 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v18);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::arith::SubFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::SubFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

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

uint64_t mlir::arith::SubFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::SubFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v8 = mlir::arith::FastMathFlagsAttr::get(*a1, a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v21;
  v20 = 0x200000000;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v22 = v18;
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

  v11 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v12 = __src;
  *__src = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  v13 = v20;
  v14 = *(a2 + 72);
  if (v14 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v20);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::arith::SubFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
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

uint64_t mlir::arith::SubFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::SubFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

mlir::MLIRContext *mlir::arith::SubFOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::FastMathFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::arith::SubFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v7 = v2;
  if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::arith::SubFOp::parse(mlir::arith::SubFOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 408))(this, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(this, &v11, 0))
    {
      return 0;
    }

    if (v11)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubFOpGenericAdaptorBase::Properties>(a2);
      *v5 = v11;
    }
  }

  v10 = (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v6 = *(a2 + 1);
    v9[0] = this;
    v9[1] = &v10;
    v9[2] = a2;
    v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
    if (!v7 || (mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v7, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*this + 104))(this))
    {
      v10 = 0;
      if ((*(*this + 536))(this, &v10))
      {
        v9[0] = v10;
        mlir::OperationState::addTypes(a2, v9, 1);
        if ((*(*this + 728))(this, v14, v9[0], a2 + 16))
        {
          return (*(*this + 728))(this, v12, v9[0], a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::SubFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v10 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
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
    if (v14[3] - v15 > 7uLL)
    {
      *v15 = 0x6874616D74736166;
      v14[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "fastmath", 8uLL);
    }

    v32 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v16 = (*(*a2 + 16))(a2);
      v17 = (*(*v16 + 80))(v16) + v16[4] - v16[2];
      mlir::arith::FastMathFlagsAttr::print(&v32, a2);
      if (v17 == (*(*v16 + 80))(v16) + v16[4] - v16[2])
      {
        (*(*a2 + 40))(a2, v32);
      }
    }
  }

  v32 = v34;
  v34[0] = "fastmath";
  v34[1] = 8;
  v33 = 0x200000001;
  v18 = mlir::Attribute::getContext((*this + 24));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v19 && v19 == mlir::arith::FastMathFlagsAttr::get(v18, 0))
  {
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v32 + 16 * v33;
    *v20 = "fastmath";
    v20[1] = 8;
    LODWORD(v33) = v33 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v22, v32, v33);
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

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  if (*(*this + 9))
  {
    v29 = *this - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }
}

uint64_t mlir::arith::detail::SubIOpGenericAdaptorBase::SubIOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::SubIOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "overflowFlags", 0xDuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::SubIOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "overflowFlags", 0xD, *a2);
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

unint64_t mlir::arith::SubIOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::SubIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::SubIOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::SubIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "overflowFlags", 0xDuLL, *a2);
  }

  return result;
}

BOOL mlir::arith::SubIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, v2);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::SubIOp::setOverflowFlags(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::IntegerOverflowFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::SubIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a5;
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::SubIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a5)
  {
    v7 = *(a2 + 256);
    if (!v7)
    {
      operator new();
    }

    *v7 = a5;
  }

  __src = v19;
  v18 = 0x200000000;
  mlir::ValueRange::ValueRange(&v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  v20 = v16;
  if (v18 != 1)
  {
    if (!v18)
    {
      if (!HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v18) = 1;
  }

  v9 = mlir::ValueRange::dereference_iterator(&v20, 0);
  v10 = __src;
  *__src = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v18;
  v12 = *(a2 + 72);
  if (v12 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v18);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::arith::SubIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::SubIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

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

uint64_t mlir::arith::SubIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::arith::IntegerOverflowFlagsAttr::get(*a1, a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::SubIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v8 = mlir::arith::IntegerOverflowFlagsAttr::get(*a1, a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = v8;
  __src = v21;
  v20 = 0x200000000;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v22 = v18;
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

  v11 = mlir::ValueRange::dereference_iterator(&v22, 0);
  v12 = __src;
  *__src = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  v13 = v20;
  v14 = *(a2 + 72);
  if (v14 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v20);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::arith::SubIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::arith::IntegerOverflowFlagsAttr::get(*a1, a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
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

uint64_t mlir::arith::SubIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::SubIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

mlir::MLIRContext *mlir::arith::SubIOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::arith::IntegerOverflowFlagsAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

uint64_t mlir::arith::SubIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v7 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::arith::SubIOp::parse(mlir::arith::SubIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11 = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 408))(this, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(this, &v11, 0))
    {
      return 0;
    }

    if (v11)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::SubIOpGenericAdaptorBase::Properties>(a2);
      *v5 = v11;
    }
  }

  v10 = (*(*this + 40))(this);
  if ((*(*this + 488))(this, a2 + 112))
  {
    v6 = *(a2 + 1);
    v9[0] = this;
    v9[1] = &v10;
    v9[2] = a2;
    v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
    if (!v7 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v7, "overflowFlags", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::SubIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*this + 104))(this))
    {
      v10 = 0;
      if ((*(*this + 536))(this, &v10))
      {
        v9[0] = v10;
        mlir::OperationState::addTypes(a2, v9, 1);
        if ((*(*this + 728))(this, v14, v9[0], a2 + 16))
        {
          return (*(*this + 728))(this, v12, v9[0], a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::SubIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
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
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(Context, 0))
  {
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
    if (v14[3] - v15 > 7uLL)
    {
      *v15 = 0x776F6C667265766FLL;
      v14[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v14, "overflow", 8uLL);
    }

    v32 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v16 = (*(*a2 + 16))(a2);
      v17 = (*(*v16 + 80))(v16) + v16[4] - v16[2];
      mlir::arith::IntegerOverflowFlagsAttr::print(&v32, a2);
      if (v17 == (*(*v16 + 80))(v16) + v16[4] - v16[2])
      {
        (*(*a2 + 40))(a2, v32);
      }
    }
  }

  v32 = v34;
  v34[0] = "overflowFlags";
  v34[1] = 13;
  v33 = 0x200000001;
  v18 = mlir::Attribute::getContext((*this + 24));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v19 && v19 == mlir::arith::IntegerOverflowFlagsAttr::get(v18, 0))
  {
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v32 + 16 * v33;
    *v20 = "overflowFlags";
    v20[1] = 13;
    LODWORD(v33) = v33 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v22, v32, v33);
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

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  if (*(*this + 9))
  {
    v29 = *this - 16;
  }

  else
  {
    v29 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }
}

uint64_t mlir::arith::detail::TruncFOpGenericAdaptorBase::TruncFOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::detail::TruncFOpGenericAdaptorBase::getRoundingmode(mlir::arith::detail::TruncFOpGenericAdaptorBase *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    return mlir::IntegerAttr::getInt(&v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::detail::TruncFOpGenericAdaptorBase::getFastmath(mlir::arith::detail::TruncFOpGenericAdaptorBase *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    return mlir::arith::FastMathFlagsAttr::getValue(&v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::TruncFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v43 = v6;
  if (!v6)
  {
    a3(v46, a4);
    if (v46[0])
    {
      LODWORD(v44) = 3;
      *(&v44 + 1) = "expected DictionaryAttr to set properties";
      v45 = 41;
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v47 + 24 * v48;
      v23 = v44;
      *(v22 + 2) = v45;
      *v22 = v23;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }

    if (v56 != 1)
    {
      return 0;
    }

    if (v55 != &v56)
    {
      free(v55);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v54;
      v26 = __p;
      if (v54 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v54 = v24;
      operator delete(v26);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_72;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_71;
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
    goto LABEL_70;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "fastmath", 8uLL);
  if (!v8)
  {
LABEL_46:
    v30 = mlir::DictionaryAttr::get(&v43, "roundingmode", 0xCuLL);
    if (v30)
    {
      v31 = v30;
      if (!mlir::arith::RoundingModeAttr::classof(v30))
      {
        a3(v46, a4);
        if (v46[0])
        {
          LODWORD(v44) = 3;
          v45 = 57;
          if (v48 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v48 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v47 + 24 * v48;
          v34 = v44;
          *(v33 + 2) = v45;
          *v33 = v34;
          ++v48;
          if (v46[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v44, v31);
            if (v48 >= v49)
            {
              if (v47 > &v44 || v47 + 24 * v48 <= &v44)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v35 = v47 + 24 * v48;
            v36 = v44;
            *(v35 + 2) = v45;
            *v35 = v36;
            ++v48;
            if (v46[0])
            {
              mlir::InFlightDiagnostic::report(v46);
            }
          }
        }

        if ((v56 & 1) == 0)
        {
          return 0;
        }

        if (v55 != &v56)
        {
          free(v55);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v54;
          v39 = __p;
          if (v54 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v54 = v37;
          operator delete(v39);
        }

        v17 = v51;
        if (!v51)
        {
          goto LABEL_72;
        }

        v40 = v52;
        v19 = v51;
        if (v52 == v51)
        {
          goto LABEL_71;
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

        while (v40 != v17);
        goto LABEL_70;
      }

      a1[1] = v31;
    }

    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    *a1 = v8;
    goto LABEL_46;
  }

  v9 = v8;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 53;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v47 + 24 * v48;
    v11 = v44;
    *(v10 + 2) = v45;
    *v10 = v11;
    ++v48;
    if (v46[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v44, v9);
      if (v48 >= v49)
      {
        if (v47 > &v44 || v47 + 24 * v48 <= &v44)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v47 + 24 * v48;
      v13 = v44;
      *(v12 + 2) = v45;
      *v12 = v13;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if ((v56 & 1) == 0)
  {
    return 0;
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
  if (v51)
  {
    v18 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_71:
      v52 = v17;
      operator delete(v19);
      goto LABEL_72;
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
LABEL_70:
    v19 = v51;
    goto LABEL_71;
  }

LABEL_72:
  if (v47 != &v50)
  {
    free(v47);
  }

  return 0;
}

uint64_t mlir::arith::TruncFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "fastmath", 8, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "roundingmode", 0xC, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::arith::TruncFOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::arith::TruncFOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 12)
  {
    if (a4 == 8 && *a3 == 0x6874616D74736166)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x676E69646E756F72 || *(a3 + 8) != 1701080941)
  {
    return 0;
  }

  return a2[1];
}

uint64_t *mlir::arith::TruncFOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 12)
  {
    if (*a2 == 0x676E69646E756F72 && *(a2 + 8) == 1701080941)
    {
      if (a4)
      {
        v5 = result;
        v7 = mlir::arith::RoundingModeAttr::classof(a4);
        result = v5;
        if (v7)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        v5[1] = v8;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::arith::TruncFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "fastmath", 8uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "roundingmode", 0xCuLL, v5);
  }
}

BOOL mlir::arith::TruncFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v9, "roundingmode", 12, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::arith::RoundingModeAttr::classof(a1) & 1) != 0)
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
        *(&v23 + 1) = "' failed to satisfy constraint: Floating point rounding mode";
        v24 = 60;
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

BOOL mlir::arith::TruncFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::RoundingModeAttr>(a1, (v3 + 8));
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::RoundingModeAttr>(uint64_t a1, uint64_t *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v28 = 0;
  if (((*(*a1 + 56))(a1, &v28) & 1) == 0)
  {
    return 0;
  }

  v4 = v28;
  if (!v28)
  {
    return 1;
  }

  v5 = mlir::arith::RoundingModeAttr::classof(v28);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v27[16] = 257;
  (*(*a1 + 16))(&v32, a1, v27);
  if (v32)
  {
    LODWORD(v29) = 3;
    *(&v29 + 1) = "expected ";
    v30 = 9;
    if (v35 >= v36)
    {
      if (v34 > &v29 || v34 + 24 * v35 <= &v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v34 + 24 * v35;
    v9 = v29;
    *(v8 + 2) = v30;
    *v8 = v9;
    ++v35;
  }

  *&v29 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::RoundingModeAttr]";
  *(&v29 + 1) = 79;
  v10 = llvm::StringRef::find(&v29, "DesiredTypeName = ", 0x12uLL, 0);
  if (v32)
  {
    if (*(&v29 + 1) >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(&v29 + 1);
    }

    v12 = 18;
    if (*(&v29 + 1) - v11 < 0x12)
    {
      v12 = *(&v29 + 1) - v11;
    }

    v13 = *(&v29 + 1) - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v31 = 261;
    *&v29 = v29 + v11 + v12;
    *(&v29 + 1) = v13;
    mlir::Diagnostic::operator<<(&v33, &v29);
    if (v32)
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = ", but got: ";
      v30 = 11;
      if (v35 >= v36)
      {
        if (v34 > &v29 || v34 + 24 * v35 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v34 + 24 * v35;
      v15 = v29;
      *(v14 + 2) = v30;
      *v14 = v15;
      ++v35;
      if (v32)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v29, v28);
        if (v35 >= v36)
        {
          if (v34 > &v29 || v34 + 24 * v35 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v34 + 24 * v35;
        v17 = v29;
        *(v16 + 2) = v30;
        *v16 = v17;
        ++v35;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
  v18 = result;
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
    result = v18;
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
      result = v18;
    }

    v19 = __p;
    if (__p)
    {
      v20 = v41;
      v21 = __p;
      if (v41 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v41 = v19;
      operator delete(v21);
      result = v18;
    }

    v22 = v38;
    if (v38)
    {
      v23 = v39;
      v24 = v38;
      if (v39 != v38)
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
        v24 = v38;
      }

      v39 = v22;
      operator delete(v24);
      result = v18;
    }

    if (v34 != &v37)
    {
      free(v34);
      return v18;
    }
  }

  return result;
}

uint64_t mlir::arith::TruncFOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::arith::TruncFOp::getRoundingmode(mlir::arith::TruncFOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v2)
  {
    return mlir::IntegerAttr::getInt(&v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::TruncFOp::setRoundingmode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 44);
  if ((a2 & 0x100000000) != 0)
  {
    v5 = a2;
    Context = mlir::Attribute::getContext((v2 + 24));
    v7 = mlir::IntegerType::get(Context, 32, 0);
    result = mlir::IntegerAttr::get(v7, v5);
  }

  else
  {
    result = 0;
  }

  *(v2 + 16 * ((v3 >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::arith::RoundingModeAttr::get(uint64_t *a1, unsigned int a2)
{
  v3 = mlir::IntegerType::get(a1, 32, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

uint64_t mlir::arith::TruncFOp::setFastmath(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 44);
  if ((a2 & 0x100000000) != 0)
  {
    v5 = a2;
    Context = mlir::Attribute::getContext((v2 + 24));
    result = mlir::arith::FastMathFlagsAttr::get(Context, v5);
  }

  else
  {
    result = 0;
  }

  *(v2 + 16 * ((v3 >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::TruncFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::arith::TruncFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a4;
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  if (a5)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *(v11 + 8) = a5;
  }

  if (a6)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a6;
  }

  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::arith::TruncFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a5;
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  if (a6)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = a6;
  }

  if (a7)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a7;
  }

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

uint64_t mlir::arith::TruncFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::arith::TruncFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v40 = v2;
  if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v4, "roundingmode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v40) & 1) == 0)
  {
    return 0;
  }

  v40 = *this;
  if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v5, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v40) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v6 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v8 = *this;
  v9 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v40 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Shape = mlir::TensorType::getShape(&v40);
    v13 = v11;
    v8 = *this;
  }

  else
  {
    v13 = 0;
    Shape = 0;
  }

  v15 = *(v8 + 9);
  v16 = v8 - 16;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 9))
    {
      v20 = *this - 16;
    }

    else
    {
      v20 = 0;
    }

    v36[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v21 = mlir::TensorType::getShape(v36);
    if (v13 != v22)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v21 = 0;
    if (v13)
    {
      goto LABEL_50;
    }
  }

  if (!memcmp(Shape, v21, 8 * v13))
  {
    v23 = *(*this + 9) ? *this - 16 : 0;
    v24 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v26 = *(*this + 9) ? *this - 16 : 0;
      v39 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v29 = mlir::TensorType::getShape(&v39);
      v28 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v30 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v30 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v38 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v33 = mlir::TensorType::getShape(&v38);
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    if (v28 == v32 && !memcmp(v29, v33, 8 * v28))
    {
      return 1;
    }
  }

LABEL_50:
  v36[0] = "failed to verify that input and output have the same tensor dimensions";
  v37 = 259;
  mlir::OpState::emitOpError(this, v36, &v40);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v40);
  if (v40)
  {
    v34 = result;
    mlir::InFlightDiagnostic::report(&v40);
    result = v34;
  }

  if (v41[192] == 1)
  {
    v35 = result;
    mlir::Diagnostic::~Diagnostic(v41);
    return v35;
  }

  return result;
}

BOOL mlir::arith::TruncFOp::parse(mlir::arith::TruncFOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v58[9] = *MEMORY[0x277D85DE8];
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  v42[0] = v43;
  v42[1] = 1;
  v40 = 0;
  v41 = 0;
  v39[0] = &v40;
  v39[1] = 1;
  v38 = 0;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v43, 1) & 1) == 0)
  {
    return 0;
  }

  v37 = 0uLL;
  v57[0] = v58;
  v57[1] = 0x400000000;
  v58[8] = 4;
  v6 = (*(*this + 40))(this);
  v50[0] = xmmword_27983B2A8;
  v50[1] = *&off_27983B2B8;
  v50[2] = xmmword_27983B2C8;
  v48 = xmmword_27983B288;
  v49 = *&off_27983B298;
  if (((*(*this + 424))(this, &v37, &v48, 5) & 1) != 0 || (*&v48 = 0, v7 = (*(*this + 32))(this), NoneType = mlir::Builder::getNoneType(v7, v8), v10 = (*(*this + 472))(this, &v48, NoneType), (v10 & 0x100) == 0))
  {
LABEL_6:
    if (*(&v37 + 1))
    {
      v12 = mlir::arith::symbolizeRoundingMode(v37, *(&v37 + 1));
      if ((v12 & 0x100000000) == 0)
      {
        v35 = "invalid ";
        v36 = 259;
        (*(*this + 24))(&v48, this, v6, &v35);
        if (v48)
        {
          LODWORD(v45) = 3;
          *(&v45 + 1) = "roundingmode attribute specification: ";
          v46 = 39;
          if (LODWORD(v50[0]) >= DWORD1(v50[0]))
          {
            if (*(&v49 + 1) > &v45 || *(&v49 + 1) + 24 * LODWORD(v50[0]) <= &v45)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = *(&v49 + 1) + 24 * LODWORD(v50[0]);
          v14 = v45;
          *(v13 + 16) = v46;
          *v13 = v14;
          ++LODWORD(v50[0]);
          if (v48)
          {
            v47 = 261;
            v45 = v37;
            mlir::Diagnostic::operator<<(&v48 + 8, &v45);
            if (v48)
            {
              mlir::Diagnostic::operator<<(&v48 + 8, 34);
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v48);
        v16 = result;
        if (v48)
        {
          mlir::InFlightDiagnostic::report(&v48);
          result = v16;
        }

        if (v56)
        {
          if (v55 != &v56)
          {
            free(v55);
            result = v16;
          }

          v17 = __p;
          if (__p)
          {
            v18 = v54;
            v19 = __p;
            if (v54 != __p)
            {
              do
              {
                v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
              }

              while (v18 != v17);
              v19 = __p;
            }

            v54 = v17;
            operator delete(v19);
            result = v16;
          }

          v20 = v51;
          if (v51)
          {
            v21 = v52;
            v22 = v51;
            if (v52 != v51)
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
              v22 = v51;
            }

            v52 = v20;
            operator delete(v22);
            result = v16;
          }

          if (*(&v49 + 1) != (v50 + 8))
          {
            free(*(&v49 + 1));
            result = v16;
          }
        }

        goto LABEL_57;
      }

      v25 = v12;
      v26 = (*(*this + 32))(this);
      v27 = mlir::IntegerType::get(*v26, 32, 0);
      v28 = mlir::IntegerAttr::get(v27, v25);
      v29 = *(a2 + 32);
      if (!v29)
      {
        operator new();
      }

      *(v29 + 8) = v28;
    }

    if (v57[0] != v58)
    {
      free(v57[0]);
    }

    if (((*(*this + 408))(this, "fastmath", 8) & 1) == 0)
    {
      goto LABEL_40;
    }

    if (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(this, &v41, 0))
    {
      if (v41)
      {
        v30 = *(a2 + 32);
        if (!v30)
        {
          operator new();
        }

        *v30 = v41;
      }

LABEL_40:
      v57[0] = (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112))
      {
        v31 = *(a2 + 1);
        *&v48 = this;
        *(&v48 + 1) = v57;
        *&v49 = a2;
        v32 = mlir::NamedAttrList::get(a2 + 112, **(v31 + 96));
        if (!v32 || (mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v32, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v48) & 1) != 0)
        {
          v33 = mlir::NamedAttrList::get(a2 + 112, *(*(v31 + 96) + 8));
          if (!v33 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(v33, "roundingmode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::TruncFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v48)) && ((*(*this + 104))(this))
          {
            *&v48 = 0;
            if ((*(*this + 536))(this, &v48))
            {
              v40 = v48;
              LOWORD(v50[0]) = 257;
              if ((*(*this + 400))(this, "to", 2, &v48))
              {
                *&v48 = 0;
                if ((*(*this + 536))(this, &v48))
                {
                  v38 = v48;
                  mlir::OperationState::addTypes(a2, &v38, 1);
                  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v42, v39, v5, a2 + 16) & 1;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (v10)
  {
    mlir::NamedAttrList::append(v57, "roundingmode", 0xCuLL, v48);
    *&v37 = mlir::StringAttr::getValue(&v48);
    *(&v37 + 1) = v11;
    goto LABEL_6;
  }

  result = 0;
LABEL_57:
  if (v57[0] != v58)
  {
    v34 = result;
    free(v57[0]);
    return v34;
  }

  return result;
}

uint64_t mlir::arith::symbolizeRoundingMode(int *a1, uint64_t a2)
{
  result = 0;
  if (a2 <= 10)
  {
    if (a2 != 6)
    {
      if (a2 == 8)
      {
        if (*a1 == 0x647261776E776F64)
        {
          return 0x100000001;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    v5 = *a1;
    v6 = *(a1 + 2);
    if (v5 == 1635217525 && v6 == 25714)
    {
      return 0x100000002;
    }

    return 0;
  }

  if (a2 == 11)
  {
    v8 = *a1;
    v9 = *(a1 + 3);
    if (v8 == 0x7A5F647261776F74 && v9 == 0x6F72657A5F647261)
    {
      return 0x100000003;
    }

    return 0;
  }

  if (a2 == 15)
  {
    if (*a1 == 0x657261656E5F6F74 && *(a1 + 7) == 0x6E6576655F747365)
    {
      return 0x100000000;
    }

    else if (*a1 ^ 0x657261656E5F6F74 | *(a1 + 7) ^ 0x796177615F747365)
    {
      return 0;
    }

    else
    {
      return 0x100000004;
    }
  }

  return result;
}

void mlir::arith::TruncFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    goto LABEL_23;
  }

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

  v38 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  if (!v38)
  {
    goto LABEL_17;
  }

  Int = mlir::IntegerAttr::getInt(&v38);
  if (Int <= 1)
  {
    if (Int)
    {
      if (Int == 1)
      {
        v9 = 0;
        v10 = "downward";
        v11 = 8;
        goto LABEL_19;
      }

      goto LABEL_60;
    }

LABEL_17:
    v9 = 0;
    v10 = "to_nearest_even";
    goto LABEL_18;
  }

  switch(Int)
  {
    case 2:
      v9 = 0;
      v10 = "upward";
      v11 = 6;
      goto LABEL_19;
    case 3:
      v9 = 0;
      v10 = "toward_zero";
      v11 = 11;
      goto LABEL_19;
    case 4:
      v9 = 0;
      v10 = "to_nearest_away";
LABEL_18:
      v11 = 15;
      goto LABEL_19;
  }

LABEL_60:
  v11 = 0;
  v10 = "";
  v9 = 1;
LABEL_19:
  v12 = (*(*a2 + 16))(a2);
  if (v11 <= *(v12 + 24) - *(v12 + 32))
  {
    if ((v9 & 1) == 0)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v10, v11);
      *(v13 + 32) += v11;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v10, v11);
  }

LABEL_23:
  v14 = *this;
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 32);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 32;
    }

    v17 = (*(*a2 + 16))(a2);
    v18 = v17[4];
    if (v17[3] - v18 > 7uLL)
    {
      *v18 = 0x6874616D74736166;
      v17[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v17, "fastmath", 8uLL);
    }

    v38 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v19 = (*(*a2 + 16))(a2);
      v20 = (*(*v19 + 80))(v19) + v19[4] - v19[2];
      mlir::arith::FastMathFlagsAttr::print(&v38, a2);
      if (v20 == (*(*v19 + 80))(v19) + v19[4] - v19[2])
      {
        (*(*a2 + 40))(a2, v38);
      }
    }

    v14 = *this;
  }

  v38 = v40;
  v40[0] = "roundingmode";
  v40[1] = 12;
  v40[2] = "fastmath";
  v40[3] = 8;
  v39 = 0x200000002;
  AttrDictionary = mlir::Operation::getAttrDictionary(v14);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v22, v38, v39);
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

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = v31[4];
  if (v31[3] - v32 > 1uLL)
  {
    *v32 = 28532;
    v31[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, "to", 2uLL);
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  if (*(*this + 9))
  {
    v35 = *this - 16;
  }

  else
  {
    v35 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v38 != v40)
  {
    free(v38);
  }
}

const char *mlir::arith::stringifyRoundingMode(unsigned int a1)
{
  if (a1 > 4)
  {
    return "";
  }

  else
  {
    return (&off_27983B548)[a1];
  }
}

uint64_t mlir::arith::TruncIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::arith::TruncIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::arith::TruncIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::arith::TruncIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Shape = mlir::TensorType::getShape(v43);
    v9 = v7;
    v4 = *this;
  }

  else
  {
    v9 = 0;
    Shape = 0;
  }

  v11 = *(v4 + 9);
  v12 = v4 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 9))
    {
      v16 = *this - 16;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = mlir::TensorType::getShape(v39);
    if (v9 != v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (!memcmp(Shape, v17, 8 * v9))
  {
    if (*(*this + 9))
    {
      v28 = *this - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (*(*this + 9))
      {
        v31 = *this - 16;
      }

      else
      {
        v31 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::TensorType::getShape(&v42);
      v33 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v41 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = mlir::TensorType::getShape(&v41);
      if (v33 != v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    if (!memcmp(v34, v37, 8 * v33))
    {
      return 1;
    }
  }

LABEL_28:
  v39[0] = "failed to verify that input and output have the same tensor dimensions";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v19 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v19;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v49;
      v22 = __p;
      if (v49 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v49 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v46;
    if (v46)
    {
      v24 = v47;
      v25 = v46;
      if (v47 != v46)
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
        v25 = v46;
      }

      v47 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v44 != &v45)
    {
      free(v44);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::arith::TruncIOp::parse(mlir::arith::TruncIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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
  if (((*(*this + 536))(this, v13) & 1) == 0)
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
  if (((*(*this + 536))(this, &v7) & 1) == 0)
  {
    return 0;
  }

  v13[0] = v7;
  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::arith::TruncIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::UIToFPOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::arith::UIToFPOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::arith::UIToFPOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::arith::UIToFPOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps8(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    return 0;
  }

  v4 = *this;
  v5 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v43[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    Shape = mlir::TensorType::getShape(v43);
    v9 = v7;
    v4 = *this;
  }

  else
  {
    v9 = 0;
    Shape = 0;
  }

  v11 = *(v4 + 9);
  v12 = v4 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (*(*this + 9))
    {
      v16 = *this - 16;
    }

    else
    {
      v16 = 0;
    }

    v39[0] = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v17 = mlir::TensorType::getShape(v39);
    if (v9 != v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = 0;
    if (v9)
    {
      goto LABEL_28;
    }
  }

  if (!memcmp(Shape, v17, 8 * v9))
  {
    if (*(*this + 9))
    {
      v28 = *this - 16;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (*(*this + 9))
      {
        v31 = *this - 16;
      }

      else
      {
        v31 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::TensorType::getShape(&v42);
      v33 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v35 = *(*(*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v41 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v37 = mlir::TensorType::getShape(&v41);
      if (v33 != v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = 0;
      if (v33)
      {
        goto LABEL_28;
      }
    }

    if (!memcmp(v34, v37, 8 * v33))
    {
      return 1;
    }
  }

LABEL_28:
  v39[0] = "failed to verify that input and output have the same tensor dimensions";
  v40 = 259;
  mlir::OpState::emitOpError(this, v39, v43);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  v19 = result;
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
    result = v19;
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
      result = v19;
    }

    v20 = __p;
    if (__p)
    {
      v21 = v49;
      v22 = __p;
      if (v49 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v49 = v20;
      operator delete(v22);
      result = v19;
    }

    v23 = v46;
    if (v46)
    {
      v24 = v47;
      v25 = v46;
      if (v47 != v46)
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
        v25 = v46;
      }

      v47 = v23;
      operator delete(v25);
      result = v19;
    }

    if (v44 != &v45)
    {
      free(v44);
      return v19;
    }
  }

  return result;
}

uint64_t mlir::arith::UIToFPOp::parse(mlir::arith::UIToFPOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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
  if (((*(*this + 536))(this, v13) & 1) == 0)
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
  if (((*(*this + 536))(this, &v7) & 1) == 0)
  {
    return 0;
  }

  v13[0] = v7;
  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::arith::UIToFPOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::XOrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::XOrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::arith::XOrIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::XOrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::XOrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::XOrIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 0);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}