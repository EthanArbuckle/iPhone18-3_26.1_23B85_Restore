void mlir::mps::CumulativeMinimumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v27[0] = a3;
  v27[1] = a4;
  if (a4)
  {
    v19 = *(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v25 >= HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v25) = v19;
    v20 = v25 + 1;
    LODWORD(v25) = v20;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v20 > *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v17, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v20 = v25;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v25 > *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v22), v21, 8 * v20);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

uint64_t mlir::mps::CumulativeMinimumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v9 = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v4, "exclusive", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0)
  {
    return 0;
  }

  v9 = *this;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "reverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v6 = *this - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::CumulativeMinimumOp::verifyInvariants(mlir::Operation **this)
{
  if ((mlir::mps::CumulativeMinimumOp::verifyInvariantsImpl(this) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = 1;
  {
    return 0;
  }

  return v3;
}

uint64_t mlir::mps::detail::CumulativeProductOpGenericAdaptorBase::CumulativeProductOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::CumulativeProductOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "exclusive", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
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
      if (!v51)
      {
        goto LABEL_70;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
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

  v30 = mlir::DictionaryAttr::get(&v43, "reverse", 7uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 52;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = v47 + 24 * v48;
    v33 = v44;
    *(v32 + 2) = v45;
    *v32 = v33;
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

      v34 = v47 + 24 * v48;
      v35 = v44;
      *(v34 + 2) = v45;
      *v34 = v35;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v39 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v17;
      operator delete(v19);
LABEL_70:
      if (v47 != &v50)
      {
        free(v47);
      }

      return 0;
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
LABEL_68:
    v19 = v51;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeProductOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "exclusive", 9, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "reverse", 7, v7);
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

unint64_t mlir::mps::CumulativeProductOp::computePropertiesHash(void *a1)
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

unint64_t mlir::mps::CumulativeProductOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 7)
  {
    if (a4 == 9 && *a3 == 0x766973756C637865 && *(a3 + 8) == 101)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1702258034 || *(a3 + 3) != 1702064741)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::mps::CumulativeProductOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 7)
  {
    if (*a2 == 1702258034 && *(a2 + 3) == 1702064741)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 9 && *a2 == 0x766973756C637865 && *(a2 + 8) == 101)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      *result = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::CumulativeProductOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "exclusive", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "reverse", 7uLL, v5);
  }
}

BOOL mlir::mps::CumulativeProductOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "exclusive", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "reverse", 7, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::mps::CumulativeProductOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

uint64_t mlir::mps::CumulativeProductOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::mps::CumulativeProductOp::setExclusive(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t mlir::mps::CumulativeProductOp::setReverse(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::mps::CumulativeProductOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  if (a6)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a6;
  }

  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = a7;
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

void mlir::mps::CumulativeProductOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a5)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a5;
  }

  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *(v10 + 8) = a6;
  }

  __src = v24;
  v23 = 0x200000000;
  v11 = *a2;
  mlir::ValueRange::ValueRange(&v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
  v25[0] = v20;
  v25[1] = v21;
  if (v21)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v23 >= HIDWORD(v23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v23) = v13;
    v14 = v23 + 1;
    LODWORD(v23) = v14;
    v15 = __src;
    v16 = *(a2 + 72);
    if (v16 + v14 > *(a2 + 76))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v11, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v14 = v23;
    v15 = __src;
    v16 = *(a2 + 72);
    if (v16 + v23 > *(a2 + 76))
    {
LABEL_12:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v16), v15, 8 * v14);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v14;
  if (__src != v24)
  {
    free(__src);
  }
}

unint64_t mlir::mps::CumulativeProductOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  if (a7)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a7;
  }

  if (a8)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 8) = a8;
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

uint64_t mlir::mps::CumulativeProductOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v17 = a5;
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a6)
  {
    result = mlir::Builder::getUnitAttr(a1, v13);
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = result;
    if (!a7)
    {
LABEL_3:
      v14 = *(a2 + 72);
      if (v14 >= *(a2 + 76))
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!a7)
  {
    goto LABEL_3;
  }

  result = mlir::Builder::getUnitAttr(a1, v13);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = result;
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
LABEL_4:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_5:
  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::CumulativeProductOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a5)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v10);
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = UnitAttr;
  }

  if (a6)
  {
    v13 = mlir::Builder::getUnitAttr(a1, v10);
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = v13;
  }

  __src = v28;
  v27 = 0x200000000;
  v15 = *a2;
  mlir::ValueRange::ValueRange(&v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v29[0] = v24;
  v29[1] = v25;
  if (v25)
  {
    v17 = *(mlir::ValueRange::dereference_iterator(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v27 >= HIDWORD(v27))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v27) = v17;
    v18 = v27 + 1;
    LODWORD(v27) = v18;
    v19 = __src;
    v20 = *(a2 + 72);
    if (v20 + v18 > *(a2 + 76))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v15, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v18 = v27;
    v19 = __src;
    v20 = *(a2 + 72);
    if (v20 + v27 > *(a2 + 76))
    {
LABEL_12:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v20), v19, 8 * v18);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v18;
  if (__src != v28)
  {
    free(__src);
  }
}

unint64_t mlir::mps::CumulativeProductOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v21 = a6;
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a7)
  {
    result = mlir::Builder::getUnitAttr(a1, v15);
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = result;
    if (!a8)
    {
LABEL_3:
      v16 = *(a2 + 72);
      if (a4 + v16 <= *(a2 + 76))
      {
        goto LABEL_4;
      }

LABEL_14:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else if (!a8)
  {
    goto LABEL_3;
  }

  result = mlir::Builder::getUnitAttr(a1, v15);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = result;
  v16 = *(a2 + 72);
  if (a4 + v16 > *(a2 + 76))
  {
    goto LABEL_14;
  }

LABEL_4:
  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a4;
  return result;
}

uint64_t mlir::mps::CumulativeProductOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::CumulativeProductOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v27[0] = a3;
  v27[1] = a4;
  if (a4)
  {
    v19 = *(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v25 >= HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v25) = v19;
    v20 = v25 + 1;
    LODWORD(v25) = v20;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v20 > *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v17, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v20 = v25;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v25 > *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v22), v21, 8 * v20);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

uint64_t mlir::mps::CumulativeProductOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v9 = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v4, "exclusive", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0)
  {
    return 0;
  }

  v9 = *this;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "reverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v6 = *this - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::CumulativeProductOp::verifyInvariants(mlir::Operation **this)
{
  if ((mlir::mps::CumulativeProductOp::verifyInvariantsImpl(this) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = 1;
  {
    return 0;
  }

  return v3;
}

uint64_t mlir::mps::detail::CumulativeSumOpGenericAdaptorBase::CumulativeSumOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::CumulativeSumOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "exclusive", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
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
      if (!v51)
      {
        goto LABEL_70;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
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

  v30 = mlir::DictionaryAttr::get(&v43, "reverse", 7uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 52;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = v47 + 24 * v48;
    v33 = v44;
    *(v32 + 2) = v45;
    *v32 = v33;
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

      v34 = v47 + 24 * v48;
      v35 = v44;
      *(v34 + 2) = v45;
      *v34 = v35;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v39 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v17;
      operator delete(v19);
LABEL_70:
      if (v47 != &v50)
      {
        free(v47);
      }

      return 0;
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
LABEL_68:
    v19 = v51;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeSumOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "exclusive", 9, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "reverse", 7, v7);
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

unint64_t mlir::mps::CumulativeSumOp::computePropertiesHash(void *a1)
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

unint64_t mlir::mps::CumulativeSumOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 7)
  {
    if (a4 == 9 && *a3 == 0x766973756C637865 && *(a3 + 8) == 101)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1702258034 || *(a3 + 3) != 1702064741)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::mps::CumulativeSumOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 7)
  {
    if (*a2 == 1702258034 && *(a2 + 3) == 1702064741)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 9 && *a2 == 0x766973756C637865 && *(a2 + 8) == 101)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      *result = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::CumulativeSumOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "exclusive", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "reverse", 7uLL, v5);
  }
}

BOOL mlir::mps::CumulativeSumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "exclusive", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "reverse", 7, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::mps::CumulativeSumOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

uint64_t mlir::mps::CumulativeSumOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::mps::CumulativeSumOp::setExclusive(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 64) = this;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return this;
}

uint64_t mlir::mps::CumulativeSumOp::setReverse(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::mps::CumulativeSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  if (a6)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a6;
  }

  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = a7;
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

void mlir::mps::CumulativeSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a5)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a5;
  }

  if (a6)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *(v10 + 8) = a6;
  }

  __src = v24;
  v23 = 0x200000000;
  v11 = *a2;
  mlir::ValueRange::ValueRange(&v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
  v25[0] = v20;
  v25[1] = v21;
  if (v21)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v23 >= HIDWORD(v23))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v23) = v13;
    v14 = v23 + 1;
    LODWORD(v23) = v14;
    v15 = __src;
    v16 = *(a2 + 72);
    if (v16 + v14 > *(a2 + 76))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v11, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v14 = v23;
    v15 = __src;
    v16 = *(a2 + 72);
    if (v16 + v23 > *(a2 + 76))
    {
LABEL_12:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v16), v15, 8 * v14);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v14;
  if (__src != v24)
  {
    free(__src);
  }
}

unint64_t mlir::mps::CumulativeSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  if (a7)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a7;
  }

  if (a8)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 8) = a8;
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

uint64_t mlir::mps::CumulativeSumOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v17 = a5;
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a6)
  {
    result = mlir::Builder::getUnitAttr(a1, v13);
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = result;
    if (!a7)
    {
LABEL_3:
      v14 = *(a2 + 72);
      if (v14 >= *(a2 + 76))
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!a7)
  {
    goto LABEL_3;
  }

  result = mlir::Builder::getUnitAttr(a1, v13);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = result;
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
LABEL_4:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_5:
  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::CumulativeSumOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a5)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v10);
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = UnitAttr;
  }

  if (a6)
  {
    v13 = mlir::Builder::getUnitAttr(a1, v10);
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = v13;
  }

  __src = v28;
  v27 = 0x200000000;
  v15 = *a2;
  mlir::ValueRange::ValueRange(&v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v29[0] = v24;
  v29[1] = v25;
  if (v25)
  {
    v17 = *(mlir::ValueRange::dereference_iterator(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v27 >= HIDWORD(v27))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v27) = v17;
    v18 = v27 + 1;
    LODWORD(v27) = v18;
    v19 = __src;
    v20 = *(a2 + 72);
    if (v20 + v18 > *(a2 + 76))
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v15, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v18 = v27;
    v19 = __src;
    v20 = *(a2 + 72);
    if (v20 + v27 > *(a2 + 76))
    {
LABEL_12:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v20), v19, 8 * v18);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v18;
  if (__src != v28)
  {
    free(__src);
  }
}

unint64_t mlir::mps::CumulativeSumOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v21 = a6;
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a7)
  {
    result = mlir::Builder::getUnitAttr(a1, v15);
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = result;
    if (!a8)
    {
LABEL_3:
      v16 = *(a2 + 72);
      if (a4 + v16 <= *(a2 + 76))
      {
        goto LABEL_4;
      }

LABEL_14:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else if (!a8)
  {
    goto LABEL_3;
  }

  result = mlir::Builder::getUnitAttr(a1, v15);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = result;
  v16 = *(a2 + 72);
  if (a4 + v16 > *(a2 + 76))
  {
    goto LABEL_14;
  }

LABEL_4:
  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a4;
  return result;
}

uint64_t mlir::mps::CumulativeSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::CumulativeSumOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  v27[0] = a3;
  v27[1] = a4;
  if (a4)
  {
    v19 = *(mlir::ValueRange::dereference_iterator(v27, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v25 >= HIDWORD(v25))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(__src + v25) = v19;
    v20 = v25 + 1;
    LODWORD(v25) = v20;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v20 > *(a2 + 76))
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::emitOptionalError<char const(&)[24]>(v17, 1, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v20 = v25;
    v21 = __src;
    v22 = *(a2 + 72);
    if (v22 + v25 > *(a2 + 76))
    {
LABEL_15:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v22), v21, 8 * v20);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v20;
  if (__src != v26)
  {
    free(__src);
  }
}

uint64_t mlir::mps::CumulativeSumOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v9 = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v4, "exclusive", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0)
  {
    return 0;
  }

  v9 = *this;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "reverse", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v6 = *this - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::CumulativeSumOp::verifyInvariants(mlir::Operation **this)
{
  if ((mlir::mps::CumulativeSumOp::verifyInvariantsImpl(this) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = 1;
  {
    return 0;
  }

  return v3;
}

uint64_t mlir::mps::DegammaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::DegammaOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v14;
  v13 = 0x200000000;
  mlir::ValueRange::ValueRange(&v11, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v10, *(a2 + 224), *(a2 + 232));
  v15 = v11;
  if (v13 != 1)
  {
    if (!v13)
    {
      if (!HIDWORD(v13))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v13) = 1;
  }

  v5 = mlir::ValueRange::dereference_iterator(&v15, 0);
  v6 = __src;
  *__src = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = v13;
  v8 = *(a2 + 72);
  if (v8 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v8), v6, 8 * v13);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v14)
  {
    free(__src);
  }
}

uint64_t mlir::mps::DegammaOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::DegammaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::DegammaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DegammaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::DegammaOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::DegammaOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::detail::DepthToSpace2DOpGenericAdaptorBase::DepthToSpace2DOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t *mlir::mps::detail::DepthToSpace2DOpGenericAdaptorBase::getBlockSize(mlir::mps::detail::DepthToSpace2DOpGenericAdaptorBase *this)
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

uint64_t mlir::mps::DepthToSpace2DOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v27 = v52;
    v19 = v51;
    if (v52 == v51)
    {
      goto LABEL_69;
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
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v43, "block_size", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 55;
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
      if (!v51)
      {
        goto LABEL_70;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
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

  v30 = mlir::DictionaryAttr::get(&v43, "pixel_shuffle", 0xDuLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 58;
    if (v48 >= v49)
    {
      if (v47 > &v44 || v47 + 24 * v48 <= &v44)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = v47 + 24 * v48;
    v33 = v44;
    *(v32 + 2) = v45;
    *v32 = v33;
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

      v34 = v47 + 24 * v48;
      v35 = v44;
      *(v34 + 2) = v45;
      *v34 = v35;
      ++v48;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
      }
    }
  }

  if (v56)
  {
    if (v55 != &v56)
    {
      free(v55);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v54;
      v38 = __p;
      if (v54 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v54 = v36;
      operator delete(v38);
    }

    v17 = v51;
    if (!v51)
    {
      goto LABEL_70;
    }

    v39 = v52;
    v19 = v51;
    if (v52 == v51)
    {
LABEL_69:
      v52 = v17;
      operator delete(v19);
LABEL_70:
      if (v47 != &v50)
      {
        free(v47);
      }

      return 0;
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
LABEL_68:
    v19 = v51;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::mps::DepthToSpace2DOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "block_size", 0xA, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "pixel_shuffle", 0xD, v7);
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

unint64_t mlir::mps::DepthToSpace2DOp::computePropertiesHash(void *a1)
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

unint64_t mlir::mps::DepthToSpace2DOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 13)
  {
    if (a4 == 10 && *a3 == 0x69735F6B636F6C62 && *(a3 + 8) == 25978)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x68735F6C65786970 || *(a3 + 5) != 0x656C66667568735FLL)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::mps::DepthToSpace2DOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13)
  {
    if (*a2 == 0x68735F6C65786970 && *(a2 + 5) == 0x656C66667568735FLL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 10 && *a2 == 0x69735F6B636F6C62 && *(a2 + 8) == 25978)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      *result = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::DepthToSpace2DOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "block_size", 0xAuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "pixel_shuffle", 0xDuLL, v5);
  }
}

BOOL mlir::mps::DepthToSpace2DOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "block_size", 10, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "pixel_shuffle", 13, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::mps::DepthToSpace2DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
}

uint64_t mlir::mps::DepthToSpace2DOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t *mlir::mps::DepthToSpace2DOp::getBlockSize(mlir::mps::DepthToSpace2DOp *this)
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

uint64_t mlir::mps::DepthToSpace2DOp::setBlockSize(mlir::mps::DepthToSpace2DOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::DepthToSpace2DOp::setPixelShuffle(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::mps::DepthToSpace2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a5;
  v19 = a4;
  v16 = a7;
  v17 = a6;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a8;
  if (a9)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = a9;
  }

  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthToSpace2DOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[2] = *MEMORY[0x277D85DE8];
  v24 = a4;
  v25 = a3;
  v22 = a6;
  v23 = a5;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a7;
  if (a8)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = a8;
  }

  __src = v30;
  v29 = 0x200000000;
  v14 = *a1;
  v15 = *a2;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthToSpace2DOp::inferReturnTypes(v14, v15, 1, v27[0], v27[1], Dictionary, v18, v19, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = v29;
  v21 = *(a2 + 72);
  if (v21 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v21), __src, 8 * v29);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v30)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DepthToSpace2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a5;
  v19 = a8;
  v20 = a7;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a9;
  if (a10)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 8) = a10;
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

uint64_t mlir::mps::DepthToSpace2DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, char a9)
{
  v21 = a5;
  v22 = a4;
  v19 = a7;
  v20 = a6;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = result;
  if (a9)
  {
    result = mlir::Builder::getUnitAttr(a1, v15);
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 8) = result;
    v17 = *(a2 + 72);
    if (v17 >= *(a2 + 76))
    {
LABEL_4:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v17 = *(a2 + 72);
    if (v17 >= *(a2 + 76))
    {
      goto LABEL_4;
    }
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthToSpace2DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = IntegerAttr;
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v14);
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 8) = UnitAttr;
  }

  __src = v34;
  v33 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthToSpace2DOp::inferReturnTypes(v18, v19, 1, v31[0], v31[1], Dictionary, v22, v23, v30[0], v30[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v33;
  v25 = *(a2 + 72);
  if (v25 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v33);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DepthToSpace2DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10)
{
  v24 = a6;
  v25 = a5;
  v22 = a8;
  v23 = a7;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a9);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = result;
  if (!a10)
  {
    v18 = *(a2 + 72);
    if (a4 + v18 <= *(a2 + 76))
    {
      goto LABEL_4;
    }

LABEL_11:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v16);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = result;
  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    goto LABEL_11;
  }

LABEL_4:
  if (a4)
  {
    v20 = 0;
    v21 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v20);
      *(v21 + 8 * v20++) = result;
    }

    while (a4 != v20);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

uint64_t mlir::mps::DepthToSpace2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DepthToSpace2DOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    *(a2 + 120) += a6;
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v12;
  }

  __src = v29;
  v28 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  v20 = mlir::Attribute::getContext(a2);
  v21 = mlir::NamedAttrList::getDictionary((a2 + 112), v20);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthToSpace2DOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v28;
  v25 = *(a2 + 72);
  if (v25 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v28);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v29)
  {
    free(__src);
  }
}

BOOL mlir::mps::DepthToSpace2DOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    v22[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v4, "block_size", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22) & 1) != 0 && (v22[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "pixel_shuffle", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = "requires attribute 'block_size'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
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
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::mps::detail::DepthwiseConv2DDataGradientOpGenericAdaptorBase::DepthwiseConv2DDataGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v54 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected DictionaryAttr to set properties";
      v56 = 41;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v59 + 24 * v60;
      v23 = v55;
      *(v22 + 2) = v56;
      *v22 = v23;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v66;
      v26 = __p;
      if (v66 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v66 = v24;
      operator delete(v26);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_77;
    }

    v27 = v64;
    v19 = v63;
    if (v64 == v63)
    {
LABEL_76:
      v64 = v17;
      operator delete(v19);
LABEL_77:
      if (v59 != &v62)
      {
        free(v59);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v54, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 56;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v59 + 24 * v60;
        v11 = v55;
        *(v10 + 2) = v56;
        *v10 = v11;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v9);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v59 + 24 * v60;
          v13 = v55;
          *(v12 + 2) = v56;
          *v12 = v13;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v66;
        v16 = __p;
        if (v66 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v66 = v14;
        operator delete(v16);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_77;
      }

      v18 = v64;
      v19 = v63;
      if (v64 == v63)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v54, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      v56 = 59;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v59 + 24 * v60;
      v37 = v55;
      *(v36 + 2) = v56;
      *v36 = v37;
      ++v60;
      if (v57)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, v31);
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v59 + 24 * v60;
        v39 = v55;
        *(v38 + 2) = v56;
        *v38 = v39;
        ++v60;
        if (v57)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }
      }
    }

    if ((v68 & 1) == 0)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_77;
    }

    v43 = v64;
    v19 = v63;
    if (v64 == v63)
    {
      goto LABEL_76;
    }

    do
    {
      v45 = *--v43;
      v44 = v45;
      *v43 = 0;
      if (v45)
      {
        MEMORY[0x259C63150](v44, 0x1000C8077774924);
      }
    }

    while (v43 != v17);
LABEL_75:
    v19 = v63;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v54, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 61;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v59 + 24 * v60;
        v47 = v55;
        *(v46 + 2) = v56;
        *v46 = v47;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v33);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v59 + 24 * v60;
          v49 = v55;
          *(v48 + 2) = v56;
          *v48 = v49;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if (v68 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v58);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v54, "padding_style", 0xDuLL);
  *&v55 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v54, "strides", 7uLL);
    *&v55 = v50;
    if (v50)
    {
      v51 = v50;
      if (!mlir::DenseIntElementsAttr::classof(v50))
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[4] = v51;
    }

    v52 = mlir::DictionaryAttr::get(&v54, "weights_layout", 0xEuLL);
    *&v55 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[5] = v52;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v57, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v55);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = v33;
  v32 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v30, "data_layout", 0xB, *a2);
  if (v32 >= HIDWORD(v32))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v31 + 16 * v32);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v32 + 1;
  LODWORD(v32) = v32 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v30, "dilation_rates", 0xE, v7);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v31 + 16 * v32);
    *v10 = v8;
    v10[1] = v9;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v30, "explicit_padding", 0x10, v11);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v31 + 16 * v32);
    *v14 = v12;
    v14[1] = v13;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v30, "padding_style", 0xD, v15);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v31 + 16 * v32);
    *v18 = v16;
    v18[1] = v17;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v30, "strides", 7, v19);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v31 + 16 * v32);
    *v22 = v20;
    v22[1] = v21;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v30, "weights_layout", 0xE, v23);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v31 + 16 * v32);
    *v26 = v24;
    v26[1] = v25;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v27 = v31;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v31 == v33)
    {
      return DictionaryAttr;
    }

    goto LABEL_22;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v30, v31, v6);
  v27 = v31;
  if (v31 != v33)
  {
LABEL_22:
    free(v27);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::DepthwiseConv2DDataGradientOp::computePropertiesHash(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = HIDWORD(*a1);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v23, 0, v23, v24, &v22, &v21, &v20, &v19, &v18, &v17);
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    if (!memcmp(__s1, "weights_layout", 0xEuLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    if (a3 == 7)
    {
      result = memcmp(__s1, "strides", 7uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          v5[4] = v11;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (result)
        {
          result = memcmp(__s1, "weights_layout", 0xEuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
              {
                v10 = a4;
              }

              else
              {
                v10 = 0;
              }

              v5[5] = v10;
            }

            else
            {
              v5[5] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[2] = v13;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::DepthwiseConv2DDataGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "weights_layout", 0xEuLL, v9);
  }
}

BOOL mlir::mps::DepthwiseConv2DDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 13, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v13, "weights_layout", 14, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::setDataLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::setWeightsLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a5;
  v26 = a4;
  v24 = a6;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 32) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 24) = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a11;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 40) = a12;
  v23 = *(a2 + 72);
  if (v23 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v23) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthwiseConv2DDataGradientOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v31 = a4;
  v32 = a3;
  v30 = a5;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 40) = a11;
  __src = v37;
  v36 = 0x200000000;
  v22 = *a1;
  v23 = *a2;
  mlir::ValueRange::ValueRange(v34, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v26 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v33, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DDataGradientOp::inferReturnTypes(v22, v23, 1, v34[0], v34[1], Dictionary, v26, v27, v33[0], v33[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v28 = v36;
  v29 = *(a2 + 72);
  if (v29 + v36 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    memcpy((*(a2 + 64) + 8 * v29), __src, 8 * v36);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + v28;
  if (__src != v37)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DepthwiseConv2DDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = a6;
  v29 = a5;
  v27 = a7;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) = a11;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a12;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 40) = a13;
  v24 = *(a2 + 72);
  if (a4 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v25 = 0;
    v26 = *(a2 + 64) + 8 * v24;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v25);
      *(v26 + 8 * v25++) = result;
    }

    while (a4 != v25);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + a4;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v40 = a5;
  v41 = a4;
  v39 = a6;
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 32) = a7;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a8;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 16) = a9;
  v18 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v42 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v43 = v18;
  v48 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v49 = &v42;
  v47 = a10;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v21 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 47) ^ v20);
  v44 = &v47;
  v45 = &v48;
  v46 = &v47;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v21 >> 47) ^ v21), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = ParametricStorageTypeImpl;
  v24 = *a1;
  v25 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v42 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v43 = v24;
  v48 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v49 = &v42;
  v47 = a11;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v27 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v26 >> 47) ^ v26);
  v45 = &v48;
  v46 = &v47;
  v44 = &v47;
  v28 = mlir::StorageUniquer::getParametricStorageTypeImpl(v25, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v27 >> 47) ^ v27), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  *v29 = v28;
  v30 = *a1;
  v31 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v42 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v43 = v30;
  v48 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v49 = &v42;
  v47 = a12;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v33 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v32 >> 47) ^ v32);
  v44 = &v47;
  v45 = &v48;
  v46 = &v47;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v31, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v35 = *(a2 + 256);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 40) = result;
  v36 = *(a2 + 72);
  if (v36 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v36) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthwiseConv2DDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v57 = *MEMORY[0x277D85DE8];
  v46 = a4;
  v47 = a3;
  v45 = a5;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a8;
  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v54 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v53;
  v49 = a9;
  v21 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v22 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v21 >> 47) ^ v21);
  v48 = &v49;
  v55 = &v49;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v22 >> 47) ^ v22), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = ParametricStorageTypeImpl;
  v25 = *a1;
  v26 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v54 = v25;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v53;
  v49 = a10;
  v27 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v28 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v27 >> 47) ^ v27);
  v48 = &v49;
  v55 = &v49;
  p_src = &__src;
  v29 = mlir::StorageUniquer::getParametricStorageTypeImpl(v26, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *v30 = v29;
  v31 = *a1;
  v32 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v54 = v31;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v53;
  v49 = a11;
  v33 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v34 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v33 >> 47) ^ v33);
  v48 = &v49;
  v55 = &v49;
  p_src = &__src;
  v35 = mlir::StorageUniquer::getParametricStorageTypeImpl(v32, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v34 >> 47) ^ v34), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v36 = *(a2 + 256);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 40) = v35;
  __src = v52;
  v51 = 0x200000000;
  v37 = *a1;
  v38 = *a2;
  mlir::ValueRange::ValueRange(&v55, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v41 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v53, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DDataGradientOp::inferReturnTypes(v37, v38, 1, v55, p_src, Dictionary, v41, v42, v53, v54, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v43 = v51;
  v44 = *(a2 + 72);
  if (v44 + v51 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v51)
  {
    memcpy((*(a2 + 64) + 8 * v44), __src, 8 * v51);
    LODWORD(v44) = *(a2 + 72);
  }

  *(a2 + 72) = v44 + v43;
  if (__src != v52)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DepthwiseConv2DDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, unsigned int a12, unsigned int a13)
{
  v43 = a6;
  v44 = a5;
  v42 = a7;
  mlir::OperationState::addOperands(a2, &v44, 1uLL);
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a10;
  v21 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v45 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v46 = v21;
  v51 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v52 = &v45;
  v50 = a11;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v47 = &v50;
  v48 = &v51;
  v49 = &v50;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v49, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v47);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 24) = ParametricStorageTypeImpl;
  v27 = *a1;
  v28 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v45 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v46 = v27;
  v51 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v52 = &v45;
  v50 = a12;
  v29 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v30 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v29 >> 47) ^ v29);
  v48 = &v51;
  v49 = &v50;
  v47 = &v50;
  v31 = mlir::StorageUniquer::getParametricStorageTypeImpl(v28, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v30 >> 47) ^ v30), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v49, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v47);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *v32 = v31;
  v33 = *a1;
  v34 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v45 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v46 = v33;
  v51 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v52 = &v45;
  v50 = a13;
  v35 = 0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL);
  v36 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ (v35 >> 47) ^ v35);
  v47 = &v50;
  v48 = &v51;
  v49 = &v50;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v34, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v36 >> 47) ^ v36), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v49, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v47);
  v38 = *(a2 + 256);
  if (!v38)
  {
    operator new();
  }

  *(v38 + 40) = result;
  v39 = *(a2 + 72);
  if (a4 + v39 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v40 = 0;
    v41 = *(a2 + 64) + 8 * v39;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v40);
      *(v41 + 8 * v40++) = result;
    }

    while (a4 != v40);
    LODWORD(v39) = *(a2 + 72);
  }

  *(a2 + 72) = v39 + a4;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DepthwiseConv2DDataGradientOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    *(a2 + 120) += a6;
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v12;
  }

  __src = v29;
  v28 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  v20 = mlir::Attribute::getContext(a2);
  v21 = mlir::NamedAttrList::getDictionary((a2 + 112), v20);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DDataGradientOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v28;
  v25 = *(a2 + 72);
  if (v25 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v28);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v29)
  {
    free(__src);
  }
}

BOOL mlir::mps::DepthwiseConv2DDataGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v9 = v2[5];
            if (v9)
            {
              v43 = *this;
              if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43) & 1) != 0 && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v7, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v3, "data_layout", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v9, "weights_layout", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u))
              {
                if (*(*this + 9))
                {
                  v11 = *this - 16;
                }

                else
                {
                  v11 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              v41[0] = "requires attribute 'weights_layout'";
              v42 = 259;
              mlir::OpState::emitOpError(this, v41, &v43);
              v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
            }
          }

          else
          {
            v41[0] = "requires attribute 'strides'";
            v42 = 259;
            mlir::OpState::emitOpError(this, v41, &v43);
            v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
            if (v43)
            {
              mlir::InFlightDiagnostic::report(&v43);
            }

            if (v52 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v44);
            }
          }

          return v13;
        }

        v41[0] = "requires attribute 'padding_style'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

          v34 = __p;
          if (__p)
          {
            v35 = v50;
            v36 = __p;
            if (v50 != __p)
            {
              do
              {
                v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
              }

              while (v35 != v34);
              v36 = __p;
            }

            v50 = v34;
            operator delete(v36);
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_86;
          }

          v37 = v48;
          v19 = v47;
          if (v48 == v47)
          {
LABEL_85:
            v48 = v17;
            operator delete(v19);
LABEL_86:
            if (v45 != &v46)
            {
              free(v45);
            }

            return v13;
          }

          do
          {
            v39 = *--v37;
            v38 = v39;
            *v37 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v37 != v17);
LABEL_84:
          v19 = v47;
          goto LABEL_85;
        }
      }

      else
      {
        v41[0] = "requires attribute 'explicit_padding'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

          v28 = __p;
          if (__p)
          {
            v29 = v50;
            v30 = __p;
            if (v50 != __p)
            {
              do
              {
                v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
              }

              while (v29 != v28);
              v30 = __p;
            }

            v50 = v28;
            operator delete(v30);
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_86;
          }

          v31 = v48;
          v19 = v47;
          if (v48 == v47)
          {
            goto LABEL_85;
          }

          do
          {
            v33 = *--v31;
            v32 = v33;
            *v31 = 0;
            if (v33)
            {
              MEMORY[0x259C63150](v32, 0x1000C8077774924);
            }
          }

          while (v31 != v17);
          goto LABEL_84;
        }
      }
    }

    else
    {
      v41[0] = "requires attribute 'dilation_rates'";
      v42 = 259;
      mlir::OpState::emitOpError(this, v41, &v43);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

        v22 = __p;
        if (__p)
        {
          v23 = v50;
          v24 = __p;
          if (v50 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v50 = v22;
          operator delete(v24);
        }

        v17 = v47;
        if (!v47)
        {
          goto LABEL_86;
        }

        v25 = v48;
        v19 = v47;
        if (v48 == v47)
        {
          goto LABEL_85;
        }

        do
        {
          v27 = *--v25;
          v26 = v27;
          *v25 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v25 != v17);
        goto LABEL_84;
      }
    }
  }

  else
  {
    v41[0] = "requires attribute 'data_layout'";
    v42 = 259;
    mlir::OpState::emitOpError(this, v41, &v43);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

      v14 = __p;
      if (__p)
      {
        v15 = v50;
        v16 = __p;
        if (v50 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v50 = v14;
        operator delete(v16);
      }

      v17 = v47;
      if (!v47)
      {
        goto LABEL_86;
      }

      v18 = v48;
      v19 = v47;
      if (v48 == v47)
      {
        goto LABEL_85;
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
      goto LABEL_84;
    }
  }

  return v13;
}

uint64_t mlir::mps::detail::DepthwiseConv2DOpGenericAdaptorBase::DepthwiseConv2DOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::DepthwiseConv2DOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v54 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected DictionaryAttr to set properties";
      v56 = 41;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v59 + 24 * v60;
      v23 = v55;
      *(v22 + 2) = v56;
      *v22 = v23;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v66;
      v26 = __p;
      if (v66 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v66 = v24;
      operator delete(v26);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_77;
    }

    v27 = v64;
    v19 = v63;
    if (v64 == v63)
    {
LABEL_76:
      v64 = v17;
      operator delete(v19);
LABEL_77:
      if (v59 != &v62)
      {
        free(v59);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v54, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 56;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v59 + 24 * v60;
        v11 = v55;
        *(v10 + 2) = v56;
        *v10 = v11;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v9);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v59 + 24 * v60;
          v13 = v55;
          *(v12 + 2) = v56;
          *v12 = v13;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v66;
        v16 = __p;
        if (v66 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v66 = v14;
        operator delete(v16);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_77;
      }

      v18 = v64;
      v19 = v63;
      if (v64 == v63)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v54, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      v56 = 59;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v59 + 24 * v60;
      v37 = v55;
      *(v36 + 2) = v56;
      *v36 = v37;
      ++v60;
      if (v57)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, v31);
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v59 + 24 * v60;
        v39 = v55;
        *(v38 + 2) = v56;
        *v38 = v39;
        ++v60;
        if (v57)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }
      }
    }

    if ((v68 & 1) == 0)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_77;
    }

    v43 = v64;
    v19 = v63;
    if (v64 == v63)
    {
      goto LABEL_76;
    }

    do
    {
      v45 = *--v43;
      v44 = v45;
      *v43 = 0;
      if (v45)
      {
        MEMORY[0x259C63150](v44, 0x1000C8077774924);
      }
    }

    while (v43 != v17);
LABEL_75:
    v19 = v63;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v54, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 61;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v59 + 24 * v60;
        v47 = v55;
        *(v46 + 2) = v56;
        *v46 = v47;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v33);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v59 + 24 * v60;
          v49 = v55;
          *(v48 + 2) = v56;
          *v48 = v49;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if (v68 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v58);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v54, "padding_style", 0xDuLL);
  *&v55 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v54, "strides", 7uLL);
    *&v55 = v50;
    if (v50)
    {
      v51 = v50;
      if (!mlir::DenseIntElementsAttr::classof(v50))
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[4] = v51;
    }

    v52 = mlir::DictionaryAttr::get(&v54, "weights_layout", 0xEuLL);
    *&v55 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[5] = v52;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v57, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v55);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = v33;
  v32 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v30, "data_layout", 0xB, *a2);
  if (v32 >= HIDWORD(v32))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v31 + 16 * v32);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v32 + 1;
  LODWORD(v32) = v32 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v30, "dilation_rates", 0xE, v7);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v31 + 16 * v32);
    *v10 = v8;
    v10[1] = v9;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v30, "explicit_padding", 0x10, v11);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v31 + 16 * v32);
    *v14 = v12;
    v14[1] = v13;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v30, "padding_style", 0xD, v15);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v31 + 16 * v32);
    *v18 = v16;
    v18[1] = v17;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v30, "strides", 7, v19);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v31 + 16 * v32);
    *v22 = v20;
    v22[1] = v21;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v30, "weights_layout", 0xE, v23);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v31 + 16 * v32);
    *v26 = v24;
    v26[1] = v25;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v27 = v31;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v31 == v33)
    {
      return DictionaryAttr;
    }

    goto LABEL_22;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v30, v31, v6);
  v27 = v31;
  if (v31 != v33)
  {
LABEL_22:
    free(v27);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::DepthwiseConv2DOp::computePropertiesHash(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = HIDWORD(*a1);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v23, 0, v23, v24, &v22, &v21, &v20, &v19, &v18, &v17);
}

uint64_t mlir::mps::DepthwiseConv2DOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    if (!memcmp(__s1, "weights_layout", 0xEuLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::DepthwiseConv2DOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    if (a3 == 7)
    {
      result = memcmp(__s1, "strides", 7uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          v5[4] = v11;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (result)
        {
          result = memcmp(__s1, "weights_layout", 0xEuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
              {
                v10 = a4;
              }

              else
              {
                v10 = 0;
              }

              v5[5] = v10;
            }

            else
            {
              v5[5] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[2] = v13;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::DepthwiseConv2DOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "weights_layout", 0xEuLL, v9);
  }
}

BOOL mlir::mps::DepthwiseConv2DOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 13, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v13, "weights_layout", 14, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::DepthwiseConv2DOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::DepthwiseConv2DOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::DepthwiseConv2DOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DOp::setDataLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DOp::setWeightsLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

void mlir::mps::DepthwiseConv2DOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unsigned int a13, unsigned int a14, unsigned int a15)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v44 = v46;
  memset_pattern16(v46, &unk_257369660, 0x20uLL);
  v45 = 0x400000004;
  v41 = v43;
  memset_pattern16(v43, &unk_257369660, 0x20uLL);
  v42 = 0x400000004;
  v38 = v40;
  memset_pattern16(v40, &unk_257369660, 0x40uLL);
  v39 = 0x800000008;
  mlir::mps::buildConv2DDescriptor(a3, a4, 1, a5, a6, a7, a8, a9, v36, a10, a11, a12, a13, a14, a15, v46, v43, v40, 1);
  v36[0] = v37;
  v37[0] = xmmword_2573695A0;
  v36[1] = 0x200000002;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v35 = 4;
  v32 = mlir::RankedTensorType::get(v37, 2, IntegerType, 0);
  v33 = &v35;
  v34 = 0x100000001;
  v18 = mlir::Builder::getIntegerType(a1, 64, 0);
  v31 = mlir::RankedTensorType::get(&v35, 1, v18, 0);
  v19 = mlir::TensorType::operator mlir::ShapedType(&v31);
  RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v19);
  v21 = mlir::TensorType::operator mlir::ShapedType(&v31);
  v22 = mlir::DenseElementsAttr::getRawIntOrFloat(v21);
  v23 = mlir::TensorType::operator mlir::ShapedType(&v32);
  v24 = mlir::DenseElementsAttr::getRawIntOrFloat(v23);
  mlir::mps::DepthwiseConv2DOp::build(a1, a2, a3, a4, RawIntOrFloat, v22, v24, a13, a14, a15);
  if (v33 != &v35)
  {
    free(v33);
  }

  if (v36[0] != v37)
  {
    free(v36[0]);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }
}

uint64_t mlir::mps::DepthwiseConv2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a5;
  v25 = a4;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 32) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a8;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 24) = a9;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a10;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 40) = a11;
  v23 = *(a2 + 72);
  if (v23 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v23) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthwiseConv2DOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v30 = a4;
  v31 = a3;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a5;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = a8;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a9;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 40) = a10;
  __src = v36;
  v35 = 0x200000000;
  v22 = *a1;
  v23 = *a2;
  mlir::ValueRange::ValueRange(v33, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v26 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v32, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DOp::inferReturnTypes(v22, v23, 1, v33[0], v33[1], Dictionary, v26, v27, v32[0], v32[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v28 = v35;
  v29 = *(a2 + 72);
  if (v29 + v35 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v35)
  {
    memcpy((*(a2 + 64) + 8 * v29), __src, 8 * v35);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + v28;
  if (__src != v36)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DepthwiseConv2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a6;
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a8;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a9;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) = a10;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a11;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 40) = a12;
  v24 = *(a2 + 72);
  if (a4 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v25 = 0;
    v26 = *(a2 + 64) + 8 * v24;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v25);
      *(v26 + 8 * v25++) = result;
    }

    while (a4 != v25);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + a4;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v39 = a5;
  v40 = a4;
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 32) = a6;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a7;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 16) = a8;
  v18 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v41 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v42 = v18;
  v47 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v48 = &v41;
  v46 = a9;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v21 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 47) ^ v20);
  v43 = &v46;
  v44 = &v47;
  v45 = &v46;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v21 >> 47) ^ v21), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v45, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v43);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = ParametricStorageTypeImpl;
  v24 = *a1;
  v25 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v41 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v42 = v24;
  v47 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v48 = &v41;
  v46 = a10;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v27 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v26 >> 47) ^ v26);
  v44 = &v47;
  v45 = &v46;
  v43 = &v46;
  v28 = mlir::StorageUniquer::getParametricStorageTypeImpl(v25, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v27 >> 47) ^ v27), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v45, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v43);
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  *v29 = v28;
  v30 = *a1;
  v31 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v41 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v42 = v30;
  v47 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v48 = &v41;
  v46 = a11;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v33 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v32 >> 47) ^ v32);
  v43 = &v46;
  v44 = &v47;
  v45 = &v46;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v31, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v45, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v43);
  v35 = *(a2 + 256);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 40) = result;
  v36 = *(a2 + 72);
  if (v36 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v36) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthwiseConv2DOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  v56 = *MEMORY[0x277D85DE8];
  v45 = a4;
  v46 = a3;
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a5;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a6;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a7;
  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v52 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v53 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v50 = &v52;
  v48 = a8;
  v21 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v21);
  v47 = &v48;
  v54 = &v48;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v47, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = ParametricStorageTypeImpl;
  v25 = *a1;
  v26 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v52 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v53 = v25;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v50 = &v52;
  v48 = a9;
  v27 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v28 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v27 >> 47) ^ v27);
  v47 = &v48;
  v54 = &v48;
  p_src = &__src;
  v29 = mlir::StorageUniquer::getParametricStorageTypeImpl(v26, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v47, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *v30 = v29;
  v31 = *a1;
  v32 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v52 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v53 = v31;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v50 = &v52;
  v48 = a10;
  v33 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v34 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v33 >> 47) ^ v33);
  v47 = &v48;
  v54 = &v48;
  p_src = &__src;
  v35 = mlir::StorageUniquer::getParametricStorageTypeImpl(v32, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v34 >> 47) ^ v34), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v47, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  v36 = *(a2 + 256);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 40) = v35;
  __src = v51;
  v50 = 0x200000000;
  v37 = *a1;
  v38 = *a2;
  mlir::ValueRange::ValueRange(&v54, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v41 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v52, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DOp::inferReturnTypes(v37, v38, 1, v54, p_src, Dictionary, v41, v42, v52, v53, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v43 = v50;
  v44 = *(a2 + 72);
  if (v44 + v50 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v50)
  {
    memcpy((*(a2 + 64) + 8 * v44), __src, 8 * v50);
    LODWORD(v44) = *(a2 + 72);
  }

  *(a2 + 72) = v44 + v43;
  if (__src != v51)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DepthwiseConv2DOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v42 = a6;
  v43 = a5;
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 32) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a9;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v44 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v45 = v20;
  v50 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v44;
  v49 = a10;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v23 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v22 >> 47) ^ v22);
  v46 = &v49;
  v47 = &v50;
  v48 = &v49;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v23 >> 47) ^ v23), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v46);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 24) = ParametricStorageTypeImpl;
  v26 = *a1;
  v27 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v44 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v45 = v26;
  v50 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v44;
  v49 = a11;
  v28 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v29 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v28 >> 47) ^ v28);
  v47 = &v50;
  v48 = &v49;
  v46 = &v49;
  v30 = mlir::StorageUniquer::getParametricStorageTypeImpl(v27, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v29 >> 47) ^ v29), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v46);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *v31 = v30;
  v32 = *a1;
  v33 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v44 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v45 = v32;
  v50 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v44;
  v49 = a12;
  v34 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v46 = &v49;
  v47 = &v50;
  v48 = &v49;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v33, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v46);
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 40) = result;
  v38 = *(a2 + 72);
  if (a4 + v38 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v39 = 0;
    v40 = *(a2 + 64) + 8 * v38;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v39);
      *(v40 + 8 * v39++) = result;
    }

    while (a4 != v39);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + a4;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::DepthwiseConv2DOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    *(a2 + 120) += a6;
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 8);
    if (*(v14 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v15 + 144))(v15, v14, v13, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v12;
  }

  __src = v29;
  v28 = 0x200000000;
  v18 = *a1;
  v19 = *a2;
  v20 = mlir::Attribute::getContext(a2);
  v21 = mlir::NamedAttrList::getDictionary((a2 + 112), v20);
  v22 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v28;
  v25 = *(a2 + 72);
  if (v25 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v28);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v29)
  {
    free(__src);
  }
}

BOOL mlir::mps::DepthwiseConv2DOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    v5 = v2[1];
    if (v5)
    {
      v6 = v2[2];
      if (v6)
      {
        v7 = v2[3];
        if (v7)
        {
          v8 = v2[4];
          if (v8)
          {
            v9 = v2[5];
            if (v9)
            {
              v43 = *this;
              if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43) & 1) != 0 && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v7, "padding_style", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v3, "data_layout", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (v43 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v9, "weights_layout", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v43)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
              {
                if (*(*this + 9))
                {
                  v11 = *this - 16;
                }

                else
                {
                  v11 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0);
                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              v41[0] = "requires attribute 'weights_layout'";
              v42 = 259;
              mlir::OpState::emitOpError(this, v41, &v43);
              v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
            }
          }

          else
          {
            v41[0] = "requires attribute 'strides'";
            v42 = 259;
            mlir::OpState::emitOpError(this, v41, &v43);
            v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
            if (v43)
            {
              mlir::InFlightDiagnostic::report(&v43);
            }

            if (v52 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v44);
            }
          }

          return v13;
        }

        v41[0] = "requires attribute 'padding_style'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

          v34 = __p;
          if (__p)
          {
            v35 = v50;
            v36 = __p;
            if (v50 != __p)
            {
              do
              {
                v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
              }

              while (v35 != v34);
              v36 = __p;
            }

            v50 = v34;
            operator delete(v36);
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_85;
          }

          v37 = v48;
          v19 = v47;
          if (v48 == v47)
          {
LABEL_84:
            v48 = v17;
            operator delete(v19);
LABEL_85:
            if (v45 != &v46)
            {
              free(v45);
            }

            return v13;
          }

          do
          {
            v39 = *--v37;
            v38 = v39;
            *v37 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v37 != v17);
LABEL_83:
          v19 = v47;
          goto LABEL_84;
        }
      }

      else
      {
        v41[0] = "requires attribute 'explicit_padding'";
        v42 = 259;
        mlir::OpState::emitOpError(this, v41, &v43);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

          v28 = __p;
          if (__p)
          {
            v29 = v50;
            v30 = __p;
            if (v50 != __p)
            {
              do
              {
                v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
              }

              while (v29 != v28);
              v30 = __p;
            }

            v50 = v28;
            operator delete(v30);
          }

          v17 = v47;
          if (!v47)
          {
            goto LABEL_85;
          }

          v31 = v48;
          v19 = v47;
          if (v48 == v47)
          {
            goto LABEL_84;
          }

          do
          {
            v33 = *--v31;
            v32 = v33;
            *v31 = 0;
            if (v33)
            {
              MEMORY[0x259C63150](v32, 0x1000C8077774924);
            }
          }

          while (v31 != v17);
          goto LABEL_83;
        }
      }
    }

    else
    {
      v41[0] = "requires attribute 'dilation_rates'";
      v42 = 259;
      mlir::OpState::emitOpError(this, v41, &v43);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

        v22 = __p;
        if (__p)
        {
          v23 = v50;
          v24 = __p;
          if (v50 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v50 = v22;
          operator delete(v24);
        }

        v17 = v47;
        if (!v47)
        {
          goto LABEL_85;
        }

        v25 = v48;
        v19 = v47;
        if (v48 == v47)
        {
          goto LABEL_84;
        }

        do
        {
          v27 = *--v25;
          v26 = v27;
          *v25 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v25 != v17);
        goto LABEL_83;
      }
    }
  }

  else
  {
    v41[0] = "requires attribute 'data_layout'";
    v42 = 259;
    mlir::OpState::emitOpError(this, v41, &v43);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
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

      v14 = __p;
      if (__p)
      {
        v15 = v50;
        v16 = __p;
        if (v50 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v50 = v14;
        operator delete(v16);
      }

      v17 = v47;
      if (!v47)
      {
        goto LABEL_85;
      }

      v18 = v48;
      v19 = v47;
      if (v48 == v47)
      {
        goto LABEL_84;
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
      goto LABEL_83;
    }
  }

  return v13;
}

uint64_t mlir::mps::detail::DepthwiseConv2DWeightsGradientOpGenericAdaptorBase::DepthwiseConv2DWeightsGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v54 = v6;
  if (!v6)
  {
    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      *(&v55 + 1) = "expected DictionaryAttr to set properties";
      v56 = 41;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v59 + 24 * v60;
      v23 = v55;
      *(v22 + 2) = v56;
      *v22 = v23;
      ++v60;
      if (v57)
      {
        mlir::InFlightDiagnostic::report(&v57);
      }
    }

    if (v68 != 1)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v66;
      v26 = __p;
      if (v66 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v66 = v24;
      operator delete(v26);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_77;
    }

    v27 = v64;
    v19 = v63;
    if (v64 == v63)
    {
LABEL_76:
      v64 = v17;
      operator delete(v19);
LABEL_77:
      if (v59 != &v62)
      {
        free(v59);
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
    goto LABEL_75;
  }

  v8 = mlir::DictionaryAttr::get(&v54, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 56;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v59 + 24 * v60;
        v11 = v55;
        *(v10 + 2) = v56;
        *v10 = v11;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v9);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v59 + 24 * v60;
          v13 = v55;
          *(v12 + 2) = v56;
          *v12 = v13;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if ((v68 & 1) == 0)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v66;
        v16 = __p;
        if (v66 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v66 = v14;
        operator delete(v16);
      }

      v17 = v63;
      if (!v63)
      {
        goto LABEL_77;
      }

      v18 = v64;
      v19 = v63;
      if (v64 == v63)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v54, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v57, a4);
    if (v57)
    {
      LODWORD(v55) = 3;
      v56 = 59;
      if (v60 >= v61)
      {
        if (v59 > &v55 || v59 + 24 * v60 <= &v55)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v59 + 24 * v60;
      v37 = v55;
      *(v36 + 2) = v56;
      *v36 = v37;
      ++v60;
      if (v57)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v55, v31);
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v59 + 24 * v60;
        v39 = v55;
        *(v38 + 2) = v56;
        *v38 = v39;
        ++v60;
        if (v57)
        {
          mlir::InFlightDiagnostic::report(&v57);
        }
      }
    }

    if ((v68 & 1) == 0)
    {
      return 0;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_77;
    }

    v43 = v64;
    v19 = v63;
    if (v64 == v63)
    {
      goto LABEL_76;
    }

    do
    {
      v45 = *--v43;
      v44 = v45;
      *v43 = 0;
      if (v45)
      {
        MEMORY[0x259C63150](v44, 0x1000C8077774924);
      }
    }

    while (v43 != v17);
LABEL_75:
    v19 = v63;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v54, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v57, a4);
      if (v57)
      {
        LODWORD(v55) = 3;
        v56 = 61;
        if (v60 >= v61)
        {
          if (v59 > &v55 || v59 + 24 * v60 <= &v55)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v59 + 24 * v60;
        v47 = v55;
        *(v46 + 2) = v56;
        *v46 = v47;
        ++v60;
        if (v57)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v55, v33);
          if (v60 >= v61)
          {
            if (v59 > &v55 || v59 + 24 * v60 <= &v55)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v59 + 24 * v60;
          v49 = v55;
          *(v48 + 2) = v56;
          *v48 = v49;
          ++v60;
          if (v57)
          {
            mlir::InFlightDiagnostic::report(&v57);
          }
        }
      }

      if (v68 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v58);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v54, "padding_style", 0xDuLL);
  *&v55 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v54, "strides", 7uLL);
    *&v55 = v50;
    if (v50)
    {
      v51 = v50;
      if (!mlir::DenseIntElementsAttr::classof(v50))
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[4] = v51;
    }

    v52 = mlir::DictionaryAttr::get(&v54, "weights_layout", 0xEuLL);
    *&v55 = v52;
    if (v52)
    {
      if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        a3(&v57, a4);
        goto LABEL_95;
      }

      a1[5] = v52;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v57, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v55);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = v33;
  v32 = 0x300000000;
  if (!*a2)
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v30, "data_layout", 0xB, *a2);
  if (v32 >= HIDWORD(v32))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v31 + 16 * v32);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v32 + 1;
  LODWORD(v32) = v32 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v30, "dilation_rates", 0xE, v7);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v31 + 16 * v32);
    *v10 = v8;
    v10[1] = v9;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v30, "explicit_padding", 0x10, v11);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v31 + 16 * v32);
    *v14 = v12;
    v14[1] = v13;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v30, "padding_style", 0xD, v15);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v31 + 16 * v32);
    *v18 = v16;
    v18[1] = v17;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v30, "strides", 7, v19);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v31 + 16 * v32);
    *v22 = v20;
    v22[1] = v21;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v30, "weights_layout", 0xE, v23);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v31 + 16 * v32);
    *v26 = v24;
    v26[1] = v25;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v27 = v31;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v31 == v33)
    {
      return DictionaryAttr;
    }

    goto LABEL_22;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v30, v31, v6);
  v27 = v31;
  if (v31 != v33)
  {
LABEL_22:
    free(v27);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::computePropertiesHash(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = HIDWORD(*a1);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v23, 0, v23, v24, &v22, &v21, &v20, &v19, &v18, &v17);
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    if (__n == 7)
    {
      if (!memcmp(__s1, "strides", 7uLL))
      {
        return a2[4];
      }
    }

    else if (__n == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      return *a2;
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    if (!memcmp(__s1, "weights_layout", 0xEuLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    if (a3 == 7)
    {
      result = memcmp(__s1, "strides", 7uLL);
      if (!result)
      {
        if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          v5[4] = v11;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }

    else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *result = v7;
      }

      else
      {
        *result = 0;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "padding_style", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[3] = v8;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "dilation_rates", 0xEuLL);
        if (result)
        {
          result = memcmp(__s1, "weights_layout", 0xEuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
              {
                v10 = a4;
              }

              else
              {
                v10 = 0;
              }

              v5[5] = v10;
            }

            else
            {
              v5[5] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[1] = v12;
        }

        else
        {
          v5[1] = 0;
        }

        break;
      case 16:
        result = memcmp(__s1, "explicit_padding", 0x10uLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[2] = v13;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::mps::DepthwiseConv2DWeightsGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "data_layout", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "dilation_rates", 0xEuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "explicit_padding", 0x10uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 0xDuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "weights_layout", 0xEuLL, v9);
  }
}

BOOL mlir::mps::DepthwiseConv2DWeightsGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 13, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v13, "weights_layout", 14, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3 + 5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::setPaddingStyle(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::setDataLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::setWeightsLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a5;
  v26 = a4;
  v24 = a6;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 32) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 24) = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a11;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 40) = a12;
  v23 = *(a2 + 72);
  if (v23 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v23) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthwiseConv2DWeightsGradientOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v31 = a4;
  v32 = a3;
  v30 = a5;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 40) = a11;
  __src = v37;
  v36 = 0x200000000;
  v22 = *a1;
  v23 = *a2;
  mlir::ValueRange::ValueRange(v34, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v26 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v33, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DWeightsGradientOp::inferReturnTypes(v22, v23, 1, v34[0], v34[1], Dictionary, v26, v27, v33[0], v33[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v28 = v36;
  v29 = *(a2 + 72);
  if (v29 + v36 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    memcpy((*(a2 + 64) + 8 * v29), __src, 8 * v36);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + v28;
  if (__src != v37)
  {
    free(__src);
  }
}

unint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v28 = a6;
  v29 = a5;
  v27 = a7;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 32) = a8;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a9;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) = a11;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a12;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 40) = a13;
  v24 = *(a2 + 72);
  if (a4 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v25 = 0;
    v26 = *(a2 + 64) + 8 * v24;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v25);
      *(v26 + 8 * v25++) = result;
    }

    while (a4 != v25);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + a4;
  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, unsigned int a12)
{
  v40 = a5;
  v41 = a4;
  v39 = a6;
  mlir::OperationState::addOperands(a2, &v41, 1uLL);
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 32) = a7;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a8;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 16) = a9;
  v18 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v42 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v43 = v18;
  v48 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v49 = &v42;
  v47 = a10;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v21 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 47) ^ v20);
  v44 = &v47;
  v45 = &v48;
  v46 = &v47;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v21 >> 47) ^ v21), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = ParametricStorageTypeImpl;
  v24 = *a1;
  v25 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v42 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v43 = v24;
  v48 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v49 = &v42;
  v47 = a11;
  v26 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v27 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v26 >> 47) ^ v26);
  v45 = &v48;
  v46 = &v47;
  v44 = &v47;
  v28 = mlir::StorageUniquer::getParametricStorageTypeImpl(v25, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v27 >> 47) ^ v27), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  *v29 = v28;
  v30 = *a1;
  v31 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v42 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v43 = v30;
  v48 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v49 = &v42;
  v47 = a12;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v33 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v32 >> 47) ^ v32);
  v44 = &v47;
  v45 = &v48;
  v46 = &v47;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v31, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v35 = *(a2 + 256);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 40) = result;
  v36 = *(a2 + 72);
  if (v36 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v36) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::DepthwiseConv2DWeightsGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v57 = *MEMORY[0x277D85DE8];
  v46 = a4;
  v47 = a3;
  v45 = a5;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 32) = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a7;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a8;
  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v54 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v53;
  v49 = a9;
  v21 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v22 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v21 >> 47) ^ v21);
  v48 = &v49;
  v55 = &v49;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v22 >> 47) ^ v22), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = ParametricStorageTypeImpl;
  v25 = *a1;
  v26 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v54 = v25;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v53;
  v49 = a10;
  v27 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v28 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v27 >> 47) ^ v27);
  v48 = &v49;
  v55 = &v49;
  p_src = &__src;
  v29 = mlir::StorageUniquer::getParametricStorageTypeImpl(v26, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *v30 = v29;
  v31 = *a1;
  v32 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v53 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v54 = v31;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51 = &v53;
  v49 = a11;
  v33 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v34 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v33 >> 47) ^ v33);
  v48 = &v49;
  v55 = &v49;
  p_src = &__src;
  v35 = mlir::StorageUniquer::getParametricStorageTypeImpl(v32, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v34 >> 47) ^ v34), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v48, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v55);
  v36 = *(a2 + 256);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 40) = v35;
  __src = v52;
  v51 = 0x200000000;
  v37 = *a1;
  v38 = *a2;
  mlir::ValueRange::ValueRange(&v55, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v41 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v53, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::DepthwiseConv2DWeightsGradientOp::inferReturnTypes(v37, v38, 1, v55, p_src, Dictionary, v41, v42, v53, v54, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v43 = v51;
  v44 = *(a2 + 72);
  if (v44 + v51 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v51)
  {
    memcpy((*(a2 + 64) + 8 * v44), __src, 8 * v51);
    LODWORD(v44) = *(a2 + 72);
  }

  *(a2 + 72) = v44 + v43;
  if (__src != v52)
  {
    free(__src);
  }
}