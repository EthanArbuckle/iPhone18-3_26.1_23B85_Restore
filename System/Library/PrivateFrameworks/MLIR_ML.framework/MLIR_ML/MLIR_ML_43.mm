uint64_t mlir::pdl_interp::CheckOperandCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::CheckOperandCountOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v18[0] = v2;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v4, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (v18[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "compareAtLeast", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18)))
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
    v16 = "requires attribute 'count'";
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

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
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
        v30 = 55;
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

uint64_t mlir::pdl_interp::CheckOperandCountOp::parse(mlir::pdl_interp::CheckOperandCountOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22 = 0;
  v25 = v27;
  v26 = 0x200000000;
  v31 = 257;
  if ((*(*this + 400))())
  {
    (*(*this + 40))(this);
    if ((*(*this + 704))(this, v23, 1))
    {
      v31 = 257;
      if ((*(*this + 400))(this, "is", 2, &v28))
      {
        if ((*(*this + 408))(this, "at_least", 8))
        {
          v5 = (*(*this + 32))(this);
          UnitAttr = mlir::Builder::getUnitAttr(v5, v6);
          v8 = *(a2 + 32);
          if (!v8)
          {
            operator new();
          }

          *v8 = UnitAttr;
        }

        v9 = (*(*this + 32))(this);
        IntegerType = mlir::Builder::getIntegerType(v9, 32);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v22, IntegerType))
        {
          if (v22)
          {
            v11 = *(a2 + 32);
            if (!v11)
            {
              operator new();
            }

            *(v11 + 8) = v22;
          }

          v21 = (*(*this + 40))(this);
          if ((*(*this + 488))(this, a2 + 112))
          {
            v12 = *(a2 + 1);
            v28 = this;
            v29 = &v21;
            v30 = a2;
            v13 = mlir::NamedAttrList::get(a2 + 112, **(v12 + 96));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v13, "compareAtLeast", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v28) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2 + 112, *(*(v12 + 96) + 8));
              if (!v14 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v14, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v28)) && ((*(*this + 56))(this))
              {
                v28 = 0;
                v15 = (*(*this + 808))(this, &v28);
                if ((v15 & 0x100) == 0)
                {
LABEL_20:
                  mlir::BlockRange::BlockRange(&v28, v25, v26);
                  mlir::OperationState::addSuccessors(a2, v28, v29);
                  v16 = (*(*this + 32))(this);
                  v17 = mlir::Builder::getType<mlir::pdl::OperationType>(v16);
                  v18 = (*(*this + 728))(this, v23, v17, a2 + 16) & 1;
                  goto LABEL_29;
                }

                if (v15)
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v25, &v28);
                  while (((*(*this + 128))(this) & 1) != 0)
                  {
                    if (((*(*this + 800))(this, &v28) & 1) == 0)
                    {
                      goto LABEL_28;
                    }

                    v19 = v26;
                    if (v26 >= HIDWORD(v26))
                    {
                      llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v25, &v28);
                    }

                    else
                    {
                      *(v25 + v26) = v28;
                      LODWORD(v26) = v19 + 1;
                    }
                  }

                  goto LABEL_20;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_28:
  v18 = 0;
LABEL_29:
  if (v25 != v27)
  {
    free(v25);
  }

  return v18;
}

uint64_t mlir::Builder::getType<mlir::pdl::OperationType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
}

void mlir::pdl_interp::CheckOperandCountOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x277D85DE8];
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
    *v13 = 29545;
    v12[4] += 2;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, "is", 2uLL);
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
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
  if (v16[3] - v17 > 7uLL)
  {
    *v17 = 0x747361656C5F7461;
    v16[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(v16, "at_least", 8uLL);
  }

LABEL_23:
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  v37 = v39;
  v39[0] = "compareAtLeast";
  v39[1] = 14;
  v39[2] = "count";
  v39[3] = 5;
  v38 = 0x200000002;
  mlir::Attribute::getContext((*this + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v37, v38);
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
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  v29 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v30 = v28 - 1;
  if (v30)
  {
    v31 = (v29 + 56);
    do
    {
      v33 = (*(*a2 + 16))(a2);
      v34 = v33[4];
      if (v33[3] - v34 <= 1uLL)
      {
        llvm::raw_ostream::write(v33, ", ", 2uLL);
      }

      else
      {
        *v34 = 8236;
        v33[4] += 2;
      }

      v32 = *v31;
      v31 += 4;
      (*(*a2 + 176))(a2, v32);
      --v30;
    }

    while (v30);
  }

LABEL_37:
  if (v37 != v39)
  {
    free(v37);
  }
}

uint64_t mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::CheckOperationNameOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::CheckOperationNameOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'pdl_interp.check_operation_name' op requires attribute 'name'";
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

uint64_t mlir::pdl_interp::CheckOperationNameOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "name", 4uLL);
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
    v33 = 49;
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

uint64_t mlir::pdl_interp::CheckOperationNameOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "name", 4, *a2);
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

unint64_t mlir::pdl_interp::CheckOperationNameOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::CheckOperationNameOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::CheckOperationNameOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::pdl_interp::CheckOperationNameOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "name", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v2) & 1;
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::setName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a4;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = *(a2 + 208) + 1;
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckOperationNameOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a5;
  result = mlir::OperationState::addOperands(a2, &v22, 1uLL);
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
  v17 = *(a2 + 212);
  v18 = *(a2 + 208) + 1;
  *(a2 + 208) = v18;
  if (v18 >= v17)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a8;
  ++*(a2 + 208);
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

uint64_t mlir::pdl_interp::CheckOperationNameOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v20 = 261;
  v19[0] = a4;
  v19[1] = a5;
  result = mlir::Builder::getStringAttr(a1, v19, v13);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = result;
  v16 = *(a2 + 208);
  if (v16 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v16) = a6;
  v17 = *(a2 + 212);
  v18 = *(a2 + 208) + 1;
  *(a2 + 208) = v18;
  if (v18 >= v17)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a7;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckOperationNameOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v26 = 261;
  v25[0] = a6;
  v25[1] = a7;
  result = mlir::Builder::getStringAttr(a1, v25, v16);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = result;
  v19 = *(a2 + 208);
  if (v19 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v19) = a8;
  v20 = *(a2 + 212);
  v21 = *(a2 + 208) + 1;
  *(a2 + 208) = v21;
  if (v21 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v21) = a9;
  ++*(a2 + 208);
  v22 = *(a2 + 72);
  if (a4 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v23 = 0;
    v24 = *(a2 + 64) + 8 * v22;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v23);
      *(v24 + 8 * v23++) = result;
    }

    while (a4 != v23);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + a4;
  return result;
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::CheckOperationNameOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v1, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
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
    v13 = "requires attribute 'name'";
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

uint64_t mlir::pdl_interp::CheckOperationNameOp::parse(mlir::pdl_interp::CheckOperationNameOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18 = 0;
  v21 = v23;
  v22 = 0x200000000;
  v27 = 257;
  if ((*(*this + 400))())
  {
    (*(*this + 40))(this);
    if ((*(*this + 704))(this, v19, 1))
    {
      v27 = 257;
      if ((*(*this + 400))(this, "is", 2, &v24))
      {
        v5 = (*(*this + 32))(this);
        v7 = mlir::NoneType::get(*v5, v6);
        if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v18, v7))
        {
          if (v18)
          {
            v8 = *(a2 + 32);
            if (!v8)
            {
              operator new();
            }

            *v8 = v18;
          }

          v17 = (*(*this + 40))(this);
          if ((*(*this + 488))(this, a2 + 112))
          {
            v9 = *(a2 + 1);
            v24 = this;
            v25 = &v17;
            v26 = a2;
            v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
            if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v10, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v24)) && ((*(*this + 56))(this))
            {
              v24 = 0;
              v11 = (*(*this + 808))(this, &v24);
              if ((v11 & 0x100) == 0)
              {
LABEL_14:
                mlir::BlockRange::BlockRange(&v24, v21, v22);
                mlir::OperationState::addSuccessors(a2, v24, v25);
                v12 = (*(*this + 32))(this);
                v13 = mlir::Builder::getType<mlir::pdl::OperationType>(v12);
                v14 = (*(*this + 728))(this, v19, v13, a2 + 16) & 1;
                goto LABEL_23;
              }

              if (v11)
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, &v24);
                while (((*(*this + 128))(this) & 1) != 0)
                {
                  if (((*(*this + 800))(this, &v24) & 1) == 0)
                  {
                    goto LABEL_22;
                  }

                  v15 = v22;
                  if (v22 >= HIDWORD(v22))
                  {
                    llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v21, &v24);
                  }

                  else
                  {
                    *(v21 + v22) = v24;
                    LODWORD(v22) = v15 + 1;
                  }
                }

                goto LABEL_14;
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  v14 = 0;
LABEL_23:
  if (v21 != v23)
  {
    free(v21);
  }

  return v14;
}

void mlir::pdl_interp::CheckOperationNameOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v35[4] = *MEMORY[0x277D85DE8];
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
    *v13 = 29545;
    v12[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, "is", 2uLL);
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
  v33 = v35;
  v35[0] = "name";
  v35[1] = 4;
  v34 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v17, v33, v34);
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
    *v21 = 15917;
    v20[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, "->", 2uLL);
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v24 = v32;
    if (!v32)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v24 = v32;
    if (!v32)
    {
      goto LABEL_30;
    }
  }

  v25 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v26 = v24 - 1;
  if (v26)
  {
    v27 = (v25 + 56);
    do
    {
      v29 = (*(*a2 + 16))(a2);
      v30 = v29[4];
      if (v29[3] - v30 <= 1uLL)
      {
        llvm::raw_ostream::write(v29, ", ", 2uLL);
      }

      else
      {
        *v30 = 8236;
        v29[4] += 2;
      }

      v28 = *v27;
      v27 += 4;
      (*(*a2 + 176))(a2, v28);
      --v26;
    }

    while (v26);
  }

LABEL_30:
  if (v33 != v35)
  {
    free(v33);
  }
}

uint64_t mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::CheckResultCountOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t *mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::getCount(mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase *this)
{
  v5 = *(this + 4);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::pdl_interp::CheckResultCountOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (v3)
  {
    v24 = *(a1 + 32);
    v25[0] = mlir::IntegerAttr::getType(&v24);
    if (mlir::Type::isSignlessInteger(v25, 32))
    {
      v23 = v3;
      mlir::IntegerAttr::getValue(&v23, &v27);
      v4 = v28 - 1;
      if (v28 >= 0x41)
      {
        v5 = (v27 + 8 * (v4 >> 6));
      }

      else
      {
        v5 = &v27;
      }

      v6 = (1 << v4) & *v5;
      if (v28 >= 0x41 && v27)
      {
        MEMORY[0x259C63150]();
      }

      if (!v6)
      {
        return 1;
      }
    }

    v25[0] = "'pdl_interp.check_result_count' op attribute 'count' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative";
    v26 = 259;
    mlir::emitError(a2, v25, &v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }

      v12 = v32;
      v13 = v31;
      if (v32 == v31)
      {
LABEL_43:
        v32 = v11;
        operator delete(v13);
LABEL_44:
        if (v29 != &v30)
        {
          free(v29);
        }

        return v7;
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
LABEL_42:
      v13 = v31;
      goto LABEL_43;
    }
  }

  else
  {
    v25[0] = "'pdl_interp.check_result_count' op requires attribute 'count'";
    v26 = 259;
    mlir::emitError(a2, v25, &v27);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
    if (v27)
    {
      mlir::InFlightDiagnostic::report(&v27);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v34;
        v18 = __p;
        if (v34 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v34 = v16;
        operator delete(v18);
      }

      v11 = v31;
      if (!v31)
      {
        goto LABEL_44;
      }

      v19 = v32;
      v13 = v31;
      if (v32 == v31)
      {
        goto LABEL_43;
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
      goto LABEL_42;
    }
  }

  return v7;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "compareAtLeast", 0xEuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 59;
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

  v30 = mlir::DictionaryAttr::get(&v43, "count", 5uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 50;
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

uint64_t mlir::pdl_interp::CheckResultCountOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "compareAtLeast", 0xE, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "count", 5, v7);
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

unint64_t mlir::pdl_interp::CheckResultCountOp::computePropertiesHash(void *a1)
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

unint64_t mlir::pdl_interp::CheckResultCountOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 5)
  {
    if (a4 == 14 && *a3 == 0x41657261706D6F63 && *(a3 + 6) == 0x747361654C744165)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1853189987 || *(a3 + 4) != 116)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::pdl_interp::CheckResultCountOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5)
  {
    if (*a2 == 1853189987 && *(a2 + 4) == 116)
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

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 14 && *a2 == 0x41657261706D6F63 && *(a2 + 6) == 0x747361654C744165)
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

void mlir::pdl_interp::CheckResultCountOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "compareAtLeast", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "count", 5uLL, v5);
  }
}

BOOL mlir::pdl_interp::CheckResultCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "compareAtLeast", 14, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v9, "count", 5, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::pdl_interp::CheckResultCountOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t *mlir::pdl_interp::CheckResultCountOp::getCount(mlir::pdl_interp::CheckResultCountOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::setCount(mlir::pdl_interp::CheckResultCountOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::setCompareAtLeast(uint64_t this, int a2)
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

uint64_t mlir::pdl_interp::CheckResultCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a3;
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 8) = a4;
  if (a5)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a5;
  }

  v15 = *(a2 + 208);
  if (v15 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v15) = a6;
  v16 = *(a2 + 212);
  v17 = *(a2 + 208) + 1;
  *(a2 + 208) = v17;
  if (v17 >= v16)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v17) = a7;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckResultCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a5;
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a6;
  if (a7)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = a7;
  }

  v18 = *(a2 + 208);
  if (v18 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a8;
  v19 = *(a2 + 212);
  v20 = *(a2 + 208) + 1;
  *(a2 + 208) = v20;
  if (v20 >= v19)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v20) = a9;
  ++*(a2 + 208);
  v21 = *(a2 + 72);
  if (a4 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v22 = 0;
    v23 = *(a2 + 64) + 8 * v21;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v22);
      *(v23 + 8 * v22++) = result;
    }

    while (a4 != v22);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + a4;
  return result;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = result;
  if (!a5)
  {
    v17 = *(a2 + 208);
    if (v17 < *(a2 + 212))
    {
      goto LABEL_4;
    }

LABEL_9:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v15);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = result;
  v17 = *(a2 + 208);
  if (v17 >= *(a2 + 212))
  {
    goto LABEL_9;
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v17) = a6;
  v18 = *(a2 + 212);
  v19 = *(a2 + 208) + 1;
  *(a2 + 208) = v19;
  if (v19 >= v18)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v19) = a7;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckResultCountOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9)
{
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a6);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = result;
  if (!a7)
  {
    v20 = *(a2 + 208);
    if (v20 < *(a2 + 212))
    {
      goto LABEL_4;
    }

LABEL_15:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v18);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *v26 = result;
  v20 = *(a2 + 208);
  if (v20 >= *(a2 + 212))
  {
    goto LABEL_15;
  }

LABEL_4:
  *(*(a2 + 200) + 8 * v20) = a8;
  v21 = *(a2 + 212);
  v22 = *(a2 + 208) + 1;
  *(a2 + 208) = v22;
  if (v22 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v22) = a9;
  ++*(a2 + 208);
  v23 = *(a2 + 72);
  if (a4 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v24 = 0;
    v25 = *(a2 + 64) + 8 * v23;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v24);
      *(v25 + 8 * v24++) = result;
    }

    while (a4 != v24);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + a4;
  return result;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::CheckResultCountOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v18[0] = v2;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v4, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (v18[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "compareAtLeast", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18)))
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
    v16 = "requires attribute 'count'";
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

uint64_t mlir::pdl_interp::CheckResultCountOp::parse(mlir::pdl_interp::CheckResultCountOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22 = 0;
  v25 = v27;
  v26 = 0x200000000;
  v31 = 257;
  if ((*(*this + 400))())
  {
    (*(*this + 40))(this);
    if ((*(*this + 704))(this, v23, 1))
    {
      v31 = 257;
      if ((*(*this + 400))(this, "is", 2, &v28))
      {
        if ((*(*this + 408))(this, "at_least", 8))
        {
          v5 = (*(*this + 32))(this);
          UnitAttr = mlir::Builder::getUnitAttr(v5, v6);
          v8 = *(a2 + 32);
          if (!v8)
          {
            operator new();
          }

          *v8 = UnitAttr;
        }

        v9 = (*(*this + 32))(this);
        IntegerType = mlir::Builder::getIntegerType(v9, 32);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v22, IntegerType))
        {
          if (v22)
          {
            v11 = *(a2 + 32);
            if (!v11)
            {
              operator new();
            }

            *(v11 + 8) = v22;
          }

          v21 = (*(*this + 40))(this);
          if ((*(*this + 488))(this, a2 + 112))
          {
            v12 = *(a2 + 1);
            v28 = this;
            v29 = &v21;
            v30 = a2;
            v13 = mlir::NamedAttrList::get(a2 + 112, **(v12 + 96));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v13, "compareAtLeast", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v28) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2 + 112, *(*(v12 + 96) + 8));
              if (!v14 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v14, "count", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v28)) && ((*(*this + 56))(this))
              {
                v28 = 0;
                v15 = (*(*this + 808))(this, &v28);
                if ((v15 & 0x100) == 0)
                {
LABEL_20:
                  mlir::BlockRange::BlockRange(&v28, v25, v26);
                  mlir::OperationState::addSuccessors(a2, v28, v29);
                  v16 = (*(*this + 32))(this);
                  v17 = mlir::Builder::getType<mlir::pdl::OperationType>(v16);
                  v18 = (*(*this + 728))(this, v23, v17, a2 + 16) & 1;
                  goto LABEL_29;
                }

                if (v15)
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v25, &v28);
                  while (((*(*this + 128))(this) & 1) != 0)
                  {
                    if (((*(*this + 800))(this, &v28) & 1) == 0)
                    {
                      goto LABEL_28;
                    }

                    v19 = v26;
                    if (v26 >= HIDWORD(v26))
                    {
                      llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v25, &v28);
                    }

                    else
                    {
                      *(v25 + v26) = v28;
                      LODWORD(v26) = v19 + 1;
                    }
                  }

                  goto LABEL_20;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_28:
  v18 = 0;
LABEL_29:
  if (v25 != v27)
  {
    free(v25);
  }

  return v18;
}

void mlir::pdl_interp::CheckResultCountOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x277D85DE8];
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
    *v13 = 29545;
    v12[4] += 2;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, "is", 2uLL);
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
    {
      goto LABEL_23;
    }
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
  if (v16[3] - v17 > 7uLL)
  {
    *v17 = 0x747361656C5F7461;
    v16[4] += 8;
  }

  else
  {
    llvm::raw_ostream::write(v16, "at_least", 8uLL);
  }

LABEL_23:
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9));
  v37 = v39;
  v39[0] = "compareAtLeast";
  v39[1] = 14;
  v39[2] = "count";
  v39[3] = 5;
  v38 = 0x200000002;
  mlir::Attribute::getContext((*this + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v37, v38);
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
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, *this);
    v28 = v36;
    if (!v36)
    {
      goto LABEL_37;
    }
  }

  v29 = AttrDictionary;
  (*(*a2 + 176))(a2, *(AttrDictionary + 24));
  v30 = v28 - 1;
  if (v30)
  {
    v31 = (v29 + 56);
    do
    {
      v33 = (*(*a2 + 16))(a2);
      v34 = v33[4];
      if (v33[3] - v34 <= 1uLL)
      {
        llvm::raw_ostream::write(v33, ", ", 2uLL);
      }

      else
      {
        *v34 = 8236;
        v33[4] += 2;
      }

      v32 = *v31;
      v31 += 4;
      (*(*a2 + 176))(a2, v32);
      --v30;
    }

    while (v30);
  }

LABEL_37:
  if (v37 != v39)
  {
    free(v37);
  }
}

uint64_t mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::CheckTypeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::CheckTypeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v14[0] = *(a1 + 24);
    mlir::TypeAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'pdl_interp.check_type' op requires attribute 'type'";
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
  }

  return v2;
}

uint64_t mlir::pdl_interp::CheckTypeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "type", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
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

uint64_t mlir::pdl_interp::CheckTypeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "type", 4, *a2);
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

unint64_t mlir::pdl_interp::CheckTypeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::CheckTypeOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701869940)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::CheckTypeOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701869940)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

uint64_t mlir::pdl_interp::CheckTypeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "type", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckTypeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypeAttr]";
  *(&v28 + 1) = 64;
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

uint64_t mlir::pdl_interp::CheckTypeOp::setType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::pdl_interp::CheckTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a4;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = *(a2 + 208) + 1;
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
  return result;
}

{
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::TypeAttr::get(a4);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = *(a2 + 208) + 1;
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a5;
  result = mlir::OperationState::addOperands(a2, &v22, 1uLL);
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
  v17 = *(a2 + 212);
  v18 = *(a2 + 208) + 1;
  *(a2 + 208) = v18;
  if (v18 >= v17)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a8;
  ++*(a2 + 208);
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

{
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  result = mlir::TypeAttr::get(a6);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = result;
  v16 = *(a2 + 208);
  if (v16 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v16) = a7;
  v17 = *(a2 + 212);
  v18 = *(a2 + 208) + 1;
  *(a2 + 208) = v18;
  if (v18 >= v17)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a8;
  ++*(a2 + 208);
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

uint64_t mlir::pdl_interp::CheckTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::CheckTypeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v1, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'type'";
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

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
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
        v30 = 48;
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

uint64_t mlir::pdl_interp::CheckTypeOp::parse(mlir::pdl_interp::CheckTypeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18 = 0;
  v21 = v23;
  v22 = 0x200000000;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v19, 1))
  {
    v27 = 257;
    if ((*(*this + 400))(this, "is", 2, &v24))
    {
      v5 = (*(*this + 32))(this);
      v7 = mlir::NoneType::get(*v5, v6);
      if (mlir::AsmParser::parseAttribute<mlir::TypeAttr>(this, &v18, v7))
      {
        if (v18)
        {
          v8 = *(a2 + 32);
          if (!v8)
          {
            operator new();
          }

          *v8 = v18;
        }

        v17 = (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112))
        {
          v9 = *(a2 + 1);
          v24 = this;
          v25 = &v17;
          v26 = a2;
          v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
          if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v10, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v24)) && ((*(*this + 56))(this))
          {
            v24 = 0;
            v11 = (*(*this + 808))(this, &v24);
            if ((v11 & 0x100) == 0)
            {
LABEL_13:
              mlir::BlockRange::BlockRange(&v24, v21, v22);
              mlir::OperationState::addSuccessors(a2, v24, v25);
              v12 = (*(*this + 32))(this);
              v13 = mlir::Builder::getType<mlir::pdl::TypeType>(v12);
              v14 = (*(*this + 728))(this, v19, v13, a2 + 16) & 1;
              goto LABEL_22;
            }

            if (v11)
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v21, &v24);
              while (((*(*this + 128))(this) & 1) != 0)
              {
                if (((*(*this + 800))(this, &v24) & 1) == 0)
                {
                  goto LABEL_21;
                }

                v15 = v22;
                if (v22 >= HIDWORD(v22))
                {
                  llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v21, &v24);
                }

                else
                {
                  *(v21 + v22) = v24;
                  LODWORD(v22) = v15 + 1;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v14 = 0;
LABEL_22:
  if (v21 != v23)
  {
    free(v21);
  }

  return v14;
}

uint64_t mlir::Builder::getType<mlir::pdl::TypeType>(mlir::MLIRContext **a1)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);

  return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
}

void mlir::pdl_interp::CheckTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29545;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "is", 2uLL);
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
  v29 = v31;
  v31[0] = "type";
  v31[1] = 4;
  v30 = 0x200000001;
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

uint64_t mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::CheckTypesOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::CheckTypesOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v23[0] = *(a1 + 24);
    Value = mlir::ArrayAttr::getValue(v23);
    v4 = mlir::ArrayAttr::getValue(v23);
    v6 = v4 + 8 * v5;
    if (v6 == Value)
    {
      return 1;
    }

    while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v25[0] = *Value;
      mlir::TypeAttr::getValue(v25);
      Value += 8;
      if (Value == v6)
      {
        return 1;
      }
    }

    v23[0] = "'pdl_interp.check_types' op attribute 'types' failed to satisfy constraint: type array attribute";
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
    v23[0] = "'pdl_interp.check_types' op requires attribute 'types'";
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

uint64_t mlir::pdl_interp::CheckTypesOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "types", 5uLL);
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

uint64_t mlir::pdl_interp::CheckTypesOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "types", 5, *a2);
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

unint64_t mlir::pdl_interp::CheckTypesOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::CheckTypesOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701869940 ? (v4 = *(a3 + 4) == 115) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::pdl_interp::CheckTypesOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1701869940 && *(a2 + 4) == 115)
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

uint64_t mlir::pdl_interp::CheckTypesOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "types", 5uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *&v27 = a1;
    Value = mlir::ArrayAttr::getValue(&v27);
    v14 = mlir::ArrayAttr::getValue(&v27);
    v16 = v14 + 8 * v15;
    if (v16 != Value)
    {
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v30 = *Value;
        mlir::TypeAttr::getValue(&v30);
        Value += 8;
        if (Value == v16)
        {
          return 1;
        }
      }

      a4(&v30, a5);
      if (!v30)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }

    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
LABEL_4:
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

    v7 = v32 + 24 * v33;
    v8 = v27;
    *(v7 + 2) = v28;
    *v7 = v8;
    ++v33;
    if (v30)
    {
      v29 = 261;
      *&v27 = a2;
      *(&v27 + 1) = a3;
      mlir::Diagnostic::operator<<(&v31, &v27);
      if (v30)
      {
        LODWORD(v27) = 3;
        *(&v27 + 1) = "' failed to satisfy constraint: type array attribute";
        v28 = 52;
        if (v33 >= v34)
        {
          if (v32 > &v27 || v32 + 24 * v33 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v32 + 24 * v33;
        v10 = v27;
        *(v9 + 2) = v28;
        *v9 = v10;
        ++v33;
      }
    }
  }

LABEL_15:
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
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

uint64_t mlir::pdl_interp::CheckTypesOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v2) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ArrayAttr]";
  *(&v28 + 1) = 65;
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

uint64_t mlir::pdl_interp::CheckTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a4;
  v12 = *(a2 + 208);
  if (v12 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v12) = a5;
  v13 = *(a2 + 212);
  v14 = *(a2 + 208) + 1;
  *(a2 + 208) = v14;
  if (v14 >= v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v14) = a6;
  ++*(a2 + 208);
  return result;
}

unint64_t mlir::pdl_interp::CheckTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a5;
  result = mlir::OperationState::addOperands(a2, &v22, 1uLL);
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
  v17 = *(a2 + 212);
  v18 = *(a2 + 208) + 1;
  *(a2 + 208) = v18;
  if (v18 >= v17)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 200) + 8 * v18) = a8;
  ++*(a2 + 208);
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

uint64_t mlir::pdl_interp::CheckTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::CheckTypesOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v1, "types", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'types'";
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

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v36[0] = a2;
    v7 = a1;
    v8 = a4;
    v9 = a3;
    ElementType = mlir::pdl::RangeType::getElementType(v36);
    a3 = v9;
    a4 = v8;
    v11 = ElementType;
    a1 = v7;
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      return 1;
    }
  }

  v33 = 261;
  v32[0] = a3;
  v32[1] = a4;
  mlir::Operation::emitOpError(v36, a1, v32);
  if (v36[0])
  {
    LODWORD(v34) = 3;
    *(&v34 + 1) = " #";
    v35 = 2;
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
    v14 = ++v38;
    if (v36[0])
    {
      LODWORD(v34) = 5;
      *(&v34 + 1) = a5;
      if (v14 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v14 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = v37 + 24 * v38;
      v16 = v34;
      *(v15 + 2) = v35;
      *v15 = v16;
      v17 = ++v38;
      if (v36[0])
      {
        LODWORD(v34) = 3;
        v35 = 64;
        if (v17 >= v39)
        {
          if (v37 > &v34 || v37 + 24 * v17 <= &v34)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v18 = v37 + 24 * v38;
        v19 = v34;
        *(v18 + 2) = v35;
        *v18 = v19;
        ++v38;
        if (v36[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v34, a2);
          if (v38 >= v39)
          {
            if (v37 > &v34 || v37 + 24 * v38 <= &v34)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v20 = v37 + 24 * v38;
          v21 = v34;
          *(v20 + 2) = v35;
          *v20 = v21;
          ++v38;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v44;
      v25 = __p;
      if (v44 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v44 = v23;
      operator delete(v25);
    }

    v26 = v41;
    if (v41)
    {
      v27 = v42;
      v28 = v41;
      if (v42 != v41)
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
        v28 = v41;
      }

      v42 = v26;
      operator delete(v28);
    }

    if (v37 != &v40)
    {
      free(v37);
    }
  }

  return v22;
}

uint64_t mlir::pdl_interp::CheckTypesOp::parse(mlir::pdl_interp::CheckTypesOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19 = 0;
  v22 = v24;
  v23 = 0x200000000;
  (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v20, 1))
  {
    v28 = 257;
    if ((*(*this + 400))(this, "are", 3, &v25))
    {
      v5 = (*(*this + 32))(this);
      v7 = mlir::NoneType::get(*v5, v6);
      if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v19, v7))
      {
        if (v19)
        {
          v8 = *(a2 + 32);
          if (!v8)
          {
            operator new();
          }

          *v8 = v19;
        }

        v18 = (*(*this + 40))(this);
        if ((*(*this + 488))(this, a2 + 112))
        {
          v9 = *(a2 + 1);
          v25 = this;
          v26 = &v18;
          v27 = a2;
          v10 = mlir::NamedAttrList::get(a2 + 112, **(v9 + 96));
          if (!v10 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v10, "types", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v25)) && ((*(*this + 56))(this))
          {
            v25 = 0;
            v11 = (*(*this + 808))(this, &v25);
            if ((v11 & 0x100) == 0)
            {
LABEL_13:
              mlir::BlockRange::BlockRange(&v25, v22, v23);
              mlir::OperationState::addSuccessors(a2, v25, v26);
              v12 = (*(*this + 32))(this);
              v13 = mlir::Builder::getType<mlir::pdl::TypeType>(v12);
              v14 = mlir::pdl::RangeType::get(v13);
              v15 = (*(*this + 728))(this, v20, v14, a2 + 16) & 1;
              goto LABEL_22;
            }

            if (v11)
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, &v25);
              while (((*(*this + 128))(this) & 1) != 0)
              {
                if (((*(*this + 800))(this, &v25) & 1) == 0)
                {
                  goto LABEL_21;
                }

                v16 = v23;
                if (v23 >= HIDWORD(v23))
                {
                  llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v22, &v25);
                }

                else
                {
                  *(v22 + v23) = v25;
                  LODWORD(v23) = v16 + 1;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v15 = 0;
LABEL_22:
  if (v22 != v24)
  {
    free(v22);
  }

  return v15;
}

void mlir::pdl_interp::CheckTypesOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if ((v8[3] - v9) > 2)
  {
    *(v9 + 2) = 101;
    *v9 = 29281;
    v8[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, "are", 3uLL);
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
  v29 = v31;
  v31[0] = "types";
  v31[1] = 5;
  v30 = 0x200000001;
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

void mlir::pdl_interp::ContinueOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t mlir::pdl_interp::ContinueOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::pdl_interp::ContinueOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v4, v6, v7);
  if (v6 != v8)
  {
    free(v6);
  }
}

uint64_t mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::CreateAttributeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::pdl_interp::CreateAttributeOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'pdl_interp.create_attribute' op requires attribute 'value'";
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

uint64_t mlir::pdl_interp::CreateAttributeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  if (v4)
  {
    v6 = mlir::DictionaryAttr::get(&v18, "value", 5uLL);
    if (v6)
    {
      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v21, a4);
    if (v21[0])
    {
      LODWORD(v19) = 3;
      *(&v19 + 1) = "expected DictionaryAttr to set properties";
      v20 = 41;
      if (v23 >= v24)
      {
        if (v22 > &v19 || v22 + 24 * v23 <= &v19)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v22 + 24 * v23;
      v9 = v19;
      *(v8 + 2) = v20;
      *v8 = v9;
      ++v23;
      if (v21[0])
      {
        mlir::InFlightDiagnostic::report(v21);
      }
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v29;
        v12 = __p;
        if (v29 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v29 = v10;
        operator delete(v12);
      }

      v13 = v26;
      if (v26)
      {
        v14 = v27;
        v15 = v26;
        if (v27 != v26)
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
          v15 = v26;
        }

        v27 = v13;
        operator delete(v15);
      }

      if (v22 != &v25)
      {
        free(v22);
      }
    }

    return 0;
  }
}

uint64_t mlir::pdl_interp::CreateAttributeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

unint64_t mlir::pdl_interp::CreateAttributeOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::pdl_interp::CreateAttributeOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

void *mlir::pdl_interp::CreateAttributeOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    *result = a4;
  }

  return result;
}

uint64_t mlir::pdl_interp::CreateAttributeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "value", 5uLL, *a2);
  }

  return result;
}

uint64_t mlir::pdl_interp::CreateAttributeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return (*(*a1 + 48))(a1, v2) & 1;
}

void mlir::pdl_interp::CreateAttributeOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);

  mlir::pdl_interp::CreateAttributeOp::build(SingletonImpl, a2, SingletonImpl, a3);
}

void mlir::pdl_interp::CreateAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::pdl_interp::CreateAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t mlir::pdl_interp::CreateAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::CreateAttributeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
    v3 = *(v2 + 9);
    v4 = v2 - 16;
    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
    return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  else
  {
    v17 = "requires attribute 'value'";
    v18 = 259;
    mlir::OpState::emitOpError(this, &v17, v19);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }

    if (v27 == 1)
    {
      if (v26 != &v27)
      {
        free(v26);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v25;
        v10 = __p;
        if (v25 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v25 = v8;
        operator delete(v10);
      }

      v11 = v22;
      if (v22)
      {
        v12 = v23;
        v13 = v22;
        if (v23 != v22)
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
          v13 = v22;
        }

        v23 = v11;
        operator delete(v13);
      }

      if (v20 != &v21)
      {
        free(v20);
      }
    }
  }

  return v7;
}

uint64_t mlir::pdl_interp::CreateAttributeOp::parse(mlir::pdl_interp::CreateAttributeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v11 = 0;
  if (((*(*this + 440))(this, &v11, 0) & 1) == 0)
  {
    return 0;
  }

  if (v11)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v11;
  }

  (*(*this + 40))(this);
  if (((*(*this + 496))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::get(a2 + 112, **(*(a2 + 1) + 96));
  v6 = (*(*this + 32))(this);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*v6);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
  v9 = *(a2 + 18);
  if (v9 >= *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 8) + 8 * v9) = SingletonImpl;
  ++*(a2 + 18);
  return 1;
}

void mlir::pdl_interp::CreateAttributeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 40))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v9 = v11;
  v11[0] = "value";
  v11[1] = 5;
  v10 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 200))(a2, Value, v7, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::CreateOperationOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase *this, unsigned int a2)
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

uint64_t mlir::pdl_interp::CreateOperationOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v31[0] = *(a1 + 32);
      Value = mlir::ArrayAttr::getValue(v31);
      v4 = mlir::ArrayAttr::getValue(v31);
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

      v29[0] = "'pdl_interp.create_operation' op attribute 'inputAttributeNames' failed to satisfy constraint: string array attribute";
      v30 = 259;
      mlir::emitError(a2, v29, v31);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
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

        v22 = __p;
        if (__p)
        {
          v23 = v37;
          v24 = __p;
          if (v37 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v37 = v22;
          operator delete(v24);
        }

        v11 = v34;
        if (!v34)
        {
          goto LABEL_58;
        }

        v25 = v35;
        v13 = v34;
        if (v35 == v34)
        {
LABEL_57:
          v35 = v11;
          operator delete(v13);
LABEL_58:
          if (v32 != &v33)
          {
            free(v32);
          }

          return v7;
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

        while (v25 != v11);
LABEL_56:
        v13 = v34;
        goto LABEL_57;
      }
    }

    else
    {
      v29[0] = "'pdl_interp.create_operation' op requires attribute 'name'";
      v30 = 259;
      mlir::emitError(a2, v29, v31);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
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

        v16 = __p;
        if (__p)
        {
          v17 = v37;
          v18 = __p;
          if (v37 != __p)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v37 = v16;
          operator delete(v18);
        }

        v11 = v34;
        if (!v34)
        {
          goto LABEL_58;
        }

        v19 = v35;
        v13 = v34;
        if (v35 == v34)
        {
          goto LABEL_57;
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
        goto LABEL_56;
      }
    }
  }

  else
  {
    v29[0] = "'pdl_interp.create_operation' op requires attribute 'inputAttributeNames'";
    v30 = 259;
    mlir::emitError(a2, v29, v31);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
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

      v8 = __p;
      if (__p)
      {
        v9 = v37;
        v10 = __p;
        if (v37 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v37 = v8;
        operator delete(v10);
      }

      v11 = v34;
      if (!v34)
      {
        goto LABEL_58;
      }

      v12 = v35;
      v13 = v34;
      if (v35 == v34)
      {
        goto LABEL_57;
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
      goto LABEL_56;
    }
  }

  return v7;
}

unint64_t mlir::pdl_interp::CreateOperationOp::getODSOperandIndexAndLength(mlir::pdl_interp::CreateOperationOp *this, unsigned int a2)
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

uint64_t mlir::pdl_interp::CreateOperationOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v49 = v6;
  if (!v6)
  {
    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      *(&v50 + 1) = "expected DictionaryAttr to set properties";
      v51 = 41;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v54 + 24 * v55;
      v23 = v50;
      *(v22 + 2) = v51;
      *v22 = v23;
      ++v55;
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }
    }

    if (v63 != 1)
    {
      return 0;
    }

    if (v62 != &v63)
    {
      free(v62);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v61;
      v26 = __p;
      if (v61 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v61 = v24;
      operator delete(v26);
    }

    v17 = v58;
    if (!v58)
    {
      goto LABEL_70;
    }

    v27 = v59;
    v19 = v58;
    if (v59 == v58)
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

  v8 = mlir::DictionaryAttr::get(&v49, "inferredResultTypes", 0x13uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 64;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v54 + 24 * v55;
        v11 = v50;
        *(v10 + 2) = v51;
        *v10 = v11;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v9);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v54 + 24 * v55;
          v13 = v50;
          *(v12 + 2) = v51;
          *v12 = v13;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v61;
        v16 = __p;
        if (v61 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v61 = v14;
        operator delete(v16);
      }

      v17 = v58;
      if (!v58)
      {
LABEL_70:
        if (v54 != &v57)
        {
          free(v54);
        }

        return 0;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
      {
LABEL_69:
        v59 = v17;
        operator delete(v19);
        goto LABEL_70;
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
LABEL_68:
      v19 = v58;
      goto LABEL_69;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v49, "inputAttributeNames", 0x13uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v31 = v30;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 64;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v54 + 24 * v55;
        v33 = v50;
        *(v32 + 2) = v51;
        *v32 = v33;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v31);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v54 + 24 * v55;
          v35 = v50;
          *(v34 + 2) = v51;
          *v34 = v35;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if ((v63 & 1) == 0)
      {
        return 0;
      }

      if (v62 != &v63)
      {
        free(v62);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v61;
        v38 = __p;
        if (v61 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v61 = v36;
        operator delete(v38);
      }

      v17 = v58;
      if (!v58)
      {
        goto LABEL_70;
      }

      v39 = v59;
      v19 = v58;
      if (v59 == v58)
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

  v42 = mlir::DictionaryAttr::get(&v49, "name", 4uLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v43 = v42;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 49;
        if (v55 >= v56)
        {
          if (v54 > &v50 || v54 + 24 * v55 <= &v50)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v54 + 24 * v55;
        v45 = v50;
        *(v44 + 2) = v51;
        *v44 = v45;
        ++v55;
        if (v52)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v50, v43);
          if (v55 >= v56)
          {
            if (v54 > &v50 || v54 + 24 * v55 <= &v50)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v54 + 24 * v55;
          v47 = v50;
          *(v46 + 2) = v51;
          *v46 = v47;
          ++v55;
          if (v52)
          {
            mlir::InFlightDiagnostic::report(&v52);
          }
        }
      }

      if (v63 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v53);
      }

      return 0;
    }

    a1[2] = v42;
  }

  if (mlir::DictionaryAttr::get(&v49, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v49, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::pdl_interp::CreateOperationOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "inferredResultTypes", 0x13, *a2);
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
    v7 = mlir::Builder::getNamedAttr(&v14, "inputAttributeNames", 0x13, v6);
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
    v11 = mlir::Builder::getNamedAttr(&v14, "name", 4, v10);
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

unint64_t mlir::pdl_interp::CreateOperationOp::computePropertiesHash(void *a1)
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
  v9 = *(a1 + 28);
  v10 = __ROR8__(v9 + 12, 12);
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

uint64_t mlir::pdl_interp::CreateOperationOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 4)
  {
    if (!memcmp(__s1, "name", 4uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 21)
  {
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (__n != 19)
  {
    return 0;
  }

  if (*__s1 == 0x6465727265666E69 && *(__s1 + 1) == 0x7954746C75736552 && *(__s1 + 11) == 0x7365707954746C75)
  {
    return *a2;
  }

  if (*__s1 != 0x7474417475706E69 || *(__s1 + 1) != 0x614E657475626972 || *(__s1 + 11) != 0x73656D614E657475)
  {
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
LABEL_21:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  return a2[1];
}

uint64_t mlir::pdl_interp::CreateOperationOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  switch(a3)
  {
    case 4:
      result = memcmp(__s1, "name", 4uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          *(v5 + 16) = v10;
        }

        else
        {
          *(v5 + 16) = 0;
        }
      }

      break;
    case 21:
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }

      goto LABEL_21;
    case 19:
      if (*__s1 == 0x6465727265666E69 && *(__s1 + 1) == 0x7954746C75736552 && *(__s1 + 11) == 0x7365707954746C75)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          *result = v11;
        }

        else
        {
          *result = 0;
        }
      }

      else
      {
        if (*__s1 != 0x7474417475706E69 || *(__s1 + 1) != 0x614E657475626972 || *(__s1 + 11) != 0x73656D614E657475)
        {
          result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
          if (result)
          {
            return result;
          }

LABEL_21:
          if (a4)
          {
            mlir::detail::DenseArrayAttrImpl<int>::classof();
          }

          return result;
        }

        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          *(result + 8) = v12;
        }

        else
        {
          *(result + 8) = 0;
        }
      }

      break;
    default:
      return result;
  }

  return result;
}

void mlir::pdl_interp::CreateOperationOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "inferredResultTypes", 0x13uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "inputAttributeNames", 0x13uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "name", 4uLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "inferredResultTypes", 19, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v9, "inputAttributeNames", 19, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v10, "name", 4, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v30 = a1;
    v20 = a4;
    v21 = a5;
    Value = mlir::ArrayAttr::getValue(&v30);
    v23 = mlir::ArrayAttr::getValue(&v30);
    v25 = v23 + 8 * v24;
    if (v25 != Value)
    {
      a5 = v21;
      a4 = v20;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        Value += 8;
        if (Value == v25)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v30, a5);
  if (v30)
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

    v7 = v32 + 24 * v33;
    v8 = v27;
    *(v7 + 2) = v28;
    *v7 = v8;
    ++v33;
    if (v30)
    {
      v29 = 261;
      *&v27 = a2;
      *(&v27 + 1) = a3;
      mlir::Diagnostic::operator<<(&v31, &v27);
      if (v30)
      {
        LODWORD(v27) = 3;
        *(&v27 + 1) = "' failed to satisfy constraint: string array attribute";
        v28 = 54;
        if (v33 >= v34)
        {
          if (v32 > &v27 || v32 + 24 * v33 <= &v27)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v32 + 24 * v33;
        v10 = v27;
        *(v9 + 2) = v28;
        *v9 = v10;
        ++v33;
      }
    }
  }

  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v39;
      v14 = __p;
      if (v39 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v39 = v12;
      operator delete(v14);
    }

    v15 = v36;
    if (v36)
    {
      v16 = v37;
      v17 = v36;
      if (v37 != v36)
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
        v17 = v36;
      }

      v37 = v15;
      operator delete(v17);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v11;
}

uint64_t mlir::pdl_interp::CreateOperationOp::readProperties(uint64_t a1, uint64_t a2)
{
  v9[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
  {
    v4 = mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, (v3 + 8));
    if (v4 & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, (v3 + 16)))
    {
      if ((*(*a1 + 40))(a1) > 5)
      {
        if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 3uLL))
        {
          return 1;
        }
      }

      else
      {
        v8 = 0;
        if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
        {
          if (mlir::DenseArrayAttr::getSize(&v8) < 4)
          {
            mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
          }

          v6 = "size mismatch for operand/result_segment_size";
          v7 = 259;
          (*(*a1 + 16))(v9, a1, &v6);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::CreateOperationOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 16))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 3);
  }

  return result;
}

uint64_t mlir::pdl_interp::CreateOperationOp::setName(uint64_t a1, size_t a2, size_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  result = mlir::Builder::getStringAttr(&Context, v8, v6);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::pdl_interp::CreateOperationOp::setInferredResultTypes(uint64_t this, int a2)
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

uint64_t mlir::pdl_interp::CreateOperationOp::build(mlir::MLIRContext **a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13)
{
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(*a1);
  SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  return mlir::pdl_interp::CreateOperationOp::build(a1, a2, SingletonImpl, a3, a4, a9, a10, v22, a11, a12, a13, a5, a6, a7);
}

uint64_t mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, char a14)
{
  v14 = a7;
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a12, a13);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  v20[6] = v14;
  v20[7] = a10;
  v20[8] = a13;
  v29 = 261;
  v28[0] = a4;
  v28[1] = a5;
  result = mlir::Builder::getStringAttr(a1, v28, v19);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 16) = result;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = a11;
  if (a14)
  {
    result = mlir::Builder::getUnitAttr(a1, v22);
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *v26 = result;
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
LABEL_7:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v25 = *(a2 + 72);
    if (v25 >= *(a2 + 76))
    {
      goto LABEL_7;
    }
  }

  *(*(a2 + 64) + 8 * v25) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::pdl_interp::CreateOperationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12)
{
  v14 = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::OperationState::addOperands(a2, a10, a11);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  v19[6] = v14;
  v19[7] = a8;
  v19[8] = a11;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a4;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a9;
  if (a12)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *v23 = a12;
    v22 = *(a2 + 72);
    if (v22 >= *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v22 = *(a2 + 72);
    if (v22 >= *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  *(*(a2 + 64) + 8 * v22) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::pdl_interp::CreateOperationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  v14 = a7;
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a12, a13);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  v20[6] = v14;
  v20[7] = a10;
  v20[8] = a13;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a5;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a11;
  if (a14)
  {
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *v26 = a14;
    v23 = *(a2 + 72);
    if (a4 + v23 > *(a2 + 76))
    {
LABEL_6:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v23 = *(a2 + 72);
    if (a4 + v23 > *(a2 + 76))
    {
      goto LABEL_6;
    }
  }

  if (a4)
  {
    v24 = 0;
    v25 = *(a2 + 64) + 8 * v23;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v24);
      *(v25 + 8 * v24++) = result;
    }

    while (a4 != v24);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + a4;
  return result;
}

unint64_t mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, char a14)
{
  v14 = a8;
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a12, a13);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  v21[6] = v14;
  v21[7] = a10;
  v21[8] = a13;
  v32 = 261;
  v31[0] = a5;
  v31[1] = a6;
  result = mlir::Builder::getStringAttr(a1, v31, v20);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 16) = result;
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 8) = a11;
  if (!a14)
  {
    v26 = *(a2 + 72);
    if (a4 + v26 <= *(a2 + 76))
    {
      goto LABEL_7;
    }

LABEL_15:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v23);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *v27 = result;
  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    goto LABEL_15;
  }

LABEL_7:
  if (a4)
  {
    v28 = 0;
    v29 = *(a2 + 64) + 8 * v26;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v28);
      *(v29 + 8 * v28++) = result;
    }

    while (a4 != v28);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + a4;
  return result;
}

uint64_t mlir::pdl_interp::CreateOperationOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

BOOL mlir::pdl_interp::CreateOperationOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v100 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v4 = v3 + 64;
  if (!v6)
  {
    v84 = "requires attribute 'inputAttributeNames'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v84, v89);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
    if (v89[0])
    {
      mlir::InFlightDiagnostic::report(v89);
    }

    if (v99 != 1)
    {
      return v18;
    }

    if (v98 != &v99)
    {
      free(v98);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v97;
      v21 = __p;
      if (v97 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v97 = v19;
      operator delete(v21);
    }

    v22 = v94;
    if (v94)
    {
      v23 = v95;
      v24 = v94;
      if (v95 != v94)
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
        goto LABEL_93;
      }

LABEL_94:
      v95 = v22;
      operator delete(v24);
    }

LABEL_95:
    if (v90 != v93)
    {
      free(v90);
    }

    return v18;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
    v84 = "requires attribute 'name'";
    v86 = 259;
    mlir::OpState::emitOpError(this, &v84, v89);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
    if (v89[0])
    {
      mlir::InFlightDiagnostic::report(v89);
    }

    if (v99 != 1)
    {
      return v18;
    }

    if (v98 != &v99)
    {
      free(v98);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v97;
      v29 = __p;
      if (v97 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v97 = v27;
      operator delete(v29);
    }

    v22 = v94;
    if (v94)
    {
      v30 = v95;
      v24 = v94;
      if (v95 != v94)
      {
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
LABEL_93:
        v24 = v94;
        goto LABEL_94;
      }

      goto LABEL_94;
    }

    goto LABEL_95;
  }

  v89[0] = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(v7, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v89) & 1) == 0)
  {
    return 0;
  }

  v89[0] = *this;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v6, "inputAttributeNames", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v89) & 1) == 0)
  {
    return 0;
  }

  v89[0] = *this;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "inferredResultTypes", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v89) & 1) == 0)
  {
    return 0;
  }

  v8 = *(*this + 11);
  v9 = *(*this + 4 * ((v8 >> 23) & 1) + 22);
  if ((v8 & 0x800000) != 0)
  {
    v10 = *(*this + 9);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
LABEL_8:
      v11 = 0;
      v12 = v10 + 24;
      while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps7(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11) & 1) != 0)
      {
        ++v11;
        v12 += 32;
        if (v9 == v11)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

LABEL_11:
  ODSOperands = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 1u);
  if (v14)
  {
    v15 = ODSOperands;
    v16 = v14;
    v17 = 0;
    do
    {
      v33 = *(*(v15 + 32 * v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v34 = *this;
        v86 = 261;
        v84 = "operand";
        v85 = 7;
        mlir::Operation::emitOpError(v89, v34, &v84);
        if (v89[0])
        {
          LODWORD(v87) = 3;
          *(&v87 + 1) = " #";
          v88 = 2;
          if (v91 >= v92)
          {
            if (v90 > &v87 || v90 + 24 * v91 <= &v87)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v35 = v90 + 24 * v91;
          v36 = v87;
          *(v35 + 2) = v88;
          *v35 = v36;
          v37 = ++v91;
          if (v89[0])
          {
            LODWORD(v87) = 5;
            *(&v87 + 1) = v9;
            if (v37 >= v92)
            {
              if (v90 > &v87 || v90 + 24 * v37 <= &v87)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v38 = v90 + 24 * v91;
            v39 = v87;
            *(v38 + 2) = v88;
            *v38 = v39;
            v40 = ++v91;
            if (v89[0])
            {
              LODWORD(v87) = 3;
              v88 = 65;
              if (v40 >= v92)
              {
                if (v90 > &v87 || v90 + 24 * v40 <= &v87)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v41 = v90 + 24 * v91;
              v42 = v87;
              *(v41 + 2) = v88;
              *v41 = v42;
              ++v91;
              if (v89[0])
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v87, v33);
                if (v91 >= v92)
                {
                  if (v90 > &v87 || v90 + 24 * v91 <= &v87)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v43 = v90 + 24 * v91;
                v44 = v87;
                *(v43 + 2) = v88;
                *v43 = v44;
                ++v91;
              }
            }
          }
        }

        v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
        if (v89[0])
        {
          mlir::InFlightDiagnostic::report(v89);
        }

        if (v99 == 1)
        {
          if (v98 != &v99)
          {
            free(v98);
          }

          v46 = __p;
          if (__p)
          {
            v47 = v97;
            v48 = __p;
            if (v97 != __p)
            {
              do
              {
                v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
              }

              while (v47 != v46);
              v48 = __p;
            }

            v97 = v46;
            operator delete(v48);
          }

          v49 = v94;
          if (v94)
          {
            v50 = v95;
            v51 = v94;
            if (v95 != v94)
            {
              do
              {
                v53 = *--v50;
                v52 = v53;
                *v50 = 0;
                if (v53)
                {
                  MEMORY[0x259C63150](v52, 0x1000C8077774924);
                }
              }

              while (v50 != v49);
              v51 = v94;
            }

            v95 = v49;
            operator delete(v51);
          }

          if (v90 != v93)
          {
            free(v90);
          }
        }

        if (!v45)
        {
          return 0;
        }
      }

      LODWORD(v9) = v9 + 1;
    }

    while (++v17 != v16);
  }

  v54 = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 2u);
  if (v55)
  {
    v56 = v54;
    v57 = v55;
    v58 = 0;
    do
    {
      v59 = *(*(v56 + 32 * v58 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v60 = *(*v59 + 136);
      if (v60 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v61 = *this;
        if (v60 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || (v89[0] = *(*(v56 + 32 * v58 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*mlir::pdl::RangeType::getElementType(v89) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
        {
          v86 = 261;
          v84 = "operand";
          v85 = 7;
          mlir::Operation::emitOpError(v89, v61, &v84);
          if (v89[0])
          {
            LODWORD(v87) = 3;
            *(&v87 + 1) = " #";
            v88 = 2;
            if (v91 >= v92)
            {
              if (v90 > &v87 || v90 + 24 * v91 <= &v87)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v62 = v90 + 24 * v91;
            v63 = v87;
            *(v62 + 2) = v88;
            *v62 = v63;
            v64 = ++v91;
            if (v89[0])
            {
              LODWORD(v87) = 5;
              *(&v87 + 1) = v9;
              if (v64 >= v92)
              {
                if (v90 > &v87 || v90 + 24 * v64 <= &v87)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v65 = v90 + 24 * v91;
              v66 = v87;
              *(v65 + 2) = v88;
              *v65 = v66;
              v67 = ++v91;
              if (v89[0])
              {
                LODWORD(v87) = 3;
                v88 = 87;
                if (v67 >= v92)
                {
                  if (v90 > &v87 || v90 + 24 * v67 <= &v87)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v68 = v90 + 24 * v91;
                v69 = v87;
                *(v68 + 2) = v88;
                *v68 = v69;
                ++v91;
                if (v89[0])
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v87, v59);
                  if (v91 >= v92)
                  {
                    if (v90 > &v87 || v90 + 24 * v91 <= &v87)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v70 = v90 + 24 * v91;
                  v71 = v87;
                  *(v70 + 2) = v88;
                  *v70 = v71;
                  ++v91;
                }
              }
            }
          }

          v72 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v89);
          if (v89[0])
          {
            mlir::InFlightDiagnostic::report(v89);
          }

          if (v99 == 1)
          {
            if (v98 != &v99)
            {
              free(v98);
            }

            v73 = __p;
            if (__p)
            {
              v74 = v97;
              v75 = __p;
              if (v97 != __p)
              {
                do
                {
                  v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
                }

                while (v74 != v73);
                v75 = __p;
              }

              v97 = v73;
              operator delete(v75);
            }

            v76 = v94;
            if (v94)
            {
              v77 = v95;
              v78 = v94;
              if (v95 != v94)
              {
                do
                {
                  v80 = *--v77;
                  v79 = v80;
                  *v77 = 0;
                  if (v80)
                  {
                    MEMORY[0x259C63150](v79, 0x1000C8077774924);
                  }
                }

                while (v77 != v76);
                v78 = v94;
              }

              v95 = v76;
              operator delete(v78);
            }

            if (v90 != v93)
            {
              free(v90);
            }
          }

          if (!v72)
          {
            return 0;
          }
        }
      }

      LODWORD(v9) = v9 + 1;
    }

    while (++v58 != v57);
  }

  if (*(*this + 9))
  {
    v82 = *this - 16;
  }

  else
  {
    v82 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v82, 0);
  return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps7(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    return 1;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v37[0] = a2;
    v8 = a1;
    v9 = a4;
    v10 = a3;
    ElementType = mlir::pdl::RangeType::getElementType(v37);
    a3 = v10;
    a4 = v9;
    v12 = ElementType;
    a1 = v8;
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      return 1;
    }
  }

  v34 = 261;
  v33[0] = a3;
  v33[1] = a4;
  mlir::Operation::emitOpError(v37, a1, v33);
  if (v37[0])
  {
    LODWORD(v35) = 3;
    *(&v35 + 1) = " #";
    v36 = 2;
    if (v39 >= v40)
    {
      if (v38 > &v35 || v38 + 24 * v39 <= &v35)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = v38 + 24 * v39;
    v14 = v35;
    *(v13 + 2) = v36;
    *v13 = v14;
    v15 = ++v39;
    if (v37[0])
    {
      LODWORD(v35) = 5;
      *(&v35 + 1) = a5;
      if (v15 >= v40)
      {
        if (v38 > &v35 || v38 + 24 * v15 <= &v35)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = v38 + 24 * v39;
      v17 = v35;
      *(v16 + 2) = v36;
      *v16 = v17;
      v18 = ++v39;
      if (v37[0])
      {
        LODWORD(v35) = 3;
        v36 = 89;
        if (v18 >= v40)
        {
          if (v38 > &v35 || v38 + 24 * v18 <= &v35)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v19 = v38 + 24 * v39;
        v20 = v35;
        *(v19 + 2) = v36;
        *v19 = v20;
        ++v39;
        if (v37[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v35, a2);
          if (v39 >= v40)
          {
            if (v38 > &v35 || v38 + 24 * v39 <= &v35)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v21 = v38 + 24 * v39;
          v22 = v35;
          *(v21 + 2) = v36;
          *v21 = v22;
          ++v39;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v45;
      v26 = __p;
      if (v45 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v45 = v24;
      operator delete(v26);
    }

    v27 = v42;
    if (v42)
    {
      v28 = v43;
      v29 = v42;
      if (v43 != v42)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v42;
      }

      v43 = v27;
      operator delete(v29);
    }

    if (v38 != &v41)
    {
      free(v38);
    }
  }

  return v23;
}

uint64_t mlir::pdl_interp::CreateOperationOp::parse(mlir::pdl_interp::CreateOperationOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v46 = v48;
  v47 = 0x400000000;
  v44[0] = &v45;
  v44[1] = 0x100000000;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v36[0] = &v37;
  v36[1] = 0x100000000;
  v5 = (*(*this + 32))(this, a2, a3);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(this, &v34, v7))
  {
    goto LABEL_43;
  }

  if (v34)
  {
    v8 = *(a2 + 32);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 16) = v34;
  }

  if ((*(*this + 288))(this))
  {
    v9 = (*(*this + 40))(this);
    if (((*(*this + 720))(this, &v46, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 104))(this) & 1) == 0 || (mlir::AsmParser::parseTypeList(this, v44) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v9 = 0;
  }

  v33 = v9;
  (*(*this + 40))(this);
  v10 = (*(*this + 32))(this);
  v49 = v51;
  v50 = 0x400000000;
  if ((*(*this + 80))(this) & 1) == 0 || (v35[0] = this, v35[1] = &v49, v35[2] = &v41, ((*(*this + 392))(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseCreateOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, v35, 0, 0)) && ((*(*this + 88))(this))
  {
    ArrayAttr = mlir::Builder::getArrayAttr(v10, v49, v50);
    v12 = 0;
    v13 = v49;
    if (v49 == v51)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  ArrayAttr = 0;
  v12 = 1;
  v13 = v49;
  if (v49 != v51)
  {
LABEL_17:
    free(v13);
  }

LABEL_18:
  if ((v12 & 1) == 0)
  {
    v14 = *(a2 + 32);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = ArrayAttr;
    v15 = (*(*this + 40))(this);
    if ((*(*this + 64))(this))
    {
      if ((*(*this + 160))(this))
      {
        v52 = 257;
        if (((*(*this + 400))(this, "inferred", 8, &v49) & 1) == 0 || ((*(*this + 168))(this) & 1) == 0)
        {
          goto LABEL_43;
        }

        v16 = (*(*this + 32))(this);
        UnitAttr = mlir::Builder::getUnitAttr(v16, v17);
        if (UnitAttr)
        {
          v19 = *(a2 + 32);
          if (!v19)
          {
            operator new();
          }

          *v19 = UnitAttr;
        }
      }

      else if (((*(*this + 280))(this) & 1) == 0 || ((*(*this + 720))(this, &v38, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 584))(this, v36) & 1) == 0 || ((*(*this + 296))(this) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v35[0] = (*(*this + 40))(this);
    if ((*(*this + 488))(this, a2 + 112))
    {
      v20 = *(a2 + 1);
      v49 = this;
      v50 = v35;
      v51[0] = a2;
      if (mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(v20, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v49))
      {
        v32 = v15;
        v21 = v47;
        v22 = v42;
        v23 = v39;
        v24 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
        v24[6] = v21;
        v24[7] = v22;
        v24[8] = v23;
        v25 = (*(*this + 32))(this);
        v49 = mlir::Builder::getType<mlir::pdl::OperationType>(v25);
        v26 = (*(*this + 32))(this);
        v27 = mlir::Builder::getType<mlir::pdl::AttributeType>(v26);
        mlir::OperationState::addTypes(a2, &v49, 1);
        if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v46, v44, v33, a2 + 16))
        {
          if (!v42)
          {
LABEL_42:
            v30 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v38, v36, v32, a2 + 16) & 1;
            goto LABEL_44;
          }

          v28 = v41;
          v29 = 32 * v42;
          while (((*(*this + 728))(this, v28, v27, a2 + 16) & 1) != 0)
          {
            v28 += 32;
            v29 -= 32;
            if (!v29)
            {
              goto LABEL_42;
            }
          }
        }
      }
    }
  }

LABEL_43:
  v30 = 0;
LABEL_44:
  if (v36[0] != &v37)
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

  if (v44[0] != &v45)
  {
    free(v44[0]);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  return v30;
}

uint64_t mlir::pdl_interp::CreateRangeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::pdl_interp::CreateRangeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::pdl_interp::CreateRangeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = *(v2 + 9) + 24;
    while ((mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4) & 1) != 0)
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v6 = *(v2 + 9);
    v7 = v2 - 16;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    v10 = *this;
    v11 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v11 + 17) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v36[0] = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::pdl::RangeType::getElementType(v36) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        return 1;
      }

      v32[0] = v11;
      if (*(*mlir::pdl::RangeType::getElementType(v32) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return 1;
      }
    }

    v33 = 261;
    v32[0] = "result";
    v32[1] = 6;
    mlir::Operation::emitOpError(v36, v10, v32);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = " #";
      v35 = 2;
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
      v14 = ++v38;
      if (v36[0])
      {
        LODWORD(v34) = 5;
        *(&v34 + 1) = 0;
        if (v14 >= v39)
        {
          if (v37 > &v34 || v37 + 24 * v14 <= &v34)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v15 = v37 + 24 * v38;
        v16 = v34;
        *(v15 + 2) = v35;
        *v15 = v16;
        v17 = ++v38;
        if (v36[0])
        {
          LODWORD(v34) = 3;
          v35 = 99;
          if (v17 >= v39)
          {
            if (v37 > &v34 || v37 + 24 * v17 <= &v34)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v37 + 24 * v38;
          v19 = v34;
          *(v18 + 2) = v35;
          *v18 = v19;
          ++v38;
          if (v36[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v34, v11);
            if (v38 >= v39)
            {
              if (v37 > &v34 || v37 + 24 * v38 <= &v34)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v20 = v37 + 24 * v38;
            v21 = v34;
            *(v20 + 2) = v35;
            *v20 = v21;
            ++v38;
          }
        }
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v44;
        v25 = __p;
        if (v44 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v44 = v23;
        operator delete(v25);
      }

      v26 = v41;
      if (v41)
      {
        v27 = v42;
        v28 = v41;
        if (v42 != v41)
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
          v28 = v41;
        }

        v42 = v26;
        operator delete(v28);
      }

      if (v37 != &v40)
      {
        free(v37);
      }
    }

    if (v22)
    {
      return 1;
    }
  }

  return 0;
}