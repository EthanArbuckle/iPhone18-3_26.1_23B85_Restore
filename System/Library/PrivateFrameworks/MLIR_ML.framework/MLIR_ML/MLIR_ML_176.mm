uint64_t mlir::OpBuilder::create<mlir::arith::MinimumFOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MinimumFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MinimumFOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::MinimumFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MinimumFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::MaxNumFOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MaxNumFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MaxNumFOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::MaxNumFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MaxNumFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::MinNumFOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MinNumFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MinNumFOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::MinNumFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MinNumFOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::MaxSIOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MaxSIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MaxSIOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MaxSIOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MaxSIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::MinSIOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MinSIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MinSIOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MinSIOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MinSIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::MaxUIOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MaxUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MaxUIOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MaxUIOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MaxUIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::MinUIOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MinUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MinUIOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MinUIOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MinUIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::OrIOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::OrIOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::OrIOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
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

uint64_t mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::AddFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::arith::AddFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

unint64_t mlir::arith::AddFOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::AddFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

void *mlir::arith::AddFOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::arith::AddFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "fastmath", 8uLL, *a2);
  }

  return result;
}

BOOL mlir::arith::AddFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, v2);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::AddFOp::setFastmath(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::FastMathFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::AddFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

void mlir::arith::AddFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t mlir::arith::AddFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::AddFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t mlir::arith::AddFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
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

void mlir::arith::AddFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
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

unint64_t mlir::arith::AddFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
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

uint64_t mlir::arith::AddFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::AddFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

mlir::MLIRContext *mlir::arith::AddFOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
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

BOOL mlir::arith::AddFOp::verifyInvariantsImpl(mlir::Operation **this)
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

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *(*a2 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v20 = v7 || v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  if (v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 1;
  }

  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps1();
  }

  v22 = (v5 + 72);
  v23 = *(v5 + 96);
  if ((v23 & 2) == 0)
  {
    v22 = *v22;
  }

  if ((*(v23 & 0xFFFFFFFFFFFFFFF8))(v22, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v24 = a2;
    v25 = *a2;
    {
      v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if (v28)
      {
        goto LABEL_56;
      }
    }

    else
    {
      mlir::tensor::ExpandShapeOp::fold();
      v24 = a2;
      v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if (v28)
      {
LABEL_56:
        v29 = v27;
        v30 = v28;
        do
        {
          v31 = v30 >> 1;
          v32 = &v29[2 * (v30 >> 1)];
          v34 = *v32;
          v33 = v32 + 2;
          v30 += ~(v30 >> 1);
          if (v34 < v26)
          {
            v29 = v33;
          }

          else
          {
            v30 = v31;
          }
        }

        while (v30);
LABEL_106:
        if (v29 != &v27[2 * v28] && *v29 == v26)
        {
          v57 = v29[1];
        }

        else
        {
          v57 = 0;
        }

        v82[0] = v24;
        v82[1] = v57;
        v58 = *(*mlir::ShapedType::getElementType(v82) + 136);
        v72 = v58 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v58 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
        if (!v72 && v58 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
        {
          v7 = v58 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
          v36 = a1;
          v35 = a4;
          v37 = a3;
          result = 1;
          if (v7)
          {
            return result;
          }

          goto LABEL_63;
        }

        return 1;
      }
    }

    v28 = 0;
    v29 = v27;
    goto LABEL_106;
  }

  v36 = a1;
  v35 = a4;
  v37 = a3;
LABEL_63:
  v79 = 261;
  v78[0] = v37;
  v78[1] = v35;
  mlir::Operation::emitOpError(v82, v36, v78);
  if (v82[0])
  {
    LODWORD(v80) = 3;
    *(&v80 + 1) = " #";
    v81 = 2;
    if (v84 >= v85)
    {
      if (v83 > &v80 || v83 + 24 * v84 <= &v80)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v38 = v83 + 24 * v84;
    v39 = v80;
    *(v38 + 2) = v81;
    *v38 = v39;
    v40 = ++v84;
    if (v82[0])
    {
      LODWORD(v80) = 5;
      *(&v80 + 1) = a5;
      if (v40 >= v85)
      {
        if (v83 > &v80 || v83 + 24 * v40 <= &v80)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v83 + 24 * v84;
      v42 = v80;
      *(v41 + 2) = v81;
      *v41 = v42;
      v43 = ++v84;
      if (v82[0])
      {
        LODWORD(v80) = 3;
        *(&v80 + 1) = " must be floating-point-like, but got ";
        v81 = 38;
        if (v43 >= v85)
        {
          if (v83 > &v80 || v83 + 24 * v43 <= &v80)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v83 + 24 * v84;
        v45 = v80;
        *(v44 + 2) = v81;
        *v44 = v45;
        ++v84;
        if (v82[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v80, a2);
          if (v84 >= v85)
          {
            if (v83 > &v80 || v83 + 24 * v84 <= &v80)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v83 + 24 * v84;
          v47 = v80;
          *(v46 + 2) = v81;
          *v46 = v47;
          ++v84;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
  v48 = result;
  if (v82[0])
  {
    mlir::InFlightDiagnostic::report(v82);
    result = v48;
  }

  if (v92 == 1)
  {
    if (v91 != &v92)
    {
      free(v91);
      result = v48;
    }

    v49 = __p;
    if (__p)
    {
      v50 = v90;
      v51 = __p;
      if (v90 != __p)
      {
        do
        {
          v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
        }

        while (v50 != v49);
        v51 = __p;
      }

      v90 = v49;
      operator delete(v51);
      result = v48;
    }

    v52 = v87;
    if (v87)
    {
      v53 = v88;
      v54 = v87;
      if (v88 != v87)
      {
        do
        {
          v56 = *--v53;
          v55 = v56;
          *v53 = 0;
          if (v56)
          {
            MEMORY[0x259C63150](v55, 0x1000C8077774924);
          }
        }

        while (v53 != v52);
        v54 = v87;
      }

      v88 = v52;
      operator delete(v54);
      result = v48;
    }

    if (v83 != &v86)
    {
      free(v83);
      return v48;
    }
  }

  return result;
}

uint64_t mlir::arith::AddFOp::parse(mlir::arith::AddFOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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
      v5 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(a2);
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
    if (!v7 || (mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v7, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*this + 104))(this))
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

void mlir::arith::AddFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::detail::AddIOpGenericAdaptorBase::AddIOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::AddIOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::arith::AddIOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

unint64_t mlir::arith::AddIOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::AddIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
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

void *mlir::arith::AddIOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::arith::AddIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "overflowFlags", 0xDuLL, *a2);
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    return 1;
  }

  a4(&v24, a5);
  if (v24)
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "attribute '";
    v22 = 11;
    if (v27 >= v28)
    {
      if (v26 > &v21 || v26 + 24 * v27 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v26 + 24 * v27;
    v8 = v21;
    *(v7 + 2) = v22;
    *v7 = v8;
    ++v27;
    if (v24)
    {
      v23 = 261;
      *&v21 = a2;
      *(&v21 + 1) = a3;
      mlir::Diagnostic::operator<<(&v25, &v21);
      if (v24)
      {
        LODWORD(v21) = 3;
        *(&v21 + 1) = "' failed to satisfy constraint: Integer overflow arith flags";
        v22 = 60;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v26 + 24 * v27;
        v10 = v21;
        *(v9 + 2) = v22;
        *v9 = v10;
        ++v27;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
  if (v24)
  {
    mlir::InFlightDiagnostic::report(&v24);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v33;
      v14 = __p;
      if (v33 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v33 = v12;
      operator delete(v14);
    }

    v15 = v30;
    if (v30)
    {
      v16 = v31;
      v17 = v30;
      if (v31 != v30)
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
        v17 = v30;
      }

      v31 = v15;
      operator delete(v17);
    }

    if (v26 != &v29)
    {
      free(v26);
    }
  }

  return v11;
}

BOOL mlir::arith::AddIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(a1, v2);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (!v27)
  {
    return 1;
  }

  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::IntegerOverflowFlagsAttr]";
  *(&v28 + 1) = 87;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
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

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
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

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
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

uint64_t mlir::arith::AddIOp::setOverflowFlags(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::IntegerOverflowFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::AddIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

void mlir::arith::AddIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t mlir::arith::AddIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::AddIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t mlir::arith::AddIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
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

void mlir::arith::AddIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
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

unint64_t mlir::arith::AddIOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
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

uint64_t mlir::arith::AddIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::AddIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

mlir::MLIRContext *mlir::arith::AddIOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
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

uint64_t mlir::arith::AddIOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v49 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v49))
  {
    return 1;
  }

  v10 = *v49;
  {
    v45 = v10;
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
    v10 = v45;
  }

  v11 = (v10 + 72);
  v12 = *(v10 + 96);
  if ((v12 & 2) == 0)
  {
    v11 = *v11;
  }

  if ((*(v12 & 0xFFFFFFFFFFFFFFF8))(v11, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v13 = v49;
    if (v49)
    {
      v14 = *v49;
      {
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v44 = v14;
        v46 = v13;
        mlir::mps::serialization::ExtractOp::inferReturnTypes();
        v13 = v46;
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v44 + 8);
        v17 = *(v44 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

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
      if (v18 != &v16[2 * v17] && *v18 == v15)
      {
        v24 = v18[1];
LABEL_22:
        v52[0] = v13;
        v52[1] = v24;
        v47[0] = mlir::ShapedType::getElementType(v52);
        if (mlir::Type::isSignlessIntOrIndex(v47))
        {
          return 1;
        }

        goto LABEL_23;
      }
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

LABEL_23:
  v48 = 261;
  v47[0] = a3;
  v47[1] = a4;
  mlir::Operation::emitOpError(v52, a1, v47);
  if (v52[0])
  {
    LODWORD(v50) = 3;
    *(&v50 + 1) = " #";
    v51 = 2;
    if (v54 >= v55)
    {
      if (v53 > &v50 || v53 + 24 * v54 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = v53 + 24 * v54;
    v26 = v50;
    *(v25 + 2) = v51;
    *v25 = v26;
    v27 = ++v54;
    if (v52[0])
    {
      LODWORD(v50) = 5;
      *(&v50 + 1) = a5;
      if (v27 >= v55)
      {
        if (v53 > &v50 || v53 + 24 * v27 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v53 + 24 * v54;
      v29 = v50;
      *(v28 + 2) = v51;
      *v28 = v29;
      v30 = ++v54;
      if (v52[0])
      {
        LODWORD(v50) = 3;
        *(&v50 + 1) = " must be signless-integer-like, but got ";
        v51 = 40;
        if (v30 >= v55)
        {
          if (v53 > &v50 || v53 + 24 * v30 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v53 + 24 * v54;
        v32 = v50;
        *(v31 + 2) = v51;
        *v31 = v32;
        ++v54;
        if (v52[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v49);
          if (v54 >= v55)
          {
            if (v53 > &v50 || v53 + 24 * v54 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v53 + 24 * v54;
          v34 = v50;
          *(v33 + 2) = v51;
          *v33 = v34;
          ++v54;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
  if (v52[0])
  {
    mlir::InFlightDiagnostic::report(v52);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v60;
      v37 = __p;
      if (v60 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v60 = v35;
      operator delete(v37);
    }

    v38 = v57;
    if (v57)
    {
      v39 = v58;
      v40 = v57;
      if (v58 != v57)
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
        v40 = v57;
      }

      v58 = v38;
      operator delete(v40);
    }

    if (v53 != &v56)
    {
      free(v53);
    }
  }

  return v9;
}

uint64_t mlir::arith::AddIOp::parse(mlir::arith::AddIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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
      v5 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(a2);
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
    if (!v7 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v7, "overflowFlags", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9)) && ((*(*this + 104))(this))
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

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith24IntegerOverflowFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
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

void mlir::arith::AddIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::AddUIExtendedOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "sum", 3);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);

  return (a2)(a3, v9, "overflow", 8);
}

uint64_t mlir::arith::AddUIExtendedOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = v7;
  Context = mlir::Type::getContext(&v16);
  v9 = mlir::IntegerType::get(Context, 1, 0);
  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v16);
  v15[0] = v10;
  v15[1] = v11;
  if (v10)
  {
    LOBYTE(v13) = 0;
    v14 = 0;
    v10 = mlir::ShapedType::cloneWith(v15, &v13, v9);
  }

  else
  {
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return mlir::arith::AddUIExtendedOp::build(v10, a2, v7, v9, a3, a4);
    }

    v10 = mlir::UnrankedTensorType::get(v9);
  }

  v9 = v10;
  return mlir::arith::AddUIExtendedOp::build(v10, a2, v7, v9, a3, a4);
}

uint64_t mlir::arith::AddUIExtendedOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v14 = a5;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  v11 = *(a2 + 76);
  v12 = *(a2 + 72) + 1;
  *(a2 + 72) = v12;
  if (v12 >= v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a4;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::arith::AddUIExtendedOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::AddUIExtendedOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::arith::AddUIExtendedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 9) ? *this - 16 : 0;
  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u) & 1) == 0)
  {
    return 0;
  }

  v7 = *this;
  v8 = *(*this + 9);
  v9 = *(*(v8 + 56) + 8);
  if ((v9 ^ *(*(v8 + 24) + 8)) <= 7)
  {
    v10 = *(v7 + 9);
    v11 = v7 - 16;
    v12 = v10 ? v11 : 0;
    if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) ^ v9) <= 7)
    {
      v13 = *(*this + 9) ? *this - 16 : 0;
      if ((*(*(*(*this + 9) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8)) < 8)
      {
        return 1;
      }
    }
  }

  v24 = "failed to verify that all of {lhs, rhs, sum} have same type";
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

uint64_t mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v47 = a2;
  if (mlir::Type::isSignlessInteger(&v47, 1))
  {
    return 1;
  }

  v10 = *v47;
  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
  }

  v11 = (v10 + 72);
  v12 = *(v10 + 96);
  if ((v12 & 2) == 0)
  {
    v11 = *v11;
  }

  if ((*(v12 & 0xFFFFFFFFFFFFFFF8))(v11, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v13 = v47;
    if (v47)
    {
      v14 = *v47;
      {
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v14 + 8);
        v17 = *(v14 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v44 = v14;
        mlir::mps::serialization::ExtractOp::inferReturnTypes();
        v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v16 = *(v44 + 8);
        v17 = *(v44 + 16);
        if (!v17)
        {
          goto LABEL_21;
        }
      }

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
      if (v18 != &v16[2 * v17] && *v18 == v15)
      {
        v24 = v18[1];
LABEL_22:
        v50[0] = v13;
        v50[1] = v24;
        v45[0] = mlir::ShapedType::getElementType(v50);
        v9 = 1;
        if (mlir::Type::isSignlessInteger(v45, 1))
        {
          return v9;
        }

        goto LABEL_23;
      }
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

LABEL_23:
  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(v50, a1, v45);
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

    v25 = v51 + 24 * v52;
    v26 = v48;
    *(v25 + 2) = v49;
    *v25 = v26;
    v27 = ++v52;
    if (v50[0])
    {
      LODWORD(v48) = 5;
      *(&v48 + 1) = a5;
      if (v27 >= v53)
      {
        if (v51 > &v48 || v51 + 24 * v27 <= &v48)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v51 + 24 * v52;
      v29 = v48;
      *(v28 + 2) = v49;
      *v28 = v29;
      v30 = ++v52;
      if (v50[0])
      {
        LODWORD(v48) = 3;
        *(&v48 + 1) = " must be BOOL-like, but got ";
        v49 = 28;
        if (v30 >= v53)
        {
          if (v51 > &v48 || v51 + 24 * v30 <= &v48)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v51 + 24 * v52;
        v32 = v48;
        *(v31 + 2) = v49;
        *v31 = v32;
        ++v52;
        if (v50[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v48, v47);
          if (v52 >= v53)
          {
            if (v51 > &v48 || v51 + 24 * v52 <= &v48)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v51 + 24 * v52;
          v34 = v48;
          *(v33 + 2) = v49;
          *v33 = v34;
          ++v52;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
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

    v35 = __p;
    if (__p)
    {
      v36 = v58;
      v37 = __p;
      if (v58 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v58 = v35;
      operator delete(v37);
    }

    v38 = v55;
    if (v55)
    {
      v39 = v56;
      v40 = v55;
      if (v56 != v55)
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
        v40 = v55;
      }

      v56 = v38;
      operator delete(v40);
    }

    if (v51 != &v54)
    {
      free(v51);
    }
  }

  return v9;
}

uint64_t mlir::arith::AddUIExtendedOp::parse(mlir::arith::AddUIExtendedOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v11, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v9, 1)) && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (v7 = 0, ((*(*this + 536))(this, &v7)) && (v8 = v7, ((*(*this + 120))(this)) && (v6 = 0, ((*(*this + 536))(this, &v6)) && (v7 = v6, mlir::OperationState::addTypes(a2, &v8, 1), mlir::OperationState::addTypes(a2, &v7, 1), ((*(*this + 728))(this, v11, v8, a2 + 16)))
  {
    return (*(*this + 728))(this, v9, v8, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::AddUIExtendedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
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
  v28 = v30;
  v29 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v28, v29);
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

  if (*(*this + 9))
  {
    v24 = *this - 16;
  }

  else
  {
    v24 = 0;
  }

  v25 = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 1);
  v26 = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  (*(*a2 + 32))(a2, *(v26 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t mlir::arith::AndIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::AndIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::arith::AndIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::AndIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::AndIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::AndIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::arith::AndIOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::arith::AndIOp::parse(mlir::arith::AndIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

void mlir::arith::AndIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::arith::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::arith::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::arith::BitcastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
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

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(mlir::Operation *a1, uint64_t a2, void **a3, uint64_t a4, unsigned int a5)
{
  v143 = *MEMORY[0x277D85DE8];
  v128 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v128))
  {
    return 1;
  }

  v9 = *v128;
  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
  }

  v10 = v9 + 9;
  v11 = v9[12];
  if ((v11 & 2) == 0)
  {
    v10 = *v10;
  }

  if (!(*(v11 & 0xFFFFFFFFFFFFFFF8))(v10, mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_22;
  }

  v12 = v128;
  if (!v128)
  {
    goto LABEL_20;
  }

  v13 = *v128;
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = v13[1];
    v16 = *(v13 + 4);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_20:
    v23 = 0;
    goto LABEL_21;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v15 = v13[1];
  v16 = *(v13 + 4);
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_10:
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
    goto LABEL_20;
  }

  v23 = v17[1];
LABEL_21:
  v132[0] = v12;
  v132[1] = v23;
  ElementType = mlir::ShapedType::getElementType(v132);
  if (mlir::Type::isSignlessIntOrIndex(&ElementType))
  {
    return 1;
  }

LABEL_22:
  v24 = *v128;
  v25 = *(*v128 + 17);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v25 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 1;
  }

  {
    v43 = v24 + 9;
    v44 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id;
    v45 = v24[12];
    v46 = *(v45 & 0xFFFFFFFFFFFFFFF8);
    if ((v45 & 2) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps2();
    v43 = v24 + 9;
    v44 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id;
    v47 = v24[12];
    v46 = *(v47 & 0xFFFFFFFFFFFFFFF8);
    if ((v47 & 2) == 0)
    {
LABEL_77:
      if (!v46(*v43, v44))
      {
        goto LABEL_144;
      }

      goto LABEL_81;
    }
  }

  if (!v46(v43, v44))
  {
    goto LABEL_144;
  }

LABEL_81:
  v48 = v128;
  if (!v128)
  {
LABEL_94:
    v59 = 0;
    goto LABEL_95;
  }

  v49 = *v128;
  {
    v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v51 = v49[1];
    v52 = *(v49 + 4);
    if (v52)
    {
      goto LABEL_84;
    }

LABEL_91:
    v52 = 0;
    v53 = v51;
    goto LABEL_92;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v51 = v49[1];
  v52 = *(v49 + 4);
  if (!v52)
  {
    goto LABEL_91;
  }

LABEL_84:
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
LABEL_92:
  if (v53 == &v51[2 * v52] || *v53 != v50)
  {
    goto LABEL_94;
  }

  v59 = v53[1];
LABEL_95:
  v125 = v48;
  v126 = v59;
  v60 = *(*mlir::ShapedType::getElementType(&v125) + 136);
  if (v60 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v60 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 1;
  }

LABEL_144:
  v77 = v128;
  v78 = *v128;
  if (*(*v128 + 17) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v99 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v100 = v78[1];
      v101 = *(v78 + 4);
      if (v101)
      {
        goto LABEL_172;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v99 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v100 = v78[1];
      v101 = *(v78 + 4);
      if (v101)
      {
LABEL_172:
        v102 = v100;
        v103 = v101;
        do
        {
          v104 = v103 >> 1;
          v105 = &v102[2 * (v103 >> 1)];
          v107 = *v105;
          v106 = v105 + 2;
          v103 += ~(v103 >> 1);
          if (v107 < v99)
          {
            v102 = v106;
          }

          else
          {
            v103 = v104;
          }
        }

        while (v103);
LABEL_197:
        if (v102 != &v100[2 * v101] && *v102 == v99)
        {
          v108 = v102[1];
        }

        else
        {
          v108 = 0;
        }

        *&v130 = v77;
        *(&v130 + 1) = v108;
        ElementType = mlir::ShapedType::getElementType(&v130);
        if (!mlir::Type::isSignlessInteger(&ElementType))
        {
          v109 = *(*ElementType + 136);
          v110 = v109 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v109 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
          v111 = v110 || v109 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
          v112 = v111 || v109 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
          v113 = v112 || v109 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
          v114 = v113 || v109 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
          v115 = v114 || v109 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
          v116 = v115 || v109 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
          v117 = v116 || v109 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
          v118 = v117 || v109 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
          v119 = v118 || v109 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
          v120 = v119 || v109 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
          v121 = v120 || v109 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
          v122 = v121 || v109 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
          v123 = v122 || v109 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
          v124 = v123 || v109 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
          if (!v124 && v109 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
          {
            result = 1;
            if (v109 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
            {
              return result;
            }

            goto LABEL_145;
          }
        }

        return 1;
      }
    }

    v101 = 0;
    v102 = v100;
    goto LABEL_197;
  }

LABEL_145:
  v127 = 261;
  v125 = a3;
  v126 = a4;
  mlir::Operation::emitOpError(v132, a1, &v125);
  if (v132[0])
  {
    LODWORD(v130) = 3;
    *(&v130 + 1) = " #";
    v131 = 2;
    if (v134 >= v135)
    {
      if (v133 > &v130 || v133 + 24 * v134 <= &v130)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v79 = v133 + 24 * v134;
    v80 = v130;
    *(v79 + 2) = v131;
    *v79 = v80;
    v81 = ++v134;
    if (v132[0])
    {
      LODWORD(v130) = 5;
      *(&v130 + 1) = a5;
      if (v81 >= v135)
      {
        if (v133 > &v130 || v133 + 24 * v81 <= &v130)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v82 = v133 + 24 * v134;
      v83 = v130;
      *(v82 + 2) = v131;
      *v82 = v83;
      v84 = ++v134;
      if (v132[0])
      {
        LODWORD(v130) = 3;
        *(&v130 + 1) = " must be signless-integer-or-float-like or memref of signless-integer or float, but got ";
        v131 = 88;
        if (v84 >= v135)
        {
          if (v133 > &v130 || v133 + 24 * v84 <= &v130)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v85 = v133 + 24 * v134;
        v86 = v130;
        *(v85 + 2) = v131;
        *v85 = v86;
        ++v134;
        if (v132[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v130, v128);
          if (v134 >= v135)
          {
            if (v133 > &v130 || v133 + 24 * v134 <= &v130)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v87 = v133 + 24 * v134;
          v88 = v130;
          *(v87 + 2) = v131;
          *v87 = v88;
          ++v134;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v132);
  if (v132[0])
  {
    v89 = result;
    mlir::InFlightDiagnostic::report(v132);
    result = v89;
  }

  if (v142 == 1)
  {
    v90 = result;
    if (v141 != &v142)
    {
      free(v141);
    }

    v91 = __p;
    if (__p)
    {
      v92 = v140;
      v93 = __p;
      if (v140 != __p)
      {
        do
        {
          v92 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v92 - 1);
        }

        while (v92 != v91);
        v93 = __p;
      }

      v140 = v91;
      operator delete(v93);
    }

    v94 = v137;
    if (v137)
    {
      v95 = v138;
      v96 = v137;
      if (v138 != v137)
      {
        do
        {
          v98 = *--v95;
          v97 = v98;
          *v95 = 0;
          if (v98)
          {
            MEMORY[0x259C63150](v97, 0x1000C8077774924);
          }
        }

        while (v95 != v94);
        v96 = v137;
      }

      v138 = v94;
      operator delete(v96);
    }

    result = v90;
    if (v133 != &v136)
    {
      free(v133);
      return v90;
    }
  }

  return result;
}

uint64_t mlir::arith::BitcastOp::parse(mlir::arith::BitcastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

void mlir::arith::BitcastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::CeilDivSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::CeilDivSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::arith::CeilDivSIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::CeilDivSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::CeilDivSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::CeilDivSIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::arith::CeilDivSIOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::arith::CeilDivSIOp::parse(mlir::arith::CeilDivSIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

void mlir::arith::CeilDivSIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::CeilDivUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::arith::CeilDivUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::arith::CeilDivUIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::arith::CeilDivUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::arith::CeilDivUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::CeilDivUIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::arith::CeilDivUIOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::arith::CeilDivUIOp::parse(mlir::arith::CeilDivUIOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

void mlir::arith::CeilDivUIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::CmpFOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    return 1;
  }

  v12 = "'arith.cmpf' op requires attribute 'predicate'";
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

uint64_t mlir::arith::CmpFOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
    v30 = mlir::DictionaryAttr::get(&v43, "predicate", 9uLL);
    if (v30)
    {
      v31 = v30;
      if (!mlir::arith::CmpFPredicateAttr::classof(v30))
      {
        a3(v46, a4);
        if (v46[0])
        {
          LODWORD(v44) = 3;
          v45 = 54;
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

uint64_t mlir::arith::CmpFOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  v11 = mlir::Builder::getNamedAttr(&v14, "predicate", 9, v7);
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

unint64_t mlir::arith::CmpFOp::computePropertiesHash(void *a1)
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

unint64_t mlir::arith::CmpFOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 9)
  {
    if (a4 == 8 && *a3 == 0x6874616D74736166)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x7461636964657270 || *(a3 + 8) != 101)
  {
    return 0;
  }

  return a2[1];
}

uint64_t *mlir::arith::CmpFOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9)
  {
    if (*a2 == 0x7461636964657270 && *(a2 + 8) == 101)
    {
      if (a4)
      {
        v5 = result;
        v7 = mlir::arith::CmpFPredicateAttr::classof(a4);
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

void mlir::arith::CmpFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "fastmath", 8uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "predicate", 9uLL, v5);
  }
}

BOOL mlir::arith::CmpFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v8, "fastmath", 8, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(v9, "predicate", 9, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::arith::CmpFPredicateAttr::classof(a1) & 1) != 0)
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
        *(&v23 + 1) = "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15";
        v24 = 123;
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

BOOL mlir::arith::CmpFOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpFPredicateAttr>(a1, (v3 + 8));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpFPredicateAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (mlir::arith::CmpFPredicateAttr::classof(v27))
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::CmpFPredicateAttr]";
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

uint64_t mlir::arith::CmpFOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::arith::CmpFOp::setPredicate(uint64_t a1, unint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v5 = mlir::IntegerType::get(Context, 64, 0);
  result = mlir::IntegerAttr::get(v5, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::arith::CmpFPredicateAttr::get(uint64_t *a1, unint64_t a2)
{
  v3 = mlir::IntegerType::get(a1, 64, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

uint64_t mlir::arith::CmpFOp::setFastmath(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::arith::FastMathFlagsAttr::get(Context, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::arith::CmpFOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = mlir::arith::FastMathFlagsAttr::get(*a1, 0);

  mlir::arith::CmpFOp::build(a1, a2, a3, a4, a5, v10);
}

void mlir::arith::CmpFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v23 = a4;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 8) = a3;
  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a6;
  }

  __src = v28;
  v27 = 0x200000000;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpFOp::inferReturnTypes(v12, v13, v14, v25[0], v25[1], v15, v16, v17, v20, v21, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v27;
  v19 = *(a2 + 72);
  if (v19 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v27);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::arith::CmpFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = a4;
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

uint64_t mlir::arith::CmpFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v21[0] = a4;
  v21[1] = a5;
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

  v20 = (*(mlir::ValueRange::dereference_iterator(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Type::getContext(&v20);
  v13 = mlir::IntegerType::get(Context, 1, 0);
  v19[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v20);
  v19[1] = v14;
  if (v19[0])
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    v15 = mlir::ShapedType::cloneWith(v19, &v17, v13);
  }

  else
  {
    if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_11;
    }

    v15 = mlir::UnrankedTensorType::get(v13);
  }

  v13 = v15;
LABEL_11:
  **a11 = v13;
  return 1;
}

unint64_t mlir::arith::CmpFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a6;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = a5;
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

uint64_t mlir::arith::CmpFOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v18 = a6;
  v19 = a5;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v12 = mlir::IntegerType::get(*a1, 64, 0);
  v13 = mlir::IntegerAttr::get(v12, a4);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = v13;
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = result;
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::CmpFOp::build(uint64_t **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v26 = a5;
  v27 = a4;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v10 = mlir::IntegerType::get(*a1, 64, 0);
  v11 = mlir::IntegerAttr::get(v10, a3);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = v11;
  v13 = mlir::arith::FastMathFlagsAttr::get(*a1, a6);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = v13;
  __src = v32;
  v31 = 0x200000000;
  mlir::ValueRange::ValueRange(v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = mlir::RegionRange::RegionRange(&v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpFOp::inferReturnTypes(v16, v17, v18, v29[0], v29[1], v19, v20, v21, v24, v25, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = v31;
  v23 = *(a2 + 72);
  if (v23 + v31 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v31)
  {
    memcpy((*(a2 + 64) + 8 * v23), __src, 8 * v31);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v32)
  {
    free(__src);
  }
}

unint64_t mlir::arith::CmpFOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v22 = a7;
  v23 = a6;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v14 = mlir::IntegerType::get(*a1, 64, 0);
  v15 = mlir::IntegerAttr::get(v14, a5);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v15;
  result = mlir::arith::FastMathFlagsAttr::get(*a1, a8);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = result;
  v19 = *(a2 + 72);
  if (a4 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v20 = 0;
    v21 = *(a2 + 64) + 8 * v19;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v20);
      *(v21 + 8 * v20++) = result;
    }

    while (a4 != v20);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + a4;
  return result;
}

uint64_t mlir::arith::CmpFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::CmpFOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v31[2] = *MEMORY[0x277D85DE8];
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

  __src = v31;
  v30 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  v18 = mlir::RegionRange::RegionRange(&v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpFOp::inferReturnTypes(v18, v19, v20, a3, a4, v21, v22, v23, v26, v27, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v30;
  v25 = *(a2 + 72);
  if (v25 + v30 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v30)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v30);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v31)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::arith::CmpFOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
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

BOOL mlir::arith::CmpFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    *&v26 = v2;
    if ((mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(v4, "predicate", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v26) & 1) == 0)
    {
      return 0;
    }

    *&v26 = *this;
    if ((mlir::complex::__mlir_ods_local_attr_constraint_ComplexOps1(v5, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v26) & 1) == 0 || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      return 0;
    }

    v6 = *(*this + 9) ? *this - 16 : 0;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
    {
      return 0;
    }

    v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    Context = mlir::Type::getContext(&v25);
    v9 = mlir::IntegerType::get(Context, 1, 0);
    v23[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v25);
    v23[1] = v10;
    if (v23[0])
    {
      LOBYTE(v26) = 0;
      v27 = 0;
      v11 = mlir::ShapedType::cloneWith(v23, &v26, v9);
    }

    else
    {
      if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_36;
      }

      v11 = mlir::UnrankedTensorType::get(v9);
    }

    v9 = v11;
LABEL_36:
    if (*(*this + 9))
    {
      v22 = *this - 16;
    }

    else
    {
      v22 = 0;
    }

    if (v9 == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v23[0] = "failed to verify that result type has i1 element type and same shape as operands";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, &v26);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
    return v12;
  }

  v23[0] = "requires attribute 'predicate'";
  v24 = 259;
  mlir::OpState::emitOpError(this, v23, &v26);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
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

    v13 = __p;
    if (__p)
    {
      v14 = v33;
      v15 = __p;
      if (v33 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v33 = v13;
      operator delete(v15);
    }

    v16 = v30;
    if (v30)
    {
      v17 = v31;
      v18 = v30;
      if (v31 != v30)
      {
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
        v18 = v30;
      }

      v31 = v16;
      operator delete(v18);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v12;
}

BOOL mlir::arith::CmpFOp::parse(mlir::arith::CmpFOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  memset(v82, 0, sizeof(v82));
  v83 = 0;
  v81[0] = v82;
  v81[1] = 1;
  memset(v79, 0, sizeof(v79));
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v75 = &v77;
  v76 = 1;
  v74 = 0uLL;
  v95[0] = v96;
  v95[1] = 0x400000000;
  v97 = 4;
  v5 = (*(*this + 40))(this, a2, a3);
  v94[0] = xmmword_27983B1A8;
  v94[1] = *&off_27983B1B8;
  v94[2] = xmmword_27983B1C8;
  v94[3] = *&off_27983B1D8;
  *v90 = xmmword_27983B168;
  v91 = *&off_27983B178;
  *__p = xmmword_27983B188;
  *v93 = *&off_27983B198;
  v89[2] = xmmword_27983B128;
  v89[3] = *&off_27983B138;
  v89[4] = xmmword_27983B148;
  v89[5] = *&off_27983B158;
  v87 = xmmword_27983B0E8;
  *v88 = *&off_27983B0F8;
  v89[0] = xmmword_27983B108;
  v89[1] = *&off_27983B118;
  if ((*(*this + 424))(this, &v74, &v87, 16))
  {
    v6 = *(&v74 + 1);
    if (!*(&v74 + 1))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v72[0] = 0;
    v49 = (*(*this + 32))(this);
    NoneType = mlir::Builder::getNoneType(v49, v50);
    v52 = (*(*this + 472))(this, v72, NoneType);
    if ((v52 & 0x100) == 0)
    {
      *&v84 = "expected string or keyword containing one of the following enum values for attribute 'predicate' [false, oeq, ogt, oge, olt, ole, one, ord, ueq, ugt, uge, ult, ule, une, uno, true]";
      v86 = 259;
      (*(*this + 24))(&v87, this, v5, &v84);
      v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
      if (v87)
      {
        mlir::InFlightDiagnostic::report(&v87);
      }

      if (BYTE8(v94[0]) != 1)
      {
        goto LABEL_122;
      }

      if (v93[1] != v94 + 8)
      {
        free(v93[1]);
      }

      v53 = __p[0];
      if (__p[0])
      {
        v54 = __p[1];
        v55 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p[0];
        }

        __p[1] = v53;
        operator delete(v55);
      }

      v56 = v90[1];
      if (!v90[1])
      {
        goto LABEL_120;
      }

      v57 = v91;
      v58 = v90[1];
      if (v91 == v90[1])
      {
LABEL_119:
        *&v91 = v56;
        operator delete(v58);
LABEL_120:
        if (v88[1] != v89 + 8)
        {
          free(v88[1]);
        }

        goto LABEL_122;
      }

      do
      {
        v60 = *--v57;
        v59 = v60;
        *v57 = 0;
        if (v60)
        {
          MEMORY[0x259C63150](v59, 0x1000C8077774924);
        }
      }

      while (v57 != v56);
LABEL_118:
      v58 = v90[1];
      goto LABEL_119;
    }

    if ((v52 & 1) == 0)
    {
      v48 = 0;
LABEL_122:
      if (v95[0] != v96)
      {
        free(v95[0]);
      }

      return v48;
    }

    mlir::NamedAttrList::append(v95, "predicate", 9uLL, v72[0]);
    *&v74 = mlir::StringAttr::getValue(v72);
    *(&v74 + 1) = v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v7 = mlir::arith::symbolizeCmpFPredicate(v74, v6);
  if ((v8 & 1) == 0)
  {
    v72[0] = "invalid ";
    v73 = 259;
    (*(*this + 24))(&v87, this, v5, v72);
    if (v87)
    {
      LODWORD(v84) = 3;
      *(&v84 + 1) = "predicate attribute specification: ";
      v85 = 36;
      if (LODWORD(v89[0]) >= DWORD1(v89[0]))
      {
        if (v88[1] > &v84 || v88[1] + 24 * LODWORD(v89[0]) <= &v84)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v61 = v88[1] + 24 * LODWORD(v89[0]);
      v62 = v84;
      *(v61 + 2) = v85;
      *v61 = v62;
      ++LODWORD(v89[0]);
      if (v87)
      {
        v86 = 261;
        v84 = v74;
        mlir::Diagnostic::operator<<(&v87 + 8, &v84);
        if (v87)
        {
          mlir::Diagnostic::operator<<(&v87 + 8, 34);
        }
      }
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if ((BYTE8(v94[0]) & 1) == 0)
    {
      goto LABEL_122;
    }

    if (v93[1] != v94 + 8)
    {
      free(v93[1]);
    }

    v63 = __p[0];
    if (__p[0])
    {
      v64 = __p[1];
      v65 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
        }

        while (v64 != v63);
        v65 = __p[0];
      }

      __p[1] = v63;
      operator delete(v65);
    }

    v56 = v90[1];
    if (!v90[1])
    {
      goto LABEL_120;
    }

    v66 = v91;
    v58 = v90[1];
    if (v91 == v90[1])
    {
      goto LABEL_119;
    }

    do
    {
      v68 = *--v66;
      v67 = v68;
      *v66 = 0;
      if (v68)
      {
        MEMORY[0x259C63150](v67, 0x1000C8077774924);
      }
    }

    while (v66 != v56);
    goto LABEL_118;
  }

  v9 = v7;
  v10 = (*(*this + 32))(this);
  v11 = mlir::IntegerType::get(*v10, 64, 0);
  v12 = mlir::IntegerAttr::get(v11, v9);
  v13 = *(a2 + 32);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 8) = v12;
LABEL_7:
  if (v95[0] != v96)
  {
    free(v95[0]);
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  v14 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v82, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 120))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v79, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 408))(this, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(this, &v78, 0))
    {
      return 0;
    }

    if (v78)
    {
      v15 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(a2);
      *v15 = v78;
    }
  }

  v95[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a2 + 1);
  *&v87 = this;
  *(&v87 + 1) = v95;
  v88[0] = a2;
  if (!mlir::arith::CmpFOp::verifyInherentAttrs(v16, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v87))
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  *&v87 = 0;
  if (((*(*this + 536))(this, &v87) & 1) == 0)
  {
    return 0;
  }

  v77 = v87;
  v17 = v75;
  if (!v76)
  {
LABEL_124:
    *&v87 = getI1SameShape(*v17);
    mlir::OperationState::addTypes(a2, &v87, 1);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v81, &v75, v14, a2 + 16))
    {
      return (*(*this + 728))(this, v79, *v75, a2 + 16) & 1;
    }

    return 0;
  }

  v18 = 8 * v76;
  v19 = v75;
  while (1)
  {
    *&v84 = *v19;
    v20 = *(*v84 + 136);
    v21 = v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
    v22 = v21 || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
    v23 = v22 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
    v24 = v23 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
    v25 = v24 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
    v26 = v25 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
    v27 = v26 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
    v28 = v27 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
    v29 = v28 || v20 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
    v30 = v29 || v20 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
    v31 = v30 || v20 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
    v32 = v31 || v20 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
    v33 = v32 || v20 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
    if (!v33 && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v70 = v18;
      v71 = v19;
      if (!mlir::Type::hasTrait<mlir::ValueSemantics>(&v84))
      {
        break;
      }

      *&v87 = llvm::cast<mlir::ShapedType,mlir::Type>(&v84);
      *(&v87 + 1) = v42;
      ElementType = mlir::ShapedType::getElementType(&v87);
      v44 = mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1::operator()(ElementType);
      v36 = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
      v37 = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
      v38 = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
      v39 = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
      v40 = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
      v18 = v70;
      v19 = v71;
      v41 = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
      if (!v44)
      {
        break;
      }
    }

    ++v19;
    v18 -= 8;
    if (!v18)
    {
      goto LABEL_124;
    }
  }

  v45 = (*(*this + 16))(this, v36, v37, v38, v39, v40, v18, v41);
  v96[8] = 257;
  (*(*this + 24))(&v87, this, v45, v95);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v87, "'lhs' must be floating-point-like, but got ");
  mlir::InFlightDiagnostic::append<mlir::Type const&>(v46, &v84);
  v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
  return v48;
}

uint64_t mlir::arith::symbolizeCmpFPredicate(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 3:
      if (*a1 == 25967 && *(a1 + 2) == 113)
      {
        return 1;
      }

      else if (*a1 == 26479 && *(a1 + 2) == 116)
      {
        return 2;
      }

      else if (*a1 == 26479 && *(a1 + 2) == 101)
      {
        return 3;
      }

      else if (*a1 == 27759 && *(a1 + 2) == 116)
      {
        return 4;
      }

      else if (*a1 == 27759 && *(a1 + 2) == 101)
      {
        return 5;
      }

      else if (*a1 == 28271 && *(a1 + 2) == 101)
      {
        return 6;
      }

      else if (*a1 == 29295 && *(a1 + 2) == 100)
      {
        return 7;
      }

      else if (*a1 == 25973 && *(a1 + 2) == 113)
      {
        return 8;
      }

      else if (*a1 == 26485 && *(a1 + 2) == 116)
      {
        return 9;
      }

      else if (*a1 == 26485 && *(a1 + 2) == 101)
      {
        return 10;
      }

      else if (*a1 == 27765 && *(a1 + 2) == 116)
      {
        return 11;
      }

      else if (*a1 == 27765 && *(a1 + 2) == 101)
      {
        return 12;
      }

      else if (*a1 == 28277 && *(a1 + 2) == 101)
      {
        return 13;
      }

      else
      {
        if (*a1 != 28277 || *(a1 + 2) != 111)
        {
          return 0;
        }

        return 14;
      }

    case 4:
      if (*a1 == 1702195828)
      {
        return 15;
      }

      else
      {
        return 0;
      }

    case 5:
      if (*a1 != 1936482662 || *(a1 + 4) != 101)
      {
        return 0;
      }

      return 0;
    default:
      return 0;
  }
}

uint64_t mlir::Type::hasTrait<mlir::ValueSemantics>(uint64_t **a1)
{
  v1 = **a1;
  {
    v7 = v1;
    mlir::arith::__mlir_ods_local_type_constraint_ArithOps1();
    v1 = v7;
  }

  v2 = (v1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id;
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

BOOL mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1::operator()(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

void mlir::arith::CmpFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v39 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  v6 = 0;
  v7 = "false";
  v8 = 5;
  switch(mlir::IntegerAttr::getInt(&v39))
  {
    case 0:
      break;
    case 1:
      v6 = 0;
      v7 = "oeq";
      v8 = 3;
      break;
    case 2:
      v6 = 0;
      v7 = "ogt";
      v8 = 3;
      break;
    case 3:
      v6 = 0;
      v7 = "oge";
      v8 = 3;
      break;
    case 4:
      v6 = 0;
      v7 = "olt";
      v8 = 3;
      break;
    case 5:
      v6 = 0;
      v7 = "ole";
      v8 = 3;
      break;
    case 6:
      v6 = 0;
      v7 = "one";
      v8 = 3;
      break;
    case 7:
      v6 = 0;
      v7 = "ord";
      v8 = 3;
      break;
    case 8:
      v6 = 0;
      v7 = "ueq";
      v8 = 3;
      break;
    case 9:
      v6 = 0;
      v7 = "ugt";
      v8 = 3;
      break;
    case 10:
      v6 = 0;
      v7 = "uge";
      v8 = 3;
      break;
    case 11:
      v6 = 0;
      v7 = "ult";
      v8 = 3;
      break;
    case 12:
      v6 = 0;
      v7 = "ule";
      v8 = 3;
      break;
    case 13:
      v6 = 0;
      v7 = "une";
      v8 = 3;
      break;
    case 14:
      v6 = 0;
      v7 = "uno";
      v8 = 3;
      break;
    case 15:
      v6 = 0;
      v7 = "true";
      v8 = 4;
      break;
    default:
      v8 = 0;
      v7 = "";
      v6 = 1;
      break;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8 <= *(v9 + 24) - *(v9 + 32))
  {
    if ((v6 & 1) == 0)
    {
      v10 = v9;
      memcpy(*(v9 + 32), v7, v8);
      *(v10 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, v7, v8);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] == v12)
  {
    llvm::raw_ostream::write(v11, ",", 1uLL);
  }

  else
  {
    *v12 = 44;
    ++v11[4];
  }

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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v15 = (*(*a2 + 16))(a2);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, ",", 1uLL);
  }

  else
  {
    *v16 = 44;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  if (v19 != mlir::arith::FastMathFlagsAttr::get(Context, 0))
  {
    v21 = (*(*a2 + 16))(a2);
    v22 = *(v21 + 4);
    if (v22 >= *(v21 + 3))
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      *(v21 + 4) = v22 + 1;
      *v22 = 32;
    }

    v23 = (*(*a2 + 16))(a2);
    v24 = v23[4];
    if (v23[3] - v24 > 7uLL)
    {
      *v24 = 0x6874616D74736166;
      v23[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v23, "fastmath", 8uLL);
    }

    v39 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = (*(*v25 + 80))(v25) + v25[4] - v25[2];
      mlir::arith::FastMathFlagsAttr::print(&v39, a2);
      if (v26 == (*(*v25 + 80))(v25) + v25[4] - v25[2])
      {
        (*(*a2 + 40))(a2, v39);
      }
    }
  }

  v39 = v41;
  v41[0] = "predicate";
  v41[1] = 9;
  v41[2] = "fastmath";
  v41[3] = 8;
  v40 = 0x200000002;
  v27 = mlir::Attribute::getContext((*this + 24));
  v28 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v28 && v28 == mlir::arith::FastMathFlagsAttr::get(v27, 0))
  {
    if (v40 >= HIDWORD(v40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v29 = v39 + 16 * v40;
    *v29 = "fastmath";
    v29[1] = 8;
    LODWORD(v40) = v40 + 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v31, v39, v40);
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

  v34 = (*(*a2 + 16))(a2);
  v35 = v34[4];
  if (v34[3] == v35)
  {
    llvm::raw_ostream::write(v34, ":", 1uLL);
  }

  else
  {
    *v35 = 58;
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v39 != v41)
  {
    free(v39);
  }
}

const char *mlir::arith::stringifyCmpFPredicate(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return "";
  }

  else
  {
    return (&off_27983B478)[a1];
  }
}

uint64_t mlir::arith::detail::CmpIOpGenericAdaptorBase::CmpIOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::arith::CmpIOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'arith.cmpi' op requires attribute 'predicate'";
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

uint64_t mlir::arith::CmpIOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "predicate", 9uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (mlir::arith::CmpIPredicateAttr::classof(v8))
  {
    *a1 = v9;
    return 1;
  }

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

uint64_t mlir::arith::CmpIOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "predicate", 9, *a2);
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

unint64_t mlir::arith::CmpIOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::CmpIOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x7461636964657270 ? (v4 = *(a3 + 8) == 101) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::arith::CmpIOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9 && *a2 == 0x7461636964657270 && *(a2 + 8) == 101)
  {
    if (a4)
    {
      v5 = result;
      v7 = mlir::arith::CmpIPredicateAttr::classof(a4);
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

uint64_t mlir::arith::CmpIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "predicate", 9uLL, *a2);
  }

  return result;
}

uint64_t mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1 || (mlir::arith::CmpIPredicateAttr::classof(a1) & 1) != 0)
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
        *(&v23 + 1) = "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9";
        v24 = 99;
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

BOOL mlir::arith::CmpIOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpIPredicateAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpIPredicateAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (mlir::arith::CmpIPredicateAttr::classof(v27))
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::CmpIPredicateAttr]";
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

uint64_t mlir::arith::CmpIPredicateAttr::get(uint64_t *a1, unint64_t a2)
{
  v3 = mlir::IntegerType::get(a1, 64, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

uint64_t mlir::arith::CmpIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a6;
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = a4;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::CmpIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v19 = a5;
  v20 = a4;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v7 = *(a2 + 256);
  if (!v7)
  {
    operator new();
  }

  *v7 = a3;
  __src = v25;
  v24 = 0x200000000;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v9 = mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpIOp::inferReturnTypes(v9, v10, v11, v22[0], v22[1], v12, v13, v14, v17, v18, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v24;
  v16 = *(a2 + 72);
  if (v16 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v24);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t mlir::arith::CmpIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v21[0] = a4;
  v21[1] = a5;
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

  v20 = (*(mlir::ValueRange::dereference_iterator(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Type::getContext(&v20);
  v13 = mlir::IntegerType::get(Context, 1, 0);
  v19[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v20);
  v19[1] = v14;
  if (v19[0])
  {
    LOBYTE(v17) = 0;
    v18 = 0;
    v15 = mlir::ShapedType::cloneWith(v19, &v17, v13);
  }

  else
  {
    if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_11;
    }

    v15 = mlir::UnrankedTensorType::get(v13);
  }

  v13 = v15;
LABEL_11:
  **a11 = v13;
  return 1;
}

unint64_t mlir::arith::CmpIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a7;
  v17 = a6;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
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

uint64_t mlir::arith::CmpIOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a6;
  v15 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v10 = mlir::IntegerType::get(*a1, 64, 0);
  result = mlir::IntegerAttr::get(v10, a4);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::arith::CmpIOp::build(uint64_t **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v23 = a4;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v8 = mlir::IntegerType::get(*a1, 64, 0);
  v9 = mlir::IntegerAttr::get(v8, a3);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = v9;
  __src = v28;
  v27 = 0x200000000;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpIOp::inferReturnTypes(v12, v13, v14, v25[0], v25[1], v15, v16, v17, v20, v21, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v27;
  v19 = *(a2 + 72);
  if (v19 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v27);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v28)
  {
    free(__src);
  }
}

unint64_t mlir::arith::CmpIOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a7;
  v19 = a6;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v12 = mlir::IntegerType::get(*a1, 64, 0);
  result = mlir::IntegerAttr::get(v12, a5);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = result;
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

uint64_t mlir::arith::CmpIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::arith::CmpIOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v31[2] = *MEMORY[0x277D85DE8];
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

  __src = v31;
  v30 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  v18 = mlir::RegionRange::RegionRange(&v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::arith::CmpIOp::inferReturnTypes(v18, v19, v20, a3, a4, v21, v22, v23, v26, v27, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v30;
  v25 = *(a2 + 72);
  if (v25 + v30 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v30)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v30);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v31)
  {
    free(__src);
  }
}