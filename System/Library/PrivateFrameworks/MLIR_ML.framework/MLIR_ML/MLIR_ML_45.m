void mlir::pdl_interp::GetResultOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v15 = v17;
  v17[0] = "index";
  v17[1] = 5;
  v16 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }
}

uint64_t mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::GetResultsOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::getIndex(mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase *this)
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

  v2 = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    MEMORY[0x259C63150]();
  }

  return v2 | 0x100000000;
}

uint64_t mlir::pdl_interp::GetResultsOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 1;
  }

  v20 = *(a1 + 24);
  v17[0] = mlir::IntegerAttr::getType(&v20);
  if (!mlir::Type::isSignlessInteger(v17, 32))
  {
    goto LABEL_10;
  }

  v19 = v2;
  mlir::IntegerAttr::getValue(&v19, &v21);
  v4 = v22 - 1;
  if (v22 >= 0x41)
  {
    v5 = (v21 + 8 * (v4 >> 6));
  }

  else
  {
    v5 = &v21;
  }

  v6 = (1 << v4) & *v5;
  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x259C63150]();
  }

  if (!v6)
  {
    return 1;
  }

LABEL_10:
  v17[0] = "'pdl_interp.get_results' op attribute 'index' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative";
  v18 = 259;
  mlir::emitError(a2, v17, &v21);
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v28;
      v10 = __p;
      if (v28 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v28 = v8;
      operator delete(v10);
    }

    v11 = v25;
    if (v25)
    {
      v12 = v26;
      v13 = v25;
      if (v26 != v25)
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
        v13 = v25;
      }

      v26 = v11;
      operator delete(v13);
    }

    if (v23 != &v24)
    {
      free(v23);
    }
  }

  return v7;
}

uint64_t mlir::pdl_interp::GetResultsOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "index", 5uLL);
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
    v33 = 50;
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

uint64_t mlir::pdl_interp::GetResultsOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "index", 5, *a2);
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

unint64_t mlir::pdl_interp::GetResultsOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::GetResultsOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::GetResultsOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1701080681 && *(a2 + 4) == 120)
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

uint64_t mlir::pdl_interp::GetResultsOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "index", 5uLL, *a2);
  }

  return result;
}

BOOL mlir::pdl_interp::GetResultsOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v2);
}

uint64_t mlir::pdl_interp::GetResultsOp::getIndex(mlir::pdl_interp::GetResultsOp *this)
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

  v2 = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    MEMORY[0x259C63150]();
  }

  return v2 | 0x100000000;
}

uint64_t mlir::pdl_interp::GetResultsOp::setIndex(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if ((a2 & 0x100000000) != 0)
  {
    v3 = a2;
    v4 = result;
    Context = mlir::Attribute::getContext((*result + 24));
    v6 = mlir::Attribute::getContext((*v4 + 24));
    IntegerType = mlir::Builder::getIntegerType(&v6, 32);
    result = mlir::Builder::getIntegerAttr(&Context, IntegerType, v3);
    *(v2 + 64) = result;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t mlir::pdl_interp::GetResultsOp::build(uint64_t **I32IntegerAttr, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    v8 = a2;
    v9 = a4;
    v10 = a3;
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(I32IntegerAttr, a5);
    a2 = v8;
    a3 = v10;
    a4 = v9;
    v6 = I32IntegerAttr;
  }

  else
  {
    v6 = 0;
  }

  return mlir::pdl_interp::GetResultsOp::build(I32IntegerAttr, a2, a3, a4, v6);
}

uint64_t mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  if (a5)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a5;
  }

  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::pdl_interp::GetResultsOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  v7 = mlir::pdl::RangeType::get(SingletonImpl);

  return mlir::pdl_interp::GetResultsOp::build(v7, a2, v7, a3, 0);
}

unint64_t mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
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

uint64_t mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl_interp::GetResultsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v7 = v2;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
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
  return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::pdl_interp::GetResultsOp::parse(mlir::pdl_interp::GetResultsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  IntegerType = mlir::Builder::getIntegerType(v5, 32);
  v7 = (*(*this + 456))(this, &v18, IntegerType);
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    if (v18)
    {
      v8 = *(a2 + 32);
      if (!v8)
      {
        operator new();
      }

      *v8 = v18;
    }
  }

  v20 = 257;
  if ((*(*this + 400))(this, "of", 2, v19))
  {
    (*(*this + 40))(this);
    if ((*(*this + 704))(this, v16, 1) & 1) != 0 && ((*(*this + 104))(this))
    {
      v19[0] = 0;
      if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(this, v19))
      {
        v15 = v19[0];
        v14 = (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112))
        {
          v9 = *(a2 + 1);
          v19[0] = this;
          v19[1] = &v14;
          v19[2] = a2;
          v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
          if (!v10 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v10, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19) & 1) != 0)
          {
            v11 = (*(*this + 32))(this);
            v12 = mlir::Builder::getType<mlir::pdl::OperationType>(v11);
            mlir::OperationState::addTypes(a2, &v15, 1);
            return (*(*this + 728))(this, v16, v12, a2 + 16) & 1;
          }
        }
      }
    }
  }

  return 0;
}

void mlir::pdl_interp::GetResultsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
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

    (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 26223;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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
  v23 = v25;
  v25[0] = "index";
  v25[1] = 5;
  v24 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::pdl_interp::GetUsersOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v7 = mlir::pdl::RangeType::get(SingletonImpl);
  v10 = a3;
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = v7;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::pdl_interp::GetUsersOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::pdl_interp::GetUsersOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::pdl_interp::GetUsersOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::GetUsersOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *this;
  v5 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v30[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*mlir::pdl::RangeType::getElementType(v30) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      return 1;
    }
  }

  v27 = 261;
  v26[0] = "result";
  v26[1] = 6;
  mlir::Operation::emitOpError(v30, v4, v26);
  if (v30[0])
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = " #";
    v29 = 2;
    if (v32 >= v33)
    {
      if (v31 > &v28 || v31 + 24 * v32 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v31 + 24 * v32;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    v8 = ++v32;
    if (v30[0])
    {
      LODWORD(v28) = 5;
      *(&v28 + 1) = 0;
      if (v8 >= v33)
      {
        if (v31 > &v28 || v31 + 24 * v8 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = v31 + 24 * v32;
      v10 = v28;
      *(v9 + 2) = v29;
      *v9 = v10;
      v11 = ++v32;
      if (v30[0])
      {
        LODWORD(v28) = 3;
        v29 = 71;
        if (v11 >= v33)
        {
          if (v31 > &v28 || v31 + 24 * v11 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v31 + 24 * v32;
        v13 = v28;
        *(v12 + 2) = v29;
        *v12 = v13;
        ++v32;
        if (v30[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v28, v5);
          if (v32 >= v33)
          {
            if (v31 > &v28 || v31 + 24 * v32 <= &v28)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v31 + 24 * v32;
          v15 = v28;
          *(v14 + 2) = v29;
          *v14 = v15;
          ++v32;
        }
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
  if (v30[0])
  {
    mlir::InFlightDiagnostic::report(v30);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v16;
}

uint64_t mlir::pdl_interp::GetUsersOp::parse(mlir::pdl_interp::GetUsersOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17[1] = 1;
  v18 = 0;
  v23 = 257;
  if (((*(*this + 400))(this, "of", 2, v22, a5, a6, a7, a8, &v18) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(this, v22))
  {
    return 0;
  }

  v18 = v22[0];
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = (*(*this + 32))(this);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v11);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v14 = mlir::pdl::RangeType::get(SingletonImpl);
  v15 = *(a2 + 18);
  if (v15 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v15) = v14;
  ++*(a2 + 18);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v19, v17, v10, a2 + 16) & 1;
}

void mlir::pdl_interp::GetUsersOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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
  v19 = v21;
  v20 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v17, v19, v20);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::pdl_interp::GetValueTypeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v8 = SingletonImpl;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v8 = mlir::pdl::RangeType::get(SingletonImpl);
  }

  v11 = a3;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = v8;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::pdl_interp::GetValueTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::pdl_interp::GetValueTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::pdl_interp::GetValueTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::GetValueTypeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v55 = *MEMORY[0x277D85DE8];
  if ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*v4 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    v6 = *this;
    if (v5 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v44[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::pdl::RangeType::getElementType(v44) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
    {
      v41 = 261;
      v40[0] = "result";
      v40[1] = 6;
      mlir::Operation::emitOpError(v44, v6, v40);
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

        v7 = v45 + 24 * v46;
        v8 = v42;
        *(v7 + 2) = v43;
        *v7 = v8;
        v9 = ++v46;
        if (v44[0])
        {
          LODWORD(v42) = 5;
          *(&v42 + 1) = 0;
          if (v9 >= v47)
          {
            if (v45 > &v42 || v45 + 24 * v9 <= &v42)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v10 = v45 + 24 * v46;
          v11 = v42;
          *(v10 + 2) = v43;
          *v10 = v11;
          v12 = ++v46;
          if (v44[0])
          {
            LODWORD(v42) = 3;
            v43 = 75;
            if (v12 >= v47)
            {
              if (v45 > &v42 || v45 + 24 * v12 <= &v42)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v13 = v45 + 24 * v46;
            v14 = v42;
            *(v13 + 2) = v43;
            *v13 = v14;
            ++v46;
            if (v44[0])
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v42, v4);
              if (v46 >= v47)
              {
                if (v45 > &v42 || v45 + 24 * v46 <= &v42)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v15 = v45 + 24 * v46;
              v16 = v42;
              *(v15 + 2) = v43;
              *v15 = v16;
              ++v46;
            }
          }
        }
      }

      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
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

        v18 = __p;
        if (__p)
        {
          v19 = v52;
          v20 = __p;
          if (v52 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v52 = v18;
          operator delete(v20);
        }

        v21 = v49;
        if (v49)
        {
          v22 = v50;
          v23 = v49;
          if (v50 != v49)
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
            v23 = v49;
          }

          v50 = v21;
          operator delete(v23);
        }

        if (v45 != v48)
        {
          free(v45);
        }
      }

      if (!v17)
      {
        return 0;
      }
    }
  }

  if (*(*this + 9))
  {
    v26 = *this - 16;
  }

  else
  {
    v26 = 0;
  }

  v44[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Type::getContext(v44);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  if (*(*v44[0] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    SingletonImpl = mlir::pdl::RangeType::get(SingletonImpl);
  }

  if (SingletonImpl == (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v41 = 259;
  mlir::OpState::emitOpError(this, v40, v44);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  v31 = result;
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
    result = v31;
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
      result = v31;
    }

    v32 = __p;
    if (__p)
    {
      v33 = v52;
      v34 = __p;
      if (v52 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v52 = v32;
      operator delete(v34);
      result = v31;
    }

    v35 = v49;
    if (v49)
    {
      v36 = v50;
      v37 = v49;
      if (v50 != v49)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        v37 = v49;
      }

      v50 = v35;
      operator delete(v37);
      result = v31;
    }

    if (v45 != v48)
    {
      free(v45);
      return v31;
    }
  }

  return result;
}

BOOL mlir::pdl_interp::GetValueTypeOp::parse(mlir::pdl_interp::GetValueTypeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v23 = 257;
  if (((*(*this + 400))() & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(this, v22))
  {
    return 0;
  }

  v5 = v22[0];
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v19 = v5;
  v6 = *(*v5 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && (v22[0] = v5, *(*mlir::pdl::RangeType::getElementType(v22) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
  {
    v12 = *(a2 + 18);
    if (v12 >= *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 8) + 8 * v12) = v5;
    ++*(a2 + 18);
    v22[0] = v5;
    Context = mlir::Type::getContext(v22);
    TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
    SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    v16 = SingletonImpl;
    if (*(*v22[0] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v16 = mlir::pdl::RangeType::get(SingletonImpl);
    }

    return (*(*this + 728))(this, v20, v16, a2 + 16) & 1;
  }

  else
  {
    v7 = (*(*this + 16))(this);
    v18 = 257;
    (*(*this + 24))(v22, this, v7, v17);
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v8, &v19);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
    return v10;
  }
}

void mlir::pdl_interp::GetValueTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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

  if (*(*this + 9))
  {
    v16 = *this - 16;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = v23;
  v22 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v19, v21, v22);
  if (v21 != v23)
  {
    free(v21);
  }
}

uint64_t mlir::pdl_interp::IsNotNullOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a3;
  result = mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 208);
  if (v9 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v9) = a4;
  v10 = *(a2 + 212);
  v11 = *(a2 + 208) + 1;
  *(a2 + 208) = v11;
  if (v11 >= v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v11) = a5;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::IsNotNullOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a5;
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v13 = *(a2 + 208);
  if (v13 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v13) = a6;
  v14 = *(a2 + 212);
  v15 = *(a2 + 208) + 1;
  *(a2 + 208) = v15;
  if (v15 >= v14)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v15) = a7;
  ++*(a2 + 208);
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

unint64_t mlir::pdl_interp::IsNotNullOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl_interp::IsNotNullOp::parse(mlir::pdl_interp::IsNotNullOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v16 = v18;
  v17 = 0x200000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v13, 1) & 1) != 0 && ((*(*this + 104))(this))
  {
    v15[0] = 0;
    if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(this, v15))
    {
      v11 = v15[0];
      (*(*this + 40))(this);
      if ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 56))(this))
      {
        v15[0] = 0;
        v6 = (*(*this + 808))(this, v15);
        if ((v6 & 0x100) == 0)
        {
LABEL_7:
          mlir::BlockRange::BlockRange(v15, v16, v17);
          mlir::OperationState::addSuccessors(a2, v15[0], v15[1]);
          v7 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v12, v10, v5, a2 + 16) & 1;
          goto LABEL_16;
        }

        if (v6)
        {
          llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v16, v15);
          while (((*(*this + 128))(this) & 1) != 0)
          {
            if (((*(*this + 800))(this, v15) & 1) == 0)
            {
              goto LABEL_15;
            }

            v8 = v17;
            if (v17 >= HIDWORD(v17))
            {
              llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v16, v15);
            }

            else
            {
              v16[v17] = v15[0];
              LODWORD(v17) = v8 + 1;
            }
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_15:
  v7 = 0;
LABEL_16:
  if (v16 != v18)
  {
    free(v16);
  }

  return v7;
}

void mlir::pdl_interp::IsNotNullOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = v31;
  v30 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v13, v29, v30);
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
    *v17 = 15917;
    v16[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, "->", 2uLL);
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v20 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  v21 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v22 = v20 - 1;
  if (v22)
  {
    v23 = (v21 + 56);
    do
    {
      v25 = (*(*a2 + 16))(a2);
      v26 = v25[4];
      if (v25[3] - v26 <= 1uLL)
      {
        llvm::raw_ostream::write(v25, ", ", 2uLL);
      }

      else
      {
        *v26 = 8236;
        v25[4] += 2;
      }

      v24 = *v23;
      v23 += 4;
      (*(*a2 + 176))(a2, v24);
      --v22;
    }

    while (v22);
  }

LABEL_24:
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::RecordMatchOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 56);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 72);
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

  v10 = (this + 4 * v3 + 56);
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

uint64_t mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::getRootKind@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 48);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::getBenefit(mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase *this)
{
  v5 = *(this + 3);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::pdl_interp::RecordMatchOpAdaptor::verify(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    if (a1[5])
    {
      if (!a1[4] || (v43 = a1[4], Value = mlir::ArrayAttr::getValue(&v43), v5 = mlir::ArrayAttr::getValue(&v43), v7 = v5 + 8 * v6, v7 == Value))
      {
LABEL_8:
        v40 = v3;
        v41[0] = mlir::IntegerAttr::getType(&v40);
        if (mlir::Type::isSignlessInteger(v41, 16))
        {
          v39 = v3;
          mlir::IntegerAttr::getValue(&v39, &v43);
          v8 = v44 - 1;
          if (v44 >= 0x41)
          {
            v9 = (v43 + 8 * (v8 >> 6));
          }

          else
          {
            v9 = &v43;
          }

          v10 = (1 << v8) & *v9;
          if (v44 >= 0x41 && v43)
          {
            MEMORY[0x259C63150]();
          }

          if (!v10)
          {
            return 1;
          }
        }

        v41[0] = "'pdl_interp.record_match' op attribute 'benefit' failed to satisfy constraint: 16-bit signless integer attribute whose value is non-negative";
        v42 = 259;
        mlir::emitError(a2, v41, &v43);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
        if (v43)
        {
          mlir::InFlightDiagnostic::report(&v43);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
          }

          v12 = __p;
          if (__p)
          {
            v13 = v50;
            v14 = __p;
            if (v50 != __p)
            {
              do
              {
                v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
              }

              while (v13 != v12);
              v14 = __p;
            }

            v50 = v12;
            operator delete(v14);
          }

          v15 = v47;
          if (!v47)
          {
            goto LABEL_82;
          }

          v16 = v48;
          v17 = v47;
          if (v48 == v47)
          {
LABEL_81:
            v48 = v15;
            operator delete(v17);
LABEL_82:
            if (v45 != &v46)
            {
              free(v45);
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
LABEL_80:
          v17 = v47;
          goto LABEL_81;
        }
      }

      else
      {
        while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          Value += 8;
          if (Value == v7)
          {
            goto LABEL_8;
          }
        }

        v41[0] = "'pdl_interp.record_match' op attribute 'generatedOps' failed to satisfy constraint: string array attribute";
        v42 = 259;
        mlir::emitError(a2, v41, &v43);
        v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
        if (v43)
        {
          mlir::InFlightDiagnostic::report(&v43);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
          }

          v32 = __p;
          if (__p)
          {
            v33 = v50;
            v34 = __p;
            if (v50 != __p)
            {
              do
              {
                v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
              }

              while (v33 != v32);
              v34 = __p;
            }

            v50 = v32;
            operator delete(v34);
          }

          v15 = v47;
          if (!v47)
          {
            goto LABEL_82;
          }

          v35 = v48;
          v17 = v47;
          if (v48 == v47)
          {
            goto LABEL_81;
          }

          do
          {
            v37 = *--v35;
            v36 = v37;
            *v35 = 0;
            if (v37)
            {
              MEMORY[0x259C63150](v36, 0x1000C8077774924);
            }
          }

          while (v35 != v15);
          goto LABEL_80;
        }
      }
    }

    else
    {
      v41[0] = "'pdl_interp.record_match' op requires attribute 'rewriter'";
      v42 = 259;
      mlir::emitError(a2, v41, &v43);
      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
      if (v43)
      {
        mlir::InFlightDiagnostic::report(&v43);
      }

      if (v52 == 1)
      {
        if (v51 != &v52)
        {
          free(v51);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v50;
          v28 = __p;
          if (v50 != __p)
          {
            do
            {
              v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v50 = v26;
          operator delete(v28);
        }

        v15 = v47;
        if (!v47)
        {
          goto LABEL_82;
        }

        v29 = v48;
        v17 = v47;
        if (v48 == v47)
        {
          goto LABEL_81;
        }

        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v15);
        goto LABEL_80;
      }
    }
  }

  else
  {
    v41[0] = "'pdl_interp.record_match' op requires attribute 'benefit'";
    v42 = 259;
    mlir::emitError(a2, v41, &v43);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    if (v43)
    {
      mlir::InFlightDiagnostic::report(&v43);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v50;
        v22 = __p;
        if (v50 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v50 = v20;
        operator delete(v22);
      }

      v15 = v47;
      if (!v47)
      {
        goto LABEL_82;
      }

      v23 = v48;
      v17 = v47;
      if (v48 == v47)
      {
        goto LABEL_81;
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
      goto LABEL_80;
    }
  }

  return v11;
}

unint64_t mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(mlir::pdl_interp::RecordMatchOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 96);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 112);
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

  v12 = (16 * v2 + 4 * v5 + *this + 96);
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

uint64_t mlir::pdl_interp::RecordMatchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
      }

      return 0;
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
LABEL_68:
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "benefit", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 52;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
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
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v51, "generatedOps", 0xCuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 57;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
      {
        goto LABEL_69;
      }

      do
      {
        v41 = *--v39;
        v40 = v41;
        *v39 = 0;
        if (v41)
        {
          MEMORY[0x259C63150](v40, 0x1000C8077774924);
        }
      }

      while (v39 != v17);
      goto LABEL_68;
    }

    a1[1] = v30;
  }

  v43 = mlir::DictionaryAttr::get(&v51, "rewriter", 8uLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 53;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "rootKind", 8uLL);
  *&v52 = v49;
  if (v49)
  {
    if (*(*v49 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      a3(&v54, a4);
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
      return 0;
    }

    a1[3] = v49;
  }

  if (mlir::DictionaryAttr::get(&v51, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v51, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::pdl_interp::RecordMatchOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v18, "benefit", 7, *a2);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v19 + 16 * v20);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v20) = v20 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v18, "generatedOps", 0xC, v6);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v19 + 16 * v20);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v20) = v20 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v18, "rewriter", 8, v10);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v19 + 16 * v20);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v20) = v20 + 1;
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = mlir::Builder::getNamedAttr(&v18, "rootKind", 8, v14);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v19 + 16 * v20);
    *v17 = v15;
    v17[1] = v16;
    LODWORD(v20) = v20 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::pdl_interp::RecordMatchOp::computePropertiesHash(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(*(a1 + 8));
  v5 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 8) - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(*(a1 + 16));
  v8 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 16) - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(*(a1 + 24));
  v11 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 24) - 0xAE502812AA7333) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = *(a1 + 36) ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (8 * *(a1 + 32) + 8));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v26 = 0;
  v27 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) ^ ((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 47));
  v23[0] = v3;
  v23[1] = v6;
  v20 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v20, v24, v25, v9);
  v21 = v20;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v21, v16, v25, v12);
  v22 = v21;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v23, &v22, v17, v25, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v23, v22, v18, v25);
}

uint64_t mlir::pdl_interp::RecordMatchOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 11)
  {
    if (__n == 12)
    {
      if (!memcmp(__s1, "generatedOps", 0xCuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        goto LABEL_15;
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
LABEL_15:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  if (__n == 7)
  {
    if (*__s1 == 1701733730 && *(__s1 + 3) == 1953064549)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 8)
  {
    return 0;
  }

  if (memcmp(__s1, "rewriter", 8uLL))
  {
    if (*__s1 == 0x646E694B746F6F72)
    {
      return a2[3];
    }

    return 0;
  }

  return a2[2];
}

uint64_t mlir::pdl_interp::RecordMatchOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 11)
  {
    if (a3 == 7)
    {
      if (*__s1 == 1701733730 && *(__s1 + 3) == 1953064549)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          *result = v10;
        }

        else
        {
          *result = 0;
        }
      }
    }

    else if (a3 == 8)
    {
      result = memcmp(__s1, "rewriter", 8uLL);
      if (result)
      {
        if (*__s1 == 0x646E694B746F6F72)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }

            v5[3] = v7;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }

        v5[2] = v11;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  else
  {
    if (a3 != 12)
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

      return result;
    }

    result = memcmp(__s1, "generatedOps", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
        v5[1] = 0;
      }
    }
  }

  return result;
}

void mlir::pdl_interp::RecordMatchOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "benefit", 7uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "generatedOps", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "rewriter", 8uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "rootKind", 8uLL, v7);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(v8, "benefit", 7, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v9, "generatedOps", 12, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(v10, "rewriter", 8, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v11, "rootKind", 8, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_11;
  }

  v29 = a1;
  v8 = a4;
  v9 = a5;
  *&v30 = mlir::IntegerAttr::getType(&v29);
  isSignlessInteger = mlir::Type::isSignlessInteger(&v30, 16);
  a5 = v9;
  a4 = v8;
  if (!isSignlessInteger)
  {
    goto LABEL_11;
  }

  v28 = a1;
  mlir::IntegerAttr::getValue(&v28, &v33);
  v11 = v34[0] - 1;
  if (v34[0] >= 0x41)
  {
    v12 = (v33 + 8 * (v11 >> 6));
  }

  else
  {
    v12 = &v33;
  }

  v13 = (1 << v11) & *v12;
  if (v34[0] >= 0x41 && v33)
  {
    MEMORY[0x259C63150]();
  }

  a4 = v8;
  a5 = v9;
  if (!v13)
  {
    return 1;
  }

LABEL_11:
  a4(&v33, a5);
  if (v33)
  {
    LODWORD(v30) = 3;
    *(&v30 + 1) = "attribute '";
    v31 = 11;
    if (v36 >= v37)
    {
      if (v35 > &v30 || v35 + 24 * v36 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = v35 + 24 * v36;
    v15 = v30;
    *(v14 + 2) = v31;
    *v14 = v15;
    ++v36;
    if (v33)
    {
      v32 = 261;
      *&v30 = a2;
      *(&v30 + 1) = a3;
      mlir::Diagnostic::operator<<(v34, &v30);
      if (v33)
      {
        LODWORD(v30) = 3;
        *(&v30 + 1) = "' failed to satisfy constraint: 16-bit signless integer attribute whose value is non-negative";
        v31 = 93;
        if (v36 >= v37)
        {
          if (v35 > &v30 || v35 + 24 * v36 <= &v30)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v35 + 24 * v36;
        v17 = v30;
        *(v16 + 2) = v31;
        *v16 = v17;
        ++v36;
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
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
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != &v38)
    {
      free(v35);
    }
  }

  return v18;
}

uint64_t mlir::pdl_interp::RecordMatchOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, (v3 + 8)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, (v3 + 16)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, (v3 + 24)) && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 32), 2uLL)))
      {
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 3)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5 = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(&v8, a1, &v5);
        if (v8)
        {
          mlir::InFlightDiagnostic::report(&v8);
        }

        if (v9[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v9);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolRefAttr]";
  *(&v28 + 1) = 69;
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

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
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
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::StringAttr]";
  *(&v28 + 1) = 66;
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

uint64_t mlir::pdl_interp::RecordMatchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 16))(a2, *(v5 + 16));
  (*(*a2 + 24))(a2, *(v5 + 24));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 32), 2);
  }

  return result;
}

uint64_t mlir::pdl_interp::RecordMatchOp::getRootKind@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::pdl_interp::RecordMatchOp::getBenefit(mlir::pdl_interp::RecordMatchOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::pdl_interp::RecordMatchOp::setRootKind(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (*(a2 + 16) == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    v7 = 261;
    v4 = *(a2 + 8);
    v6[0] = *a2;
    v6[1] = v4;
    result = mlir::Builder::getStringAttr(&Context, v6, v5);
    *(v2 + 88) = result;
  }

  else
  {
    *(v2 + 88) = 0;
  }

  return result;
}

uint64_t mlir::pdl_interp::RecordMatchOp::setBenefit(mlir::pdl_interp::RecordMatchOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 16);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::pdl_interp::RecordMatchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, a3, a4);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = v15 | (a6 << 32);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a7;
  if (a8)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 24) = a8;
    if (!a9)
    {
LABEL_5:
      v20 = a10;
      v21 = *(a2 + 256);
      if (v21)
      {
        goto LABEL_6;
      }

LABEL_17:
      operator new();
    }
  }

  else if (!a9)
  {
    goto LABEL_5;
  }

  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = a9;
  v20 = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_6:
  *v21 = v20;
  v22 = *(a2 + 208);
  if (v22 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v22) = a11;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::RecordMatchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 32) = v15 | (a8 << 32);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a9;
  if (a10)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 24) = a10;
    if (!a11)
    {
LABEL_5:
      v22 = a12;
      v23 = *(a2 + 256);
      if (v23)
      {
        goto LABEL_6;
      }

LABEL_23:
      operator new();
    }
  }

  else if (!a11)
  {
    goto LABEL_5;
  }

  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  *(v29 + 8) = a11;
  v22 = a12;
  v23 = *(a2 + 256);
  if (!v23)
  {
    goto LABEL_23;
  }

LABEL_6:
  *v23 = v22;
  v24 = *(a2 + 208);
  if (v24 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v24) = a13;
  ++*(a2 + 208);
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

uint64_t mlir::pdl_interp::RecordMatchOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  v15 = a4;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, a5, a6);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = v15 | (a6 << 32);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a7;
  if (!a8)
  {
    v20 = a10;
    if (!a9)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) = a8;
  v20 = a10;
  if (a9)
  {
LABEL_11:
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 8) = a9;
  }

LABEL_14:
  IntegerType = mlir::Builder::getIntegerType(a1, 16);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, v20);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *v25 = result;
  v26 = *(a2 + 208);
  if (v26 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v26) = a11;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::RecordMatchOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13)
{
  v15 = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 32) = v15 | (a8 << 32);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a9;
  if (!a10)
  {
    v22 = a12;
    if (!a11)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = a10;
  v22 = a12;
  if (a11)
  {
LABEL_11:
    v24 = *(a2 + 256);
    if (!v24)
    {
      operator new();
    }

    *(v24 + 8) = a11;
  }

LABEL_14:
  IntegerType = mlir::Builder::getIntegerType(a1, 16);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, v22);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *v27 = result;
  v28 = *(a2 + 208);
  if (v28 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v28) = a13;
  ++*(a2 + 208);
  v29 = *(a2 + 72);
  if (a4 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v30 = 0;
    v31 = *(a2 + 64) + 8 * v29;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v30);
      *(v31 + 8 * v30++) = result;
    }

    while (a4 != v30);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + a4;
  return result;
}

uint64_t mlir::pdl_interp::RecordMatchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::RecordMatchOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = (v3 + 64);
  v5 = v6;
  if (!v6)
  {
    v57[0] = "requires attribute 'benefit'";
    v58 = 259;
    mlir::OpState::emitOpError(this, v57, v61);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
    if (v61[0])
    {
      mlir::InFlightDiagnostic::report(v61);
    }

    if (v71 != 1)
    {
      return v15;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v69;
      v23 = __p;
      if (v69 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v69 = v21;
      operator delete(v23);
    }

    v24 = v66;
    if (v66)
    {
      v25 = v67;
      v26 = v66;
      if (v67 != v66)
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
        goto LABEL_46;
      }

LABEL_47:
      v67 = v24;
      operator delete(v26);
    }

LABEL_48:
    if (v62 != v65)
    {
      free(v62);
    }

    return v15;
  }

  v7 = v4[2];
  if (!v7)
  {
    v57[0] = "requires attribute 'rewriter'";
    v58 = 259;
    mlir::OpState::emitOpError(this, v57, v61);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
    if (v61[0])
    {
      mlir::InFlightDiagnostic::report(v61);
    }

    if (v71 != 1)
    {
      return v15;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v69;
      v31 = __p;
      if (v69 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v69 = v29;
      operator delete(v31);
    }

    v24 = v66;
    if (v66)
    {
      v32 = v67;
      v26 = v66;
      if (v67 != v66)
      {
        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v24);
LABEL_46:
        v26 = v66;
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    goto LABEL_48;
  }

  v8 = v4[1];
  v9 = v4[3];
  v61[0] = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(v7, "rewriter", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61) & 1) == 0)
  {
    return 0;
  }

  v61[0] = *this;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "rootKind", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61) & 1) == 0)
  {
    return 0;
  }

  v61[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v8, "generatedOps", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61) & 1) == 0)
  {
    return 0;
  }

  v61[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(v5, "benefit", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v61) & 1) == 0)
  {
    return 0;
  }

  v10 = *(*this + 11);
  v11 = *(*this + 4 * ((v10 >> 23) & 1) + 24);
  if ((v10 & 0x800000) != 0)
  {
    v12 = *(*this + 9);
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v12 = 0;
  if (!v11)
  {
LABEL_12:
    v15 = 1;
    ODSOperands = mlir::pdl_interp::RecordMatchOp::getODSOperands(this, 1u);
    if (!v17)
    {
      return v15;
    }

    v18 = ODSOperands;
    v19 = v17;
    v20 = 0;
    while (1)
    {
      v35 = *(*(v18 + 32 * v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v36 = *this;
        v58 = 261;
        v57[0] = "operand";
        v57[1] = 7;
        mlir::Operation::emitOpError(v61, v36, v57);
        if (v61[0])
        {
          LODWORD(v59) = 3;
          *(&v59 + 1) = " #";
          v60 = 2;
          if (v63 >= v64)
          {
            if (v62 > &v59 || v62 + 24 * v63 <= &v59)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v37 = v62 + 24 * v63;
          v38 = v59;
          *(v37 + 2) = v60;
          *v37 = v38;
          v39 = ++v63;
          if (v61[0])
          {
            LODWORD(v59) = 5;
            *(&v59 + 1) = v11;
            if (v39 >= v64)
            {
              if (v62 > &v59 || v62 + 24 * v39 <= &v59)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v40 = v62 + 24 * v63;
            v41 = v59;
            *(v40 + 2) = v60;
            *v40 = v41;
            v42 = ++v63;
            if (v61[0])
            {
              LODWORD(v59) = 3;
              v60 = 67;
              if (v42 >= v64)
              {
                if (v62 > &v59 || v62 + 24 * v42 <= &v59)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v43 = v62 + 24 * v63;
              v44 = v59;
              *(v43 + 2) = v60;
              *v43 = v44;
              ++v63;
              if (v61[0])
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v59, v35);
                if (v63 >= v64)
                {
                  if (v62 > &v59 || v62 + 24 * v63 <= &v59)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v45 = v62 + 24 * v63;
                v46 = v59;
                *(v45 + 2) = v60;
                *v45 = v46;
                ++v63;
              }
            }
          }
        }

        v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
        if (v61[0])
        {
          mlir::InFlightDiagnostic::report(v61);
        }

        if (v71 == 1)
        {
          if (v70 != &v71)
          {
            free(v70);
          }

          v48 = __p;
          if (__p)
          {
            v49 = v69;
            v50 = __p;
            if (v69 != __p)
            {
              do
              {
                v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
              }

              while (v49 != v48);
              v50 = __p;
            }

            v69 = v48;
            operator delete(v50);
          }

          v51 = v66;
          if (v66)
          {
            v52 = v67;
            v53 = v66;
            if (v67 != v66)
            {
              do
              {
                v55 = *--v52;
                v54 = v55;
                *v52 = 0;
                if (v55)
                {
                  MEMORY[0x259C63150](v54, 0x1000C8077774924);
                }
              }

              while (v52 != v51);
              v53 = v66;
            }

            v67 = v51;
            operator delete(v53);
          }

          if (v62 != v65)
          {
            free(v62);
          }
        }

        if (!v47)
        {
          break;
        }
      }

      LODWORD(v11) = v11 + 1;
      ++v20;
      v15 = 1;
      if (v20 == v19)
      {
        return v15;
      }
    }

    return 0;
  }

LABEL_9:
  v13 = 0;
  v14 = v12 + 24;
  while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(*this, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) != 0)
  {
    ++v13;
    v14 += 32;
    if (v11 == v13)
    {
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t mlir::pdl_interp::RecordMatchOp::parse(mlir::pdl_interp::RecordMatchOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v46[16] = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  v44 = v46;
  v45 = 0x400000000;
  v42[0] = &v43;
  v42[1] = 0x100000000;
  v33 = 0;
  v34 = 0;
  v39 = v41;
  v40 = 0x400000000;
  v32 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(this, &v36, v7))
  {
    goto LABEL_51;
  }

  if (v36)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 16) = v36;
  }

  if ((*(*this + 288))(this))
  {
    v9 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v44, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v42) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v9 = 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_51;
  }

  v38 = 257;
  if (((*(*this + 400))(this, "benefit", 7, v37) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_51;
  }

  v10 = (*(*this + 32))(this);
  IntegerType = mlir::Builder::getIntegerType(v10, 16);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v35, IntegerType))
  {
    goto LABEL_51;
  }

  if (v35)
  {
    v12 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
    *v12 = v35;
  }

  if (((*(*this + 296))(this) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*this + 408))(this, "generatedOps", 12))
  {
    if (((*(*this + 280))(this) & 1) == 0)
    {
      goto LABEL_51;
    }

    v13 = (*(*this + 32))(this);
    v15 = mlir::NoneType::get(*v13, v14);
    if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v34, v15))
    {
      goto LABEL_51;
    }

    if (v34)
    {
      v16 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v16 + 8) = v34;
    }

    if (((*(*this + 296))(this) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v38 = 257;
  if (((*(*this + 400))(this, "loc", 3, v37) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_51;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v39, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 328))(this) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*this + 128))(this))
  {
    v38 = 257;
    if (((*(*this + 400))(this, "root", 4, v37) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*this + 280))(this) & 1) == 0)
    {
      goto LABEL_51;
    }

    v17 = (*(*this + 32))(this);
    v19 = mlir::NoneType::get(*v17, v18);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v33, v19))
    {
      goto LABEL_51;
    }

    if (v33)
    {
      v20 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v20 + 24) = v33;
    }

    if (((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v31 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_51;
  }

  v21 = *(a2 + 1);
  v37[0] = this;
  v37[1] = &v31;
  v37[2] = a2;
  if (!mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(v21, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::RecordMatchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v37))
  {
    goto LABEL_51;
  }

  if (((*(*this + 56))(this) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*this + 800))(this, &v32) & 1) == 0)
  {
    goto LABEL_51;
  }

  mlir::OperationState::addSuccessors(a2, v32);
  v22 = v45;
  v23 = v40;
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 32) = v22 | (v23 << 32);
  v24 = (*(*this + 32))(this);
  v25 = mlir::Builder::getType<mlir::pdl::OperationType>(v24);
  if ((mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v44, v42, v9, a2 + 16) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (v40)
  {
    v26 = v39;
    v27 = 32 * v40;
    while (((*(*this + 728))(this, v26, v25, a2 + 16) & 1) != 0)
    {
      v26 += 32;
      v28 = 1;
      v27 -= 32;
      if (!v27)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    v28 = 0;
LABEL_52:
    v29 = v39;
    if (v39 != v41)
    {
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v28 = 1;
  v29 = v39;
  if (v39 != v41)
  {
LABEL_53:
    free(v29);
  }

LABEL_54:
  if (v42[0] != &v43)
  {
    free(v42[0]);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v28;
}

unint64_t mlir::pdl_interp::detail::ReplaceOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::pdl_interp::detail::ReplaceOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "terp16PDLInterpDialectE";
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
      v28 = &byte_257372FFD[v6];
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
  v25 = &byte_257372FFD[v23];
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
  if (byte_257372FFD[v5])
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::pdl_interp::ReplaceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  return mlir::OperationState::addOperands(a2, a4, a5);
}

unint64_t mlir::pdl_interp::ReplaceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
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

unint64_t mlir::pdl_interp::ReplaceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl_interp::ReplaceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v3 = *(v2 + 17);
      v4 = v3 - 1;
      if (v3 == 1)
      {
        return 1;
      }

      v5 = *(v2 + 9) + 32;
    }

    else
    {
      v4 = -1;
      v5 = 32;
    }

    v6 = v5 + 24;
    for (i = 1; (mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps7(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, i) & 1) != 0; ++i)
    {
      v6 += 32;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::pdl_interp::ReplaceOp::verifyInvariants(mlir::Operation **this)
{
  if (mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    v2 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v3 = *(v2 + 17);
      v4 = v3 - 1;
      if (v3 == 1)
      {
        return 1;
      }

      v5 = *(v2 + 9) + 32;
    }

    else
    {
      v4 = -1;
      v5 = 32;
    }

    v6 = v5 + 24;
    for (i = 1; (mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps7(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, i) & 1) != 0; ++i)
    {
      v6 += 32;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::pdl_interp::ReplaceOp::parse(mlir::pdl_interp::ReplaceOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v18[16] = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v16 = v18;
  v17 = 0x400000000;
  v14[0] = &v15;
  v14[1] = 0x100000000;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v10, 1) & 1) != 0 && (v13 = 257, ((*(*this + 400))(this, "with", 4, v12)) && ((*(*this + 280))(this) & 1) != 0 && (v5 = (*(*this + 40))(this), ((*(*this + 720))(this, &v16, 0, 1, 0xFFFFFFFFLL)) && (!v17 || ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, v14)) && ((*(*this + 296))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (v6 = (*(*this + 32))(this), v7 = mlir::Builder::getType<mlir::pdl::OperationType>(v6), ((*(*this + 728))(this, v10, v7, a2 + 16)))
  {
    v8 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v16, v14, v5, a2 + 16) & 1;
  }

  else
  {
    v8 = 0;
  }

  if (v14[0] != &v15)
  {
    free(v14[0]);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v8;
}

void mlir::pdl_interp::ReplaceOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51 = *MEMORY[0x277D85DE8];
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

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] != v13)
  {
    *v13 = 40;
    ++v12[4];
    v14 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    v16 = 0;
    v17 = -1;
    v18 = (*(*a2 + 16))(a2);
LABEL_17:
    v19 = v18;
    (*(*a2 + 160))(a2, *(v16 + 56));
    v20 = v17 - 1;
    if (v20)
    {
      v38 = (v16 + 88);
      do
      {
        v40 = v19[4];
        if (v19[3] - v40 > 1uLL)
        {
          *v40 = 8236;
          v19[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v19, ", ", 2uLL);
        }

        v39 = *v38;
        v38 += 4;
        (*(*a2 + 160))(a2, v39);
        --v20;
      }

      while (v20);
    }

    goto LABEL_18;
  }

  llvm::raw_ostream::write(v12, "(", 1uLL);
  v14 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v15 = *(v14 + 17);
  if (v15 == 1)
  {
    goto LABEL_33;
  }

  v16 = *(v14 + 9);
  v17 = v15 - 1;
  v18 = (*(*a2 + 16))(a2);
  if (v17)
  {
    goto LABEL_17;
  }

LABEL_18:
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
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  v27 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v28 = *(v27 + 17);
    v29 = *(v27 + 9);
    v30 = v28 - 1;
  }

  else
  {
    v29 = 0;
    v30 = -1;
  }

  v46[0] = v29 + 32;
  v46[1] = v30;
  mlir::OperandRange::getTypes(v46, &v47);
  v31 = v48;
  v32 = v50;
  if (v48 != v50)
  {
    v33 = v47 + 32 * v48;
    (*(*a2 + 32))(a2, *(*(v33 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v31 + 1 != v32)
    {
      v41 = ~v31 + v32;
      v42 = (v33 + 56);
      do
      {
        v44 = (*(*a2 + 16))(a2);
        v45 = v44[4];
        if (v44[3] - v45 > 1uLL)
        {
          *v45 = 8236;
          v44[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v44, ", ", 2uLL);
        }

        v43 = *v42;
        v42 += 4;
        (*(*a2 + 32))(a2, *(v43 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v41;
      }

      while (v41);
    }
  }

LABEL_33:
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

  v47 = &v49;
  v48 = 0x200000000;
  v46[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v46);
  (*(*a2 + 192))(a2, Value, v37, v47, v48);
  if (v47 != &v49)
  {
    free(v47);
  }
}

uint64_t mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::SwitchAttributeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::SwitchAttributeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'pdl_interp.switch_attribute' op requires attribute 'caseValues'";
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

uint64_t mlir::pdl_interp::SwitchAttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "caseValues", 0xAuLL);
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
    v33 = 55;
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

uint64_t mlir::pdl_interp::SwitchAttributeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "caseValues", 0xA, *a2);
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

unint64_t mlir::pdl_interp::SwitchAttributeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::SwitchAttributeOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v4 = *(a3 + 8) == 29541) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::SwitchAttributeOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 10 && *a2 == 0x756C615665736163 && *(a2 + 8) == 29541)
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

uint64_t mlir::pdl_interp::SwitchAttributeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps13(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: array attribute";
        v22 = 47;
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

uint64_t mlir::pdl_interp::SwitchAttributeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2) & 1;
}

uint64_t mlir::pdl_interp::SwitchAttributeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ArrayAttr = mlir::Builder::getArrayAttr(a1, a4, a5);

  return mlir::pdl_interp::SwitchAttributeOp::build(ArrayAttr, a2, a3, ArrayAttr, a6, a7, a8);
}

uint64_t mlir::pdl_interp::SwitchAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a4;
  v13 = *(a2 + 208);
  if (v13 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v13) = a5;
  ++*(a2 + 208);
  return mlir::OperationState::addSuccessors(a2, a6, a7);
}

unint64_t mlir::pdl_interp::SwitchAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a6;
  v16 = *(a2 + 208);
  if (v16 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v16) = a7;
  ++*(a2 + 208);
  result = mlir::OperationState::addSuccessors(a2, a9, a10);
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

uint64_t mlir::pdl_interp::SwitchAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::SwitchAttributeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps13(v1, "caseValues", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'caseValues'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
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
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::SwitchAttributeOp::parse(mlir::pdl_interp::SwitchAttributeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v21 = v23;
  v22 = 0x200000000;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v27 = 257;
  if (((*(*this + 400))(this, "to", 2, &v24) & 1) == 0)
  {
    goto LABEL_23;
  }

  v5 = (*(*this + 32))(this);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v18, v7))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v18;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_23;
  }

  v24 = 0;
  v9 = (*(*this + 808))(this, &v24);
  if ((v9 & 0x100) != 0)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_23;
    }

    llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, &v24);
    while (((*(*this + 128))(this) & 1) != 0)
    {
      if (((*(*this + 800))(this, &v24) & 1) == 0)
      {
        goto LABEL_23;
      }

      v14 = v22;
      if (v22 >= HIDWORD(v22))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v21, &v24);
      }

      else
      {
        *(v21 + v22) = v24;
        LODWORD(v22) = v14 + 1;
      }
    }
  }

  if ((*(*this + 296))(this))
  {
    v16 = (*(*this + 40))(this);
    if ((*(*this + 488))(this, a2 + 112))
    {
      v10 = *(a2 + 1);
      v24 = this;
      v25 = &v16;
      v26 = a2;
      if (mlir::pdl_interp::SwitchAttributeOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v24) && ((*(*this + 56))(this) & 1) != 0 && ((*(*this + 800))(this, &v17) & 1) != 0)
      {
        mlir::OperationState::addSuccessors(a2, v17);
        mlir::BlockRange::BlockRange(&v24, v21, v22);
        mlir::OperationState::addSuccessors(a2, v24, v25);
        v11 = (*(*this + 32))(this);
        v12 = mlir::Builder::getType<mlir::pdl::AttributeType>(v11);
        v13 = (*(*this + 728))(this, v19, v12, a2 + 16) & 1;
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v13 = 0;
LABEL_24:
  if (v21 != v23)
  {
    free(v21);
  }

  return v13;
}

void mlir::pdl_interp::SwitchAttributeOp::print(Operation **this, mlir::OpAsmPrinter *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
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
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 28532;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "to", 2uLL);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  mlir::SuccessorRange::SuccessorRange(&v34, *this);
  v14 = v34;
  mlir::SuccessorRange::SuccessorRange(&v34, *this);
  v15 = v35;
  v16 = v35 - 1;
  if (v35 != 1)
  {
    v17 = v14 + 32;
    (*(*a2 + 176))(a2, *(v17 + 3));
    if (v16 != 1)
    {
      v28 = v15 - 2;
      v29 = (v17 + 56);
      do
      {
        v31 = (*(*a2 + 16))(a2);
        v32 = v31[4];
        if (v31[3] - v32 <= 1uLL)
        {
          llvm::raw_ostream::write(v31, ", ", 2uLL);
        }

        else
        {
          *v32 = 8236;
          v31[4] += 2;
        }

        v30 = *v29;
        v29 += 4;
        (*(*a2 + 176))(a2, v30);
        --v28;
      }

      while (v28);
    }
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, ")", 1uLL);
  }

  else
  {
    *v19 = 41;
    ++v18[4];
  }

  v34 = v36;
  v36[0] = "caseValues";
  v36[1] = 10;
  v35 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v34, v35);
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
  if (v24[3] - v25 > 1uLL)
  {
    *v25 = 15917;
    v24[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v24, "->", 2uLL);
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

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (v34 != v36)
  {
    free(v34);
  }
}

uint64_t mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::SwitchOperandCountOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::SwitchOperandCountOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v20 = *(a1 + 24);
    v23[0] = mlir::DenseElementsAttr::getType(&v20);
    v23[1] = v3;
    v21[0] = mlir::ShapedType::getElementType(v23);
    if (mlir::Type::isSignlessInteger(v21, 32))
    {
      return 1;
    }

    v21[0] = "'pdl_interp.switch_operand_count' op attribute 'caseValues' failed to satisfy constraint: 32-bit signless integer elements attribute";
    v22 = 259;
    mlir::emitError(a2, v21, v23);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v29;
        v15 = __p;
        if (v29 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v29 = v13;
        operator delete(v15);
      }

      v8 = v26;
      if (!v26)
      {
        goto LABEL_38;
      }

      v16 = v27;
      v10 = v26;
      if (v27 == v26)
      {
LABEL_37:
        v27 = v8;
        operator delete(v10);
LABEL_38:
        if (v24 != &v25)
        {
          free(v24);
        }

        return v4;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          MEMORY[0x259C63150](v17, 0x1000C8077774924);
        }
      }

      while (v16 != v8);
LABEL_36:
      v10 = v26;
      goto LABEL_37;
    }
  }

  else
  {
    v21[0] = "'pdl_interp.switch_operand_count' op requires attribute 'caseValues'";
    v22 = 259;
    mlir::emitError(a2, v21, v23);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v29;
        v7 = __p;
        if (v29 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v29 = v5;
        operator delete(v7);
      }

      v8 = v26;
      if (!v26)
      {
        goto LABEL_38;
      }

      v9 = v27;
      v10 = v26;
      if (v27 == v26)
      {
        goto LABEL_37;
      }

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
      goto LABEL_36;
    }
  }

  return v4;
}

uint64_t mlir::pdl_interp::SwitchOperandCountOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "caseValues", 0xAuLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (mlir::DenseIntElementsAttr::classof(v8))
  {
    *a1 = v9;
    return 1;
  }

  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 55;
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

uint64_t mlir::pdl_interp::SwitchOperandCountOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "caseValues", 0xA, *a2);
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

unint64_t mlir::pdl_interp::SwitchOperandCountOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::SwitchOperandCountOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v4 = *(a3 + 8) == 29541) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::pdl_interp::SwitchOperandCountOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 10 && *a2 == 0x756C615665736163 && *(a2 + 8) == 29541)
  {
    if (a4)
    {
      v5 = result;
      v7 = mlir::DenseIntElementsAttr::classof(a4);
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

uint64_t mlir::pdl_interp::SwitchOperandCountOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v25 = a1;
    Type = mlir::DenseElementsAttr::getType(&v25);
    v30 = v10;
    *&v26 = mlir::ShapedType::getElementType(&Type);
    if (mlir::Type::isSignlessInteger(&v26, 32))
    {
      return 1;
    }
  }

  a4(&Type, a5);
  if (Type)
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "attribute '";
    v27 = 11;
    if (v32 >= v33)
    {
      if (v31 > &v26 || v31 + 24 * v32 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v31 + 24 * v32;
    v13 = v26;
    *(v12 + 2) = v27;
    *v12 = v13;
    ++v32;
    if (Type)
    {
      v28 = 261;
      *&v26 = a2;
      *(&v26 + 1) = a3;
      mlir::Diagnostic::operator<<(&v30, &v26);
      if (Type)
      {
        LODWORD(v26) = 3;
        *(&v26 + 1) = "' failed to satisfy constraint: 32-bit signless integer elements attribute";
        v27 = 74;
        if (v32 >= v33)
        {
          if (v31 > &v26 || v31 + 24 * v32 <= &v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v31 + 24 * v32;
        v15 = v26;
        *(v14 + 2) = v27;
        *v14 = v15;
        ++v32;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
  if (Type)
  {
    mlir::InFlightDiagnostic::report(&Type);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v38;
      v18 = __p;
      if (v38 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v38 = v16;
      operator delete(v18);
    }

    v19 = v35;
    if (v35)
    {
      v20 = v36;
      v21 = v35;
      if (v36 != v35)
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
        v21 = v35;
      }

      v36 = v19;
      operator delete(v21);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v11;
}

BOOL mlir::pdl_interp::SwitchOperandCountOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (mlir::DenseIntElementsAttr::classof(v27))
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DenseIntElementsAttr]";
  *(&v28 + 1) = 76;
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

uint64_t mlir::pdl_interp::SwitchOperandCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  I32VectorAttr = mlir::Builder::getI32VectorAttr(a1, a4, a5);

  return mlir::pdl_interp::SwitchOperandCountOp::build(I32VectorAttr, a2, a3, I32VectorAttr, a6, a7, a8);
}

uint64_t mlir::pdl_interp::SwitchOperandCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a4;
  v13 = *(a2 + 208);
  if (v13 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v13) = a5;
  ++*(a2 + 208);
  return mlir::OperationState::addSuccessors(a2, a6, a7);
}

unint64_t mlir::pdl_interp::SwitchOperandCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a6;
  v16 = *(a2 + 208);
  if (v16 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v16) = a7;
  ++*(a2 + 208);
  result = mlir::OperationState::addSuccessors(a2, a9, a10);
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

uint64_t mlir::pdl_interp::SwitchOperandCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::SwitchOperandCountOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v1, "caseValues", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'caseValues'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
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
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::SwitchOperandCountOp::parse(mlir::pdl_interp::SwitchOperandCountOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v18 = v20;
  v19 = 0x200000000;
  v24 = 257;
  if (((*(*this + 400))() & 1) == 0)
  {
    goto LABEL_24;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v16, 1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v24 = 257;
  if (((*(*this + 400))(this, "to", 2, &v21) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::DenseIntElementsAttr>(this, &v15, 0))
  {
    goto LABEL_24;
  }

  if (v15)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v15;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_24;
  }

  v21 = 0;
  v6 = (*(*this + 808))(this, &v21);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

    llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v18, &v21);
    while (((*(*this + 128))(this) & 1) != 0)
    {
      if (((*(*this + 800))(this, &v21) & 1) == 0)
      {
        goto LABEL_24;
      }

      v11 = v19;
      if (v19 >= HIDWORD(v19))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v18, &v21);
      }

      else
      {
        *(v18 + v19) = v21;
        LODWORD(v19) = v11 + 1;
      }
    }
  }

  if ((*(*this + 296))(this))
  {
    v13 = (*(*this + 40))(this);
    if ((*(*this + 488))(this, a2 + 112))
    {
      v7 = *(a2 + 1);
      v21 = this;
      v22 = &v13;
      v23 = a2;
      if (mlir::pdl_interp::SwitchOperandCountOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v21) && ((*(*this + 56))(this) & 1) != 0 && ((*(*this + 800))(this, &v14) & 1) != 0)
      {
        mlir::OperationState::addSuccessors(a2, v14);
        mlir::BlockRange::BlockRange(&v21, v18, v19);
        mlir::OperationState::addSuccessors(a2, v21, v22);
        v8 = (*(*this + 32))(this);
        v9 = mlir::Builder::getType<mlir::pdl::OperationType>(v8);
        v10 = (*(*this + 728))(this, v16, v9, a2 + 16) & 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v10 = 0;
LABEL_25:
  if (v18 != v20)
  {
    free(v18);
  }

  return v10;
}

void mlir::pdl_interp::SwitchOperandCountOp::print(Operation **this, mlir::OpAsmPrinter *a2)
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 28532;
    v12[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, "to", 2uLL);
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  mlir::SuccessorRange::SuccessorRange(&v38, *this);
  v18 = v38;
  mlir::SuccessorRange::SuccessorRange(&v38, *this);
  v19 = v39;
  v20 = v39 - 1;
  if (v39 != 1)
  {
    v21 = v18 + 32;
    (*(*a2 + 176))(a2, *(v21 + 3));
    if (v20 != 1)
    {
      v32 = v19 - 2;
      v33 = (v21 + 56);
      do
      {
        v35 = (*(*a2 + 16))(a2);
        v36 = v35[4];
        if (v35[3] - v36 <= 1uLL)
        {
          llvm::raw_ostream::write(v35, ", ", 2uLL);
        }

        else
        {
          *v36 = 8236;
          v35[4] += 2;
        }

        v34 = *v33;
        v33 += 4;
        (*(*a2 + 176))(a2, v34);
        --v32;
      }

      while (v32);
    }
  }

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

  v38 = v40;
  v40[0] = "caseValues";
  v40[1] = 10;
  v39 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v25, v38, v39);
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

  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] - v29 > 1uLL)
  {
    *v29 = 15917;
    v28[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, "->", 2uLL);
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

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (v38 != v40)
  {
    free(v38);
  }
}

uint64_t mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::SwitchOperationNameOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::SwitchOperationNameOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v25[0] = *(a1 + 24);
    Value = mlir::ArrayAttr::getValue(v25);
    v4 = mlir::ArrayAttr::getValue(v25);
    v6 = v4 + 8 * v5;
    if (v6 == Value)
    {
      return 1;
    }

    while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      Value += 8;
      if (Value == v6)
      {
        return 1;
      }
    }

    v23[0] = "'pdl_interp.switch_operation_name' op attribute 'caseValues' failed to satisfy constraint: string array attribute";
    v24 = 259;
    mlir::emitError(a2, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v31;
        v18 = __p;
        if (v31 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v31 = v16;
        operator delete(v18);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_40:
        v29 = v11;
        operator delete(v13);
LABEL_41:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v7;
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
LABEL_39:
      v13 = v28;
      goto LABEL_40;
    }
  }

  else
  {
    v23[0] = "'pdl_interp.switch_operation_name' op requires attribute 'caseValues'";
    v24 = 259;
    mlir::emitError(a2, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_40;
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
      goto LABEL_39;
    }
  }

  return v7;
}

uint64_t mlir::pdl_interp::SwitchOperationNameOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "caseValues", 0xAuLL);
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
    v33 = 55;
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

uint64_t mlir::pdl_interp::SwitchOperationNameOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "caseValues", 0xA, *a2);
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

unint64_t mlir::pdl_interp::SwitchOperationNameOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::SwitchOperationNameOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v4 = *(a3 + 8) == 29541) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::SwitchOperationNameOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 10 && *a2 == 0x756C615665736163 && *(a2 + 8) == 29541)
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

uint64_t mlir::pdl_interp::SwitchOperationNameOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "caseValues", 0xAuLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::SwitchOperationNameOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2) & 1;
}

void mlir::pdl_interp::SwitchOperationNameOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v30[16] = *MEMORY[0x277D85DE8];
  v15 = 8 * a5;
  v28 = v30;
  v29 = 0x800000000;
  if (((8 * a5) >> 3) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = 0;
  v17 = v30;
  if (a4 != &a4[a5])
  {
    v21 = v30;
    v22 = 8 * a5;
    do
    {
      v23 = *v11++;
      v27 = *(v23 + 8);
      *v21 = mlir::StringAttr::getValue(&v27);
      v21[1] = v24;
      v21 += 2;
      v22 -= 8;
    }

    while (v22);
    v16 = v29;
    v17 = v28;
    v8 = a8;
    v9 = a7;
    v10 = a6;
    v12 = a3;
  }

  LODWORD(v29) = v16 + (v15 >> 3);
  StrArrayAttr = mlir::Builder::getStrArrayAttr(a1, v17, v29);
  mlir::pdl_interp::SwitchOperationNameOp::build(StrArrayAttr, a2, v12, StrArrayAttr, v10, v9, v8);
  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t mlir::pdl_interp::SwitchOperationNameOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a4;
  v13 = *(a2 + 208);
  if (v13 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v13) = a5;
  ++*(a2 + 208);
  return mlir::OperationState::addSuccessors(a2, a6, a7);
}

unint64_t mlir::pdl_interp::SwitchOperationNameOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a6;
  v16 = *(a2 + 208);
  if (v16 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v16) = a7;
  ++*(a2 + 208);
  result = mlir::OperationState::addSuccessors(a2, a9, a10);
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

uint64_t mlir::pdl_interp::SwitchOperationNameOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::SwitchOperationNameOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v1, "caseValues", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'caseValues'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
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
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t mlir::pdl_interp::SwitchOperationNameOp::parse(mlir::pdl_interp::SwitchOperationNameOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v21 = v23;
  v22 = 0x200000000;
  v27 = 257;
  if (((*(*this + 400))() & 1) == 0)
  {
    goto LABEL_24;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = 257;
  if (((*(*this + 400))(this, "to", 2, &v24) & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = (*(*this + 32))(this);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v18, v7))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v18;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_24;
  }

  v24 = 0;
  v9 = (*(*this + 808))(this, &v24);
  if ((v9 & 0x100) != 0)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, &v24);
    while (((*(*this + 128))(this) & 1) != 0)
    {
      if (((*(*this + 800))(this, &v24) & 1) == 0)
      {
        goto LABEL_24;
      }

      v14 = v22;
      if (v22 >= HIDWORD(v22))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v21, &v24);
      }

      else
      {
        *(v21 + v22) = v24;
        LODWORD(v22) = v14 + 1;
      }
    }
  }

  if ((*(*this + 296))(this))
  {
    v16 = (*(*this + 40))(this);
    if ((*(*this + 488))(this, a2 + 112))
    {
      v10 = *(a2 + 1);
      v24 = this;
      v25 = &v16;
      v26 = a2;
      if (mlir::pdl_interp::SwitchOperationNameOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v24) && ((*(*this + 56))(this) & 1) != 0 && ((*(*this + 800))(this, &v17) & 1) != 0)
      {
        mlir::OperationState::addSuccessors(a2, v17);
        mlir::BlockRange::BlockRange(&v24, v21, v22);
        mlir::OperationState::addSuccessors(a2, v24, v25);
        v11 = (*(*this + 32))(this);
        v12 = mlir::Builder::getType<mlir::pdl::OperationType>(v11);
        v13 = (*(*this + 728))(this, v19, v12, a2 + 16) & 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v13 = 0;
LABEL_25:
  if (v21 != v23)
  {
    free(v21);
  }

  return v13;
}

void mlir::pdl_interp::SwitchOperationNameOp::print(Operation **this, mlir::OpAsmPrinter *a2)
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

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] - v7 > 1uLL)
  {
    *v7 = 26223;
    v6[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, "of", 2uLL);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
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
  if (v12[3] - v13 > 1uLL)
  {
    *v13 = 28532;
    v12[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, "to", 2uLL);
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
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

  mlir::SuccessorRange::SuccessorRange(&v38, *this);
  v18 = v38;
  mlir::SuccessorRange::SuccessorRange(&v38, *this);
  v19 = v39;
  v20 = v39 - 1;
  if (v39 != 1)
  {
    v21 = v18 + 32;
    (*(*a2 + 176))(a2, *(v21 + 3));
    if (v20 != 1)
    {
      v32 = v19 - 2;
      v33 = (v21 + 56);
      do
      {
        v35 = (*(*a2 + 16))(a2);
        v36 = v35[4];
        if (v35[3] - v36 <= 1uLL)
        {
          llvm::raw_ostream::write(v35, ", ", 2uLL);
        }

        else
        {
          *v36 = 8236;
          v35[4] += 2;
        }

        v34 = *v33;
        v33 += 4;
        (*(*a2 + 176))(a2, v34);
        --v32;
      }

      while (v32);
    }
  }

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

  v38 = v40;
  v40[0] = "caseValues";
  v40[1] = 10;
  v39 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v25, v38, v39);
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

  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] - v29 > 1uLL)
  {
    *v29 = 15917;
    v28[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, "->", 2uLL);
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

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (v38 != v40)
  {
    free(v38);
  }
}

uint64_t mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::SwitchResultCountOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::SwitchResultCountOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v20 = *(a1 + 24);
    v23[0] = mlir::DenseElementsAttr::getType(&v20);
    v23[1] = v3;
    v21[0] = mlir::ShapedType::getElementType(v23);
    if (mlir::Type::isSignlessInteger(v21, 32))
    {
      return 1;
    }

    v21[0] = "'pdl_interp.switch_result_count' op attribute 'caseValues' failed to satisfy constraint: 32-bit signless integer elements attribute";
    v22 = 259;
    mlir::emitError(a2, v21, v23);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v29;
        v15 = __p;
        if (v29 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v29 = v13;
        operator delete(v15);
      }

      v8 = v26;
      if (!v26)
      {
        goto LABEL_38;
      }

      v16 = v27;
      v10 = v26;
      if (v27 == v26)
      {
LABEL_37:
        v27 = v8;
        operator delete(v10);
LABEL_38:
        if (v24 != &v25)
        {
          free(v24);
        }

        return v4;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          MEMORY[0x259C63150](v17, 0x1000C8077774924);
        }
      }

      while (v16 != v8);
LABEL_36:
      v10 = v26;
      goto LABEL_37;
    }
  }

  else
  {
    v21[0] = "'pdl_interp.switch_result_count' op requires attribute 'caseValues'";
    v22 = 259;
    mlir::emitError(a2, v21, v23);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v29;
        v7 = __p;
        if (v29 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v29 = v5;
        operator delete(v7);
      }

      v8 = v26;
      if (!v26)
      {
        goto LABEL_38;
      }

      v9 = v27;
      v10 = v26;
      if (v27 == v26)
      {
        goto LABEL_37;
      }

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
      goto LABEL_36;
    }
  }

  return v4;
}