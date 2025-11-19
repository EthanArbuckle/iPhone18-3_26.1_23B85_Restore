uint64_t mlir::ub::PoisonOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "value", 5, *a2);
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

unint64_t mlir::ub::PoisonOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ub::PoisonOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ub::PoisonOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      v5 = result;
      v6 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(a4);
      result = v5;
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      *result = 0;
      result[1] = 0;
    }
  }

  return result;
}

uint64_t mlir::ub::PoisonOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "value", 5uLL, *a2);
  }

  return result;
}

uint64_t mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  v7 = *a1;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v32 = a4;
    v17 = a5;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    a5 = v17;
    a4 = v32;
    v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
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
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    return 1;
  }

LABEL_14:
  a4(&v36, a5);
  if (v36)
  {
    LODWORD(v33) = 3;
    *(&v33 + 1) = "attribute '";
    v34 = 11;
    if (v39 >= v40)
    {
      if (v38 > &v33 || v38 + 24 * v39 <= &v33)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v38 + 24 * v39;
    v19 = v33;
    *(v18 + 2) = v34;
    *v18 = v19;
    ++v39;
    if (v36)
    {
      v35 = 261;
      *&v33 = a2;
      *(&v33 + 1) = a3;
      mlir::Diagnostic::operator<<(&v37, &v33);
      if (v36)
      {
        LODWORD(v33) = 3;
        *(&v33 + 1) = "' failed to satisfy constraint: PoisonAttrInterface instance";
        v34 = 60;
        if (v39 >= v40)
        {
          if (v38 > &v33 || v38 + 24 * v39 <= &v33)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v20 = v38 + 24 * v39;
        v21 = v33;
        *(v20 + 2) = v34;
        *v20 = v21;
        ++v39;
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v45;
      v25 = __p;
      if (v45 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v45 = v23;
      operator delete(v25);
    }

    v26 = v42;
    if (v42)
    {
      v27 = v43;
      v28 = v42;
      if (v43 != v42)
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
        v28 = v42;
      }

      v43 = v26;
      operator delete(v28);
    }

    if (v38 != &v41)
    {
      free(v38);
    }
  }

  return v22;
}

BOOL mlir::ub::PoisonOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ub::PoisonAttrInterface>(a1, v2);
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ub::PoisonAttrInterface>(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  if (!v27)
  {
    return 1;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v27);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface]";
  *(&v28 + 1) = 79;
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

void mlir::ub::PoisonOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = *(a2 + 256);
    if (!v5)
    {
      operator new();
    }

    *v5 = a4;
    v5[1] = a5;
  }

  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

void mlir::ub::PoisonOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a5;
    v9[1] = a6;
  }

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
      *(v12 + 8 * v11) = mlir::TypeRange::dereference_iterator(a3, v11);
      ++v11;
    }

    while (a4 != v11);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + a4;
}

uint64_t mlir::ub::PoisonOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

mlir::MLIRContext *mlir::ub::PoisonOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v18 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v18);
  if (*a2)
  {
    return result;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
  result = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = *result;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    *a2 = result;
    a2[1] = 0;
    return result;
  }

  v16 = v5;
  v17 = result;
  mlir::ub::PoisonOp::populateDefaultProperties();
  result = v17;
  v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
  v7 = *(v16 + 8);
  v8 = *(v16 + 16);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
    goto LABEL_15;
  }

  v15 = v9[1];
  *a2 = result;
  a2[1] = v15;
  return result;
}

uint64_t mlir::ub::PoisonOp::verifyInvariantsImpl(mlir::ub::PoisonOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v6 = v2;
  if ((mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return 1;
}

uint64_t mlir::ub::PoisonOp::verifyInvariants(mlir::ub::PoisonOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v6 = v2;
  if ((mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return 1;
}

uint64_t mlir::ub::PoisonOp::parse(mlir::ub::PoisonOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v12 = 0uLL;
  v11 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  v10[0] = this;
  v10[1] = &v11;
  v10[2] = a2;
  v6 = mlir::NamedAttrList::get(a2 + 112, **(v5 + 96));
  if (v6)
  {
    if ((mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v6, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10) & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(*this + 160))(this))
  {
    if (!mlir::AsmParser::parseAttribute<mlir::ub::PoisonAttrInterface>(this, &v12, 0))
    {
      return 0;
    }

    if (v12)
    {
      v7 = *(a2 + 32);
      if (!v7)
      {
        operator new();
      }

      *v7 = v12;
    }

    if (((*(*this + 168))(this) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v10[0] = 0;
  if (((*(*this + 536))(this, v10) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 18);
  if (v8 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v8) = v10[0];
  ++*(a2 + 18);
  return 1;
}

void mlir::ub::PoisonOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v34[0] = "value";
  v34[1] = 5;
  v33 = 0x200000001;
  Context = mlir::Attribute::getContext((*this + 24));
  v5 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v5)
  {
    v6 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(v5);
    if (v6)
    {
      v7 = v6;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      if (mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id) == v7)
      {
        v9 = v32 + 16 * v33;
        *v9 = "value";
        v9[1] = 5;
        LODWORD(v33) = v33 + 1;
      }
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v32, v33);
  v12 = *this;
  v13 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v13)
  {
    v14 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(v13);
    v12 = *this;
  }

  else
  {
    v14 = 0;
  }

  v15 = mlir::Attribute::getContext((v12 + 24));
  v16 = mlir::MLIRContext::getAttributeUniquer(v15);
  if (v14 != mlir::StorageUniquer::getSingletonImpl(v16, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id))
  {
    v17 = (*(*a2 + 16))(a2);
    v18 = v17[4];
    if (v17[3] == v18)
    {
      llvm::raw_ostream::write(v17, "<", 1uLL);
      v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v18 = 60;
      ++v17[4];
      v19 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
      if (v19)
      {
LABEL_11:
        v20 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(v19);
        goto LABEL_14;
      }
    }

    v20 = 0;
LABEL_14:
    (*(*a2 + 40))(a2, v20);
    v21 = (*(*a2 + 16))(a2);
    v22 = v21[4];
    if (v21[3] == v22)
    {
      llvm::raw_ostream::write(v21, ">", 1uLL);
    }

    else
    {
      *v22 = 62;
      ++v21[4];
    }
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

void *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(void *result)
{
  if (result)
  {
    v1 = *result;
    {
      v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
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
      mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
      result = v12;
      v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
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

void *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
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
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    mlir::ub::__mlir_ods_local_attr_constraint_UBOps1();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
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
  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1970037110 ? (v7 = *(a3 + 4) == 101) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v12);
  if (v8 == 5 && *result == 1970037110 && *(result + 4) == 101)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(a4);
      *(v10 + 64) = result;
      *(v10 + 72) = v11;
    }

    else
    {
      result = 0;
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "value", 5uLL, v6);
  }

  return result;
}

mlir::MLIRContext *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return mlir::ub::PoisonOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::ub::PoisonOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::writeProperties;
  {
    v8 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::getEffects;
  {
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::ub::PoisonOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v8 = a1 + 64;
  v9 = *(a1 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a1 + 64 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  mlir::RegionRange::RegionRange(v15, v11, v10);
  v15[2] = a2;
  v15[3] = a3;
  result = *(v8 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (result)
  {
    v13 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(result);
    if (v13 < 8)
    {
      return 0;
    }

    else
    {
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v14) = v13 & 0xFFFFFFFFFFFFFFFBLL;
      ++*(a4 + 8);
      return 1;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  AncestorKey::AncestorKey();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::ub::PoisonOp::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    return 0;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v9 = a1;
  if ((mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v6, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return 1;
}

uint64_t mlir::Dialect::addAttribute<mlir::ub::PoisonAttr>(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(a1, &v13);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != &v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_2ub10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(1uLL, 0x400A2AC0F1uLL);
  v5 = v4;
  {
    v10 = v4;
    mlir::ub::PoisonOp::populateDefaultProperties();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJNSD_19PoisonAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJNSC_19PoisonAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  *(a2 + 144) = "ub.poison";
  *(a2 + 152) = 9;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface::Trait<Empty>]";
  v6 = 93;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 0;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 0;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

void anonymous namespace::UBInlinerInterface::~UBInlinerInterface(_anonymous_namespace_::UBInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseAttribute<mlir::ub::PoisonAttrInterface>(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v21 = 0;
  if (((*(*a1 + 440))(a1, &v21, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v21);
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

void mlir::func::FuncDialect::FuncDialect(mlir::func::FuncDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "func", 4, a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id);
  *v2 = &unk_286899048;
  mlir::func::FuncDialect::initialize(v2);
}

{
  v2 = mlir::Dialect::Dialect(this, "func", 4, a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id);
  *v2 = &unk_286899048;
  mlir::func::FuncDialect::initialize(v2);
}

void sub_2570268C0()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::func::CallOp,mlir::func::FuncOp,mlir::func::ReturnOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::cf::BranchOp,mlir::cf::CondBranchOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::func::FuncDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v13 = v5;
  if (!v5)
  {
    return 0;
  }

  mlir::SymbolRefAttr::getNestedReferences(&v13);
  if (v10 || *(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    return 0;
  }

  v13 = a3;
  return mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(a2, a5, &v12, &v13);
}

BOOL mlir::func::ConstantOp::isBuildableWith(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2 && (mlir::SymbolRefAttr::getNestedReferences(&v6), !v4))
  {
    return *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::ConstantOp,mlir::Type &,mlir::FlatSymbolRefAttr>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::func::ConstantOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ConstantOp,void>::id)
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

BOOL mlir::func::CallOp::verifySymbolUses(mlir::func::CallOp *this, mlir::SymbolTableCollection *a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "callee", 6), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v4 + 56, "callee", 6uLL);
  }

  if (!InherentAttr || (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v7 = 0) : (v7 = InherentAttr), (v88 = v7) == 0))
  {
    v84 = 0;
    goto LABEL_39;
  }

  v8 = InherentAttr;
  mlir::SymbolRefAttr::getNestedReferences(&v88);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v84 = v10;
  if (!v10)
  {
LABEL_39:
    *&v85 = "requires a 'callee' symbol reference attribute";
    v87 = 259;
    mlir::OpState::emitOpError(this, &v85, &v88);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
    if (v88)
    {
      mlir::InFlightDiagnostic::report(&v88);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v27 = v96;
      if (v96)
      {
        v28 = v97;
        v29 = v96;
        if (v97 != v96)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v96;
        }

        v97 = v27;
        operator delete(v29);
      }

      v22 = v94;
      if (!v94)
      {
        goto LABEL_139;
      }

      v30 = v95;
      v24 = v94;
      if (v95 == v94)
      {
        goto LABEL_138;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          MEMORY[0x259C63150](v31, 0x1000C8077774924);
        }
      }

      while (v30 != v22);
      goto LABEL_137;
    }

    return v18;
  }

  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *this, v10);
  if (!v11 || *(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v83 = 257;
    mlir::OpState::emitOpError(this, &v81, &v88);
    if (v88)
    {
      LODWORD(v85) = 3;
      *(&v85 + 1) = "'";
      v86 = 1;
      if (v91 >= v92)
      {
        if (v90 > &v85 || (v90 + 24 * v91) <= &v85)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v90 + 24 * v91;
      v13 = v85;
      *(v12 + 2) = v86;
      *v12 = v13;
      ++v91;
    }

    *&v85 = mlir::SymbolRefAttr::getRootReference(&v84);
    Value = mlir::StringAttr::getValue(&v85);
    if (v88)
    {
      v87 = 261;
      *&v85 = Value;
      *(&v85 + 1) = v15;
      mlir::Diagnostic::operator<<(v89, &v85);
      if (v88)
      {
        LODWORD(v85) = 3;
        *(&v85 + 1) = "' does not reference a valid function";
        v86 = 37;
        if (v91 >= v92)
        {
          if (v90 > &v85 || (v90 + 24 * v91) <= &v85)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v90 + 24 * v91;
        v17 = v85;
        *(v16 + 2) = v86;
        *v16 = v17;
        ++v91;
      }
    }

    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
    if (v88)
    {
      mlir::InFlightDiagnostic::report(&v88);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v19 = v96;
      if (v96)
      {
        v20 = v97;
        v21 = v96;
        if (v97 != v96)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = v96;
        }

        v97 = v19;
        operator delete(v21);
      }

      v22 = v94;
      if (!v94)
      {
        goto LABEL_139;
      }

      v23 = v95;
      v24 = v94;
      if (v95 == v94)
      {
LABEL_138:
        v95 = v22;
        operator delete(v24);
LABEL_139:
        if (v90 != &v93)
        {
          free(v90);
        }

        return v18;
      }

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
LABEL_137:
      v24 = v94;
      goto LABEL_138;
    }

    return v18;
  }

  v88 = *(v11 + 16 * ((*(v11 + 44) >> 23) & 1) + 72);
  v80 = mlir::TypeAttr::getValue(&v88);
  NumInputs = mlir::FunctionType::getNumInputs(&v80);
  if ((*(*this + 46) & 0x80) != 0)
  {
    if (NumInputs == *(*this + 68))
    {
      goto LABEL_57;
    }

LABEL_121:
    *&v85 = "incorrect number of operands for callee";
    v87 = 259;
    mlir::OpState::emitOpError(this, &v85, &v88);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
    if (v88)
    {
      mlir::InFlightDiagnostic::report(&v88);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v72 = v96;
      if (v96)
      {
        v73 = v97;
        v74 = v96;
        if (v97 != v96)
        {
          do
          {
            v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
          }

          while (v73 != v72);
          v74 = v96;
        }

        v97 = v72;
        operator delete(v74);
      }

      v22 = v94;
      if (!v94)
      {
        goto LABEL_139;
      }

      v75 = v95;
      v24 = v94;
      if (v95 == v94)
      {
        goto LABEL_138;
      }

      do
      {
        v77 = *--v75;
        v76 = v77;
        *v75 = 0;
        if (v77)
        {
          MEMORY[0x259C63150](v76, 0x1000C8077774924);
        }
      }

      while (v75 != v22);
      goto LABEL_137;
    }

    return v18;
  }

  if (NumInputs)
  {
    goto LABEL_121;
  }

LABEL_57:
  v34 = mlir::FunctionType::getNumInputs(&v80);
  if (!v34)
  {
LABEL_61:
    if (mlir::FunctionType::getNumResults(&v80) != *(*this + 36))
    {
      *&v85 = "incorrect number of results for callee";
      v87 = 259;
      mlir::OpState::emitOpError(this, &v85, &v88);
      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
      if (v88)
      {
        mlir::InFlightDiagnostic::report(&v88);
      }

      if (v99 == 1)
      {
        mlir::Diagnostic::~Diagnostic(v89);
      }

      return v18;
    }

    v79 = 0;
    NumResults = mlir::FunctionType::getNumResults(&v80);
    if (!NumResults)
    {
      return 1;
    }

    v40 = NumResults;
    v41 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
    if (*mlir::FunctionType::getResults(&v80) != v41)
    {
      goto LABEL_64;
    }

    v79 = 1;
    if (v40 == 1)
    {
      return 1;
    }

    v63 = *(*this - 24) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getResults(&v80) + 8) == v63)
    {
      v79 = 2;
      if (v40 == 2)
      {
        return 1;
      }

      v64 = *(*this - 40) & 0xFFFFFFFFFFFFFFF8;
      if (*(mlir::FunctionType::getResults(&v80) + 16) == v64)
      {
        v79 = 3;
        if (v40 == 3)
        {
          return 1;
        }

        v65 = *(*this - 56) & 0xFFFFFFFFFFFFFFF8;
        if (*(mlir::FunctionType::getResults(&v80) + 24) == v65)
        {
          v79 = 4;
          if (v40 == 4)
          {
            return 1;
          }

          v66 = *(*this - 72) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::FunctionType::getResults(&v80) + 32) == v66)
          {
            v79 = 5;
            if (v40 == 5)
            {
              return 1;
            }

            v67 = *(*this - 88) & 0xFFFFFFFFFFFFFFF8;
            if (*(mlir::FunctionType::getResults(&v80) + 40) == v67)
            {
              v79 = 6;
              if (v40 == 6)
              {
                return 1;
              }

              v68 = 6;
              while (1)
              {
                v69 = v68 + 1;
                v70 = *this - 16 * (v68 + 1);
                if (v68 > 5)
                {
                  v70 = *this - 24 * (v68 - 5) - 96;
                }

                v71 = *(v70 + 8) & 0xFFFFFFFFFFFFFFF8;
                if (*(mlir::FunctionType::getResults(&v80) + 8 * v68) != v71)
                {
                  break;
                }

                v79 = ++v68;
                if (v40 == v69)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }

LABEL_64:
    *&v81 = "result type mismatch at index ";
    v83 = 259;
    mlir::OpState::emitOpError(this, &v81, &v85);
    mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v85, &v79);
    mlir::InFlightDiagnostic::InFlightDiagnostic(&v88, v42);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v85);
    mlir::Diagnostic::attachNote();
  }

  v35 = 0;
  v36 = v34;
  v37 = 24;
  while (1)
  {
    v38 = *(*(*(*this + 72) + v37) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getInputs(&v80) + 8 * v35) != v38)
    {
      break;
    }

    ++v35;
    v37 += 32;
    if (v36 == v35)
    {
      goto LABEL_61;
    }
  }

  *&v85 = "operand type mismatch: expected operand type ";
  v87 = 259;
  mlir::OpState::emitOpError(this, &v85, &v88);
  Inputs = mlir::FunctionType::getInputs(&v80);
  if (v88)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v81, *(Inputs + 8 * v35));
    if (v91 >= v92)
    {
      if (v90 > &v81 || (v90 + 24 * v91) <= &v81)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v44 = v90 + 24 * v91;
    v45 = v81;
    *(v44 + 2) = v82;
    *v44 = v45;
    v46 = ++v91;
    if (v88)
    {
      LODWORD(v81) = 3;
      *(&v81 + 1) = ", but provided ";
      v82 = 15;
      if (v46 >= v92)
      {
        if (v90 > &v81 || (v90 + 24 * v46) <= &v81)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = v90 + 24 * v91;
      v48 = v81;
      *(v47 + 2) = v82;
      *v47 = v48;
      ++v91;
      if (v88)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v81, *(*(*(*this + 72) + v37) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v91 >= v92)
        {
          if (v90 > &v81 || (v90 + 24 * v91) <= &v81)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v49 = v90 + 24 * v91;
        v50 = v81;
        *(v49 + 2) = v82;
        *v49 = v50;
        v51 = ++v91;
        if (v88)
        {
          LODWORD(v81) = 3;
          *(&v81 + 1) = " for operand number ";
          v82 = 20;
          if (v51 >= v92)
          {
            if (v90 > &v81 || (v90 + 24 * v51) <= &v81)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v52 = v90 + 24 * v91;
          v53 = v81;
          *(v52 + 2) = v82;
          *v52 = v53;
          v54 = ++v91;
          if (v88)
          {
            LODWORD(v81) = 5;
            *(&v81 + 1) = v35;
            if (v54 >= v92)
            {
              if (v90 > &v81 || (v90 + 24 * v54) <= &v81)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v55 = v90 + 24 * v91;
            v56 = v81;
            *(v55 + 2) = v82;
            *v55 = v56;
            ++v91;
          }
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v88);
  if (v88)
  {
    mlir::InFlightDiagnostic::report(&v88);
  }

  if (v99)
  {
    if (v98 != &v99)
    {
      free(v98);
    }

    v57 = v96;
    if (v96)
    {
      v58 = v97;
      v59 = v96;
      if (v97 != v96)
      {
        do
        {
          v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
        }

        while (v58 != v57);
        v59 = v96;
      }

      v97 = v57;
      operator delete(v59);
    }

    v22 = v94;
    if (!v94)
    {
      goto LABEL_139;
    }

    v60 = v95;
    v24 = v94;
    if (v95 == v94)
    {
      goto LABEL_138;
    }

    do
    {
      v62 = *--v60;
      v61 = v62;
      *v60 = 0;
      if (v62)
      {
        MEMORY[0x259C63150](v61, 0x1000C8077774924);
      }
    }

    while (v60 != v22);
    goto LABEL_137;
  }

  return v18;
}

uint64_t mlir::Diagnostic::operator<<<mlir::ValueTypeRange<mlir::ResultRange>,mlir::Type>(uint64_t a1, uint64_t *a2)
{
  v4 = ", ";
  llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(*a2, a2[1], a2[2], a2[3], a1, a1, &v4);
  return a1;
}

uint64_t mlir::func::CallIndirectOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = *(*(a1 + 72) + 24);
  v13 = &v12;
  v11[0] = v4;
  result = mlir::Value::getDefiningOp(v11);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::SymbolRefAttr>::match(&v13, result);
    if (result)
    {
      v6 = *(a1 + 36);
      v7 = (a1 - 16);
      if (!v6)
      {
        v7 = 0;
      }

      v13 = v7;
      v14 = v6;
      mlir::ResultRange::getTypes(&v13, v11);
      if ((*(a1 + 46) & 0x80) != 0)
      {
        v8 = *(a1 + 72);
        v9 = *(a1 + 68) - 1;
      }

      else
      {
        v8 = 0;
        v9 = -1;
      }

      v13 = (v8 + 32);
      v14 = v9;
      v10 = mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v12, v11, &v13);
      (*(*a2 + 8))(a2, a1, v10);
      return 1;
    }
  }

  return result;
}

BOOL mlir::func::ConstantOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  *&v35 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v35);
  Value = mlir::StringAttr::getValue(&RootReference);
  v6 = v5;
  v7 = *this;
  v8 = *(*this - 1);
  Context = mlir::Attribute::getContext((*this + 24));
  LOWORD(v41) = 261;
  RootReference = Value;
  v39 = v6;
  v11 = mlir::StringAttr::get(Context, &RootReference, v10);
  v12 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, v7, v11);
  if (v12 && *(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    RootReference = *(v12 + 2 * ((*(v12 + 11) >> 23) & 1) + 9);
    if (mlir::TypeAttr::getValue(&RootReference) == (v8 & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    *&v35 = "reference to function with mismatched type";
    v37 = 259;
    mlir::OpState::emitOpError(this, &v35, &RootReference);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RootReference);
    if (RootReference)
    {
      mlir::InFlightDiagnostic::report(&RootReference);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v47;
        v28 = __p;
        if (v47 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v47 = v26;
        operator delete(v28);
      }

      v21 = v44;
      if (!v44)
      {
        goto LABEL_45;
      }

      v29 = v45;
      v23 = v44;
      if (v45 == v44)
      {
        goto LABEL_44;
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

      while (v29 != v21);
      goto LABEL_43;
    }
  }

  else
  {
    v34 = 257;
    mlir::OpState::emitOpError(this, &v33, &RootReference);
    if (RootReference)
    {
      LODWORD(v35) = 3;
      *(&v35 + 1) = "reference to undefined function '";
      v36 = 33;
      if (v41 >= v42)
      {
        if (v40 > &v35 || v40 + 24 * v41 <= &v35)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v40 + 24 * v41;
      v14 = v35;
      *(v13 + 2) = v36;
      *v13 = v14;
      ++v41;
      if (RootReference)
      {
        v37 = 261;
        *&v35 = Value;
        *(&v35 + 1) = v6;
        mlir::Diagnostic::operator<<(&v39, &v35);
        if (RootReference)
        {
          LODWORD(v35) = 3;
          *(&v35 + 1) = "'";
          v36 = 1;
          if (v41 >= v42)
          {
            if (v40 > &v35 || v40 + 24 * v41 <= &v35)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v40 + 24 * v41;
          v16 = v35;
          *(v15 + 2) = v36;
          *v15 = v16;
          ++v41;
        }
      }
    }

    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RootReference);
    if (RootReference)
    {
      mlir::InFlightDiagnostic::report(&RootReference);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v47;
        v20 = __p;
        if (v47 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v47 = v18;
        operator delete(v20);
      }

      v21 = v44;
      if (!v44)
      {
        goto LABEL_45;
      }

      v22 = v45;
      v23 = v44;
      if (v45 == v44)
      {
LABEL_44:
        v45 = v21;
        operator delete(v23);
LABEL_45:
        if (v40 != &v43)
        {
          free(v40);
        }

        return v17;
      }

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
LABEL_43:
      v23 = v44;
      goto LABEL_44;
    }
  }

  return v17;
}

uint64_t mlir::func::ConstantOp::getValue(mlir::func::ConstantOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

void mlir::func::FuncOp::create(uint64_t a1, const llvm::Twine *a2, size_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v13[38] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v11[0] = mlir::Attribute::getContext(&v12);
  memset(&v11[1], 0, 24);
  mlir::OperationState::OperationState(v13, v12, "func.func", 9);
  mlir::func::FuncOp::build(v11, v13, a2, a3, a4, a5, a6);
}

{
  v13[38] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v11[0] = mlir::Attribute::getContext(&v12);
  memset(&v11[1], 0, 24);
  mlir::OperationState::OperationState(v13, v12, "func.func", 9);
  mlir::func::FuncOp::build(v11, v13, a2, a3, a4, a5, a6);
}

void mlir::func::FuncOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v19 = 261;
  v18[0] = a3;
  v18[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v18, a3);
  Context = mlir::Attribute::getContext(a2);
  v22 = 261;
  v20 = "sym_name";
  v21 = 8;
  v14 = mlir::StringAttr::get(Context, &v20, v13);
  mlir::NamedAttribute::NamedAttribute(v23, v14, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v23[0], v23[1]);
  v15 = *(*(*(a2 + 8) + 96) + 8);
  v16 = mlir::TypeAttr::get(a5);
  mlir::NamedAttribute::NamedAttribute(&v20, v15, v16);
  mlir::NamedAttrList::push_back(a2 + 112, v20, v21);
  *(a2 + 192) = 0;
  v17 = *(a2 + 120);
  if (v17 + ((16 * a7) >> 4) > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a7)
  {
    memcpy((*(a2 + 112) + 16 * v17), a6, 16 * a7);
    LODWORD(v17) = *(a2 + 120);
  }

  *(a2 + 120) = v17 + a7;
  mlir::OperationState::addRegion(a2);
}

void mlir::func::FuncOp::create(uint64_t a1, const llvm::Twine *a2, size_t a3, uint64_t a4, void *a5)
{
  v15[38] = *MEMORY[0x277D85DE8];
  llvm::SmallVector<mlir::NamedAttribute,8u>::SmallVector<mlir::Operation::dialect_attr_iterator>(&v13, a5);
  v9 = v13;
  v10 = v14;
  v12 = a1;
  v11[0] = mlir::Attribute::getContext(&v12);
  memset(&v11[1], 0, 24);
  mlir::OperationState::OperationState(v15, v12, "func.func", 9);
  mlir::func::FuncOp::build(v11, v15, a2, a3, a4, v9, v10);
}

void mlir::func::FuncOp::print(mlir::func::FuncOp *this, mlir::OpAsmPrinter *a2)
{
  v4 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  v9 = *(*(*(*this + 48) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v9);
  v7 = *(*(*this + 48) + 96);
  mlir::function_interface_impl::printFunctionOp(a2, v4, InterfaceFor, 0, Value, v8, *v7, v7[2]);
}

void mlir::func::FuncOp::cloneInto(mlir::Operation **a1, unsigned int *a2, mlir::IRMapping *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0;
  *v33 = 0u;
  v35 = &v37;
  v36 = 0;
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v7)
  {
    v8 = Value;
    v9 = (Value + 16 * v7);
    do
    {
      Name = mlir::NamedAttribute::getName(v8);
      v12 = *(v8 + 1);
      v31 = Name;
      v32 = v12;
      *&v38 = Name;
      DWORD2(v38) = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(v33, &v38, &v38 + 2, &AttrDictionary);
      if (v41[0] == 1)
      {
        v13 = v36;
        *(AttrDictionary + 2) = v36;
        v37 = &v32;
        *&v38 = &v31;
        if (v13 < HIDWORD(v36))
        {
          v10 = (v35 + 16 * v13);
          *v10 = v31;
          v10[1] = v32;
          LODWORD(v36) = v36 + 1;
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(&v35, &std::piecewise_construct, &v38, &v37);
        }
      }

      v8 = (v8 + 16);
    }

    while (v8 != v9);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v15)
  {
    v16 = v14;
    v17 = (v14 + 16 * v15);
    do
    {
      v19 = mlir::NamedAttribute::getName(v16);
      v20 = *(v16 + 1);
      v31 = v19;
      v32 = v20;
      *&v38 = v19;
      DWORD2(v38) = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(v33, &v38, &v38 + 2, &AttrDictionary);
      if (v41[0] == 1)
      {
        v21 = v36;
        *(AttrDictionary + 2) = v36;
        v37 = &v32;
        *&v38 = &v31;
        if (v21 < HIDWORD(v36))
        {
          v18 = (v35 + 16 * v21);
          *v18 = v31;
          v18[1] = v32;
          LODWORD(v36) = v36 + 1;
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(&v35, &std::piecewise_construct, &v38, &v37);
        }
      }

      v16 = (v16 + 16);
    }

    while (v16 != v17);
  }

  v22 = v35;
  v23 = v36;
  AttrDictionary = v41;
  v40 = 0x300000000;
  if (v36 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    v24 = (v35 + 16 * v36);
    v25 = AttrDictionary;
    do
    {
      v26 = *v22;
      v27 = v22[1];
      v22 += 2;
      mlir::NamedAttribute::NamedAttribute(&v38, v26, v27);
      *v25++ = v38;
    }

    while (v22 != v24);
    v28 = v40;
  }

  else
  {
    v28 = 0;
  }

  LODWORD(v40) = v28 + v23;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v30 = mlir::DictionaryAttr::get(Context, AttrDictionary, v40);
  mlir::Operation::setAttrs(a2, v30);
  mlir::Region::cloneInto((((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10)), (((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10]), a3);
  if (AttrDictionary != v41)
  {
    free(AttrDictionary);
  }

  if (v35 != &v37)
  {
    free(v35);
  }

  llvm::deallocate_buffer(v33[0], (16 * v34));
}

void mlir::func::FuncOp::clone(mlir::Operation **this)
{
  v1[0] = 0;
  v1[1] = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  mlir::func::FuncOp::clone(this, v1);
}

unint64_t mlir::func::detail::CallIndirectOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::func::detail::CallIndirectOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "uncDialectE";
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
      v28 = &byte_25739274B[v6];
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
  v25 = &byte_25739274B[v23];
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
  if (byte_25739274B[v5])
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

void *mlir::func::CallIndirectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *(a2 + 24);
  if (v7 >= *(a2 + 28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 16) + 8 * v7) = a3;
  ++*(a2 + 24);
  mlir::OperationState::addOperands(a2, a4, a5);
  v12 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::FunctionType::getResults(&v12);
  v10 = 8 * v9;
  v11 = *(a2 + 72);
  if (v11 + ((8 * v9) >> 3) > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v9)
  {
    result = memcpy((*(a2 + 64) + 8 * v11), result, v10);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + (v10 >> 3);
  return result;
}

unint64_t mlir::func::CallIndirectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
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

unint64_t mlir::func::CallIndirectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::func::CallIndirectOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v62 = 261;
    v60 = "operand";
    v61 = 7;
    mlir::Operation::emitOpError(&v65, v2, &v60);
    if (v65)
    {
      LODWORD(v63) = 3;
      *(&v63 + 1) = " #";
      v64 = 2;
      if (v68 >= v69)
      {
        if (v67 > &v63 || v67 + 24 * v68 <= &v63)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = v67 + 24 * v68;
      v5 = v63;
      *(v4 + 2) = v64;
      *v4 = v5;
      v6 = ++v68;
      if (v65)
      {
        LODWORD(v63) = 5;
        *(&v63 + 1) = 0;
        if (v6 >= v69)
        {
          if (v67 > &v63 || v67 + 24 * v6 <= &v63)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v67 + 24 * v68;
        v8 = v63;
        *(v7 + 2) = v64;
        *v7 = v8;
        v9 = ++v68;
        if (v65)
        {
          LODWORD(v63) = 3;
          *(&v63 + 1) = " must be function type, but got ";
          v64 = 32;
          if (v9 >= v69)
          {
            if (v67 > &v63 || v67 + 24 * v9 <= &v63)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v10 = v67 + 24 * v68;
          v11 = v63;
          *(v10 + 2) = v64;
          *v10 = v11;
          ++v68;
          if (v65)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v63, v3);
            if (v68 >= v69)
            {
              if (v67 > &v63 || v67 + 24 * v68 <= &v63)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v12 = v67 + 24 * v68;
            v13 = v63;
            *(v12 + 2) = v64;
            *v12 = v13;
            ++v68;
          }
        }
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v74;
        v17 = __p;
        if (v74 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v74 = v15;
        operator delete(v17);
      }

      v18 = v71;
      if (v71)
      {
        v19 = v72;
        v20 = v71;
        if (v72 != v71)
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
          v20 = v71;
        }

        v72 = v18;
        operator delete(v20);
      }

      if (v67 != v70)
      {
        free(v67);
      }
    }

    if (!v14)
    {
      return 0;
    }
  }

  v23 = *this;
  v24 = *(*this + 9);
  if (*(*this + 9))
  {
    v25 = *this - 16;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    for (i = 0; i != v24; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v25, i);
    }

    v23 = *this;
  }

  *&v63 = *(*(*(v23 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Inputs = mlir::FunctionType::getInputs(&v63);
  v29 = v28;
  v30 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v31 = *(v30 + 17);
    v32 = *(v30 + 9);
    v33 = v31 - 1;
  }

  else
  {
    v32 = 0;
    v33 = -1;
  }

  v60 = (v32 + 32);
  v61 = v33;
  mlir::OperandRange::getType(&v60, &v65);
  if (v29 != v67 - v66)
  {
LABEL_54:
    v60 = "failed to verify that callee input types match argument types";
    v62 = 259;
    mlir::OpState::emitOpError(this, &v60, &v65);
    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v74;
        v47 = __p;
        if (v74 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v74 = v45;
        operator delete(v47);
      }

      v48 = v71;
      if (!v71)
      {
        goto LABEL_89;
      }

      v49 = v72;
      v50 = v71;
      if (v72 == v71)
      {
        goto LABEL_88;
      }

      do
      {
        v52 = *--v49;
        v51 = v52;
        *v49 = 0;
        if (v52)
        {
          MEMORY[0x259C63150](v51, 0x1000C8077774924);
        }
      }

      while (v49 != v48);
      goto LABEL_87;
    }

    return v44;
  }

  if (v29)
  {
    v34 = 8 * v29;
    v35 = v65 + 32 * v66 + 24;
    while (*Inputs == (*(*v35 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      ++Inputs;
      v35 += 32;
      v34 -= 8;
      if (!v34)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_54;
  }

LABEL_46:
  *&v63 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Results = mlir::FunctionType::getResults(&v63);
  v38 = v37;
  v39 = *(*this + 9);
  v40 = (*this - 16);
  if (!v39)
  {
    v40 = 0;
  }

  v60 = v40;
  v61 = v39;
  mlir::ResultRange::getType(&v60, &v65);
  v41 = v66;
  if (v38 == v67 - v66)
  {
    if (!v38)
    {
      return 1;
    }

    v42 = v65;
    v43 = 8 * v38;
    while (*Results == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v42, v41) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      ++Results;
      ++v41;
      v43 -= 8;
      if (!v43)
      {
        return 1;
      }
    }
  }

  v60 = "failed to verify that callee result types match result types";
  v62 = 259;
  mlir::OpState::emitOpError(this, &v60, &v65);
  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v76 == 1)
  {
    if (v75 != &v76)
    {
      free(v75);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v74;
      v55 = __p;
      if (v74 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v74 = v53;
      operator delete(v55);
    }

    v48 = v71;
    if (!v71)
    {
      goto LABEL_89;
    }

    v56 = v72;
    v50 = v71;
    if (v72 == v71)
    {
LABEL_88:
      v72 = v48;
      operator delete(v50);
LABEL_89:
      if (v67 != v70)
      {
        free(v67);
      }

      return v44;
    }

    do
    {
      v58 = *--v56;
      v57 = v58;
      *v56 = 0;
      if (v58)
      {
        MEMORY[0x259C63150](v57, 0x1000C8077774924);
      }
    }

    while (v56 != v48);
LABEL_87:
    v50 = v71;
    goto LABEL_88;
  }

  return v44;
}

uint64_t mlir::func::CallIndirectOp::parse(mlir::func::CallIndirectOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v25[16] = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  v24[0] = v25;
  v24[1] = 0x400000000;
  v18[1] = 1;
  v19 = 0;
  v18[0] = &v19;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v21, 1) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (((*(*this + 280))(this) & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 720))(this, v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    goto LABEL_12;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_12;
  }

  v23[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, v23))
  {
    goto LABEL_12;
  }

  v19 = v23[0];
  v17 = v23[0];
  if (*(*v23[0] + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v7 = (*(*this + 16))(this);
    v16 = 257;
    (*(*this + 24))(v23, this, v7, v15);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v23, "'callee' must be function type, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v8, &v17);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
    goto LABEL_13;
  }

  Results = mlir::FunctionType::getResults(v23);
  mlir::OperationState::addTypes(a2, Results, v12);
  if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v20, v18, v5, a2 + 16))
  {
    v15[0] = *v18[0];
    v23[0] = mlir::FunctionType::getInputs(v15);
    v23[1] = v13;
    v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v24, v23, v6, a2 + 16) & 1;
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

LABEL_13:
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  return v10;
}

uint64_t mlir::func::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::func::detail::CallOpGenericAdaptorBase::getCallee(mlir::func::detail::CallOpGenericAdaptorBase *this)
{
  v2 = *(this + 3);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

uint64_t mlir::func::CallOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'func.call' op requires attribute 'callee'";
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

uint64_t mlir::func::CallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v33 = v6;
  if (!v6)
  {
    a3(v36, a4);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = "expected DictionaryAttr to set properties";
      v35 = 41;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v37 + 24 * v38;
      v25 = v34;
      *(v24 + 2) = v35;
      *v24 = v25;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }

    if (v46 != 1)
    {
      return 0;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v44;
      v28 = __p;
      if (v44 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v44 = v26;
      operator delete(v28);
    }

    v19 = v41;
    if (!v41)
    {
      goto LABEL_51;
    }

    v29 = v42;
    v21 = v41;
    if (v42 == v41)
    {
      goto LABEL_50;
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

    while (v29 != v19);
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v33, "callee", 6uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v36[0] = v10;
  if (v10)
  {
    mlir::SymbolRefAttr::getNestedReferences(v36);
    if (!v11)
    {
      *a1 = v9;
      return 1;
    }
  }

  a3(v36, a4);
  if (v36[0])
  {
    LODWORD(v34) = 3;
    v35 = 51;
    if (v38 >= v39)
    {
      if (v37 > &v34 || v37 + 24 * v38 <= &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v37 + 24 * v38;
    v13 = v34;
    *(v12 + 2) = v35;
    *v12 = v13;
    ++v38;
    if (v36[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v34, v9);
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v37 + 24 * v38;
      v15 = v34;
      *(v14 + 2) = v35;
      *v14 = v15;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }
  }

  if ((v46 & 1) == 0)
  {
    return 0;
  }

  if (v45 != &v46)
  {
    free(v45);
  }

  v16 = __p;
  if (__p)
  {
    v17 = v44;
    v18 = __p;
    if (v44 != __p)
    {
      do
      {
        v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
      }

      while (v17 != v16);
      v18 = __p;
    }

    v44 = v16;
    operator delete(v18);
  }

  v19 = v41;
  if (v41)
  {
    v20 = v42;
    v21 = v41;
    if (v42 == v41)
    {
LABEL_50:
      v42 = v19;
      operator delete(v21);
      goto LABEL_51;
    }

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
LABEL_49:
    v21 = v41;
    goto LABEL_50;
  }

LABEL_51:
  if (v37 != &v40)
  {
    free(v37);
  }

  return 0;
}

uint64_t mlir::func::CallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "callee", 6, *a2);
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

unint64_t mlir::func::CallOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::func::CallOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1819042147 ? (v4 = *(a3 + 4) == 25957) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::func::CallOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6 && *a2 == 1819042147 && *(a2 + 4) == 25957)
  {
    v11[3] = v4;
    v11[4] = v5;
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      v11[0] = v7;
      if (v7)
      {
        v8 = result;
        mlir::SymbolRefAttr::getNestedReferences(v11);
        result = v8;
        if (v10)
        {
          v7 = 0;
        }

        else
        {
          v7 = a4;
        }
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

uint64_t mlir::func::CallOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "callee", 6uLL, *a2);
  }

  return result;
}

uint64_t mlir::func::CallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v2) & 1;
}

uint64_t mlir::func::CallOp::getCallee(mlir::func::CallOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

uint64_t mlir::func::CallOp::setCallee(uint64_t a1, size_t a2, const llvm::Twine *a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::SymbolRefAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void *mlir::func::CallOp::build(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unint64_t a5)
{
  mlir::OperationState::addOperands(a2, a4, a5);
  v8 = mlir::SymbolRefAttr::get(a3, v7);
  Context = mlir::Attribute::getContext(a2);
  v17 = 261;
  v16[0] = "callee";
  v16[1] = 6;
  v11 = mlir::StringAttr::get(Context, v16, v10);
  mlir::NamedAttribute::NamedAttribute(v18, v11, v8);
  mlir::NamedAttrList::push_back(a2 + 112, v18[0], v18[1]);
  v16[0] = *&a3[4 * ((a3[11] >> 23) & 1) + 18];
  v16[0] = mlir::TypeAttr::getValue(v16);
  result = mlir::FunctionType::getResults(v16);
  v14 = 8 * v13;
  v15 = *(a2 + 72);
  if (v15 + ((8 * v13) >> 3) > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13)
  {
    result = memcpy((*(a2 + 64) + 8 * v15), result, v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + (v14 >> 3);
  return result;
}

unint64_t mlir::func::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  mlir::OperationState::addOperands(a2, a6, a7);
  Context = mlir::Attribute::getContext(a2);
  v19 = 261;
  v18[0] = "callee";
  v18[1] = 6;
  v13 = mlir::StringAttr::get(Context, v18, v12);
  mlir::NamedAttribute::NamedAttribute(v20, v13, a3);
  result = mlir::NamedAttrList::push_back(a2 + 112, v20[0], v20[1]);
  v15 = *(a2 + 72);
  if (a5 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a5)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a4, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a5 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a5;
  return result;
}

{
  v12 = mlir::SymbolRefAttr::get(a3);

  return mlir::func::CallOp::build(v12, a2, v12, a4, a5, a6, a7);
}

{
  result = mlir::OperationState::addOperands(a2, a6, a7);
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

unint64_t mlir::func::CallOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = *a1;
  v18 = 261;
  v17[0] = a3;
  v17[1] = a4;
  v14 = mlir::StringAttr::get(v13, v17, a3);
  v15 = mlir::SymbolRefAttr::get(v14);
  return mlir::func::CallOp::build(v15, a2, v15, a5, a6, a7, a8);
}

unint64_t mlir::func::CallOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, const llvm::Twine *a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::SymbolRefAttr::get(*a1, a5, a6);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = result;
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

uint64_t mlir::func::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::func::CallOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v18[0] = *this;
    if (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v1, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      v3 = *(*this + 9);
      if (*(*this + 9))
      {
        v4 = *this - 16;
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
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'callee'";
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

uint64_t mlir::func::CallOp::parse(mlir::func::CallOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v23[16] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22[0] = v23;
  v22[1] = 0x400000000;
  Inputs = 0;
  v20 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if ((mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(this, &v21, v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v21)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *v8 = v21;
  }

  if ((*(*this + 280))(this) & 1) != 0 && (v9 = (*(*this + 40))(this), ((*(*this + 720))(this, v22, 0, 1, 0xFFFFFFFFLL)) && ((*(*this + 296))(this) & 1) != 0 && (v18 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((v10 = *(a2 + 1), v17[0] = this, v17[1] = &v18, v17[2] = a2, (v11 = mlir::NamedAttrList::get(a2 + 112, **(v10 + 96))) == 0) || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v11, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17)) && ((*(*this + 104))(this) & 1) != 0 && (v17[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(this, v17)))
  {
    Inputs = mlir::FunctionType::getInputs(v17);
    v20 = v12;
    Results = mlir::FunctionType::getResults(v17);
    mlir::OperationState::addTypes(a2, Results, v14);
    v15 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v22, &Inputs, v9, a2 + 16) & 1;
  }

  else
  {
LABEL_15:
    v15 = 0;
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  return v15;
}

uint64_t mlir::func::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::func::detail::ConstantOpGenericAdaptorBase::getValue(mlir::func::detail::ConstantOpGenericAdaptorBase *this)
{
  v2 = *(this + 3);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

uint64_t mlir::func::ConstantOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'func.constant' op requires attribute 'value'";
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

uint64_t mlir::func::ConstantOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v33 = v6;
  if (!v6)
  {
    a3(v36, a4);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = "expected DictionaryAttr to set properties";
      v35 = 41;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v37 + 24 * v38;
      v25 = v34;
      *(v24 + 2) = v35;
      *v24 = v25;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }

    if (v46 != 1)
    {
      return 0;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v44;
      v28 = __p;
      if (v44 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v44 = v26;
      operator delete(v28);
    }

    v19 = v41;
    if (!v41)
    {
      goto LABEL_51;
    }

    v29 = v42;
    v21 = v41;
    if (v42 == v41)
    {
      goto LABEL_50;
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

    while (v29 != v19);
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v33, "value", 5uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v36[0] = v10;
  if (v10)
  {
    mlir::SymbolRefAttr::getNestedReferences(v36);
    if (!v11)
    {
      *a1 = v9;
      return 1;
    }
  }

  a3(v36, a4);
  if (v36[0])
  {
    LODWORD(v34) = 3;
    v35 = 50;
    if (v38 >= v39)
    {
      if (v37 > &v34 || v37 + 24 * v38 <= &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v37 + 24 * v38;
    v13 = v34;
    *(v12 + 2) = v35;
    *v12 = v13;
    ++v38;
    if (v36[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v34, v9);
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v37 + 24 * v38;
      v15 = v34;
      *(v14 + 2) = v35;
      *v14 = v15;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }
  }

  if ((v46 & 1) == 0)
  {
    return 0;
  }

  if (v45 != &v46)
  {
    free(v45);
  }

  v16 = __p;
  if (__p)
  {
    v17 = v44;
    v18 = __p;
    if (v44 != __p)
    {
      do
      {
        v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
      }

      while (v17 != v16);
      v18 = __p;
    }

    v44 = v16;
    operator delete(v18);
  }

  v19 = v41;
  if (v41)
  {
    v20 = v42;
    v21 = v41;
    if (v42 == v41)
    {
LABEL_50:
      v42 = v19;
      operator delete(v21);
      goto LABEL_51;
    }

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
LABEL_49:
    v21 = v41;
    goto LABEL_50;
  }

LABEL_51:
  if (v37 != &v40)
  {
    free(v37);
  }

  return 0;
}

uint64_t mlir::func::ConstantOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "value", 5, *a2);
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

unint64_t mlir::func::ConstantOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::func::ConstantOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::func::ConstantOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    v11[3] = v4;
    v11[4] = v5;
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      v11[0] = v7;
      if (v7)
      {
        v8 = result;
        mlir::SymbolRefAttr::getNestedReferences(v11);
        result = v8;
        if (v10)
        {
          v7 = 0;
        }

        else
        {
          v7 = a4;
        }
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

uint64_t mlir::func::ConstantOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "value", 5uLL, *a2);
  }

  return result;
}

uint64_t mlir::func::ConstantOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v2) & 1;
}

uint64_t mlir::func::ConstantOp::setValue(uint64_t a1, size_t a2, const llvm::Twine *a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::SymbolRefAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::func::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 256);
  if (!v4)
  {
    operator new();
  }

  *v4 = a4;
  v5 = *(a2 + 72);
  if (v5 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v5) = a3;
  ++*(a2 + 72);
}

void mlir::func::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = a5;
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
      *(v11 + 8 * v10) = mlir::TypeRange::dereference_iterator(a3, v10);
      ++v10;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
}

uint64_t mlir::func::ConstantOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, const llvm::Twine *a5)
{
  result = mlir::SymbolRefAttr::get(*a1, a4, a5);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = result;
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::func::ConstantOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, const llvm::Twine *a6)
{
  result = mlir::SymbolRefAttr::get(*a1, a5, a6);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = result;
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

uint64_t mlir::func::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::func::ConstantOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v16[0] = *this;
    if (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v1, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
    {
      if (*(*this + 9))
      {
        v3 = *this - 16;
      }

      else
      {
        v3 = 0;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = "requires attribute 'value'";
    v15 = 259;
    mlir::OpState::emitOpError(this, &v14, v16);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
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

      v5 = __p;
      if (__p)
      {
        v6 = v22;
        v7 = __p;
        if (v22 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v22 = v5;
        operator delete(v7);
      }

      v8 = v19;
      if (v19)
      {
        v9 = v20;
        v10 = v19;
        if (v20 != v19)
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
          v10 = v19;
        }

        v20 = v8;
        operator delete(v10);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }
  }

  return v4;
}

uint64_t mlir::func::ConstantOp::parse(mlir::func::ConstantOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v17 = 0;
  __src = v20;
  v19 = 0x100000000;
  v16 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 1);
  v15[0] = this;
  v15[1] = &v16;
  v15[2] = a2;
  v6 = mlir::NamedAttrList::get(a2 + 112, **(v5 + 96));
  if (v6)
  {
    if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v6, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v7 = (*(*this + 32))(this);
  v9 = mlir::NoneType::get(*v7, v8);
  if ((mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(this, &v17, v9) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v17)
  {
    v10 = *(a2 + 32);
    if (!v10)
    {
      operator new();
    }

    *v10 = v17;
  }

  if ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &__src))
  {
    v11 = v19;
    v12 = *(a2 + 18);
    if (v12 + v19 > *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v19)
    {
      memcpy((*(a2 + 8) + 8 * v12), __src, 8 * v19);
      LODWORD(v12) = *(a2 + 18);
    }

    *(a2 + 18) = v12 + v11;
    v13 = 1;
  }

  else
  {
LABEL_16:
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  return v13;
}

void mlir::func::ConstantOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v28 = v30;
  v30[0] = "value";
  v30[1] = 5;
  v29 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v5, v28, v29);
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

  v14 = *(*this + 9);
  v15 = *this - 16;
  if (!v14)
  {
    v15 = 0;
  }

  v27[0] = v15;
  v27[1] = v14;
  mlir::ResultRange::getTypes(v27, &AttrDictionary);
  v16 = v25;
  v17 = v26;
  if (v25 != v26)
  {
    v18 = AttrDictionary;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v25);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v16 + 1; v17 != i; ++i)
    {
      v22 = (*(*a2 + 16))(a2);
      v23 = v22[4];
      if (v22[3] - v23 > 1uLL)
      {
        *v23 = 8236;
        v22[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v22, ", ", 2uLL);
      }

      v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, i);
      (*(*a2 + 32))(a2, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t mlir::func::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::func::detail::FuncOpGenericAdaptorBase::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 56);
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

uint64_t mlir::func::FuncOpAdaptor::verify(void *a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  if (v3)
  {
    if (a1[6])
    {
      v4 = a1[3];
      v5 = a1[5];
      v30 = a1[4];
      if (*(*mlir::TypeAttr::getValue(&v30) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id && (v28[0] = v3, *(*mlir::TypeAttr::getValue(v28) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
      {
        if (v4 && (v30 = v4, (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(&v30) & 1) == 0))
        {
          v28[0] = "'func.func' op attribute 'arg_attrs' failed to satisfy constraint: Array of dictionary attributes";
          v29 = 259;
          mlir::emitError(a2, v28, &v30);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
          if (v30)
          {
            mlir::InFlightDiagnostic::report(&v30);
          }

          if (v39 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v31);
          }
        }

        else if (v5 && (v30 = v5, (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(&v30) & 1) == 0))
        {
          v28[0] = "'func.func' op attribute 'res_attrs' failed to satisfy constraint: Array of dictionary attributes";
          v29 = 259;
          mlir::emitError(a2, v28, &v30);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        }

        else
        {
          return 1;
        }
      }

      else
      {
        v28[0] = "'func.func' op attribute 'function_type' failed to satisfy constraint: type attribute of function type";
        v29 = 259;
        mlir::emitError(a2, v28, &v30);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
        if (v30)
        {
          mlir::InFlightDiagnostic::report(&v30);
        }

        if (v39 == 1)
        {
          if (v38 != &v39)
          {
            free(v38);
          }

          v7 = __p;
          if (__p)
          {
            v8 = v37;
            v9 = __p;
            if (v37 != __p)
            {
              do
              {
                v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
              }

              while (v8 != v7);
              v9 = __p;
            }

            v37 = v7;
            operator delete(v9);
          }

          v10 = v34;
          if (!v34)
          {
            goto LABEL_55;
          }

          v11 = v35;
          v12 = v34;
          if (v35 == v34)
          {
LABEL_54:
            v35 = v10;
            operator delete(v12);
LABEL_55:
            if (v32 != &v33)
            {
              free(v32);
            }

            return v6;
          }

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
LABEL_53:
          v12 = v34;
          goto LABEL_54;
        }
      }
    }

    else
    {
      v28[0] = "'func.func' op requires attribute 'sym_name'";
      v29 = 259;
      mlir::emitError(a2, v28, &v30);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
      if (v30)
      {
        mlir::InFlightDiagnostic::report(&v30);
      }

      if (v39 == 1)
      {
        if (v38 != &v39)
        {
          free(v38);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v37;
          v23 = __p;
          if (v37 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v37 = v21;
          operator delete(v23);
        }

        v10 = v34;
        if (!v34)
        {
          goto LABEL_55;
        }

        v24 = v35;
        v12 = v34;
        if (v35 == v34)
        {
          goto LABEL_54;
        }

        do
        {
          v26 = *--v24;
          v25 = v26;
          *v24 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v24 != v10);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v28[0] = "'func.func' op requires attribute 'function_type'";
    v29 = 259;
    mlir::emitError(a2, v28, &v30);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
    if (v30)
    {
      mlir::InFlightDiagnostic::report(&v30);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v37;
        v17 = __p;
        if (v37 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v37 = v15;
        operator delete(v17);
      }

      v10 = v34;
      if (!v34)
      {
        goto LABEL_55;
      }

      v18 = v35;
      v12 = v34;
      if (v35 == v34)
      {
        goto LABEL_54;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v10);
      goto LABEL_53;
    }
  }

  return v6;
}

uint64_t mlir::func::FuncOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v67 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v52 = v6;
  if (!v6)
  {
    a3(&v55, a4);
    if (v55)
    {
      LODWORD(v53) = 3;
      *(&v53 + 1) = "expected DictionaryAttr to set properties";
      v54 = 41;
      if (v58 >= v59)
      {
        if (v57 > &v53 || v57 + 24 * v58 <= &v53)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v57 + 24 * v58;
      v23 = v53;
      *(v22 + 2) = v54;
      *v22 = v23;
      ++v58;
      if (v55)
      {
        mlir::InFlightDiagnostic::report(&v55);
      }
    }

    if (v66 != 1)
    {
      return 0;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v64;
      v26 = __p;
      if (v64 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v64 = v24;
      operator delete(v26);
    }

    v17 = v61;
    if (!v61)
    {
      goto LABEL_70;
    }

    v27 = v62;
    v19 = v61;
    if (v62 == v61)
    {
LABEL_69:
      v62 = v17;
      operator delete(v19);
LABEL_70:
      if (v57 != &v60)
      {
        free(v57);
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
    v19 = v61;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v52, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v55, a4);
      if (v55)
      {
        LODWORD(v53) = 3;
        v54 = 54;
        if (v58 >= v59)
        {
          if (v57 > &v53 || v57 + 24 * v58 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v57 + 24 * v58;
        v11 = v53;
        *(v10 + 2) = v54;
        *v10 = v11;
        ++v58;
        if (v55)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v53, v9);
          if (v58 >= v59)
          {
            if (v57 > &v53 || v57 + 24 * v58 <= &v53)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v57 + 24 * v58;
          v13 = v53;
          *(v12 + 2) = v54;
          *v12 = v13;
          ++v58;
          if (v55)
          {
            mlir::InFlightDiagnostic::report(&v55);
          }
        }
      }

      if ((v66 & 1) == 0)
      {
        return 0;
      }

      if (v65 != &v66)
      {
        free(v65);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v64;
        v16 = __p;
        if (v64 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v64 = v14;
        operator delete(v16);
      }

      v17 = v61;
      if (!v61)
      {
        goto LABEL_70;
      }

      v18 = v62;
      v19 = v61;
      if (v62 == v61)
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

  v30 = mlir::DictionaryAttr::get(&v52, "function_type", 0xDuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v31 = v30;
      a3(&v55, a4);
      if (v55)
      {
        LODWORD(v53) = 3;
        v54 = 58;
        if (v58 >= v59)
        {
          if (v57 > &v53 || v57 + 24 * v58 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v57 + 24 * v58;
        v33 = v53;
        *(v32 + 2) = v54;
        *v32 = v33;
        ++v58;
        if (v55)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v53, v31);
          if (v58 >= v59)
          {
            if (v57 > &v53 || v57 + 24 * v58 <= &v53)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v57 + 24 * v58;
          v35 = v53;
          *(v34 + 2) = v54;
          *v34 = v35;
          ++v58;
          if (v55)
          {
            mlir::InFlightDiagnostic::report(&v55);
          }
        }
      }

      if ((v66 & 1) == 0)
      {
        return 0;
      }

      if (v65 != &v66)
      {
        free(v65);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v64;
        v38 = __p;
        if (v64 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v64 = v36;
        operator delete(v38);
      }

      v17 = v61;
      if (!v61)
      {
        goto LABEL_70;
      }

      v39 = v62;
      v19 = v61;
      if (v62 == v61)
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

  v42 = mlir::DictionaryAttr::get(&v52, "res_attrs", 9uLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v43 = v42;
      a3(&v55, a4);
      if (v55)
      {
        LODWORD(v53) = 3;
        v54 = 54;
        if (v58 >= v59)
        {
          if (v57 > &v53 || v57 + 24 * v58 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v57 + 24 * v58;
        v45 = v53;
        *(v44 + 2) = v54;
        *v44 = v45;
        ++v58;
        if (v55)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v53, v43);
          if (v58 >= v59)
          {
            if (v57 > &v53 || v57 + 24 * v58 <= &v53)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v57 + 24 * v58;
          v47 = v53;
          *(v46 + 2) = v54;
          *v46 = v47;
          ++v58;
          if (v55)
          {
            mlir::InFlightDiagnostic::report(&v55);
          }
        }
      }

      if (v66 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v56);
      }

      return 0;
    }

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v52, "sym_name", 8uLL);
  *&v53 = v48;
  if (!v48)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v52, "sym_visibility", 0xEuLL);
    *&v53 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v55, a4);
        goto LABEL_91;
      }

      a1[4] = v50;
    }

    return 1;
  }

  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[3] = v48;
    goto LABEL_88;
  }

  a3(&v55, a4);
LABEL_91:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v49, &v53);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
  return 0;
}

uint64_t mlir::func::FuncOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v26 = a1;
  v27 = v29;
  v28 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v26, "arg_attrs", 9, *a2);
  if (v28 >= HIDWORD(v28))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v27 + 16 * v28);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v28 + 1;
  LODWORD(v28) = v28 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v26, "function_type", 0xD, v7);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v27 + 16 * v28);
    *v10 = v8;
    v10[1] = v9;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v26, "res_attrs", 9, v11);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v27 + 16 * v28);
    *v14 = v12;
    v14[1] = v13;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v26, "sym_name", 8, v15);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v27 + 16 * v28);
    *v18 = v16;
    v18[1] = v17;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v26, "sym_visibility", 0xE, v19);
    if (v28 >= HIDWORD(v28))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v27 + 16 * v28);
    *v22 = v20;
    v22[1] = v21;
    v6 = v28 + 1;
    LODWORD(v28) = v28 + 1;
  }

  v23 = v27;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v27 == v29)
    {
      return DictionaryAttr;
    }

    goto LABEL_19;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v26, v27, v6);
  v23 = v27;
  if (v27 != v29)
  {
LABEL_19:
    free(v23);
  }

  return DictionaryAttr;
}

unint64_t mlir::func::FuncOp::computePropertiesHash(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = HIDWORD(a1[4]);
  v14 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v13);
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

uint64_t mlir::func::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    if (__n == 13)
    {
      if (!memcmp(__s1, "function_type", 0xDuLL))
      {
        return a2[1];
      }
    }

    else if (__n == 14 && !memcmp(__s1, "sym_visibility", 0xEuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::func::FuncOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
  {
    if (a3 == 13)
    {
      result = memcmp(__s1, "function_type", 0xDuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v9 = a4;
          }

          else
          {
            v9 = 0;
          }

          v5[1] = v9;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }

    else if (a3 == 14)
    {
      result = memcmp(__s1, "sym_visibility", 0xEuLL);
      if (!result)
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

          v5[4] = v7;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "sym_name", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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
  }

  else if (a3 == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

    else
    {
      result = memcmp(__s1, "res_attrs", 9uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
  }

  return result;
}

void mlir::func::FuncOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "arg_attrs", 9uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "function_type", 0xDuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "res_attrs", 9uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "sym_visibility", 0xEuLL, v8);
  }
}

BOOL mlir::func::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v9, "function_type", 13, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v10, "res_attrs", 9, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v11, "sym_name", 8, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v12, "sym_visibility", 14, a3, a4) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::func::FuncOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) && (v4 = mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1), (v4 & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 3) & 1) != 0))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::func::FuncOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  v4 = v3[12];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::func::FuncOp::getSymVisibility@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96);
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

uint64_t mlir::func::FuncOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::func::FuncOp::setFunctionType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::func::FuncOp::setSymVisibility(uint64_t result, uint64_t a2)
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
    *(v2 + 96) = result;
  }

  else
  {
    *(v2 + 96) = 0;
  }

  return result;
}

void mlir::func::FuncOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 24) = a3;
  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 8) = a4;
  if (a5)
  {
    v9 = *(a2 + 32);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 32) = a5;
    if (!a6)
    {
LABEL_5:
      if (!a7)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if (!a6)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  *v10 = a6;
  if (!a7)
  {
LABEL_18:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v11 = *(a2 + 32);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 16) = a7;
  goto LABEL_18;
}

void mlir::func::FuncOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 24) = a5;
  v10 = *(a2 + 32);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 8) = a6;
  if (a7)
  {
    v12 = *(a2 + 32);
    if (!v12)
    {
      operator new();
    }

    *(v12 + 32) = a7;
    v11 = a9;
    if (!a8)
    {
LABEL_5:
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = a9;
    if (!a8)
    {
      goto LABEL_5;
    }
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    operator new();
  }

  *v13 = a8;
  if (!v11)
  {
LABEL_6:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 16) = v11;
  mlir::OperationState::addRegion(a2);
}

void mlir::func::FuncOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 261;
  v20[0] = a3;
  v20[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v20, a3);
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 24) = StringAttr;
  v15 = mlir::TypeAttr::get(a5);
  v16 = *(a2 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v15;
  if (a6)
  {
    v17 = *(a2 + 32);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 32) = a6;
    if (!a7)
    {
LABEL_5:
      if (!a8)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if (!a7)
  {
    goto LABEL_5;
  }

  v18 = *(a2 + 32);
  if (!v18)
  {
    operator new();
  }

  *v18 = a7;
  if (!a8)
  {
LABEL_18:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a8;
  goto LABEL_18;
}

void mlir::func::FuncOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = 261;
  v21[0] = a5;
  v21[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v21, a3);
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 24) = StringAttr;
  v15 = mlir::TypeAttr::get(a7);
  v16 = *(a2 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v15;
  if (a8)
  {
    v18 = *(a2 + 32);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 32) = a8;
    v17 = a10;
    if (!a9)
    {
LABEL_5:
      if (!v17)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = a10;
    if (!a9)
    {
      goto LABEL_5;
    }
  }

  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *v19 = a9;
  if (!v17)
  {
LABEL_6:
    mlir::OperationState::addRegion(a2);
  }

LABEL_15:
  v20 = *(a2 + 32);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = v17;
  mlir::OperationState::addRegion(a2);
}

void mlir::func::FuncOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::func::FuncOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = (v1 + 64);
  if (v4)
  {
    v5 = v2[3];
    if (v5)
    {
      v7 = v2[2];
      v8 = v2[4];
      v30[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
      {
        return 0;
      }

      v30[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(v4, "function_type", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
      {
        return 0;
      }

      v30[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v8, "sym_visibility", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
      {
        return 0;
      }

      v30[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
      {
        return 0;
      }

      v30[0] = *this;
      return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(v7, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1;
    }

    v28[0] = "requires attribute 'sym_name'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v36;
        v20 = __p;
        if (v36 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v36 = v18;
        operator delete(v20);
      }

      v21 = v33;
      if (v33)
      {
        v22 = v34;
        v23 = v33;
        if (v34 != v33)
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
          v23 = v33;
        }

        v34 = v21;
        operator delete(v23);
      }

      v26 = v31;
      if (v31 != v32)
      {
LABEL_48:
        free(v26);
      }
    }
  }

  else
  {
    v28[0] = "requires attribute 'function_type'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v36;
        v12 = __p;
        if (v36 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v36 = v10;
        operator delete(v12);
      }

      v13 = v33;
      if (v33)
      {
        v14 = v34;
        v15 = v33;
        if (v34 != v33)
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
          v15 = v33;
        }

        v34 = v13;
        operator delete(v15);
      }

      v26 = v31;
      if (v31 != v32)
      {
        goto LABEL_48;
      }
    }
  }

  return v9;
}

uint64_t mlir::func::ReturnOp::build(mlir::func::ReturnOp *this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v5, 0, 0);
  return mlir::OperationState::addOperands(a2, v5[0], v5[1]);
}

unint64_t mlir::func::ReturnOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::func::ReturnOp::parse(mlir::func::ReturnOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(a2, v2, &v3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallIndirectOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  a5(v19, a6);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 & 0xFFFFFFFFFFFFFFF8);
  v4 = *(a2 + 72);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    *v5 = *v4;
    if (v6)
    {
      *(v6 + 8) = v5;
    }
  }

  v4[3] = v3;
  v7 = *v3;
  *v4 = *v3;
  v4[1] = v3;
  if (v7)
  {
    *(v7 + 8) = v4;
  }

  *v3 = v4;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a3;
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v4;
    a2 = InterfaceFor;
  }

  return mlir::call_interface_impl::resolveCallable(v3, a2, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v27;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  v22 = v1;
  v28 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v1 = v22;
  a1 = v28;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v23 = v1;
  v29 = a1;
  v18 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v18;
  v1 = v23;
  a1 = v29;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

LABEL_30:
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_31;
  }

LABEL_29:
  v24 = v1;
  v30 = a1;
  v15 = v3;
  v19 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants>();
  v3 = v15;
  v2 = v19;
  v1 = v24;
  a1 = v30;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_31:
  v26 = v1;
  v32 = a1;
  v17 = v3;
  v21 = v2;
  v12 = v5;
  v14 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v5 = v12;
  v4 = v14;
  v3 = v17;
  v2 = v21;
  v1 = v26;
  a1 = v32;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    return 0;
  }

  v5 = a1;
  return mlir::func::CallIndirectOp::verifyInvariantsImpl(&v5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 6 && (*a3 == 1819042147 ? (v7 = *(a3 + 4) == 25957) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v13);
  if (v8 == 6 && *result == 1819042147 && *(result + 4) == 25957)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v14 = v11;
      if (v11)
      {
        result = mlir::SymbolRefAttr::getNestedReferences(&v14);
        if (v12)
        {
          v11 = 0;
        }

        else
        {
          v11 = a4;
        }
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "callee", 6uLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::func::CallOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::writeProperties;
  {
    v7 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::verifySymbolUses;
  {
    v8 = v4;
    mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "callee", 6), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(a2 + 56, "callee", 6uLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return result & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "callee";
  v8[1] = 6;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a3;
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v4;
    a2 = InterfaceFor;
  }

  return mlir::call_interface_impl::resolveCallable(v3, a2, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    return 0;
  }

  v5 = a1;
  return mlir::func::CallOp::verifyInvariantsImpl(&v5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1970037110 ? (v7 = *(a3 + 4) == 101) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v13);
  if (v8 == 5 && *result == 1970037110 && *(result + 4) == 101)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v14 = v11;
      if (v11)
      {
        result = mlir::SymbolRefAttr::getNestedReferences(&v14);
        if (v12)
        {
          v11 = 0;
        }

        else
        {
          v11 = a4;
        }
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "value", 5uLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::func::ConstantOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::writeProperties;
  {
    v11 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>::getSpeculatability;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getEffects;
  {
    v13 = v6;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::verifySymbolUses;
  {
    mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v9 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmResultNames;
  v9[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockArgumentNames;
  v9[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockNames;
  v9[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mpsx::ListPopBackOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

uint64_t mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::foldSingleResultHook<mlir::func::ConstantOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v6 = a1 + 64;
  v7 = *(a1 + 44);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((a1 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  mlir::RegionRange::RegionRange(v14, v9, v8);
  v10 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v10 < 8)
  {
    return 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFBLL;
  v12 = *(a4 + 8);
  if (v12 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v12) = v11;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v94 = v1;
  v107 = a1;
  v71 = v3;
  v82 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v95 = v1;
  v108 = a1;
  v72 = v3;
  v83 = v2;
  v62 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v96 = v1;
  v109 = a1;
  v73 = v3;
  v84 = v2;
  v54 = v5;
  v63 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v97 = v1;
  v110 = a1;
  v74 = v3;
  v85 = v2;
  v55 = v5;
  v64 = v4;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v98 = v1;
  v111 = a1;
  v75 = v3;
  v86 = v2;
  v56 = v5;
  v65 = v4;
  v41 = v7;
  v48 = v6;
  AncestorKey::AncestorKey();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v99 = v1;
  v112 = a1;
  v76 = v3;
  v87 = v2;
  v57 = v5;
  v66 = v4;
  v42 = v7;
  v49 = v6;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v100 = v1;
  v113 = a1;
  v77 = v3;
  v88 = v2;
  v58 = v5;
  v67 = v4;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  v1 = v100;
  a1 = v113;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

LABEL_65:
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
    v12 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_66;
  }

LABEL_64:
  v101 = v1;
  v114 = a1;
  v78 = v3;
  v89 = v2;
  v59 = v5;
  v68 = v4;
  v44 = v7;
  v51 = v6;
  v33 = v9;
  v38 = v8;
  v29 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v10 = v29;
  v9 = v33;
  v8 = v38;
  v7 = v44;
  v6 = v51;
  v5 = v59;
  v4 = v68;
  v3 = v78;
  v2 = v89;
  v1 = v101;
  a1 = v114;
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_66:
  v103 = v1;
  v116 = a1;
  v80 = v3;
  v91 = v2;
  v61 = v5;
  v70 = v4;
  v46 = v7;
  v53 = v6;
  v35 = v9;
  v40 = v8;
  v28 = v11;
  v31 = v10;
  v26 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v12 = v26;
  v11 = v28;
  v10 = v31;
  v9 = v35;
  v8 = v40;
  v7 = v46;
  v6 = v53;
  v5 = v61;
  v4 = v70;
  v3 = v80;
  v2 = v91;
  v1 = v103;
  a1 = v116;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}