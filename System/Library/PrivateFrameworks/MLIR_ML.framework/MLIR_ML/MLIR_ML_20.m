BOOL mlir::ODIE::Compiler::CoreML::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
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

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::parse(mlir::ODIE::Compiler::CoreML::CastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, v13))
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(this, &v7))
  {
    return 0;
  }

  v13[0] = v7;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::OperationState::addTypes(a2, v13, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
    *v15 = 28532;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "to", 2uLL);
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
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::ClassOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::ClassOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      return 1;
    }

    v18[0] = "'coreml.llo.class' op requires attribute 'sym_name'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v14 = v24;
      v8 = v23;
      if (v24 == v23)
      {
LABEL_37:
        v24 = v6;
        operator delete(v8);
LABEL_38:
        if (v21 != &v22)
        {
          free(v21);
        }

        return v2;
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
LABEL_36:
      v8 = v23;
      goto LABEL_37;
    }
  }

  else
  {
    v18[0] = "'coreml.llo.class' op requires attribute 'param_decls'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v26;
        v5 = __p;
        if (v26 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v26 = v3;
        operator delete(v5);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v7 = v24;
      v8 = v23;
      if (v24 == v23)
      {
        goto LABEL_37;
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
      goto LABEL_36;
    }
  }

  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "param_decls", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 56;
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

  v30 = mlir::DictionaryAttr::get(&v43, "sym_name", 8uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
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

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "param_decls", 0xB, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "sym_name", 8, v7);
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

unint64_t mlir::ODIE::Compiler::CoreML::ClassOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::CoreML::ClassOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 11 && *a3 == 0x65645F6D61726170 && *(a3 + 3) == 0x736C6365645F6D61)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656D616E5F6D7973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ODIE::Compiler::CoreML::ClassOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 11 && *a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreML::ClassOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "param_decls", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8uLL, v5);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ClassOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v8, "param_decls", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
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
        v22 = 53;
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

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: string attribute";
        v22 = 48;
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

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::setSymName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    *(v4 + 8) = a3;
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = a4;
    mlir::OperationState::addRegion(a2);
  }

  operator new();
}

void mlir::ODIE::Compiler::CoreML::ClassOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 32);
  if (v6)
  {
    *(v6 + 8) = a5;
    v7 = *(a2 + 32);
    if (!v7)
    {
      operator new();
    }

    *v7 = a6;
    mlir::OperationState::addRegion(a2);
  }

  operator new();
}

void mlir::ODIE::Compiler::CoreML::ClassOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, size_t a4, _DWORD *a5, uint64_t a6)
{
  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v14, a3);
  v11 = *(a2 + 32);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 8) = StringAttr;
  v12 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a5, a6);
  v13 = *(a2 + 32);
  if (!v13)
  {
    operator new();
  }

  *v13 = v12;
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::ClassOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6, _DWORD *a7, uint64_t a8)
{
  v17 = 261;
  v16[0] = a5;
  v16[1] = a6;
  StringAttr = mlir::Builder::getStringAttr(a1, v16, a3);
  v13 = *(a2 + 32);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 8) = StringAttr;
  v14 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a7, a8);
  v15 = *(a2 + 32);
  if (!v15)
  {
    operator new();
  }

  *v15 = v14;
  mlir::OperationState::addRegion(a2);
}

void mlir::ODIE::Compiler::CoreML::ClassOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ClassOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = v1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *(v2 + 8);
    if (v5)
    {
      v25[0] = *this;
      if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v5, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) != 0 && (v25[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v3, "param_decls", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)))
      {
        return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0) & 1;
      }

      else
      {
        return 0;
      }
    }

    v23[0] = "requires attribute 'sym_name'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
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
    v23[0] = "requires attribute 'param_decls'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
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

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  if (v8 != a2 && *(v8 + 8) == a2)
  {
    return 1;
  }

  v28 = "region #";
  v29 = 259;
  mlir::Operation::emitOpError(&v32, a1, &v28);
  if (v32)
  {
    LODWORD(v25) = 5;
    *(&v25 + 1) = a5;
    if (v35 >= v36)
    {
      if (v34 > &v25 || v34 + 24 * v35 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v34 + 24 * v35;
    v10 = v25;
    *(v9 + 2) = v26;
    *v9 = v10;
    ++v35;
  }

  if (a4)
  {
    v24 = 1283;
    v23[0] = " ('";
    v23[2] = a3;
    v23[3] = a4;
    *&v25 = v23;
    v26 = "') ";
    v27 = 770;
    if (!v32)
    {
      goto LABEL_13;
    }

LABEL_10:
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

    goto LABEL_13;
  }

  *&v25 = " ";
  v27 = 259;
  if (v32)
  {
    goto LABEL_10;
  }

LABEL_13:
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

unint64_t mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

void mlir::ODIE::Compiler::CoreML::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  __src = v21;
  v20 = 0x200000000;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = mlir::RegionRange::RegionRange(v17, *(a2 + 224), *(a2 + 232));
  if (!mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(v11, v8, 1, v18[0], v18[1], Dictionary, v12, v13, v17[0], v17[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = v20;
  v15 = *(a2 + 72);
  if (v15 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v15), __src, 8 * v20);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v21)
  {
    free(__src);
  }
}

unint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
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

unint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::ConcatOp::build(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v23[2] = *MEMORY[0x277D85DE8];
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
  __src = v23;
  v22 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = mlir::RegionRange::RegionRange(v20, *(a2 + 224), *(a2 + 232));
  if (!mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(v15, v12, 1, a3, a4, Dictionary, v16, v17, v20[0], v20[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v22;
  v19 = *(a2 + 72);
  if (v19 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v22);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v23)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v65 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 17);
    v4 = v3 - 1;
    if (v3 == 1)
    {
      goto LABEL_91;
    }

    v5 = *(v2 + 9) + 32;
  }

  else
  {
    v4 = -1;
    v5 = 32;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *this;
    v9 = *(*(v5 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = *v9;
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      {
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v10 + 8);
        v15 = *(v10 + 16);
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v10 + 8);
        v15 = *(v10 + 16);
        if (!v15)
        {
          goto LABEL_25;
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
LABEL_27:
        v54[0] = v9;
        v54[1] = v22;
        v47[0] = mlir::ShapedType::getElementType(v54);
        if (mlir::Type::isF16(v47))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isF32(v47))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v47, 4))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v47, 8))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v47, 16))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v47, 32))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v47, 64))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v47, 4))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v47, 8))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v47, 16))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v47, 32))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v47, 64))
        {
          goto LABEL_7;
        }

        if (*(*v47[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v51 = v47[0];
          *&v52 = mlir::ComplexType::getElementType(&v51);
          if (mlir::Type::isF16(&v52))
          {
            goto LABEL_7;
          }

          if (*(*v47[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
          {
            v49 = v47[0];
            ElementType = mlir::ComplexType::getElementType(&v49);
            if (mlir::Type::isF32(&ElementType))
            {
              goto LABEL_7;
            }
          }
        }

        if (mlir::Type::isSignlessInteger(v47, 1))
        {
          goto LABEL_7;
        }

        goto LABEL_41;
      }

LABEL_25:
      v22 = 0;
      goto LABEL_27;
    }

LABEL_41:
    v48 = 261;
    v47[0] = "operand";
    v47[1] = 7;
    mlir::Operation::emitOpError(v54, v8, v47);
    if (v54[0])
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = " #";
      v53 = 2;
      if (v56 >= v57)
      {
        if (v55 > &v52 || v55 + 24 * v56 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v23 = v55 + 24 * v56;
      v24 = v52;
      *(v23 + 2) = v53;
      *v23 = v24;
      v25 = ++v56;
      if (v54[0])
      {
        LODWORD(v52) = 5;
        *(&v52 + 1) = v7;
        if (v25 >= v57)
        {
          if (v55 > &v52 || v55 + 24 * v25 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v26 = v55 + 24 * v56;
        v27 = v52;
        *(v26 + 2) = v53;
        *v26 = v27;
        v28 = ++v56;
        if (v54[0])
        {
          LODWORD(v52) = 3;
          *(&v52 + 1) = " must be variadic of tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
          v53 = 251;
          if (v28 >= v57)
          {
            if (v55 > &v52 || v55 + 24 * v28 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v29 = v55 + 24 * v56;
          v30 = v52;
          *(v29 + 2) = v53;
          *v29 = v30;
          ++v56;
          if (v54[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
            if (v56 >= v57)
            {
              if (v55 > &v52 || v55 + 24 * v56 <= &v52)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v31 = v55 + 24 * v56;
            v32 = v52;
            *(v31 + 2) = v53;
            *v31 = v32;
            ++v56;
          }
        }
      }
    }

    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v64 == 1)
    {
      if (v63 != &v64)
      {
        free(v63);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v62;
        v36 = __p;
        if (v62 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v62 = v34;
        operator delete(v36);
      }

      v37 = v59;
      if (v59)
      {
        v38 = v60;
        v39 = v59;
        if (v60 != v59)
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
          v39 = v59;
        }

        v60 = v37;
        operator delete(v39);
      }

      if (v55 != &v58)
      {
        free(v55);
      }
    }

    if (!v33)
    {
      return 0;
    }

LABEL_7:
    ++v7;
    ++v6;
  }

  while (v6 != v4);
  v2 = *this;
LABEL_91:
  v42 = *(v2 + 9);
  v43 = v2 - 16;
  if (v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) > 1u)
  {
    return 1;
  }

  mlir::ODIE::Compiler::CoreML::ConcatOp::verifyInvariantsImpl(this, v54);
  return LOBYTE(v54[0]);
}

unint64_t mlir::ODIE::Compiler::CoreML::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::detail::ConditionOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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

uint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  return mlir::OperationState::addOperands(a2, a4, a5);
}

unint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
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

unint64_t mlir::ODIE::Compiler::CoreML::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'coreml.constant' op requires attribute 'value'";
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

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

      v13 = v37 + 24 * v38;
      v14 = v34;
      *(v13 + 2) = v35;
      *v13 = v14;
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

    v15 = __p;
    if (__p)
    {
      v16 = v44;
      v17 = __p;
      if (v44 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v44 = v15;
      operator delete(v17);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v19 = v42;
    v20 = v41;
    if (v42 == v41)
    {
      goto LABEL_48;
    }

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
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v33, "value", 5uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
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

    v23 = v37 + 24 * v38;
    v24 = v34;
    *(v23 + 2) = v35;
    *v23 = v24;
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

      v25 = v37 + 24 * v38;
      v26 = v34;
      *(v25 + 2) = v35;
      *v25 = v26;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }
  }

  if (v46)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v44;
      v29 = __p;
      if (v44 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v44 = v27;
      operator delete(v29);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v30 = v42;
    v20 = v41;
    if (v42 == v41)
    {
LABEL_48:
      v42 = v18;
      operator delete(v20);
LABEL_49:
      if (v37 != &v40)
      {
        free(v37);
      }

      return 0;
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

    while (v30 != v18);
LABEL_47:
    v20 = v41;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

unint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

void *mlir::ODIE::Compiler::CoreML::ConstantOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      v5 = result;
      v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
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

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "value", 5uLL, *a2);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, v2);
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 256);
  if (!v5)
  {
    operator new();
  }

  *v5 = a4;
  v5[1] = a5;
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a5;
  v9[1] = a6;
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

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x277D85DE8];
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

  __src = v28;
  v27 = 0x200000000;
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  v19 = mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  v20 = *(a2 + 256);
  v21 = mlir::RegionRange::RegionRange(v25, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(v21, v17, 1, a3, a4, v19, v20, v22, v25[0], v25[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v27;
  v24 = *(a2 + 72);
  if (v24 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v24), __src, 8 * v27);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v28)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v16[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v1, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
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

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::parse(mlir::ODIE::Compiler::CoreML::ConstantOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v20 = 0uLL;
  if (!mlir::AsmParser::parseAttribute<mlir::TypedAttr>(this, &v20, 0))
  {
    return 0;
  }

  if (v20)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v20;
  }

  v22[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 1);
  __src = this;
  v24 = v22;
  v25[0] = a2;
  v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
  if (v7)
  {
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v7, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) & 1) == 0)
    {
      return 0;
    }
  }

  __src = v25;
  v24 = 0x600000000;
  mlir::AsmParser::getContext(this);
  v8 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 2), *(a2 + 6));
  Context = mlir::AsmParser::getContext(this);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 32);
  v12 = mlir::RegionRange::RegionRange(v21, *(a2 + 28), *(a2 + 58));
  v14 = mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(v12, v8, 1, v22[0], v22[1], Dictionary, v11, v13, v21[0], v21[1], &__src);
  v15 = __src;
  if ((v14 & 1) == 0)
  {
    result = 0;
    if (__src == v25)
    {
      return result;
    }

LABEL_19:
    v19 = result;
    free(v15);
    return v19;
  }

  v16 = v24;
  v17 = *(a2 + 18);
  if (v17 + v24 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 8) + 8 * v17), __src, 8 * v24);
    LODWORD(v17) = *(a2 + 18);
  }

  *(a2 + 18) = v17 + v16;
  result = 1;
  v15 = __src;
  if (__src != v25)
  {
    goto LABEL_19;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::print(mlir::ODIE::Compiler::CoreML::ConstantOp *this, mlir::OpAsmPrinter *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
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

  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  (*(*a2 + 40))(a2, CalleeAttr);
  v10 = v12;
  v12[0] = "value";
  v12[1] = 5;
  v11 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v8, v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::Conv2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a4;
  v16 = a6;
  v17 = a5;
  v14 = a8;
  v15 = a7;
  v13 = a9;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::Conv2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a5;
  v19 = a8;
  v20 = a7;
  v17 = a10;
  v18 = a9;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
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

unint64_t mlir::ODIE::Compiler::CoreML::Conv2dOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::ODIE::Compiler::CoreML::Conv2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps6(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps16(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
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
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
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
  if (v33 != &v31[2 * v32] && *v33 == v30)
  {
    v42 = v33[1];
    v81 = a2;
    v82 = v42;
    hasRank = mlir::ShapedType::hasRank(&v81);
    a1 = v29;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v81 = a2;
  v82 = 0;
  v41 = mlir::ShapedType::hasRank(&v81);
  a1 = v29;
  if (!v41)
  {
    goto LABEL_2;
  }

LABEL_59:
  v44 = *a2;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v44[1];
    v47 = *(v44 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v70 = v44;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = v70[1];
    v47 = *(v70 + 4);
    if (!v47)
    {
      goto LABEL_71;
    }
  }

  v48 = v46;
  v49 = v47;
  do
  {
    v50 = v49 >> 1;
    v51 = &v48[2 * (v49 >> 1)];
    v53 = *v51;
    v52 = v51 + 2;
    v49 += ~(v49 >> 1);
    if (v53 < v45)
    {
      v48 = v52;
    }

    else
    {
      v49 = v50;
    }
  }

  while (v49);
  if (v48 != &v46[2 * v47] && *v48 == v45)
  {
    v55 = v48[1];
    v71 = a2;
    v72 = v55;
    mlir::ShapedType::getShape(&v71);
    a1 = v29;
    if (v56 == 4)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v71 = a2;
  v72 = 0;
  mlir::ShapedType::getShape(&v71);
  a1 = v29;
  if (v54 == 4)
  {
LABEL_74:
    v57 = *a2;
    {
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v57[1];
      v60 = *(v57 + 4);
      if (!v60)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v67 = v57;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v59 = v67[1];
      v60 = *(v67 + 4);
      if (!v60)
      {
        goto LABEL_88;
      }
    }

    v61 = v59;
    v62 = v60;
    do
    {
      v63 = v62 >> 1;
      v64 = &v61[2 * (v62 >> 1)];
      v66 = *v64;
      v65 = v64 + 2;
      v62 += ~(v62 >> 1);
      if (v66 < v58)
      {
        v61 = v65;
      }

      else
      {
        v62 = v63;
      }
    }

    while (v62);
    if (v61 != &v59[2 * v60] && *v61 == v58)
    {
      v68 = v61[1];
      goto LABEL_90;
    }

LABEL_88:
    v68 = 0;
LABEL_90:
    *&v79 = a2;
    *(&v79 + 1) = v68;
    ElementType = mlir::ShapedType::getElementType(&v79);
    if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
    {
      return 1;
    }

    if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      goto LABEL_94;
    }

    v76 = ElementType;
    v77 = mlir::ComplexType::getElementType(&v76);
    if (!mlir::Type::isF16(&v77))
    {
      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
LABEL_94:
        a1 = v29;
        goto LABEL_2;
      }

      v74 = ElementType;
      v75 = mlir::ComplexType::getElementType(&v74);
      isF32 = mlir::Type::isF32(&v75);
      a1 = v29;
      if (!isF32)
      {
        goto LABEL_2;
      }
    }

    return 1;
  }

LABEL_2:
  v73 = 261;
  v71 = a3;
  v72 = a4;
  mlir::Operation::emitOpError(&v81, a1, &v71);
  if (v81)
  {
    LODWORD(v79) = 3;
    *(&v79 + 1) = " #";
    v80 = 2;
    if (v84 >= v85)
    {
      if (v83 > &v79 || v83 + 24 * v84 <= &v79)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v83 + 24 * v84;
    v11 = v79;
    *(v10 + 2) = v80;
    *v10 = v11;
    v12 = ++v84;
    if (v81)
    {
      LODWORD(v79) = 5;
      *(&v79 + 1) = a5;
      if (v12 >= v85)
      {
        if (v83 > &v79 || v83 + 24 * v12 <= &v79)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v83 + 24 * v84;
      v14 = v79;
      *(v13 + 2) = v80;
      *v13 = v14;
      v15 = ++v84;
      if (v81)
      {
        LODWORD(v79) = 3;
        *(&v79 + 1) = " must be 4D tensor of 16-bit float or 32-bit float or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v80 = 153;
        if (v15 >= v85)
        {
          if (v83 > &v79 || v83 + 24 * v15 <= &v79)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v83 + 24 * v84;
        v17 = v79;
        *(v16 + 2) = v80;
        *v16 = v17;
        ++v84;
        if (v81)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v79, a2);
          if (v84 >= v85)
          {
            if (v83 > &v79 || v83 + 24 * v84 <= &v79)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v83 + 24 * v84;
          v19 = v79;
          *(v18 + 2) = v80;
          *v18 = v19;
          ++v84;
        }
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
  if (v81)
  {
    mlir::InFlightDiagnostic::report(&v81);
  }

  if (v92 == 1)
  {
    if (v91 != &v92)
    {
      free(v91);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v90;
      v23 = __p;
      if (v90 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v90 = v21;
      operator delete(v23);
    }

    v24 = v87;
    if (v87)
    {
      v25 = v88;
      v26 = v87;
      if (v88 != v87)
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
        v26 = v87;
      }

      v88 = v24;
      operator delete(v26);
    }

    if (v83 != &v86)
    {
      free(v83);
    }
  }

  return v20;
}

uint64_t mlir::ODIE::Compiler::CoreML::CosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::CosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::CosOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::CosOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v6 = mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreML::CreateComplexOp::inferReturnTypes(v6, v7, v8, v19[0], v19[1], v9, v10, v11, v14, v15, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = v21;
  v13 = *(a2 + 72);
  if (v13 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v13), __src, 8 * v21);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v22)
  {
    free(__src);
  }
}

unint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v26;
  v25 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::ODIE::Compiler::CoreML::CreateComplexOp::inferReturnTypes(v13, v14, v15, a3, a4, v16, v17, v18, v21, v22, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v25;
  v20 = *(a2 + 72);
  if (v20 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v25);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::CreateComplexOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v42 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 56));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = *this;
    v32 = 0x100000000;
    if (mlir::ODIE::Compiler::CoreML::verifyOperandsHaveSameShapeOrUnknown(v5, &v32, 2))
    {
      v29 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v32 = mlir::Type::cast<mlir::ShapedType>(&v29);
      v33 = v6;
      ElementType = mlir::ShapedType::getElementType(&v32);
      v27 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
      v30[0] = mlir::Type::cast<mlir::ShapedType>(&v27);
      v30[1] = v8;
      v28 = mlir::ShapedType::getElementType(v30);
      if (ElementType == mlir::ComplexType::getElementType(&v28))
      {
        return 1;
      }

      v30[0] = "failed to verify that Result 0 and operand 0 must have the same inner element type.";
      v31 = 259;
      mlir::OpState::emitOpError(this, v30, &v32);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
      if (v32)
      {
        v25 = result;
        mlir::InFlightDiagnostic::report(&v32);
        result = v25;
      }

      if (v41 == 1)
      {
        v26 = result;
        mlir::Diagnostic::~Diagnostic(&v33);
        return v26;
      }

      return result;
    }

    v30[0] = "failed to verify that Operands should have same shape.";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, &v32);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
    v10 = result;
    if (v32)
    {
      mlir::InFlightDiagnostic::report(&v32);
      result = v10;
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
        result = v10;
      }

      v19 = __p;
      if (__p)
      {
        v20 = v39;
        v21 = __p;
        if (v39 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v39 = v19;
        operator delete(v21);
        result = v10;
      }

      v14 = v36;
      if (!v36)
      {
        goto LABEL_47;
      }

      v22 = v37;
      v16 = v36;
      if (v37 == v36)
      {
LABEL_46:
        v37 = v14;
        operator delete(v16);
        result = v10;
LABEL_47:
        if (v34 != &v35)
        {
          free(v34);
          return v10;
        }

        return result;
      }

      do
      {
        v24 = *--v22;
        v23 = v24;
        *v22 = 0;
        if (v24)
        {
          MEMORY[0x259C63150](v23, 0x1000C8077774924);
        }
      }

      while (v22 != v14);
LABEL_45:
      v16 = v36;
      goto LABEL_46;
    }
  }

  else
  {
    v30[0] = "failed to verify that Operands should have same element type.";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, &v32);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v32);
    v10 = result;
    if (v32)
    {
      mlir::InFlightDiagnostic::report(&v32);
      result = v10;
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
        result = v10;
      }

      v11 = __p;
      if (__p)
      {
        v12 = v39;
        v13 = __p;
        if (v39 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v39 = v11;
        operator delete(v13);
        result = v10;
      }

      v14 = v36;
      if (!v36)
      {
        goto LABEL_47;
      }

      v15 = v37;
      v16 = v36;
      if (v37 == v36)
      {
        goto LABEL_46;
      }

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
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_34;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v43 = v12;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v43 + 8);
    v15 = *(v43 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v48[0] = a2;
  v48[1] = v22;
  v44[0] = mlir::ShapedType::getElementType(v48);
  if (mlir::Type::isF16(v44) || mlir::Type::isF32(v44) || mlir::Type::isSignedInteger(v44, 4) || mlir::Type::isSignedInteger(v44, 8) || mlir::Type::isSignedInteger(v44, 16) || mlir::Type::isSignedInteger(v44, 32) || mlir::Type::isSignedInteger(v44, 64) || mlir::Type::isUnsignedInteger(v44, 4) || mlir::Type::isUnsignedInteger(v44, 8) || mlir::Type::isUnsignedInteger(v44, 16) || mlir::Type::isUnsignedInteger(v44, 32) || mlir::Type::isUnsignedInteger(v44, 64))
  {
    return 1;
  }

LABEL_34:
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

    v24 = v49 + 24 * v50;
    v25 = v46;
    *(v24 + 2) = v47;
    *v24 = v25;
    v26 = ++v50;
    if (v48[0])
    {
      LODWORD(v46) = 5;
      *(&v46 + 1) = a5;
      if (v26 >= v51)
      {
        if (v49 > &v46 || v49 + 24 * v26 <= &v46)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v49 + 24 * v50;
      v28 = v46;
      *(v27 + 2) = v47;
      *v27 = v28;
      v29 = ++v50;
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = " must be CoreML Tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer values, but got ";
        v47 = 143;
        if (v29 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v29 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v49 + 24 * v50;
        v31 = v46;
        *(v30 + 2) = v47;
        *v30 = v31;
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

          v32 = v49 + 24 * v50;
          v33 = v46;
          *(v32 + 2) = v47;
          *v32 = v33;
          ++v50;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
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

    v34 = __p;
    if (__p)
    {
      v35 = v56;
      v36 = __p;
      if (v56 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v56 = v34;
      operator delete(v36);
    }

    v37 = v53;
    if (v53)
    {
      v38 = v54;
      v39 = v53;
      if (v54 != v53)
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
        v39 = v53;
      }

      v54 = v37;
      operator delete(v39);
    }

    if (v49 != &v52)
    {
      free(v49);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(mlir::Operation *a1, void *a2, void **a3, void **a4, unsigned int a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_22;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v51[0] = a2;
  v51[1] = v22;
  ElementType = mlir::ShapedType::getElementType(v51);
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v44 = ElementType;
    *&v49 = ElementType;
    v45[0] = mlir::ComplexType::getElementType(&v49);
    if (mlir::Type::isF16(v45))
    {
      return 1;
    }

    if (*(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v47 = v44;
      v48 = mlir::ComplexType::getElementType(&v47);
      if (mlir::Type::isF32(&v48))
      {
        return 1;
      }
    }
  }

LABEL_22:
  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(v51, a1, v45);
  if (v51[0])
  {
    LODWORD(v49) = 3;
    *(&v49 + 1) = " #";
    v50 = 2;
    if (v53 >= v54)
    {
      if (v52 > &v49 || v52 + 24 * v53 <= &v49)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v52 + 24 * v53;
    v25 = v49;
    *(v24 + 2) = v50;
    *v24 = v25;
    v26 = ++v53;
    if (v51[0])
    {
      LODWORD(v49) = 5;
      *(&v49 + 1) = a5;
      if (v26 >= v54)
      {
        if (v52 > &v49 || v52 + 24 * v26 <= &v49)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = v52 + 24 * v53;
      v28 = v49;
      *(v27 + 2) = v50;
      *v27 = v28;
      v29 = ++v53;
      if (v51[0])
      {
        LODWORD(v49) = 3;
        *(&v49 + 1) = " must be CoreML Tensor of complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v50 = 125;
        if (v29 >= v54)
        {
          if (v52 > &v49 || v52 + 24 * v29 <= &v49)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v30 = v52 + 24 * v53;
        v31 = v49;
        *(v30 + 2) = v50;
        *v30 = v31;
        ++v53;
        if (v51[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v49, a2);
          if (v53 >= v54)
          {
            if (v52 > &v49 || v52 + 24 * v53 <= &v49)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v52 + 24 * v53;
          v33 = v49;
          *(v32 + 2) = v50;
          *v32 = v33;
          ++v53;
        }
      }
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
  if (v51[0])
  {
    mlir::InFlightDiagnostic::report(v51);
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v59;
      v37 = __p;
      if (v59 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v59 = v35;
      operator delete(v37);
    }

    v38 = v56;
    if (v56)
    {
      v39 = v57;
      v40 = v56;
      if (v57 != v56)
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
        v40 = v56;
      }

      v57 = v38;
      operator delete(v40);
    }

    if (v52 != &v55)
    {
      free(v52);
    }
  }

  return v34;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::parse(mlir::ODIE::Compiler::CoreML::CreateComplexOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v11 = 0;
  v12[0] = &v13;
  v10[0] = &v11;
  v10[1] = 1;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v18, 1) & 1) != 0 && ((*(*this + 120))(this) & 1) != 0 && (v6 = (*(*this + 40))(this), ((*(*this + 704))(this, v15, 1)) && ((*(*this + 104))(this) & 1) != 0 && ((*(*this + 280))(this) & 1) != 0 && (v9 = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, &v9)) && (v13 = v9, ((*(*this + 120))(this)) && (v9 = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, &v9)) && (v11 = v9, ((*(*this + 296))(this)) && ((*(*this + 56))(this) & 1) != 0 && (v8 = 0, mlir::AsmParser::parseType<mlir::TensorType>(this, &v8)) && (v9 = v8, (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (mlir::OperationState::addTypes(a2, &v9, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v17, v12, v5, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v14, v10, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::CreateComplexOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
    *v27 = 15917;
    v26[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v26, "->", 2uLL);
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

void mlir::ODIE::Compiler::CoreML::CreateTokenOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 72);
  if (v3 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v3) = a3;
  ++*(a2 + 72);
}

void mlir::ODIE::Compiler::CoreML::CreateTokenOp::build(mlir::MLIRContext **this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  __src = v15;
  v14 = 0x200000000;
  v4 = *this;
  mlir::ValueRange::ValueRange(&v12, *(a2 + 2), *(a2 + 6));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v11, *(a2 + 28), *(a2 + 58));
  if (v14 != 1)
  {
    if (!v14)
    {
      if (!HIDWORD(v14))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v14) = 1;
  }

  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v4);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  v8 = __src;
  *__src = SingletonImpl;
  v9 = v14;
  v10 = *(a2 + 18);
  if (v10 + v14 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    memcpy((*(a2 + 8) + 8 * v10), v8, 8 * v14);
    LODWORD(v10) = *(a2 + 18);
  }

  *(a2 + 18) = v10 + v9;
  if (__src != v15)
  {
    free(__src);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::inferReturnTypes(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

void mlir::ODIE::Compiler::CoreML::CreateTokenOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 72);
  if (a4 + v7 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v8 = 0;
    v9 = *(a2 + 64) + 8 * v7;
    do
    {
      *(v9 + 8 * v8) = mlir::TypeRange::dereference_iterator(a3, v8);
      ++v8;
    }

    while (a4 != v8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(a2 + 72) = v7 + a4;
}

unint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::CreateTokenOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
  {
    return 1;
  }

  v28 = 261;
  v27[0] = a3;
  v27[1] = a4;
  mlir::Operation::emitOpError(v31, a1, v27);
  if (v31[0])
  {
    LODWORD(v29) = 3;
    *(&v29 + 1) = " #";
    v30 = 2;
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
      LODWORD(v29) = 5;
      *(&v29 + 1) = a5;
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
        LODWORD(v29) = 3;
        *(&v29 + 1) = " must be , but got ";
        v30 = 19;
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
        if (v31[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v29, a2);
          if (v33 >= v34)
          {
            if (v32 > &v29 || v32 + 24 * v33 <= &v29)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v32 + 24 * v33;
          v16 = v29;
          *(v15 + 2) = v30;
          *v15 = v16;
          ++v33;
        }
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
  if (v31[0])
  {
    mlir::InFlightDiagnostic::report(v31);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v39;
      v20 = __p;
      if (v39 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v39 = v18;
      operator delete(v20);
    }

    v21 = v36;
    if (v36)
    {
      v22 = v37;
      v23 = v36;
      if (v37 != v36)
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
        v23 = v36;
      }

      v37 = v21;
      operator delete(v23);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateTokenOp::verifyInvariants(mlir::Operation **this)
{
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::DelegateOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      return 1;
    }

    v18[0] = "'coreml.delegate' op requires attribute 'resource'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v14 = v24;
      v8 = v23;
      if (v24 == v23)
      {
LABEL_37:
        v24 = v6;
        operator delete(v8);
LABEL_38:
        if (v21 != &v22)
        {
          free(v21);
        }

        return v2;
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
LABEL_36:
      v8 = v23;
      goto LABEL_37;
    }
  }

  else
  {
    v18[0] = "'coreml.delegate' op requires attribute 'delegate_id'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v26;
        v5 = __p;
        if (v26 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v26 = v3;
        operator delete(v5);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v7 = v24;
      v8 = v23;
      if (v24 == v23)
      {
        goto LABEL_37;
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
      goto LABEL_36;
    }
  }

  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_51;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_50;
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
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "delegate_id", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
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
LABEL_51:
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
LABEL_50:
        v40 = v17;
        operator delete(v19);
        goto LABEL_51;
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
LABEL_49:
      v19 = v39;
      goto LABEL_50;
    }

    *a1 = v8;
  }

  if (mlir::DictionaryAttr::get(&v31, "resource", 8uLL))
  {
    mlir::detail::DenseArrayAttrImpl<signed char>::classof();
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "delegate_id", 0xB, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "resource", 8, v7);
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

unint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::computePropertiesHash(void *a1)
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

unint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 11 && *a3 == 0x65746167656C6564 && *(a3 + 3) == 0x64695F6574616765)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656372756F736572)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ODIE::Compiler::CoreML::DelegateOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656372756F736572)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<signed char>::classof();
      }

      result[1] = 0;
    }
  }

  else if (a3 == 11 && *a2 == 0x65746167656C6564 && *(a2 + 3) == 0x64695F6574616765)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::ODIE::Compiler::CoreML::DelegateOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "delegate_id", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "resource", 8uLL, v5);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v8, "delegate_id", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v9) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    mlir::detail::DenseArrayAttrImpl<signed char>::classof();
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 256))
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(uint64_t a1)
{
  v2[32] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if ((*(*a1 + 48))(a1, v2))
  {
    mlir::detail::DenseArrayAttrImpl<signed char>::classof();
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::setDelegateId(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a7;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = a8;
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

void mlir::ODIE::Compiler::CoreML::DelegateOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, size_t a7, size_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  v16 = 261;
  v15[0] = a7;
  v15[1] = a8;
  StringAttr = mlir::Builder::getStringAttr(a1, v15, v12);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = StringAttr;
  mlir::Builder::getDenseI8ArrayAttr();
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v33[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v2, "delegate_id", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v33) & 1) == 0)
      {
        return 0;
      }

      v33[0] = *this;
      if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(v5) & 1) == 0)
      {
        return 0;
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

      mlir::Operation::getOperandTypes(v23, v33);
      mlir::TypeRange::TypeRange<mlir::OperandRange>(v29, v33);
      v27 = *(*this + 9);
      v28 = (*this - 16);
      if (!v27)
      {
        v28 = 0;
      }

      v30 = v28;
      v31 = v27;
      mlir::ResultRange::getTypes(&v30, v33);
      mlir::TypeRange::TypeRange<mlir::ResultRange>(&v30, v33);
      if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(v29[0], v29[1], v30, v31))
      {
        return 1;
      }

      v30 = "failed to verify that number of handle inputs must match number of token outputs";
      v32 = 259;
      mlir::OpState::emitOpError(this, &v30, v33);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
      return v7;
    }

    v30 = "requires attribute 'resource'";
    v32 = 259;
    mlir::OpState::emitOpError(this, &v30, v33);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v39;
        v18 = __p;
        if (v39 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v39 = v16;
        operator delete(v18);
      }

      v11 = v36;
      if (!v36)
      {
        goto LABEL_40;
      }

      v19 = v37;
      v13 = v36;
      if (v37 == v36)
      {
LABEL_39:
        v37 = v11;
        operator delete(v13);
LABEL_40:
        if (v34 != &v35)
        {
          free(v34);
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
LABEL_38:
      v13 = v36;
      goto LABEL_39;
    }
  }

  else
  {
    v30 = "requires attribute 'delegate_id'";
    v32 = 259;
    mlir::OpState::emitOpError(this, &v30, v33);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v39;
        v10 = __p;
        if (v39 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v39 = v8;
        operator delete(v10);
      }

      v11 = v36;
      if (!v36)
      {
        goto LABEL_40;
      }

      v12 = v37;
      v13 = v36;
      if (v37 == v36)
      {
        goto LABEL_39;
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
      goto LABEL_38;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::DivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::DivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::DivideOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::EqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::ODIE::Compiler::CoreML::EqualOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  if (!mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(v6, v7, 1, v19[0], v19[1], v9, v10, v11, v14, v15, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = v21;
  v13 = *(a2 + 72);
  if (v13 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v13), __src, 8 * v21);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v22)
  {
    free(__src);
  }
}

unint64_t mlir::ODIE::Compiler::CoreML::EqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::EqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::ODIE::Compiler::CoreML::EqualOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
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
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v26;
  v25 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  if (!mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(v13, v14, 1, a3, a4, v16, v17, v18, v21, v22, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v25;
  v20 = *(a2 + 72);
  if (v20 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v25);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::EqualOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::ErrorOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'coreml.error' op requires attribute 'message'";
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "message", 7uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 52;
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "message", 7, *a2);
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

unint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 7 && (*a3 == 1936942445 ? (v4 = *(a3 + 3) == 1701273971) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::ErrorOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 7 && *a2 == 1936942445 && *(a2 + 3) == 1701273971)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "message", 7uLL, *a2);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::setMessage(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

void mlir::ODIE::Compiler::CoreML::ErrorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4, size_t a5, size_t a6)
{
  v15 = 261;
  v14[0] = a5;
  v14[1] = a6;
  result = mlir::Builder::getStringAttr(a1, v14, a3);
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ErrorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v18[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v1, "message", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
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
    v16 = "requires attribute 'message'";
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

uint64_t mlir::ODIE::Compiler::CoreML::ErrorOp::parse(mlir::ODIE::Compiler::CoreML::ErrorOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  __src = v21;
  v20 = 0x100000000;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v18, v7))
  {
    goto LABEL_17;
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

  if (((*(*this + 64))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, &__src) & 1) == 0 || (v17 = (*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0) || (v9 = *(a2 + 1), v16[0] = this, v16[1] = &v17, v16[2] = a2, (v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96))) != 0) && (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v10, "message", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ErrorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16) & 1) == 0)
  {
LABEL_17:
    v13 = 0;
    v14 = __src;
    if (__src == v21)
    {
      return v13;
    }

LABEL_18:
    free(v14);
    return v13;
  }

  v11 = v20;
  v12 = *(a2 + 18);
  if (v12 + v20 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 8) + 8 * v12), __src, 8 * v20);
    LODWORD(v12) = *(a2 + 18);
  }

  *(a2 + 18) = v12 + v11;
  v13 = 1;
  v14 = __src;
  if (__src != v21)
  {
    goto LABEL_18;
  }

  return v13;
}

void mlir::ODIE::Compiler::CoreML::ErrorOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v30 = *MEMORY[0x277D85DE8];
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
  v6 = *this;
  if (*(*this + 9))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if (v8 >= *(v7 + 3))
    {
      llvm::raw_ostream::write(v7, 32);
    }

    else
    {
      *(v7 + 4) = v8 + 1;
      *v8 = 32;
    }

    v9 = (*(*a2 + 16))(a2);
    v10 = v9[4];
    if (v9[3] - v10 > 1uLL)
    {
      *v10 = 15917;
      v9[4] += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, "->", 2uLL);
    }

    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (v12 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 32;
    }

    v13 = *(*this + 9);
    v14 = *this - 16;
    if (!v13)
    {
      v14 = 0;
    }

    v25[0] = v14;
    v25[1] = v13;
    mlir::ResultRange::getTypes(v25, &v26);
    v15 = v27;
    v16 = v29;
    if (v27 != v29)
    {
      v17 = v26;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, v27);
      (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v15 + 1; v16 != i; ++i)
      {
        v23 = (*(*a2 + 16))(a2);
        v24 = v23[4];
        if (v23[3] - v24 <= 1uLL)
        {
          llvm::raw_ostream::write(v23, ", ", 2uLL);
        }

        else
        {
          *v24 = 8236;
          v23[4] += 2;
        }

        v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, i);
        (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v6 = *this;
  }

  v26 = &v28;
  v28 = "message";
  v29 = 7;
  v27 = 0x200000001;
  v25[0] = mlir::Operation::getAttrDictionary(v6);
  Value = mlir::DictionaryAttr::getValue(v25);
  (*(*a2 + 192))(a2, Value, v21, v26, v27);
  if (v26 != &v28)
  {
    free(v26);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ExpOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::ODIE::Compiler::CoreML::ExpOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::ExpOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ExpOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::ExpandDimsOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::ExpandDimsOp::parse(mlir::ODIE::Compiler::CoreML::ExpandDimsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
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

void mlir::ODIE::Compiler::CoreML::ExpandDimsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::FillOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::FillOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::FillOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::ODIE::Compiler::CoreML::FillOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v86 = *MEMORY[0x277D85DE8];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  if (*(*v3 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
LABEL_3:
    v66 = 261;
    v64 = "operand";
    v65 = 7;
    mlir::Operation::emitOpError(&v74, v2, &v64);
    if (v74)
    {
      LODWORD(v72) = 3;
      *(&v72 + 1) = " #";
      v73 = 2;
      if (v77 >= v78)
      {
        if (v76 > &v72 || v76 + 24 * v77 <= &v72)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v76 + 24 * v77;
      v6 = v72;
      *(v5 + 2) = v73;
      *v5 = v6;
      v7 = ++v77;
      if (v74)
      {
        LODWORD(v72) = 5;
        *(&v72 + 1) = 1;
        if (v7 >= v78)
        {
          if (v76 > &v72 || v76 + 24 * v7 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v76 + 24 * v77;
        v9 = v72;
        *(v8 + 2) = v73;
        *v8 = v9;
        v10 = ++v77;
        if (v74)
        {
          LODWORD(v72) = 3;
          *(&v72 + 1) = " must be 0D tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
          v73 = 242;
          if (v10 >= v78)
          {
            if (v76 > &v72 || v76 + 24 * v10 <= &v72)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v76 + 24 * v77;
          v12 = v72;
          *(v11 + 2) = v73;
          *v11 = v12;
          ++v77;
          if (v74)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v72, v3);
            if (v77 >= v78)
            {
              if (v76 > &v72 || v76 + 24 * v77 <= &v72)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v13 = v76 + 24 * v77;
            v14 = v72;
            *(v13 + 2) = v73;
            *v13 = v14;
            ++v77;
          }
        }
      }
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v85 == 1)
    {
      if (v84 != &v85)
      {
        free(v84);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v83;
        v18 = __p;
        if (v83 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v83 = v16;
        operator delete(v18);
      }

      v19 = v80;
      if (v80)
      {
        v20 = v81;
        v21 = v80;
        if (v81 != v80)
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
          v21 = v80;
        }

        v81 = v19;
        operator delete(v21);
      }

      if (v76 != &v79)
      {
        free(v76);
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
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
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
  if (v27 == &v25[2 * v26] || *v27 != v24)
  {
LABEL_62:
    v74 = v3;
    v75 = 0;
    if (!mlir::ShapedType::hasRank(&v74))
    {
      goto LABEL_3;
    }

    goto LABEL_65;
  }

  v37 = v27[1];
  v74 = v3;
  v75 = v37;
  if (!mlir::ShapedType::hasRank(&v74))
  {
    goto LABEL_3;
  }

LABEL_65:
  v38 = *v3;
  {
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = v38[1];
    v41 = *(v38 + 4);
    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v63 = v38;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = v63[1];
    v41 = *(v63 + 4);
    if (!v41)
    {
      goto LABEL_77;
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
LABEL_77:
    v64 = v3;
    v65 = 0;
    mlir::ShapedType::getShape(&v64);
    if (v48)
    {
      goto LABEL_3;
    }

    goto LABEL_80;
  }

  v49 = v42[1];
  v64 = v3;
  v65 = v49;
  mlir::ShapedType::getShape(&v64);
  if (v50)
  {
    goto LABEL_3;
  }

LABEL_80:
  v51 = *v3;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (v54)
    {
      goto LABEL_82;
    }

LABEL_91:
    v54 = 0;
    v55 = v53;
    goto LABEL_92;
  }

  v61 = v51;
  mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
  v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v53 = v61[1];
  v54 = *(v61 + 4);
  if (!v54)
  {
    goto LABEL_91;
  }

LABEL_82:
  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
LABEL_92:
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
  }

  else
  {
    v62 = 0;
  }

  *&v72 = v3;
  *(&v72 + 1) = v62;
  ElementType = mlir::ShapedType::getElementType(&v72);
  if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType) && !mlir::Type::isSignedInteger(&ElementType, 4) && !mlir::Type::isSignedInteger(&ElementType, 8) && !mlir::Type::isSignedInteger(&ElementType, 16) && !mlir::Type::isSignedInteger(&ElementType, 32) && !mlir::Type::isSignedInteger(&ElementType, 64) && !mlir::Type::isUnsignedInteger(&ElementType, 4) && !mlir::Type::isUnsignedInteger(&ElementType, 8) && !mlir::Type::isUnsignedInteger(&ElementType, 16) && !mlir::Type::isUnsignedInteger(&ElementType, 32) && !mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v69 = ElementType, v70 = mlir::ComplexType::getElementType(&v69), !mlir::Type::isF16(&v70)) && (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v67 = ElementType, v68 = mlir::ComplexType::getElementType(&v67), !mlir::Type::isF32(&v68))))
    {
      if (!mlir::Type::isSignlessInteger(&ElementType, 1))
      {
        goto LABEL_3;
      }
    }
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
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::ODIE::Compiler::CoreML::FloorDivideOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::FuncOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(a1 + 72) = v3[3];
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 88), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 88), 0, 0);
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
  v6 = v3[2];
  *(a1 + 72) = v3[3];
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 88), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 88), 0, 0);
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  if (!v3)
  {
    v38[0] = "'coreml.llo.func' op requires attribute 'function_type'";
    v39 = 259;
    mlir::emitError(a2, v38, v40);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 != 1)
    {
      return v6;
    }

    if (v47 != &v48)
    {
      free(v47);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v46;
      v17 = __p;
      if (v46 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v46 = v15;
      operator delete(v17);
    }

    v10 = v43;
    if (!v43)
    {
      goto LABEL_56;
    }

    v18 = v44;
    v12 = v43;
    if (v44 == v43)
    {
      goto LABEL_55;
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
    goto LABEL_54;
  }

  if (!a1[7])
  {
    v38[0] = "'coreml.llo.func' op requires attribute 'param_decls'";
    v39 = 259;
    mlir::emitError(a2, v38, v40);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 != 1)
    {
      return v6;
    }

    if (v47 != &v48)
    {
      free(v47);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v46;
      v23 = __p;
      if (v46 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v46 = v21;
      operator delete(v23);
    }

    v10 = v43;
    if (!v43)
    {
      goto LABEL_56;
    }

    v24 = v44;
    v12 = v43;
    if (v44 == v43)
    {
      goto LABEL_55;
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
    goto LABEL_54;
  }

  if (!a1[10])
  {
    v38[0] = "'coreml.llo.func' op requires attribute 'sym_name'";
    v39 = 259;
    mlir::emitError(a2, v38, v40);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
    if (v40[0])
    {
      mlir::InFlightDiagnostic::report(v40);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v46;
        v30 = __p;
        if (v46 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v46 = v28;
        operator delete(v30);
      }

      v31 = v43;
      if (v43)
      {
        v32 = v44;
        v33 = v43;
        if (v44 != v43)
        {
          do
          {
            v35 = *--v32;
            v34 = v35;
            *v32 = 0;
            if (v35)
            {
              MEMORY[0x259C63150](v34, 0x1000C8077774924);
            }
          }

          while (v32 != v31);
          v33 = v43;
        }

        v44 = v31;
        operator delete(v33);
      }

      v27 = v41;
      if (v41 != v42)
      {
        goto LABEL_82;
      }
    }

    return v6;
  }

  v4 = a1[3];
  v5 = a1[8];
  v40[0] = a1[5];
  if (*(*mlir::TypeAttr::getValue(v40) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v38[0] = v3;
    if (*(*mlir::TypeAttr::getValue(v38) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      if (v4 && (v40[0] = v4, (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(v40) & 1) == 0))
      {
        v37 = "'coreml.llo.func' op attribute 'arg_attrs' failed to satisfy constraint: Array of dictionary attributes";
      }

      else
      {
        if (!v5)
        {
          return 1;
        }

        v40[0] = v5;
        if (llvm::all_of<mlir::ArrayAttr,mlir::ODIE::Compiler::CoreML::FuncOpAdaptor::verify(mlir::Location)::$_0>(v40))
        {
          return 1;
        }

        v37 = "'coreml.llo.func' op attribute 'res_attrs' failed to satisfy constraint: Array of dictionary attributes";
      }

      v38[0] = v37;
      v39 = 259;
      mlir::emitError(a2, v38, v40);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v40);
      return v6;
    }
  }

  v38[0] = "'coreml.llo.func' op attribute 'function_type' failed to satisfy constraint: type attribute of function type";
  v39 = 259;
  mlir::emitError(a2, v38, v40);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
  if (v40[0])
  {
    mlir::InFlightDiagnostic::report(v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v46;
      v9 = __p;
      if (v46 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v46 = v7;
      operator delete(v9);
    }

    v10 = v43;
    if (!v43)
    {
LABEL_56:
      v27 = v41;
      if (v41 != v42)
      {
LABEL_82:
        free(v27);
        return v6;
      }

      return v6;
    }

    v11 = v44;
    v12 = v43;
    if (v44 == v43)
    {
LABEL_55:
      v44 = v10;
      operator delete(v12);
      goto LABEL_56;
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
LABEL_54:
    v12 = v43;
    goto LABEL_55;
  }

  return v6;
}