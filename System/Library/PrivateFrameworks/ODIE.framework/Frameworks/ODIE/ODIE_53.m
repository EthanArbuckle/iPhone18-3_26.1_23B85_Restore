uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "name";
    v11[1] = 4;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void *mlir::ODIE::Compiler::Exec::AllocConstOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, void *a4)
{
  if (a3 == 4 && *a2 == 1701667182)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      if (a4[3])
      {
        v4 = 0;
      }

      else
      {
        v4 = a4;
      }
    }

    else
    {
      v4 = 0;
    }

    *result = v4;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocConstOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || a1[3]))
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<64ul>(v13, "' failed to satisfy constraint: flat symbol reference attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocConstOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3;
  v11[0] = a4;
  v6 = *a1;
  v12 = 261;
  v11[1] = a5;
  v7 = mlir::StringAttr::get(v6, v11, a3);
  v9 = mlir::SymbolRefAttr::get(v7, 0, 0, v8);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(a2) = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v10, v11);
}

BOOL mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v10[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v10))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      v5 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(v4 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = "requires attribute 'name'";
    v9 = 259;
    mlir::Operation::emitOpError(v2, &v8, v10);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v28 = a2;
  v27 = a5;
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v11 = *(a2 + 8) - 1;
    v12 = v11 > 0x3F;
    v13 = (1 << v11) & 0x8000000080000001;
    if (!v12 && v13 != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      goto LABEL_41;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v9 = llvm::cast<mlir::ShapedType,mlir::Type>(&v28);
      (*(v10 + 8))(v10, v9);
LABEL_41:
      v22 = 1;
      goto LABEL_42;
    }
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    goto LABEL_41;
  }

  v26 = 261;
  v25[0] = a3;
  v25[1] = a4;
  mlir::Operation::emitOpError(a1, v25, &v29);
  if (v29)
  {
    mlir::Diagnostic::operator<<<3ul>(v30, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, &v27);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<340ul>((v20 + 1));
    if (*v21)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>((v21 + 1), &v28);
    }
  }

  v22 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
LABEL_42:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::parse(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v13, v5))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocConstOpGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10[0] = 0;
  if (((*(*a1 + 536))(a1, v10) & 1) == 0)
  {
    return 0;
  }

  __src = v10[0];
  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = a2;
  if (!mlir::ODIE::Compiler::Exec::AllocConstOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v13);
  return 1;
}

void mlir::ODIE::Compiler::Exec::AllocConstOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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

  v12 = *this - 16;
  if (!*(*this + 9))
  {
    v12 = 0;
  }

  (*(*a2 + 32))(a2, *(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = v17;
  v16 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "name", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::Exec::AllocOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  if (a4)
  {
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::Exec::AllocOp::verifyInvariantsImpl(mlir::ODIE::Compiler::Exec::AllocOp *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0)
  {
LABEL_9:
    if (*(v2 + 36))
    {
      v7 = v2 - 16;
    }

    else
    {
      v7 = 0;
    }

    v6 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(v2, *(v7 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    goto LABEL_13;
  }

  v3 = *(v2 + 68);
  if (v3 < 2)
  {
    if (v3)
    {
      v6 = 0;
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps2(v2, *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
      {
        goto LABEL_13;
      }

      v2 = *this;
    }

    goto LABEL_9;
  }

  v11 = "operand group starting at #";
  v12 = 259;
  mlir::Operation::emitOpError(v2, &v11, v14);
  v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v14, &v13);
  v5 = v4;
  if (*v4)
  {
    mlir::Diagnostic::operator<<<37ul>((v4 + 1), " requires 0 or 1 element, but found ");
  }

  v10 = v3;
  v6 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v5, &v10) + 200) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<54ul>((v6 + 1), " must be A type reified as a runtime value., but got ");
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::ODIE::Compiler::Exec::AllocOp::parse(uint64_t a1, uint64_t a2)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    goto LABEL_10;
  }

  (*(*a1 + 40))(a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = (*(*a1 + 712))(a1, &v14, 1);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v17, &v14, 1);
    v6 = v17 + 32 * v18;
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    LODWORD(v18) = v18 + 1;
  }

  if ((*(*a1 + 296))(a1))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v13 = 0;
      if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v13))
      {
        v8 = *(v13 + 8);
        v14 = *(v13 + 16);
        v15 = v8;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v14 + 8 * v8), (v14 + 8 * v8 + 8 * *(v13 + 12)));
        v9 = (*(*a1 + 16))(a1);
        v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, &v17, &v14, v9, a2 + 16);
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  v10 = 0;
LABEL_11:
  if (v17 != v19)
  {
    free(v17);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void mlir::ODIE::Compiler::Exec::AllocOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0 && *(v6 + 17) && *(*(v6 + 9) + 24))
  {
    (*(*a2 + 160))(a2);
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ")", 1uLL);
  }

  else
  {
    *v8 = 41;
    ++*(v7 + 4);
  }

  v24 = v26;
  v25 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v26, 0);
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
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
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

  v16 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v17 = *(v16 + 9);
    v18 = *(v16 + 17);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v23[0] = v17;
  v23[1] = 0;
  v23[2] = v17;
  v23[3] = v18;
  v19 = *(v16 + 9);
  v20 = v16 - 16;
  if (!v19)
  {
    v20 = 0;
  }

  v22[0] = v20;
  v22[1] = 0;
  v22[2] = v20;
  v22[3] = v19;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v23, v22);
  if (v24 != v26)
  {
    free(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::AllocOp::getEffects(void *a1, uint64_t a2)
{
  v4 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Allocate>();
  v9 = *a1 - 16;
  v10 = v4;
  v8 = 0;
  v7 = 1;
  v6 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v10, &v9, &v8, &v7, &v6);
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t *mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get()
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID();
    mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance = &unk_286E87198;
    unk_27FC198F0 = v1;
    __cxa_atexit(mlir::SideEffects::DefaultResource::~DefaultResource, &mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance, &dword_25C85D000);
  }

  return &mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
}

uint64_t mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::AllocViewOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v21, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<42ul>(v22, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "is_type_adaptation", 0x12uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "offset", 6uLL);
    if (v13)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a3(&v21, a4);
          if (!v21)
          {
            goto LABEL_4;
          }

          if (!v21)
          {
            goto LABEL_4;
          }

          v19 = 0;
          v20 = v14;
          goto LABEL_18;
        }

        a1[1] = v14;
      }
    }

    result = 1;
    goto LABEL_21;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_12;
  }

  a3(&v21, a4);
  if (!v21)
  {
    goto LABEL_4;
  }

  if (!v21)
  {
    goto LABEL_4;
  }

  v19 = 0;
  v20 = v11;
LABEL_18:
  v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
  v16 = v23 + 24 * v24;
  v17 = *v15;
  *(v16 + 16) = *(v15 + 16);
  *v16 = v17;
  ++v24;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  result = 0;
LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "is_type_adaptation";
    v16 = 18;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "offset";
    v16 = 6;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v10, v8);
  }

  v11 = v18;
  if (v19)
  {
    v12 = mlir::DictionaryAttr::get(a1, v18, v19);
    v11 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v20)
  {
    free(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v9 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1936090735 || *(a3 + 4) != 29797)
    {
      goto LABEL_16;
    }

    v6 = a2[1];
LABEL_18:
    v8 = v6 & 0xFFFFFFFFFFFFFF00;
    return v8 | v6;
  }

  if (a4 == 18)
  {
    v4 = *a3 == 0x5F657079745F7369 && *(a3 + 8) == 0x6974617470616461;
    if (v4 && *(a3 + 16) == 28271)
    {
      v6 = *a2;
      goto LABEL_18;
    }
  }

LABEL_16:
  LOBYTE(v6) = 0;
  v8 = 0;
  return v8 | v6;
}

void *mlir::ODIE::Compiler::Exec::AllocViewOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1936090735 && *(a2 + 4) == 29797)
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
      }

      else
      {
        v7 = 0;
      }

      result[1] = v7;
    }
  }

  else if (a3 == 18)
  {
    v4 = *a2 == 0x5F657079745F7369 && *(a2 + 8) == 0x6974617470616461;
    if (v4 && *(a2 + 16) == 28271)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *result = v8;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocViewOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "is_type_adaptation";
    v12 = 18;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "offset";
    v12 = 6;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v10, "is_type_adaptation", 18, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v13, "offset", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<47ul>(v13, "' failed to satisfy constraint: unit attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(void **a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1)[17] == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<48ul>(v13, "' failed to satisfy constraint: index attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AllocViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(a2) + 8) = a5;
  if (a6)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AllocViewOpGenericAdaptorBase::Properties>(a2) = a6;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v11);
}

BOOL mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v4 = *(v3 + 9);
  if (v4)
  {
    v5 = *(v3 + 8);
    v12[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v4, "offset", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12) && (v12[0] = *this, mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v5, "is_type_adaptation", 18, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v12)) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v6 = *this - 16;
      }

      else
      {
        v6 = 0;
      }

      v7 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v10 = "requires attribute 'offset'";
    v11 = 259;
    mlir::Operation::emitOpError(v2, &v10, v12);
    v7 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocViewOp::verify(mlir::ODIE::Compiler::Exec::AllocViewOp *this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(v2 + 36))
  {
    v4 = v2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(*v5 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v7 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v6 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  if (v8 && v3[6] != v5[6])
  {
    v9 = "incompatible memory space between source and result types";
LABEL_42:
    v35 = v9;
    v36 = 259;
    goto LABEL_43;
  }

  if (!*(v2 + 80))
  {
    if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v30 = v7[2];
      if (!v30)
      {
        goto LABEL_40;
      }

      v31 = v7[1];
      v32 = 8 * v30;
      while (*v31 != 0x8000000000000000)
      {
        ++v31;
        v32 -= 8;
        if (!v32)
        {
          goto LABEL_40;
        }
      }
    }

    v9 = "encountered ViewOp with dynamic shape";
    goto LABEL_42;
  }

  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = v11;
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v5);
  if (v10)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || (v16 = v13, v17 = v14, v18 = (*(v12 + 8))(v12, v10), v18 != (*(v17 + 8))(v17, v16)))
  {
LABEL_34:
    v35 = "op is marked with TypeAdaptation but types are not compatible";
    v36 = 259;
    v2 = *this;
LABEL_43:
    mlir::Operation::emitOpError(v2, &v35, v37);
    v27 = v37[200] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v37);
    goto LABEL_44;
  }

  v19 = (*(v12 + 24))(v12, v10);
  v21 = v20;
  v22 = (*(v17 + 24))(v17, v16);
  if (v21)
  {
    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = 8 * v23 - 8;
    v26 = 8 * v21 - 8;
    v27 = 1;
    while (*v22 == 0x8000000000000000 || *v19 == 0x8000000000000000 || *v19 == *v22)
    {
      if (v26)
      {
        ++v19;
        ++v22;
        v29 = v25;
        v25 -= 8;
        v26 -= 8;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_44;
    }

    goto LABEL_34;
  }

LABEL_40:
  v27 = 1;
LABEL_44:
  v33 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

BOOL mlir::ODIE::Compiler::Exec::AllocViewOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::ODIE::Compiler::Exec::AllocViewOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::AllocViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
  {
    v6 = *(v10[0] + 8);
    v12 = *(v10[0] + 16);
    v13 = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v12 + 8 * v6), (v12 + 8 * v6 + 8 * *(v10[0] + 12)));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, &v12, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ODIE::Compiler::Exec::AllocViewOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  v32 = v34;
  v33 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v34, 0);
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
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 9);
    v26 = *(v24 + 17);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v31[0] = v25;
  v31[1] = 0;
  v31[2] = v25;
  v31[3] = v26;
  v27 = *(v24 + 9);
  v28 = v24 - 16;
  if (!v27)
  {
    v28 = 0;
  }

  v30[0] = v28;
  v30[1] = 0;
  v30[2] = v28;
  v30[3] = v27;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v31, v30);
  if (v32 != v34)
  {
    free(v32);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v16[25] = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
    if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0) && ((v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v13 & 1) == 0) || (v11 = *(v12 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1, 2, v11, a3, a4, "DenseI32ArrayAttr", 17))
    {
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    a3(&v15, a4);
    if (v15)
    {
      mlir::Diagnostic::operator<<<42ul>(v16, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  }

  result = 0;
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getPropertiesAsAttr(uint64_t *a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x300000000;
  v3 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 2);
  v4 = *(**v3 + 32);
  v11 = 261;
  v10[0] = "operandSegmentSizes";
  v10[1] = 19;
  v6 = mlir::StringAttr::get(v4, v10, v5);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v3);
  if (v13)
  {
    v7 = mlir::DictionaryAttr::get(a1, v12, v13);
  }

  else
  {
    v7 = 0;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::computePropertiesHash(unsigned int *a1)
{
  v1 = a1[1] ^ 0xFF51AFD7ED558CCDLL;
  v2 = 0x9DDFEA08EB382D69 * (v1 ^ (8 * *a1 + 8));
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getInherentAttr(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 19)
  {
    v4 = *(a3 + 11);
    v5 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v6 = 1400139365;
  }

  else
  {
    if (a4 != 21)
    {
      goto LABEL_15;
    }

    v4 = *(a3 + 13);
    v5 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v6 = 1935635566;
  }

  v7 = v6 | 0x73657A6900000000;
  if (v5 && v4 == v7)
  {
    v11 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 2);
    v10 = v11 & 0xFFFFFFFFFFFFFF00;
    v9 = v11;
    return v10 | v9;
  }

LABEL_15:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void *mlir::ODIE::Compiler::Exec::AsyncAwaitOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 19)
  {
    v4 = *a2 ^ 0x53646E617265706FLL;
    v5 = a2[1] ^ 0x6953746E656D6765;
    v6 = *(a2 + 11);
    v7 = 1400139365;
  }

  else
  {
    if (a3 != 21)
    {
      return result;
    }

    v4 = *a2 ^ 0x5F646E617265706FLL;
    v5 = a2[1] ^ 0x5F746E656D676573;
    v6 = *(a2 + 13);
    v7 = 1935635566;
  }

  if (v4 | v5 | v6 ^ (v7 | 0x73657A6900000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = a4 == 0;
  }

  if (!v8 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v9 = *(a4 + 8);
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v9[2] == 32 && *(a4 + 16) == 2)
    {
      v10 = *(a4 + 32);
      if (v10 >= 4)
      {
        return memmove(result, *(a4 + 24), v10 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOp::populateInherentAttrs(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 2);
  v5 = *(**v4 + 32);
  v9 = 261;
  v8[0] = "operandSegmentSizes";
  v8[1] = 19;
  v7 = mlir::StringAttr::get(v5, v8, v6);
  mlir::NamedAttrList::push_back(a3, v7, v4);
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    if (*(v9 + 16) >= 3)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_10;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 2uLL) & 1) == 0)
  {
    goto LABEL_10;
  }

  result = 1;
LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 64, 2);
    (*(*a2 + 16))(a2, v5);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 64), 2);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v35[26] = *MEMORY[0x277D85DE8];
  v2 = *(*this + 11);
  v3 = *(*this + 4 * ((v2 >> 23) & 1) + 16);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(*this + 9);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if (v3)
    {
LABEL_3:
      v5 = 0;
      v6 = v4 + 24;
      do
      {
        if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v5))
        {
          goto LABEL_28;
        }

        ++v5;
        v6 += 32;
      }

      while (v3 != v5);
    }
  }

  ODSOperands = mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(this, 1u);
  if (v8)
  {
    v9 = v8;
    v10 = ODSOperands + 24;
    do
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(*this, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v3))
      {
        goto LABEL_28;
      }

      LODWORD(v3) = v3 + 1;
      v10 += 32;
      --v9;
    }

    while (v9);
  }

  v11 = *this;
  v12 = *(*this + 9);
  v13 = *this - 16;
  if (*(*this + 9))
  {
    v14 = *this - 16;
  }

  else
  {
    v14 = 0;
  }

  if (!v12)
  {
    goto LABEL_23;
  }

  v15 = 0;
  v16 = *this - 16;
  do
  {
    v17 = v14;
    if (!v15)
    {
      goto LABEL_20;
    }

    v18 = *(v11 - 1) & 7;
    v19 = v13;
    v20 = v15;
    if (v18 != 6)
    {
      v21 = (5 - v18);
      v17 = v16;
      v20 = v15 - v21;
      if (v15 <= v21)
      {
        goto LABEL_20;
      }

      v19 = v13 - 16 * v21;
    }

    v17 = v19 - 24 * v20;
LABEL_20:
    if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(*this, (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v15))
    {
      goto LABEL_28;
    }

    ++v15;
    v16 -= 16;
  }

  while (v12 != v15);
  v11 = *this;
LABEL_23:
  v22 = ((v11 + 16 * ((*(v11 + 11) >> 23) & 1) + ((*(v11 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v11 + 10);
  v34 = 0;
  v35[0] = *(v22 + 8);
  v32[0] = v22;
  v30[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__2;
  if (llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v35, v32, 1, v30))
  {
    goto LABEL_29;
  }

  v32[0] = "region #";
  v33 = 259;
  mlir::Operation::emitOpError(v11, v32, v35);
  v23 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v35, &v34);
  v24 = v23;
  v29 = 1283;
  v28[0] = " ('";
  v28[2] = "region";
  v28[3] = 6;
  v30[0] = v28;
  v30[2] = "') ";
  v31 = 770;
  if (*v23)
  {
    mlir::Diagnostic::operator<<((v23 + 1), v30);
    if (*v24)
    {
      mlir::Diagnostic::operator<<<50ul>((v24 + 1), "failed to verify constraint: region with 1 blocks");
    }
  }

  v25 = *(v24 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v35);
  if ((v25 & 1) == 0)
  {
LABEL_29:
    result = 1;
  }

  else
  {
LABEL_28:
    result = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps3(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v21 = a5;
  v9 = *a2;
  v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
  {
    v11 = 1;
  }

  else
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    mlir::Operation::emitOpError(a1, v19, &v24);
    if (v24)
    {
      mlir::Diagnostic::operator<<<3ul>(v25, " #");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v21);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<46ul>((v12 + 1), " must be variadic of Awaitable type, but got ");
      if (*v13)
      {
        v22 = 4;
        v23 = a2;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v22, 1);
        v15 = v13[3] + 24 * *(v13 + 8);
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++*(v13 + 8);
      }
    }

    v11 = (v13[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::ODIE::Compiler::Exec::AsyncAwaitOp::parse(uint64_t a1, void *a2)
{
  v28[16] = *MEMORY[0x277D85DE8];
  v26 = v28;
  v27 = 0x400000000;
  v23 = v25;
  v24 = 0x400000000;
  v19 = 0;
  v20 = &v22;
  v21 = 0x200000000;
  v18 = 0;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v26, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((*(*a1 + 408))(a1, "outs", 4))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v23, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_20;
  }

  v16[0] = 0;
  v4 = (*(*a1 + 792))(a1, v16, 0, 0, 0);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      std::unique_ptr<mlir::Region>::reset[abi:nn200100](v16, 0);
      goto LABEL_20;
    }

    llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v20, v16);
    if ((*(*a1 + 128))(a1))
    {
      operator new();
    }
  }

  v5 = v16[0];
  v16[0] = 0;
  if (v5)
  {
    mlir::Region::~Region(v5);
    MEMORY[0x25F891040](v6);
  }

  if ((*(*a1 + 104))(a1))
  {
    v17 = 0;
    if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v17))
    {
      v7 = *(v17 + 8);
      v8 = *(v17 + 12);
      v18 = *(v17 + 16);
      v19 = v7;
      v9 = (v18 + 8 * v7);
      mlir::OperationState::addRegions(a2, v20, v21);
      v10 = v27;
      v11 = v24;
      *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::AsyncAwaitOpGenericAdaptorBase::Properties>(a2) = v10 | (v11 << 32);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 8), v9, &v9[8 * v8]);
      v16[0] = &v26;
      v16[1] = &v23;
      v12 = (*(*a1 + 16))(a1);
      v13 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(a1, v16, &v18, v12, (a2 + 2));
      goto LABEL_21;
    }
  }

LABEL_20:
  v13 = 0;
LABEL_21:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v20);
  if (v23 != v25)
  {
    free(v23);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v10 = **a2;
  v11 = *v9;
  v12 = v10 + 32 * *(*a2 + 2);
  v13 = *v9 + 32 * *(v9 + 2);
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  while (v10 != v12 || v11 != v13 || v51 != v12 || v52 != v13)
  {
    v15 = &unk_286E871B8;
    v16 = 16;
    do
    {
      v17 = v16;
      v18 = *(v15 - 1);
      v19 = (&v49 + (*v15 >> 1));
      if (*v15)
      {
        v18 = *(*v19 + v18);
      }

      if (v18(v19))
      {
        break;
      }

      v15 += 2;
      v16 = v17 - 16;
    }

    while (v17);
    ++v8;
    v10 = v49;
    v11 = v50;
  }

  v47 = a3[1];
  v48 = v8;
  if (v8 == v47)
  {
    v20 = a2[1];
    v21 = **a2;
    v22 = *v20;
    v23 = v21 + 32 * *(*a2 + 2);
    v24 = *v20 + 32 * *(v20 + 2);
    v25 = *a3;
    v49 = v21;
    v50 = v22;
    v51 = v23;
    v52 = v24;
    v53 = v25;
    while (v21 != v23 || v22 != v24 || v51 != v23 || v52 != v24)
    {
      v27 = &unk_286E871D8;
      do
      {
        v28 = *(v27 - 1);
        v29 = (&v49 + (*v27 >> 1));
        if (*v27)
        {
          v28 = *(*v29 + v28);
        }

        v27 += 2;
        v30 = v28(v29);
      }

      while (!v30);
      if (((*(*a1 + 728))(a1, v30, *v53, a5) & 1) == 0)
      {
        v40 = 0;
        goto LABEL_42;
      }

      v31 = &unk_286E871B8;
      v32 = 16;
      do
      {
        v33 = v32;
        v34 = *(v31 - 1);
        v35 = (&v49 + (*v31 >> 1));
        if (*v31)
        {
          v34 = *(*v35 + v34);
        }

        if (v34(v35))
        {
          break;
        }

        v31 += 2;
        v32 = v33 - 16;
      }

      while (v33);
      ++v53;
      v21 = v49;
      v22 = v50;
    }

    v40 = 1;
  }

  else
  {
    v46 = 257;
    (*(*a1 + 24))(&v49, a1, a4, v45);
    if (v49)
    {
      mlir::Diagnostic::operator<<<48ul>(&v50, "number of operands and types do not match: got ");
    }

    v36 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v49, &v48);
    v37 = v36;
    if (*v36)
    {
      mlir::Diagnostic::operator<<<15ul>((v36 + 1), " operands and ");
    }

    v38 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v37, &v47);
    v39 = v38;
    if (*v38)
    {
      mlir::Diagnostic::operator<<<7ul>((v38 + 1), " types");
    }

    v40 = (v39[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
  }

LABEL_42:
  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

void mlir::ODIE::Compiler::Exec::AsyncAwaitOp::print(mlir::ODIE::Compiler::Exec::AsyncAwaitOp *this, mlir::OpAsmPrinter *a2)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *(*this + 44);
  v7 = *(*this + 16 * ((v6 >> 23) & 1) + 64);
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(*this + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    if (v7 != 1)
    {
      v11 = v7 - 1;
      v12 = (v8 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(this, 1u);
  if (v17)
  {
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
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 3uLL)
    {
      *v21 = 1937012079;
      *(v20 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v20, "outs", 4uLL);
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
    v25 = *(v24 + 4);
    if (*(v24 + 3) == v25)
    {
      llvm::raw_ostream::write(v24, "=", 1uLL);
    }

    else
    {
      *v25 = 61;
      ++*(v24 + 4);
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

    v28 = (*(*a2 + 16))(a2);
    v29 = *(v28 + 4);
    if (*(v28 + 3) == v29)
    {
      llvm::raw_ostream::write(v28, "(", 1uLL);
    }

    else
    {
      *v29 = 40;
      ++*(v28 + 4);
    }

    ODSOperands = mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getODSOperands(this, 1u);
    v32 = v31;
    v33 = (*(*a2 + 16))(a2);
    if (v32)
    {
      v34 = v33;
      (*(*a2 + 160))(a2, *(ODSOperands + 24));
      v35 = v32 - 1;
      if (v35)
      {
        v36 = (ODSOperands + 56);
        do
        {
          v37 = *(v34 + 4);
          if (*(v34 + 3) - v37 > 1uLL)
          {
            *v37 = 8236;
            *(v34 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v34, ", ", 2uLL);
          }

          v38 = *v36;
          v36 += 4;
          (*(*a2 + 160))(a2, v38);
          --v35;
        }

        while (v35);
      }
    }

    v39 = (*(*a2 + 16))(a2);
    v40 = *(v39 + 4);
    if (*(v39 + 3) == v40)
    {
      llvm::raw_ostream::write(v39, ")", 1uLL);
    }

    else
    {
      *v40 = 41;
      ++*(v39 + 4);
    }
  }

  v65 = v67;
  v66 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v65, "operandSegmentSizes", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v65, v66);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (v43 >= *(v42 + 3))
  {
    llvm::raw_ostream::write(v42, 32);
  }

  else
  {
    *(v42 + 4) = v43 + 1;
    *v43 = 32;
  }

  v44 = *(*this + 44);
  v45 = v44 & 0x7FFFFF;
  if ((v44 & 0x7FFFFF) != 0)
  {
    v46 = ((*this + 16 * ((v44 >> 23) & 1) + ((v44 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
    (*(*a2 + 224))(a2, v46, 1, 1, 0);
    if (v45 != 1)
    {
      v47 = v46 + 24;
      v48 = 24 * v45 - 24;
      do
      {
        v49 = (*(*a2 + 16))(a2);
        v50 = *(v49 + 4);
        if (*(v49 + 3) - v50 > 1uLL)
        {
          *v50 = 8236;
          *(v49 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v49, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v47, 1, 1, 0);
        v47 += 24;
        v48 -= 24;
      }

      while (v48);
    }
  }

  v51 = (*(*a2 + 16))(a2);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  v53 = (*(*a2 + 16))(a2);
  v54 = *(v53 + 4);
  if (*(v53 + 3) == v54)
  {
    llvm::raw_ostream::write(v53, ":", 1uLL);
  }

  else
  {
    *v54 = 58;
    ++*(v53 + 4);
  }

  v55 = (*(*a2 + 16))(a2);
  v56 = *(v55 + 4);
  if (v56 >= *(v55 + 3))
  {
    llvm::raw_ostream::write(v55, 32);
  }

  else
  {
    *(v55 + 4) = v56 + 1;
    *v56 = 32;
  }

  v57 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v58 = *(v57 + 72);
    v59 = *(v57 + 68);
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v64[0] = v58;
  v64[1] = 0;
  v64[2] = v58;
  v64[3] = v59;
  v60 = *(v57 + 36);
  v61 = v57 - 16;
  if (!v60)
  {
    v61 = 0;
  }

  v63[0] = v61;
  v63[1] = 0;
  v63[2] = v61;
  v63[3] = v60;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v64, v63);
  if (v65 != v67)
  {
    free(v65);
  }

  v62 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::CallOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  *(result + 40) = v2[1];
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 56) = v6;
  *(result + 64) = v5;
  return result;
}

void mlir::ODIE::Compiler::Exec::CallOp::getInputsMutable(mlir::ODIE::Compiler::Exec::CallOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(v4 + 88);
  v6 = *(*(*(*this + 48) + 96) + 8 * *(*(*this + 48) + 104) - 8);
  v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*this + 24) + 32), v4 + 88, 2);
  __src = 0;
  v9 = v6;
  v10 = v7;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 12) = v5;
  *(a2 + 16) = a2 + 32;
  *(a2 + 24) = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(a2 + 16, &__src, &v11);
}

void mlir::ODIE::Compiler::Exec::CallOp::getOutputsMutable(mlir::ODIE::Compiler::Exec::CallOp *this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(v4 + 88);
  v6 = *(*(*(*this + 48) + 96) + 8 * *(*(*this + 48) + 104) - 8);
  v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*this + 24) + 32), v4 + 88, 2);
  __src = 1;
  v9 = v6;
  v10 = v7;
  *a2 = v3;
  a2[1] = v5;
  a2[2] = a2 + 4;
  a2[3] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>((a2 + 2), &__src, &v11);
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v28, a4);
    if (v28)
    {
      mlir::Diagnostic::operator<<<42ul>(v29, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "identifier", 0xAuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v12[3])
      {
        a3(&v28, a4);
        if (v28)
        {
LABEL_19:
          mlir::Diagnostic::operator<<<56ul>(v29, v13);
          goto LABEL_26;
        }

        goto LABEL_4;
      }

      *a1 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "isDispatch", 0xAuLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v28, a4);
        if (v28)
        {
          goto LABEL_19;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
        goto LABEL_5;
      }

      a1[1] = v12;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "output_intents", 0xEuLL);
  if (v17)
  {
    v12 = *(v16 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v28, a4);
        if (v28)
        {
LABEL_26:
          if (v28)
          {
            v26 = 0;
            v27 = v12;
            v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
            v19 = v30 + 24 * v31;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 16);
            *v19 = v20;
            ++v31;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      a1[2] = v12;
    }
  }

  v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v22 & 1) == 0 || (v23 = *(v21 + 8)) == 0) && ((v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v25 & 1) == 0) || (v23 = *(v24 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 2, v23, a3, a4, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v23 = 261;
    v21 = "identifier";
    v22 = 10;
    v7 = mlir::StringAttr::get(v6, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v23 = 261;
    v21 = "isDispatch";
    v22 = 10;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "output_intents";
    v22 = 14;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 2);
  v15 = *(**v14 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v17 = mlir::StringAttr::get(v15, &v21, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v17, v14);
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(a1, v24, v25);
  }

  else
  {
    v18 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t mlir::ODIE::Compiler::Exec::CallOp::computePropertiesHash(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v16 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = HIDWORD(*(a1 + 16));
  v7 = 0x9DDFEA08EB382D69 * ((8 * *(a1 + 16) - 0xAE502812AA7333) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = *(a1 + 28) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (8 * *(a1 + 24) + 8));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v14 = v8;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v19 = 0;
  v20 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v17, 0, v17, v18, &v16, &v15, &v14, &v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::Exec::CallOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v7 = *(a3 + 11);
      v8 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v9 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v7 = *(a3 + 13);
      v8 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v9 = 1935635566;
    }

    v12 = v9 | 0x73657A6900000000;
    if (v8 && v7 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 2);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 10)
  {
    if (*a3 == 0x696669746E656469 && *(a3 + 4) == 29285)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x7461707369447369 || *(a3 + 4) != 26723)
      {
        goto LABEL_34;
      }

      a1 = a2[1];
    }

    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 != 0x695F74757074756FLL || *(a3 + 6) != 0x73746E65746E695FLL)
    {
LABEL_34:
      LOBYTE(a1) = 0;
      v5 = 0;
      return v5 | a1;
    }

    a1 = a2[2];
LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

void *mlir::ODIE::Compiler::Exec::CallOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v6 = *a2 ^ 0x53646E617265706FLL;
      v7 = a2[1] ^ 0x6953746E656D6765;
      v8 = *(a2 + 11);
      v9 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v6 = *a2 ^ 0x5F646E617265706FLL;
      v7 = a2[1] ^ 0x5F746E656D676573;
      v8 = *(a2 + 13);
      v9 = 1935635566;
    }

    if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
    {
      v13 = 1;
    }

    else
    {
      v13 = a4 == 0;
    }

    if (!v13 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v14 = *(a4 + 8);
      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v14[2] == 32 && *(a4 + 16) == 2)
      {
        v15 = *(a4 + 32);
        if (v15 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v15 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 10)
  {
    if (*a2 == 0x696669746E656469 && *(a2 + 4) == 29285)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        if (*(a4 + 24))
        {
          v16 = 0;
        }

        else
        {
          v16 = a4;
        }
      }

      else
      {
        v16 = 0;
      }

      *result = v16;
    }

    else if (*a2 == 0x7461707369447369 && *(a2 + 4) == 26723)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      result[1] = v12;
    }
  }

  else if (a3 == 14 && *a2 == 0x695F74757074756FLL && *(a2 + 6) == 0x73746E65746E695FLL)
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
    }

    else
    {
      v5 = 0;
    }

    result[2] = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::CallOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "identifier";
    v20 = 10;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "isDispatch";
    v20 = 10;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "output_intents";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 2);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::ODIE::Compiler::Exec::CallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v10, "identifier", 10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v13, "isDispatch", 10, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(v16, "output_intents", 14, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_3;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

LABEL_3:
  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<49ul>(v16, "' failed to satisfy constraint: array of intents");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 1))
  {
    goto LABEL_13;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    if (*(v9 + 16) >= 3)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_13;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3 + 2) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 2uLL) & 1) == 0)
  {
    goto LABEL_13;
  }

  result = 1;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v5 + 24, 2);
    (*(*a2 + 16))(a2, v7);
  }

  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 2);
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a6, 0, a6, a7);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a9, 0, a9, a10);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 24) = v12 | (a10 << 32);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) = a5;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 16) = a11;
  if (a12)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 8) = a12;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

void mlir::ODIE::Compiler::Exec::CallOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v12 = a8;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a7, 0, a7, a8);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a9, 0, a9, a10);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 24) = v12 | (a10 << 32);
  v18 = *a1;
  v26 = 261;
  v25[0] = a5;
  v25[1] = a6;
  v20 = mlir::StringAttr::get(v18, v25, v19);
  v22 = mlir::SymbolRefAttr::get(v20, 0, 0, v21);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) = v22;
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 16) = a11;
  if (a12)
  {
    v23 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 8) = v23;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v5 = v3 + 16;
  v4 = v6;
  if (!v6)
  {
    v32 = "requires attribute 'identifier'";
LABEL_32:
    v35 = v32;
    v36 = 259;
    mlir::Operation::emitOpError(v2, &v35, v37);
    v30 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v37);
    goto LABEL_33;
  }

  v7 = *(v5 + 2);
  if (!v7)
  {
    v32 = "requires attribute 'output_intents'";
    goto LABEL_32;
  }

  v8 = *(v5 + 1);
  v37[0] = v2;
  if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v4, "identifier", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37))
  {
    v37[0] = *this;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(v7, "output_intents", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37))
    {
      v37[0] = *this;
      if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(v8, "isDispatch", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37))
      {
        v9 = *(*this + 11);
        v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
        if ((v9 & 0x800000) != 0)
        {
          v11 = *(*this + 9);
          if (v10)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v11 = 0;
          if (v10)
          {
LABEL_8:
            v12 = 0;
            v13 = v11 + 24;
            while (mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(*v13 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12))
            {
              ++v12;
              v13 += 32;
              if (v10 == v12)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_30;
          }
        }

LABEL_11:
        ODSOperands = mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(this, 1u);
        if (v15)
        {
          v16 = v15;
          v17 = ODSOperands + 24;
          while (mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
          {
            LODWORD(v10) = v10 + 1;
            v17 += 32;
            if (!--v16)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_30;
        }

LABEL_15:
        v18 = *this;
        v19 = *(*this + 9);
        v20 = *this - 16;
        if (*(*this + 9))
        {
          v21 = *this - 16;
        }

        else
        {
          v21 = 0;
        }

        if (!v19)
        {
          v30 = 1;
          goto LABEL_33;
        }

        v22 = 0;
        v23 = v19 - 1;
        v24 = *this - 16;
        while (1)
        {
          v25 = v21;
          if (!v22)
          {
            goto LABEL_25;
          }

          v26 = *(v18 - 1) & 7;
          v27 = v20;
          v28 = v22;
          if (v26 != 6)
          {
            v29 = (5 - v26);
            v25 = v24;
            v28 = v22 - v29;
            if (v22 <= v29)
            {
              goto LABEL_25;
            }

            v27 = v20 - 16 * v29;
          }

          v25 = v27 - 24 * v28;
LABEL_25:
          v30 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(v25 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v22);
          if (v30)
          {
            v24 -= 16;
            if (v23 != v22++)
            {
              continue;
            }
          }

          goto LABEL_33;
        }
      }
    }
  }

LABEL_30:
  v30 = 0;
LABEL_33:
  v33 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v28 = a2;
  v27 = a5;
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v11 = *(a2 + 8) - 1;
    v12 = v11 > 0x3F;
    v13 = (1 << v11) & 0x8000000080000001;
    if (!v12 && v13 != 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      goto LABEL_41;
    }

    if (v5 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v9 = llvm::cast<mlir::ShapedType,mlir::Type>(&v28);
      (*(v10 + 8))(v10, v9);
LABEL_41:
      v22 = 1;
      goto LABEL_42;
    }
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskResultType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncMemRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AsyncFutureType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    goto LABEL_41;
  }

  v26 = 261;
  v25[0] = a3;
  v25[1] = a4;
  mlir::Operation::emitOpError(a1, v25, &v29);
  if (v29)
  {
    mlir::Diagnostic::operator<<<3ul>(v30, " #");
  }

  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, &v27);
  v21 = v20;
  if (*v20)
  {
    mlir::Diagnostic::operator<<<352ul>((v20 + 1));
    if (*v21)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>((v21 + 1), &v28);
    }
  }

  v22 = (v21[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
LABEL_42:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t mlir::ODIE::Compiler::Exec::CallOp::verify(unsigned int **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = &v1[4 * ((v1[11] >> 23) & 1) + 16];
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  v5 = v1[9];
  if (v4 == v5)
  {
    if (!*(v2 + 8))
    {
      goto LABEL_12;
    }

    if (v4)
    {
      v6 = *(v3 + 8);
      v7 = 8 * v4;
      while (*(*v6 + 8) == 2)
      {
        v6 += 8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v8 = "must only have 'return' output intents";
      goto LABEL_11;
    }

LABEL_7:
    if (v5 == 1 && *(*(*(v1 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::TaskType,void>::id)
    {
LABEL_12:
      v9 = 1;
      goto LABEL_13;
    }

    v8 = "must return a single !exec.task<...> when dispatching";
  }

  else
  {
    v8 = "missing output intents";
  }

LABEL_11:
  v12 = v8;
  v13 = 259;
  mlir::Operation::emitOpError(v1, &v12, v14);
  v9 = v14[200] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

BOOL mlir::ODIE::Compiler::Exec::CallOp::parse(uint64_t *a1, uint64_t a2)
{
  v31[16] = *MEMORY[0x277D85DE8];
  v29 = v31;
  v30 = 0x400000000;
  v25 = 0;
  v26 = v28;
  v27 = 0x400000000;
  v23 = 0;
  v24 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v19 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &v19);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v25, v6))
  {
    goto LABEL_23;
  }

  if (v25)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2);
    *v8 = v25;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v29, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((*(*a1 + 408))(a1, "outs", 4))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0)
    {
      goto LABEL_23;
    }

    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_23;
    }

    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v26, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v22 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v9 = *(a2 + 8), v19 = a1, v20 = &v22, v21 = a2, mlir::ODIE::Compiler::Exec::CallOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v19)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v22 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v22)))
  {
    v10 = *(v22 + 8);
    v11 = *(v22 + 12);
    v23 = *(v22 + 16);
    v24 = v10;
    v12 = (v23 + 8 * v10);
    v13 = v30;
    v14 = v27;
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::CallOpGenericAdaptorBase::Properties>(a2) + 24) = v13 | (v14 << 32);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v12, &v12[8 * v11]);
    v19 = &v29;
    v20 = &v26;
    v15 = (*(*a1 + 16))(a1);
    v16 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v19, &v23, v15, a2 + 16);
  }

  else
  {
LABEL_23:
    v16 = 0;
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void mlir::ODIE::Compiler::Exec::CallOp::print(mlir::ODIE::Compiler::Exec::CallOp *this, mlir::OpAsmPrinter *a2)
{
  v68[4] = *MEMORY[0x277D85DE8];
  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72))
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

    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 7uLL)
    {
      *v7 = 0x6863746170736964;
      *(v6 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v6, "dispatch", 8uLL);
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
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "<", 1uLL);
  }

  else
  {
    *v11 = 60;
    ++*(v10 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++*(v12 + 4);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "(", 1uLL);
  }

  else
  {
    *v15 = 40;
    ++*(v14 + 4);
  }

  v16 = *(*this + 44);
  v17 = *(*this + 16 * ((v16 >> 23) & 1) + 88);
  if ((v16 & 0x800000) != 0)
  {
    v18 = *(*this + 72);
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(*a2 + 16))(a2);
  if (v17)
  {
    v20 = v19;
    (*(*a2 + 160))(a2, *(v18 + 24));
    if (v17 != 1)
    {
      v21 = v17 - 1;
      v22 = (v18 + 56);
      do
      {
        v23 = *(v20 + 4);
        if (*(v20 + 3) - v23 > 1uLL)
        {
          *v23 = 8236;
          *(v20 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v20, ", ", 2uLL);
        }

        v24 = *v22;
        v22 += 4;
        (*(*a2 + 160))(a2, v24);
        --v21;
      }

      while (v21);
    }
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ")", 1uLL);
  }

  else
  {
    *v26 = 41;
    ++*(v25 + 4);
  }

  mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(this, 1u);
  if (v27)
  {
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

    v30 = (*(*a2 + 16))(a2);
    v31 = *(v30 + 4);
    if (*(v30 + 3) - v31 > 3uLL)
    {
      *v31 = 1937012079;
      *(v30 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v30, "outs", 4uLL);
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

    v34 = (*(*a2 + 16))(a2);
    v35 = *(v34 + 4);
    if (*(v34 + 3) == v35)
    {
      llvm::raw_ostream::write(v34, "=", 1uLL);
    }

    else
    {
      *v35 = 61;
      ++*(v34 + 4);
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
    v39 = *(v38 + 4);
    if (*(v38 + 3) == v39)
    {
      llvm::raw_ostream::write(v38, "(", 1uLL);
    }

    else
    {
      *v39 = 40;
      ++*(v38 + 4);
    }

    ODSOperands = mlir::ODIE::Compiler::Exec::CallOp::getODSOperands(this, 1u);
    v42 = v41;
    v43 = (*(*a2 + 16))(a2);
    if (v42)
    {
      v44 = v43;
      (*(*a2 + 160))(a2, *(ODSOperands + 24));
      v45 = v42 - 1;
      if (v45)
      {
        v46 = (ODSOperands + 56);
        do
        {
          v47 = *(v44 + 4);
          if (*(v44 + 3) - v47 > 1uLL)
          {
            *v47 = 8236;
            *(v44 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v44, ", ", 2uLL);
          }

          v48 = *v46;
          v46 += 4;
          (*(*a2 + 160))(a2, v48);
          --v45;
        }

        while (v45);
      }
    }

    v49 = (*(*a2 + 16))(a2);
    v50 = *(v49 + 4);
    if (*(v49 + 3) == v50)
    {
      llvm::raw_ostream::write(v49, ")", 1uLL);
    }

    else
    {
      *v50 = 41;
      ++*(v49 + 4);
    }
  }

  v66 = v68;
  v67 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v66, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v66, "isDispatch", 10);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v66, "identifier", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v66, v67);
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

  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, ":", 1uLL);
  }

  else
  {
    *v55 = 58;
    ++*(v54 + 4);
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

  v58 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v59 = *(v58 + 72);
    v60 = *(v58 + 68);
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v65[0] = v59;
  v65[1] = 0;
  v65[2] = v59;
  v65[3] = v60;
  v61 = *(v58 + 36);
  v62 = v58 - 16;
  if (!v61)
  {
    v62 = 0;
  }

  v64[0] = v62;
  v64[1] = 0;
  v64[2] = v62;
  v64[3] = v61;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v65, v64);
  if (v66 != v68)
  {
    free(v66);
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::ConstOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  *(result + 40) = v2[1];
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 56) = v6;
  *(result + 64) = v5;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v25, a4);
    if (v25)
    {
      mlir::Diagnostic::operator<<<42ul>(v26, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "alignment", 9uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_11:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "sym_name", 8uLL);
    if (v13)
    {
      v11 = *(v12 + 8);
      if (v11)
      {
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v25, a4);
          if (!v25)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        a1[1] = v11;
      }
    }

    v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "value", 5uLL);
    if (v18)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        v20 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v17 + 8));
        if (!v20)
        {
          a3(&v25, a4);
          if (!v25)
          {
            goto LABEL_4;
          }

          if (!v25)
          {
            goto LABEL_4;
          }

          v23 = 0;
          v24 = v19;
          goto LABEL_18;
        }

        a1[2] = v20;
        a1[3] = v21;
      }
    }

    result = 1;
    goto LABEL_25;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_11;
  }

  a3(&v25, a4);
  if (!v25)
  {
    goto LABEL_4;
  }

LABEL_16:
  if (v25)
  {
    v23 = 0;
    v24 = v11;
LABEL_18:
    v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
    v15 = v27 + 24 * v28;
    v16 = *v14;
    *(v15 + 16) = *(v14 + 16);
    *v15 = v16;
    ++v28;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  result = 0;
LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v20 = 261;
    v18 = "alignment";
    v19 = 9;
    v7 = mlir::StringAttr::get(v6, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v20 = 261;
    v18 = "sym_name";
    v19 = 8;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "value";
    v19 = 5;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v13, v11);
  }

  v14 = v21;
  if (v22)
  {
    v15 = mlir::DictionaryAttr::get(a1, v21, v22);
    v14 = v21;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v23)
  {
    free(v14);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t mlir::ODIE::Compiler::Exec::ConstOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[2]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v5);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v11, 0, v12, &v12[3] + 8, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::Exec::ConstOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5)
  {
    if (*a3 != 1970037110 || *(a3 + 4) != 101)
    {
      goto LABEL_16;
    }

    v5 = a2[2];
    goto LABEL_18;
  }

  if (a4 != 8)
  {
    if (a4 != 9)
    {
      goto LABEL_16;
    }

    if (*a3 != 0x6E656D6E67696C61 || *(a3 + 8) != 116)
    {
      goto LABEL_16;
    }

    v5 = *a2;
LABEL_18:
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    return v7 | v5;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v5 = a2[1];
    goto LABEL_18;
  }

LABEL_16:
  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

uint64_t *mlir::ODIE::Compiler::Exec::ConstOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3 == 5)
  {
    if (*a2 == 1970037110 && *(a2 + 4) == 101)
    {
      if (a4)
      {
        result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
      }

      else
      {
        result = 0;
        v9 = 0;
      }

      v4[2] = result;
      v4[3] = v9;
    }
  }

  else if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
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
      }

      else
      {
        v7 = 0;
      }

      result[1] = v7;
    }
  }

  else if (a3 == 9 && *a2 == 0x6E656D6E67696C61 && *(a2 + 8) == 116)
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
    }

    else
    {
      v6 = 0;
    }

    *result = v6;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ConstOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "alignment";
    v15 = 9;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "sym_name";
    v15 = 8;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "value";
    v15 = 5;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::ODIE::Compiler::Exec::ConstOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(v10, "alignment", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v13, "sym_name", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(v16, "value", 5, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 64)
  {
    v8 = 1;
  }

  else
  {
    a4(&v13, a5);
    if (v13)
    {
      mlir::Diagnostic::operator<<<12ul>(v14, "attribute '");
      if (v13)
      {
        v12 = 261;
        v11[0] = a2;
        v11[1] = a3;
        mlir::Diagnostic::operator<<(v14, v11);
        if (v13)
        {
          mlir::Diagnostic::operator<<<66ul>(v14, "' failed to satisfy constraint: 64-bit signless integer attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<49ul>(v13, "' failed to satisfy constraint: string attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && (v9 = *a1, v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v9 + 8, v10)))
  {
    a4(&v16, a5);
    if (v16)
    {
      mlir::Diagnostic::operator<<<12ul>(v17, "attribute '");
      if (v16)
      {
        v15 = 261;
        v14[0] = a2;
        v14[1] = a3;
        mlir::Diagnostic::operator<<(v17, v14);
        if (v16)
        {
          mlir::Diagnostic::operator<<<51ul>(v17, "' failed to satisfy constraint: TypedAttr instance");
        }
      }
    }

    v11 = (v17[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t *mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(mlir::ODIE::Compiler::Exec::ConstOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

void *mlir::ODIE::Compiler::Exec::ConstOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 261;
  v13[0] = a3;
  v13[1] = a4;
  v11 = mlir::StringAttr::get(*a1, v13, a3);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2) + 8) = v11;
  result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
  result[2] = a5;
  result[3] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::ConstOp::verifyInvariantsImpl(unsigned int **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = *(v3 + 9);
  v5 = v3 + 16;
  if (!v4)
  {
    v9 = "requires attribute 'sym_name'";
LABEL_9:
    v12 = v9;
    v13 = 259;
    mlir::Operation::emitOpError(v2, &v12, v14);
    v8 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_10;
  }

  v7 = *(v5 + 2);
  if (!v7)
  {
    v9 = "requires attribute 'value'";
    goto LABEL_9;
  }

  v14[0] = v2;
  if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) && (v14[0] = *this, mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(v7, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)))
  {
    v14[0] = *this;
    v8 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(v6, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14);
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::Exec::ConstOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v11 = 0;
  v10 = 0uLL;
  if (!mlir::AsmParser::parseSymbolName(a1, &v11))
  {
    return 0;
  }

  if (v11)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
    *(v4 + 8) = v11;
  }

  if (!mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v10, 0))
  {
    return 0;
  }

  if (v10)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ConstOpGenericAdaptorBase::Properties>(a2);
    *(v5 + 16) = v10;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v6 = *(a2 + 8), v8[0] = a1, v8[1] = &v9, v8[2] = a2, mlir::ODIE::Compiler::Exec::ConstOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ConstOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::Exec::ConstOp::print(mlir::ODIE::Compiler::Exec::ConstOp *this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
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

  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  (*(*a2 + 88))(a2, *(v6 + 16), *(v6 + 24));
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

  ValueAttr = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(this);
  (*(*a2 + 40))(a2, ValueAttr);
  v12 = v14;
  v13 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v12, "sym_name", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v12, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v12, v13);
  if (v12 != v14)
  {
    free(v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::ContextExtractOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "index", 5uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "index";
    v11[1] = 5;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::ContextExtractOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::ODIE::Compiler::Exec::ContextExtractOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ContextExtractOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ContextExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(a2) = a5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

BOOL mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v10[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v10) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      v5 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(v4 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = "requires attribute 'index'";
    v9 = 259;
    mlir::Operation::emitOpError(v2, &v8, v10);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    v10 = 1;
  }

  else
  {
    v14 = 261;
    v13[0] = a3;
    v13[1] = a4;
    mlir::Operation::emitOpError(a1, v13, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<3ul>(v19, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
    v6 = v5;
    if (*v5)
    {
      mlir::Diagnostic::operator<<<55ul>((v5 + 1), " must be A type represents a context object., but got ");
      if (*v6)
      {
        v16 = 4;
        v17 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v16, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v10 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::ODIE::Compiler::Exec::ContextExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13 = 0;
  v19 = v21;
  v20 = 0x100000000;
  __src = &v18;
  v17 = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = (*(*a1 + 32))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v13, *(**v4 + 472)))
  {
    goto LABEL_14;
  }

  if (v13)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextExtractOpGenericAdaptorBase::Properties>(a2);
    *v5 = v13;
  }

  if ((*(*a1 + 328))(a1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v19) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) != 0 && (v12 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v6 = *(a2 + 8), v11[0] = a1, v11[1] = &v12, v11[2] = a2, mlir::ODIE::Compiler::Exec::ContextExtractOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v11)))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v17);
    v7 = (*(*a1 + 16))(a1);
    v8 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v14, 1, v19, v20, v7, a2 + 16);
  }

  else
  {
LABEL_14:
    v8 = 0;
  }

  if (__src != &v18)
  {
    free(__src);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::Type,1u> &>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v20 = a5;
  v21 = a3;
  if (a5 == a3)
  {
    if (a3)
    {
      v11 = 32 * a3;
      while (((*(*a1 + 728))(a1, a2, *a4, a7) & 1) != 0)
      {
        a2 += 32;
        ++a4;
        v11 -= 32;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v12 = 0;
    }

    else
    {
LABEL_6:
      v12 = 1;
    }
  }

  else
  {
    v19[16] = 257;
    (*(*a1 + 24))(&v22, a1, a6, v19);
    if (v22)
    {
      mlir::Diagnostic::operator<<<48ul>(v23, "number of operands and types do not match: got ");
    }

    v13 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v22, &v21);
    v14 = v13;
    if (*v13)
    {
      mlir::Diagnostic::operator<<<15ul>((v13 + 1), " operands and ");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v14, &v20);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<7ul>((v15 + 1), " types");
    }

    v12 = (v16[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void mlir::ODIE::Compiler::Exec::ContextExtractOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v47[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "[", 1uLL);
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "]", 1uLL);
  }

  else
  {
    *v9 = 93;
    ++*(v8 + 4);
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
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
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

  v16 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v17 = *(v16 + 17);
    if (v17)
    {
      v18 = *(v16 + 9);
      (*(*a2 + 32))(a2, *(*(v18 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v17 != 1)
      {
        v19 = v17 - 1;
        v20 = (v18 + 56);
        do
        {
          v21 = (*(*a2 + 16))(a2);
          v22 = *(v21 + 4);
          if (*(v21 + 3) - v22 > 1uLL)
          {
            *v22 = 8236;
            *(v21 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v21, ", ", 2uLL);
          }

          v23 = *v20;
          v20 += 4;
          (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v19;
        }

        while (v19);
      }
    }
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
  v27 = *(v26 + 4);
  if (*(v26 + 3) - v27 > 1uLL)
  {
    *v27 = 15917;
    *(v26 + 4) += 2;
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

  v44 = this;
  v30 = *this;
  v31 = *(*this + 9);
  if (v31)
  {
    v32 = *this - 16;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    (*(*a2 + 32))(a2, *(v30 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v31 != 1)
    {
      v33 = v32 - 16;
      v34 = 1;
      while (1)
      {
        v35 = (*(*a2 + 16))(a2);
        v36 = *(v35 + 4);
        if (*(v35 + 3) - v36 > 1uLL)
        {
          *v36 = 8236;
          *(v35 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v35, ", ", 2uLL);
        }

        v37 = *(v30 - 1) & 7;
        v38 = v32;
        v39 = v34;
        if (v37 == 6)
        {
          goto LABEL_48;
        }

        v40 = (5 - v37);
        v41 = v33;
        v39 = v34 - v40;
        if (v34 > v40)
        {
          break;
        }

LABEL_49:
        (*(*a2 + 32))(a2, *(v41 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v34;
        v33 -= 16;
        if (v31 == v34)
        {
          goto LABEL_50;
        }
      }

      v38 = v32 - 16 * v40;
LABEL_48:
      v41 = v38 - 24 * v39;
      goto LABEL_49;
    }
  }

LABEL_50:
  v45 = v47;
  v46 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v45, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*v44);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v45, v46);
  if (v45 != v47)
  {
    free(v45);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::ContextInsertOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "index", 5uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "index";
    v11[1] = 5;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::ContextInsertOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::ODIE::Compiler::Exec::ContextInsertOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ContextInsertOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::ContextInsertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  __src = a3;
  v8 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(a2) = a6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v11);
}

BOOL mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v10[0] = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(v3, "index", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v10) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7) && mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      v5 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(*this, *(v4 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = "requires attribute 'index'";
    v9 = 259;
    mlir::Operation::emitOpError(v2, &v8, v10);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::ODIE::Compiler::Exec::ContextInsertOp::parse(uint64_t *a1, uint64_t a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v25[0] = v26;
  v25[1] = 0x100000000;
  v22 = &v24;
  v23 = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = (*(*a1 + 32))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v18, *(**v4 + 472)))
  {
    goto LABEL_16;
  }

  if (v18)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::ContextInsertOpGenericAdaptorBase::Properties>(a2);
    *v5 = v18;
  }

  if ((*(*a1 + 328))(a1) & 1) != 0 && ((*(*a1 + 136))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v16, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v25) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v22) & 1) != 0 && (v14 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v6 = *(a2 + 8), v11 = a1, v12 = &v14, v13 = a2, mlir::ODIE::Compiler::Exec::ContextInsertOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::ContextInsertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v11)))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v22, &v22[v23]);
    v11 = v19;
    v12 = v15;
    v7 = (*(*a1 + 16))(a1);
    v8 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::SmallVector<mlir::Type,1u> &>(a1, &v11, v25, v7, a2 + 16);
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

  if (v22 != &v24)
  {
    free(v22);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::SmallVector<mlir::Type,1u> &>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(a2);
  v28 = *(a3 + 2);
  v29 = v10;
  if (v10 == v28)
  {
    v11 = a2[1];
    v12 = **a2;
    v13 = v12 + 32 * (*a2)[1];
    v14 = *v11;
    v15 = *v11 + 32 * v11[1];
    v16 = *a3;
    v30 = v12;
    v31 = v14;
    v32 = v13;
    v33 = v15;
    v34 = v16;
    while (v12 != v13 || v14 != v15 || v32 != v13 || v33 != v15)
    {
      v18 = llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::deref<0ul,1ul>(&v30);
      if (((*(*a1 + 728))(a1, v18, *v19, a5) & 1) == 0)
      {
        v24 = 0;
        goto LABEL_20;
      }

      llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type *>::tup_inc<0ul,1ul>(&v30);
      v12 = v30;
      v14 = v31;
    }

    v24 = 1;
  }

  else
  {
    v27[16] = 257;
    (*(*a1 + 24))(&v30, a1, a4, v27);
    if (v30)
    {
      mlir::Diagnostic::operator<<<48ul>(&v31, "number of operands and types do not match: got ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v30, &v29);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<15ul>((v20 + 1), " operands and ");
    }

    v22 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v21, &v28);
    v23 = v22;
    if (*v22)
    {
      mlir::Diagnostic::operator<<<7ul>((v22 + 1), " types");
    }

    v24 = (v23[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

LABEL_20:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void mlir::ODIE::Compiler::Exec::ContextInsertOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v53[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "[", 1uLL);
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "]", 1uLL);
  }

  else
  {
    *v9 = 93;
    ++*(v8 + 4);
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
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, "=", 1uLL);
  }

  else
  {
    *v13 = 61;
    ++*(v12 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
    ++*(v18 + 4);
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

  v22 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v23 = *(v22 + 17);
    if (v23)
    {
      v24 = *(v22 + 9);
      (*(*a2 + 32))(a2, *(*(v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v23 != 1)
      {
        v25 = v23 - 1;
        v26 = (v24 + 56);
        do
        {
          v27 = (*(*a2 + 16))(a2);
          v28 = *(v27 + 4);
          if (*(v27 + 3) - v28 > 1uLL)
          {
            *v28 = 8236;
            *(v27 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v27, ", ", 2uLL);
          }

          v29 = *v26;
          v26 += 4;
          (*(*a2 + 32))(a2, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v25;
        }

        while (v25);
      }
    }
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
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 15917;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, "->", 2uLL);
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

  v50 = this;
  v36 = *this;
  v37 = *(*this + 9);
  if (v37)
  {
    v38 = *this - 16;
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    (*(*a2 + 32))(a2, *(v36 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v37 != 1)
    {
      v39 = v38 - 16;
      v40 = 1;
      while (1)
      {
        v41 = (*(*a2 + 16))(a2);
        v42 = *(v41 + 4);
        if (*(v41 + 3) - v42 > 1uLL)
        {
          *v42 = 8236;
          *(v41 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v41, ", ", 2uLL);
        }

        v43 = *(v36 - 1) & 7;
        v44 = v38;
        v45 = v40;
        if (v43 == 6)
        {
          goto LABEL_57;
        }

        v46 = (5 - v43);
        v47 = v39;
        v45 = v40 - v46;
        if (v40 > v46)
        {
          break;
        }

LABEL_58:
        (*(*a2 + 32))(a2, *(v47 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v40;
        v39 -= 16;
        if (v37 == v40)
        {
          goto LABEL_59;
        }
      }

      v44 = v38 - 16 * v46;
LABEL_57:
      v47 = v44 - 24 * v45;
      goto LABEL_58;
    }
  }

LABEL_59:
  v51 = v53;
  v52 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*v50);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v51, v52);
  if (v51 != v53)
  {
    free(v51);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::Exec::CopyOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  __src = v21;
  v20 = 0x200000000;
  v5 = *(a2 + 2);
  v6 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::ODIE::Compiler::Exec::CopyOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v15, v16, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v20);
  if (__src != v21)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::CopyOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

void mlir::ODIE::Compiler::Exec::CopyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::Exec::CopyOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || !mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
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

  return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(v2 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

BOOL mlir::ODIE::Compiler::Exec::CopyOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8 = 0;
  v9 = 0;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "outs", 4, v16) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v7))
  {
    return 0;
  }

  v4 = *(v7 + 8);
  v8 = *(v7 + 16);
  v9 = v4;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v8 + 8 * v4), (v8 + 8 * v4 + 8 * *(v7 + 12)));
  v16[0] = v13;
  v16[1] = v10;
  v5 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v16, &v8, v5, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(a2);
  v28 = a3[1];
  v29 = v10;
  if (v10 == v28)
  {
    v11 = a2[1];
    v12 = **a2;
    v13 = v12 + 32 * (*a2)[1];
    v14 = *v11;
    v15 = *v11 + 32 * v11[1];
    v16 = *a3;
    v30 = v12;
    v31 = v14;
    v32 = v13;
    v33 = v15;
    v34 = v16;
    while (v12 != v13 || v14 != v15 || v32 != v13 || v33 != v15)
    {
      v18 = llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::deref<0ul,1ul>(&v30);
      if (((*(*a1 + 728))(a1, v18, *v19, a5) & 1) == 0)
      {
        v24 = 0;
        goto LABEL_20;
      }

      llvm::detail::zip_common<llvm::detail::zip_first<llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>,std::tuple<mlir::OpAsmParser::UnresolvedOperand const&,mlir::Type const&>,llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>,mlir::Type const*>::tup_inc<0ul,1ul>(&v30);
      v12 = v30;
      v14 = v31;
    }

    v24 = 1;
  }

  else
  {
    v27[16] = 257;
    (*(*a1 + 24))(&v30, a1, a4, v27);
    if (v30)
    {
      mlir::Diagnostic::operator<<<48ul>(&v31, "number of operands and types do not match: got ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v30, &v29);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<15ul>((v20 + 1), " operands and ");
    }

    v22 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v21, &v28);
    v23 = v22;
    if (*v22)
    {
      mlir::Diagnostic::operator<<<7ul>((v22 + 1), " types");
    }

    v24 = (v23[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

LABEL_20:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void mlir::ODIE::Compiler::Exec::CopyOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++*(v6 + 4);
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

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 3uLL)
  {
    *v11 = 1937012079;
    *(v10 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v10, "outs", 4uLL);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "=", 1uLL);
  }

  else
  {
    *v15 = 61;
    ++*(v14 + 4);
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
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++*(v18 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ")", 1uLL);
  }

  else
  {
    *v21 = 41;
    ++*(v20 + 4);
  }

  v37 = v39;
  v38 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v39, 0);
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
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++*(v25 + 4);
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

  v29 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v30 = *(v29 + 9);
    v31 = *(v29 + 17);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v36[0] = v30;
  v36[1] = 0;
  v36[2] = v30;
  v36[3] = v31;
  v32 = *(v29 + 9);
  v33 = v29 - 16;
  if (!v32)
  {
    v33 = 0;
  }

  v35[0] = v33;
  v35[1] = 0;
  v35[2] = v33;
  v35[3] = v32;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v36, v35);
  if (v37 != v39)
  {
    free(v37);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::Exec::GetTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::Exec::GetTypeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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

    return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps2(*this, *(v4 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::GetTypeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v8))
  {
    return 0;
  }

  v5 = *(v8 + 8);
  v4 = *(v8 + 12);
  v9[0] = *(v8 + 16);
  v9[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v9[0] + 8 * v5), (v9[0] + 8 * v5 + 8 * v4));
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v9, v6, a2 + 16);
}

void mlir::ODIE::Compiler::Exec::GetTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++*(v6 + 4);
  }

  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, 0);
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
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

  v15 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v16 = *(v15 + 9);
    v17 = *(v15 + 17);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v22[0] = v16;
  v22[1] = 0;
  v22[2] = v16;
  v22[3] = v17;
  v18 = *(v15 + 9);
  v19 = v15 - 16;
  if (!v18)
  {
    v19 = 0;
  }

  v21[0] = v19;
  v21[1] = 0;
  v21[2] = v19;
  v21[3] = v18;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v22, v21);
  if (v23 != v25)
  {
    free(v23);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::InferTypeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "identifier", 0xAuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v10[3])
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_14;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "identifier";
    v11[1] = 10;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::InferTypeOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x696669746E656469 ? (v4 = *(a3 + 8) == 29285) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::ODIE::Compiler::Exec::InferTypeOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 10 && *a2 == 0x696669746E656469 && *(a2 + 8) == 29285)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      if (a4[3])
      {
        v5 = 0;
      }

      else
      {
        v5 = a4;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InferTypeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "identifier";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v8, "identifier", 10, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InferTypeOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  v14 = *a1;
  v20 = 261;
  v19[0] = a7;
  v19[1] = a8;
  v16 = mlir::StringAttr::get(v14, v19, v15);
  v18 = mlir::SymbolRefAttr::get(v16, 0, 0, v17);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(a2) = v18;

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v33 = v2;
    if (mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v3, "identifier", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v33))
    {
      v4 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v5 = *(v4 + 17);
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 9) + 24;
          do
          {
            if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
            {
              goto LABEL_28;
            }

            ++v6;
            v7 += 32;
          }

          while (v5 != v6);
          v4 = *this;
        }
      }

      v8 = *(v4 + 9);
      if (*(v4 + 9))
      {
        v9 = v4 - 16;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = 0;
        v11 = v9;
        while (1)
        {
          v12 = v9;
          if (v10)
          {
            v13 = *(v4 - 1) & 7;
            v14 = v4 - 16;
            v15 = v10;
            if (v13 == 6)
            {
              goto LABEL_18;
            }

            v16 = (5 - v13);
            v12 = v11;
            v15 = v10 - v16;
            if (v10 > v16)
            {
              break;
            }
          }

LABEL_19:
          v17 = *this;
          v18 = *(v12 + 1) & 0xFFFFFFFFFFFFFFF8;
          v30 = v10;
          if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::MetaType,void>::id)
          {
            v29 = 261;
            v28[0] = "result";
            v28[1] = 6;
            mlir::Operation::emitOpError(v17, v28, &v33);
            if (v33)
            {
              mlir::Diagnostic::operator<<<3ul>(v34, " #");
            }

            v19 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v33, &v30);
            v20 = v19;
            if (*v19)
            {
              mlir::Diagnostic::operator<<<66ul>((v19 + 1), " must be variadic of A type reified as a runtime value., but got ");
              if (*v20)
              {
                v31 = 4;
                v32 = v18;
                v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v31, 1);
                v22 = v20[3] + 24 * *(v20 + 8);
                v23 = *v21;
                *(v22 + 16) = *(v21 + 16);
                *v22 = v23;
                ++*(v20 + 8);
              }
            }

            v24 = *(v20 + 200);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
            if (v24)
            {
              goto LABEL_28;
            }
          }

          ++v10;
          v11 -= 16;
          if (v8 == v10)
          {
            goto LABEL_27;
          }
        }

        v14 = &v9[-16 * v16];
LABEL_18:
        v12 = &v14[-24 * v15];
        goto LABEL_19;
      }

LABEL_27:
      v25 = 1;
    }

    else
    {
LABEL_28:
      v25 = 0;
    }
  }

  else
  {
    v28[0] = "requires attribute 'identifier'";
    v29 = 259;
    mlir::Operation::emitOpError(v2, v28, &v33);
    v25 = (v34[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

BOOL mlir::ODIE::Compiler::Exec::InferTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19[0] = v20;
  v19[1] = 0x400000000;
  v16 = 0;
  v17 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v14);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v18, v5))
  {
    goto LABEL_16;
  }

  if (v18)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InferTypeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v18;
  }

  if ((*(*a1 + 168))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v19, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v15 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v14[0] = a1, v14[1] = &v15, v14[2] = a2, mlir::ODIE::Compiler::Exec::InferTypeOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InferTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v14[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v14)))
  {
    v9 = *(v14[0] + 8);
    v16 = *(v14[0] + 16);
    v17 = v9;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v16 + 8 * v9), (v16 + 8 * v9 + 8 * *(v14[0] + 12)));
    v10 = (*(*a1 + 16))(a1);
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, &v16, v10, a2 + 16);
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void mlir::ODIE::Compiler::Exec::InferTypeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "(", 1uLL);
  }

  else
  {
    *v9 = 40;
    ++*(v8 + 4);
  }

  v10 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v11 = *(v10 + 17);
    v12 = *(v10 + 9);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (*(*a2 + 16))(a2);
  if (v11)
  {
    v14 = v13;
    (*(*a2 + 160))(a2, *(v12 + 24));
    v15 = v11 - 1;
    if (v15)
    {
      v16 = (v12 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a2 + 160))(a2, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v36 = v38;
  v37 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "identifier", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, v37);
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
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++*(v24 + 4);
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

  v28 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v29 = *(v28 + 9);
    v30 = *(v28 + 17);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v35[0] = v29;
  v35[1] = 0;
  v35[2] = v29;
  v35[3] = v30;
  v31 = *(v28 + 9);
  v32 = v28 - 16;
  if (!v31)
  {
    v32 = 0;
  }

  v34[0] = v32;
  v34[1] = 0;
  v34[2] = v32;
  v34[3] = v31;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v35, v34);
  if (v36 != v38)
  {
    free(v36);
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::InitOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::InitOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "identifier", 0xAuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v10[3])
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_14;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::InitOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "identifier";
    v11[1] = 10;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::Exec::InitOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::InitOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x696669746E656469 ? (v4 = *(a3 + 8) == 29285) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::ODIE::Compiler::Exec::InitOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 10 && *a2 == 0x696669746E656469 && *(a2 + 8) == 29285)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      if (a4[3])
      {
        v5 = 0;
      }

      else
      {
        v5 = a4;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InitOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "identifier";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::InitOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v8, "identifier", 10, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::InitOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a6, 0, a6, a7);
  v11 = *a1;
  v18 = 261;
  v17[0] = a4;
  v17[1] = a5;
  v13 = mlir::StringAttr::get(v11, v17, v12);
  v15 = mlir::SymbolRefAttr::get(v13, 0, 0, v14);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(a2) = v15;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v16, v17);
}

BOOL mlir::ODIE::Compiler::Exec::InitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v12 = "requires attribute 'identifier'";
    v13 = 259;
    mlir::Operation::emitOpError(v2, &v12, v14);
    v9 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_15;
  }

  v14[0] = v2;
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(v3, "identifier", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14))
  {
    goto LABEL_13;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 17);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 9) + 24;
      while (mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
      {
        ++v6;
        v7 += 32;
        if (v5 == v6)
        {
          v4 = *this;
          goto LABEL_9;
        }
      }

LABEL_13:
      v9 = 0;
      goto LABEL_15;
    }
  }

LABEL_9:
  if (*(v4 + 9))
  {
    v8 = v4 - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps5(v4, *(v8 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6);
LABEL_15:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::ODIE::Compiler::Exec::InitOp::parse(uint64_t a1, uint64_t a2)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19[0] = v20;
  v19[1] = 0x400000000;
  v16 = 0;
  v17 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v14[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v14);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v18, v5))
  {
    goto LABEL_16;
  }

  if (v18)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::InitOpGenericAdaptorBase::Properties>(a2);
    *v7 = v18;
  }

  if ((*(*a1 + 168))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v19, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v15 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v14[0] = a1, v14[1] = &v15, v14[2] = a2, mlir::ODIE::Compiler::Exec::InitOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::InitOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v14)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v14[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v14)))
  {
    v9 = *(v14[0] + 8);
    v16 = *(v14[0] + 16);
    v17 = v9;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v16 + 8 * v9), (v16 + 8 * v9 + 8 * *(v14[0] + 12)));
    v10 = (*(*a1 + 16))(a1);
    v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, &v16, v10, a2 + 16);
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void mlir::ODIE::Compiler::Exec::InitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "(", 1uLL);
  }

  else
  {
    *v9 = 40;
    ++*(v8 + 4);
  }

  v10 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v11 = *(v10 + 17);
    v12 = *(v10 + 9);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (*(*a2 + 16))(a2);
  if (v11)
  {
    v14 = v13;
    (*(*a2 + 160))(a2, *(v12 + 24));
    v15 = v11 - 1;
    if (v15)
    {
      v16 = (v12 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a2 + 160))(a2, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v36 = v38;
  v37 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "identifier", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, v37);
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
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++*(v24 + 4);
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

  v28 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v29 = *(v28 + 9);
    v30 = *(v28 + 17);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v35[0] = v29;
  v35[1] = 0;
  v35[2] = v29;
  v35[3] = v30;
  v31 = *(v28 + 9);
  v32 = v28 - 16;
  if (!v31)
  {
    v32 = 0;
  }

  v34[0] = v32;
  v34[1] = 0;
  v34[2] = v32;
  v34[3] = v31;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v35, v34);
  if (v36 != v38)
  {
    free(v36);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::Exec::IsDefinedOp::build(void **a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  __src = v11;
  v10 = 0x200000000;
  v5 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  v6 = mlir::IntegerType::get(v5, 1, 0);
  *__src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v10);
  if (__src != v11)
  {
    free(__src);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::IsDefinedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v29 = 0;
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v4 + 8, v13);
    (*(v14 + 8))(v14, v3);
  }

  else if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ContextType,void>::id)
  {
    v28 = 261;
    v26 = "operand";
    v27 = 7;
    mlir::Operation::emitOpError(v2, &v26, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<3ul>(v33, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, &v29);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<88ul>((v7 + 1), " must be memref of any type values or  or A type represents a context object., but got ");
      if (*v8)
      {
        v30 = 4;
        v31 = v3;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v30, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v12 = *(v8 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    if (v12)
    {
      goto LABEL_25;
    }
  }

  v15 = *this;
  if (*(*this + 9))
  {
    v16 = *this - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = 0;
  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v17[2] == 1)
  {
    goto LABEL_26;
  }

  v28 = 261;
  v26 = "result";
  v27 = 6;
  mlir::Operation::emitOpError(v15, &v26, &v32);
  if (v32)
  {
    mlir::Diagnostic::operator<<<3ul>(v33, " #");
  }

  v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, &v29);
  v19 = v18;
  if (*v18)
  {
    mlir::Diagnostic::operator<<<42ul>((v18 + 1), " must be 1-bit signless integer, but got ");
    if (*v19)
    {
      v30 = 4;
      v31 = v17;
      v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v30, 1);
      v21 = v19[3] + 24 * *(v19 + 8);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 16);
      *v21 = v22;
      ++*(v19 + 8);
    }
  }

  v23 = *(v19 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  if ((v23 & 1) == 0)
  {
LABEL_26:
    result = 1;
    goto LABEL_27;
  }

LABEL_25:
  result = 0;
LABEL_27:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::Exec::IsDefinedOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  if (((*(*a1 + 280))() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (((*(*a1 + 536))(a1, &v7) & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v5 = (*(*a1 + 32))(a1);
  v7 = mlir::IntegerType::get(*v5, 1, 0);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v7, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::Exec::IsDefinedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++*(v6 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v16, 0);
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::IsolatedGroupOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "delegate_id", 0xBuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "delegate_id";
    v11[1] = 11;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x65746167656C6564 ? (v4 = *(a3 + 3) == 0x64695F6574616765) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::ODIE::Compiler::Exec::IsolatedGroupOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x65746167656C6564 && *(a2 + 3) == 0x64695F6574616765)
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
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::IsolatedGroupOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "delegate_id";
    v7[1] = 11;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v8, "delegate_id", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::ODIE::Compiler::Exec::IsolatedGroupOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  v15 = 261;
  v14[0] = a7;
  v14[1] = a8;
  v13 = mlir::StringAttr::get(*a1, v14, v12);
  *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2) = v13;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v28[0] = "requires attribute 'delegate_id'";
    v29 = 259;
    mlir::Operation::emitOpError(v2, v28, v31);
    v21 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
    goto LABEL_30;
  }

  v31[0] = v2;
  if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(v3, "delegate_id", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
  {
    goto LABEL_27;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 17);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 9) + 24;
      do
      {
        if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
        {
          goto LABEL_27;
        }

        ++v6;
        v7 += 32;
      }

      while (v5 != v6);
      v4 = *this;
    }
  }

  v8 = *(v4 + 9);
  if (*(v4 + 9))
  {
    v9 = v4 - 16;
  }

  else
  {
    v9 = 0;
  }

  if (!v8)
  {
    goto LABEL_22;
  }

  v10 = 0;
  v11 = v4 - 16;
  do
  {
    v12 = v9;
    if (!v10)
    {
      goto LABEL_19;
    }

    v13 = *(v4 - 1) & 7;
    v14 = v4 - 16;
    v15 = v10;
    if (v13 != 6)
    {
      v16 = (5 - v13);
      v12 = v11;
      v15 = v10 - v16;
      if (v10 <= v16)
      {
        goto LABEL_19;
      }

      v14 = v4 - 16 * v16 - 16;
    }

    v12 = v14 - 24 * v15;
LABEL_19:
    if (!mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(v12 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v10))
    {
      goto LABEL_27;
    }

    ++v10;
    v11 -= 16;
  }

  while (v8 != v10);
  v4 = *this;
LABEL_22:
  v17 = ((v4 + 16 * ((*(v4 + 11) >> 23) & 1) + ((*(v4 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 10);
  v30 = 0;
  if (*(v17 + 8) != v17)
  {
    goto LABEL_29;
  }

  v28[0] = "region #";
  v29 = 259;
  mlir::Operation::emitOpError(v4, v28, v31);
  v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v31, &v30);
  v19 = v18;
  v25 = 1283;
  v24[0] = " ('";
  v24[2] = "region";
  v24[3] = 6;
  v26[0] = v24;
  v26[2] = "') ";
  v27 = 770;
  if (*v18)
  {
    mlir::Diagnostic::operator<<((v18 + 1), v26);
    if (*v19)
    {
      mlir::Diagnostic::operator<<<59ul>((v19 + 1), "failed to verify constraint: region with at least 1 blocks");
    }
  }

  v20 = *(v19 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
  if (v20)
  {
LABEL_27:
    v21 = 0;
  }

  else
  {
LABEL_29:
    v21 = 1;
  }

LABEL_30:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL mlir::ODIE::Compiler::Exec::IsolatedGroupOp::parse(mlir::Region *a1, mlir::Region *a2)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v25[0] = v26;
  v25[1] = 0x400000000;
  v21 = 0;
  v22 = &v24;
  v23 = 0x200000000;
  v19 = 0;
  v20 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v17[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v17);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v21, v5))
  {
    goto LABEL_21;
  }

  if (v21)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::Exec::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2);
    *v7 = v21;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v18 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(a2 + 1);
  v17[0] = a1;
  v17[1] = &v18;
  v17[2] = a2;
  if (!mlir::ODIE::Compiler::Exec::IsolatedGroupOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::IsolatedGroupOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
  {
    goto LABEL_21;
  }

  v17[0] = 0;
  v10 = (*(*a1 + 792))(a1, v17, 0, 0, 0);
  if ((v10 & 0x100) != 0)
  {
    if ((v10 & 1) == 0)
    {
      std::unique_ptr<mlir::Region>::reset[abi:nn200100](v17, 0);
      goto LABEL_21;
    }

    llvm::SmallVectorImpl<std::unique_ptr<mlir::Region>>::emplace_back<std::unique_ptr<mlir::Region>>(&v22, v17);
    if ((*(*a1 + 128))(a1))
    {
      operator new();
    }
  }

  std::unique_ptr<mlir::Region>::reset[abi:nn200100](v17, 0);
  if ((*(*a1 + 104))(a1))
  {
    v17[0] = 0;
    if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, v17))
    {
      v11 = *(v17[0] + 2);
      v19 = *(v17[0] + 2);
      v20 = v11;
      v12 = (v19 + 8 * v11);
      v13 = *(v17[0] + 3);
      mlir::OperationState::addRegions(a2, v22, v23);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v12, &v12[8 * v13]);
      v14 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v25, &v19, v8, a2 + 16);
      goto LABEL_22;
    }
  }

LABEL_21:
  v14 = 0;
LABEL_22:
  llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(&v22);
  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void mlir::ODIE::Compiler::Exec::IsolatedGroupOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "(", 1uLL);
  }

  else
  {
    *v9 = 40;
    ++*(v8 + 4);
  }

  v10 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v11 = *(v10 + 9);
    v12 = *(v10 + 17);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = (*(*a2 + 16))(a2);
  if (v12)
  {
    v14 = v13;
    (*(*a2 + 160))(a2, *(v11 + 24));
    v15 = v12 - 1;
    if (v15)
    {
      v16 = (v11 + 56);
      do
      {
        v17 = *(v14 + 4);
        if (*(v14 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v14 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v14, ", ", 2uLL);
        }

        v18 = *v16;
        v16 += 4;
        (*(*a2 + 160))(a2, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ")", 1uLL);
  }

  else
  {
    *v20 = 41;
    ++*(v19 + 4);
  }

  v45 = v47;
  v46 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v45, "delegate_id", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 200))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v45, v46);
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

  v24 = *(*this + 11);
  v25 = v24 & 0x7FFFFF;
  if ((v24 & 0x7FFFFF) != 0)
  {
    v26 = ((*this + 16 * ((v24 >> 23) & 1) + ((v24 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
    (*(*a2 + 224))(a2, v26, 1, 1, 0);
    if (v25 != 1)
    {
      v27 = v26 + 24;
      v28 = 24 * v25 - 24;
      do
      {
        v29 = (*(*a2 + 16))(a2);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 > 1uLL)
        {
          *v30 = 8236;
          *(v29 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v29, ", ", 2uLL);
        }

        (*(*a2 + 224))(a2, v27, 1, 1, 0);
        v27 += 24;
        v28 -= 24;
      }

      while (v28);
    }
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (v32 >= *(v31 + 3))
  {
    llvm::raw_ostream::write(v31, 32);
  }

  else
  {
    *(v31 + 4) = v32 + 1;
    *v32 = 32;
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (*(v33 + 3) == v34)
  {
    llvm::raw_ostream::write(v33, ":", 1uLL);
  }

  else
  {
    *v34 = 58;
    ++*(v33 + 4);
  }

  v35 = (*(*a2 + 16))(a2);
  v36 = *(v35 + 4);
  if (v36 >= *(v35 + 3))
  {
    llvm::raw_ostream::write(v35, 32);
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 32;
  }

  v37 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v38 = *(v37 + 17);
    v39 = *(v37 + 9);
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v44[0] = v39;
  v44[1] = 0;
  v44[2] = v39;
  v44[3] = v38;
  v40 = *(v37 + 9);
  v41 = v37 - 16;
  if (!v40)
  {
    v41 = 0;
  }

  v43[0] = v41;
  v43[1] = 0;
  v43[2] = v41;
  v43[3] = v40;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v44, v43);
  if (v45 != v47)
  {
    free(v45);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::Exec::LoadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::ODIE::Compiler::Exec::LoadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
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

    return mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps1(*this, *(v4 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::Exec::LoadOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v9 = __src;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

void mlir::ODIE::Compiler::Exec::LoadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++*(v8 + 4);
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
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 15917;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "->", 2uLL);
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

  v18 = *this - 16;
  if (!*(*this + 9))
  {
    v18 = 0;
  }

  (*(*a2 + 32))(a2, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::Exec::UndefOp::parse(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  __src = v9;
  v8 = 0x100000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v8);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (__src != v9)
  {
    free(__src);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::ODIE::Compiler::Exec::UndefOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, 0);
  v5 = (*(*a2 + 16))(a2);
  v6 = *(v5 + 4);
  if (v6 >= *(v5 + 3))
  {
    llvm::raw_ostream::write(v5, 32);
  }

  else
  {
    *(v5 + 4) = v6 + 1;
    *v6 = 32;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ":", 1uLL);
  }

  else
  {
    *v8 = 58;
    ++*(v7 + 4);
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = *this;
  v12 = *(*this + 9);
  if (v12)
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    (*(*a2 + 32))(a2, *(v11 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v12 != 1)
    {
      v14 = v13 - 16;
      v15 = 1;
      while (1)
      {
        v16 = (*(*a2 + 16))(a2);
        v17 = *(v16 + 4);
        if (*(v16 + 3) - v17 > 1uLL)
        {
          *v17 = 8236;
          *(v16 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v18 = *(v11 - 1) & 7;
        v19 = v13;
        v20 = v15;
        if (v18 == 6)
        {
          goto LABEL_22;
        }

        v21 = (5 - v18);
        v22 = v14;
        v20 = v15 - v21;
        if (v15 > v21)
        {
          break;
        }

LABEL_23:
        (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v15;
        v14 -= 16;
        if (v12 == v15)
        {
          goto LABEL_24;
        }
      }

      v19 = v13 - 16 * v21;
LABEL_22:
      v22 = v19 - 24 * v20;
      goto LABEL_23;
    }
  }

LABEL_24:
  v23 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::Exec::YieldOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

uint64_t mlir::ODIE::Compiler::Exec::YieldOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(v1 + 17);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  for (i = *(v1 + 9) + 24; mlir::ODIE::Compiler::Exec::__mlir_ods_local_type_constraint_ExecOps4(*this, *(*i + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4); i += 32)
  {
    if (v2 == ++v4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::Exec::YieldOp::parse(uint64_t a1, uint64_t a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  v5 = ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v10, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v8) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v10, v8, v4, a2 + 16);
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void mlir::ODIE::Compiler::Exec::YieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v33, 0);
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
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
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

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 17);
    if (v25)
    {
      v26 = *(v24 + 9);
      (*(*a2 + 32))(a2, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25 != 1)
      {
        v27 = v25 - 1;
        v28 = (v26 + 56);
        do
        {
          v29 = (*(*a2 + 16))(a2);
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 > 1uLL)
          {
            *v30 = 8236;
            *(v29 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v29, ", ", 2uLL);
          }

          v31 = *v28;
          v28 += 4;
          (*(*a2 + 32))(a2, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v27;
        }

        while (v27);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::Exec::verifyDPSOpInterface(mlir::ODIE::Compiler::Exec *this, mlir::Operation *a2)
{
  v2 = this;
  v16 = *MEMORY[0x277D85DE8];
  if (this)
  {
    this = mlir::OpInterface<mlir::ODIE::Compiler::Exec::DPSOpInterface,mlir::ODIE::Compiler::Exec::detail::DPSOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  v13[0] = v2;
  v13[1] = this;
  v3 = v2[9];
  mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(v13);
  if (v4 != v3)
  {
    goto LABEL_8;
  }

  v14[0] = mlir::ODIE::Compiler::Exec::DPSOpInterface::getDpsInits(v13);
  v14[1] = 0;
  v14[2] = v14[0];
  v14[3] = v5;
  v6 = v2[9];
  v7 = (v2 - 4);
  if (!v6)
  {
    v7 = 0;
  }

  v11[0] = v7;
  v11[1] = 0;
  v11[2] = v7;
  v11[3] = v6;
  if (mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(v14, v11))
  {
    v8 = 1;
  }

  else
  {
LABEL_8:
    v11[0] = "should be in DPS form, meaning it should produce a result for each InOut value";
    v12 = 259;
    mlir::Operation::emitOpError(v13[0], v11, v14);
    v8 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::Exec::getInitFuncNameAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(***(a1 + 24) + 32);
  v4 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 96);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v9 = 1283;
  v8[0] = "$";
  v8[2] = v6;
  v8[3] = v5;
  return mlir::StringAttr::get(v3, v8, a3);
}

uint64_t mlir::ODIE::Compiler::Exec::getInitFunc(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  InitFuncNameAttr = mlir::ODIE::Compiler::Exec::getInitFuncNameAttr(a2, a2, a3);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>,mlir::Attribute,mlir::Operation *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::Operation *>>::doFind<mlir::Attribute>((a1 + 8), &InitFuncNameAttr);
  if (result)
  {
    v5 = *(result + 8);
    if (v5)
    {
      if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        return *(result + 8);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::Exec::IsolatedGroupOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(*a1 + 36);
    v4 = *a1 - 16;
    if (!v3)
    {
      v4 = 0;
    }

    v12 = v4;
    v13 = v3;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a3, &v12);
  }

  else
  {
    v6 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    v11 = v6;
    if (*v6 == v6)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v7 = v6[1];
      v8 = v7 - 8;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v8 + 48);
      v10 = (*(v8 + 56) - v9) >> 3;
    }

    v12 = v9;
    v13 = v10;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v11, &v12);
  }
}

uint64_t mlir::ODIE::Compiler::Exec::getReturnOutputIntents(mlir::ODIE::Compiler::Exec *this, mlir::Operation *a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(this + 3) + 32);
  v3 = *(this + 9);
  v4 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v2, 2uLL);
  v8 = v10;
  v9 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Attribute>::assign(&v8, v3, v4);
  v5 = mlir::ArrayAttr::get(v2, v8, v9);
  if (v8 != v10)
  {
    free(v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::ODIE::Compiler::Exec::AllocConstOp::verifySymbolUses(mlir::Operation **this, mlir::SymbolTableCollection *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *&v4[4 * ((v4[11] >> 23) & 1) + 16];
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(v4, a2);
  if (NearestSymbolTable && (v7 = mlir::SymbolTableCollection::lookupSymbolIn(a2, NearestSymbolTable, v5)) != 0 && ((v8 = *(*(v7 + 48) + 16), v9 = v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id, v8 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::ConstOp,void>::id) ? (v10 = 0) : (v10 = v7), v33 = v10, v9))
  {
    v16 = *this - 16;
    if (!*(*this + 9))
    {
      v16 = 0;
    }

    v17 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
    ValueAttr = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v33);
    if (v17 == (*v19)(v19, ValueAttr))
    {
      v13 = 1;
      goto LABEL_11;
    }

    v31[0] = "result type ";
    v32 = 259;
    mlir::Operation::emitOpError(*this, v31, &v37);
    if (v37)
    {
      LODWORD(v34) = 4;
      v35 = v17;
      v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v34, 1);
      v21 = v39 + 24 * v40;
      v22 = *v20;
      *(v21 + 16) = *(v20 + 16);
      *v21 = v22;
      ++v40;
      if (v37)
      {
        mlir::Diagnostic::operator<<<22ul>(v38, " does not match type ");
      }
    }

    v23 = mlir::ODIE::Compiler::Exec::ConstOp::getValueAttr(&v33);
    v25 = (*v24)(v24, v23);
    if (v37)
    {
      LODWORD(v34) = 4;
      v35 = v25;
      v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v34, 1);
      v27 = v39 + 24 * v40;
      v28 = *v26;
      *(v27 + 16) = *(v26 + 16);
      *v27 = v28;
      ++v40;
      if (v37)
      {
        mlir::Diagnostic::operator<<<23ul>(v38, " of the global const @");
        if (v37)
        {
          v29 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 16);
          v30 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 24);
          v36 = 261;
          v34 = v29;
          v35 = v30;
          mlir::Diagnostic::operator<<(v38, &v34);
        }
      }
    }
  }

  else
  {
    v31[0] = "'";
    v32 = 259;
    mlir::Operation::emitOpError(*this, v31, &v37);
    if (v37)
    {
      v11 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 16);
      v12 = *(*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8) + 8) + 24);
      v36 = 261;
      v34 = v11;
      v35 = v12;
      mlir::Diagnostic::operator<<(v38, &v34);
      if (v37)
      {
        mlir::Diagnostic::operator<<<45ul>(v38, "' does not reference a valid global constant");
      }
    }
  }

  v13 = v41 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

uint64_t mlir::ODIE::Compiler::Exec::AsyncAwaitOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(*a1 + 36);
    v4 = *a1 - 16;
    if (!v3)
    {
      v4 = 0;
    }

    v12 = v4;
    v13 = v3;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a3, &v12);
  }

  else
  {
    v6 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    v11 = v6;
    if (*v6 == v6)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v7 = v6[1];
      v8 = v7 - 8;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v8 + 48);
      v10 = (*(v8 + 56) - v9) >> 3;
    }

    v12 = v9;
    v13 = v10;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v11, &v12);
  }
}

BOOL mlir::ODIE::Compiler::Exec::AsyncAwaitOp::areTypesCompatible(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,void>>::doCastIfPossible(a2);
  v7 = v6;
  v8 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,void>>::doCastIfPossible(a3);
  if (v5)
  {
    if (!v8)
    {
      return (*v7)(v7, v5) == a3;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  return (*v9)(v9, v8) == a2;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<340ul>(uint64_t a1)
{
  v6 = 3;
  v7 = " must be 1-bit signless integer or 32-bit signless integer or 64-bit signless integer or 16-bit float or 32-bit float or 64-bit float or index or memref of any type values or  or A type represents a context object. or Future value of any type or Awaitable memref of any type or Task value of any type or Single result from a task, but got ";
  v8 = 339;
  v2 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v6, 1);
  v3 = *(a1 + 16) + 24 * *(a1 + 24);
  v4 = *v2;
  *(v3 + 16) = *(v2 + 16);
  *v3 = v4;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<352ul>(uint64_t a1)
{
  v6 = 3;
  v7 = " must be variadic of 1-bit signless integer or 32-bit signless integer or 64-bit signless integer or 16-bit float or 32-bit float or 64-bit float or index or memref of any type values or  or A type represents a context object. or Future value of any type or Awaitable memref of any type or Task value of any type or Single result from a task, but got ";
  v8 = 351;
  v2 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v6, 1);
  v3 = *(a1 + 16) + 24 * *(a1 + 24);
  v4 = *v2;
  *(v3 + 16) = *(v2 + 16);
  *v3 = v4;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::Exec::__mlir_ods_local_attr_constraint_ExecOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,llvm::CastInfo<mlir::ODIE::Compiler::Exec::AwaitableType,mlir::Type,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::Exec::AwaitableType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}