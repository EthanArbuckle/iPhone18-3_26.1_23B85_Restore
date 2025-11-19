uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = v13[1];
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v4[2] == 1)
    {
      *a2 = v13;
LABEL_7:
      v5 = 1;
      goto LABEL_17;
    }
  }

  *a2 = 0;
  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::BoolAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BoolAttr>();
    unk_27FC18C70 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::BoolAttr>(void)::Name;
    v15 = unk_27FC18C70;
    mlir::Diagnostic::operator<<(v18, &v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
      if (v17)
      {
        LODWORD(v14) = 0;
        v15 = v13;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
        v7 = v19 + 24 * v20;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v20;
      }
    }
  }

  v5 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::pdl::ApplyNativeConstraintOp::getIsNegated(mlir::pdl::ApplyNativeConstraintOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v2 = *(v1 + 24);
  if (v2 > 0x40)
  {
    v3 = llvm::APInt::countLeadingZerosSlowCase((v1 + 16)) == v2;
  }

  else
  {
    v3 = *(v1 + 16) == 0;
  }

  v4 = v3;
  return v4 ^ 1u;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(**a2 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
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
      mlir::Diagnostic::operator<<<40ul>((v6 + 1), " must be variadic of pdl type, but got ");
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

BOOL mlir::pdl::ApplyNativeConstraintOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v21[0] = v22;
  v21[1] = 0x400000000;
  v19[0] = &v20;
  v19[1] = 0x100000000;
  v15 = 0;
  __src = &v18;
  v17 = 0x100000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v13);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v15, v5))
  {
    goto LABEL_16;
  }

  if (v15)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 8) = v15;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v21, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v19) & 1) != 0 && ((*(*a1 + 296))(a1) & 1) != 0 && (((*(*a1 + 112))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &__src)) && (v14 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v9 = *(a2 + 8), v13[0] = a1, v13[1] = &v14, v13[2] = a2, mlir::pdl::ApplyNativeConstraintOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13)))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v17);
    v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v21, v19, v8, a2 + 16);
  }

  else
  {
LABEL_16:
    v10 = 0;
  }

  if (__src != &v18)
  {
    free(__src);
  }

  if (v19[0] != &v20)
  {
    free(v19[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::pdl::ApplyNativeRewriteOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::pdl::ApplyNativeRewriteOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v21[0] = v22;
  v21[1] = 0x400000000;
  v19[0] = &v20;
  v19[1] = 0x100000000;
  v15 = 0;
  __src = &v18;
  v17 = 0x100000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v13);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v15, v5))
  {
    goto LABEL_18;
  }

  if (v15)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(a2);
    *v7 = v15;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v21, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v19) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(*a1 + 112))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    v14 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v9 = *(a2 + 8);
      v13[0] = a1;
      v13[1] = &v14;
      v13[2] = a2;
      if (mlir::pdl::ApplyNativeRewriteOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13))
      {
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v17);
        v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v21, v19, v8, a2 + 16);
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v10 = 0;
LABEL_19:
  if (__src != &v18)
  {
    free(__src);
  }

  if (v19[0] != &v20)
  {
    free(v19[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
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

uint64_t mlir::pdl::AttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = v22;
  v21 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v18, 0, 24);
    v4 = (*(*a1 + 712))(a1, v18, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_15;
      }

      v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v20, v18, 1);
      v6 = v20 + 32 * v21;
      v7 = v5[1];
      *v6 = *v5;
      v6[1] = v7;
      LODWORD(v21) = v21 + 1;
    }
  }

  if ((*(*a1 + 144))(a1))
  {
    if (((*(*a1 + 440))(a1, &v19, 0) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v19)
    {
      v8 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(a2);
      *v8 = v19;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 496))(a1, a2 + 112))
  {
    mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2 + 112, **(*(a2 + 8) + 96));
    v9 = *(**(*(*a1 + 32))(a1) + 384);
    v18[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
    __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v18);
    v10 = *(**(*(*a1 + 32))(a1) + 384);
    v18[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
    v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v10 + 232), v18);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v18);
    if (!v21)
    {
LABEL_14:
      v14 = 1;
      goto LABEL_16;
    }

    v12 = v20;
    v13 = 32 * v21;
    while (((*(*a1 + 728))(a1, v12, v11, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  v14 = 0;
LABEL_16:
  if (v20 != v22)
  {
    free(v20);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
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

uint64_t mlir::pdl::EraseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v7, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(**(*(*a1 + 32))(a1) + 384);
  v9 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), &v9);
  return (*(*a1 + 728))(a1, v7, v5, a2 + 16) & 1;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(mlir::Operation *a1, uint64_t a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    v8 = 1;
  }

  else
  {
    v12 = 261;
    v11[0] = "result";
    v11[1] = 6;
    mlir::Operation::emitOpError(a1, v11, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<3ul>(v17, " #");
    }

    v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
    v4 = v3;
    if (*v3)
    {
      if (*v4)
      {
        v14 = 4;
        v15 = a2;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v4 + 3), &v14, 1);
        v6 = v4[3] + 24 * *(v4 + 8);
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++*(v4 + 8);
      }
    }

    v8 = (v4[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::pdl::OperandOp::parse(uint64_t a1, uint64_t a2)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v17, 0, 24);
    v4 = (*(*a1 + 712))(a1, v17, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }

      v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v18, v17, 1);
      v6 = v18 + 32 * v19;
      v7 = v5[1];
      *v6 = *v5;
      v6[1] = v7;
      LODWORD(v19) = v19 + 1;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v8 = *(**(*(*a1 + 32))(a1) + 384);
    v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
    v16 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v17);
    v9 = *(**(*(*a1 + 32))(a1) + 384);
    v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
    v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v16, v17);
    if (!v19)
    {
LABEL_10:
      v13 = 1;
      goto LABEL_12;
    }

    v11 = v18;
    v12 = 32 * v19;
    while (((*(*a1 + 728))(a1, v11, v10, a2 + 16) & 1) != 0)
    {
      v11 += 32;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  if (v18 != v20)
  {
    free(v18);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(mlir::Operation *a1, void **a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if ((*a2)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
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

uint64_t mlir::pdl::OperandsOp::parse(uint64_t a1, uint64_t a2)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if ((*(*a1 + 112))(a1))
  {
    (*(*a1 + 40))(a1);
    memset(v17, 0, 24);
    v4 = (*(*a1 + 712))(a1, v17, 1);
    if ((v4 & 0x100) != 0)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }

      v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v18, v17, 1);
      v6 = v18 + 32 * v19;
      v7 = v5[1];
      *v6 = *v5;
      v6[1] = v7;
      LODWORD(v19) = v19 + 1;
    }
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v8 = *(**(*(*a1 + 32))(a1) + 384);
    v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
    v17[0] = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v17);
    v16 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v17[0] + 32), v17);
    v9 = *(**(*(*a1 + 32))(a1) + 384);
    v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
    v17[0] = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
    v10 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v17[0] + 32), v17);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v16, v17);
    if (!v19)
    {
LABEL_10:
      v13 = 1;
      goto LABEL_12;
    }

    v11 = v18;
    v12 = 32 * v19;
    while (((*(*a1 + 728))(a1, v11, v10, a2 + 16) & 1) != 0)
    {
      v11 += 32;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  if (v18 != v20)
  {
    free(v18);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl::OperationOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v13, "opName", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = a1[2];
    if (!v4)
    {
LABEL_12:
      v3 = 1;
      goto LABEL_13;
    }

    v5 = a1[1];
    v6 = 8 * v4;
    while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v5 += 8;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_12;
      }
    }
  }

  a2(&v11, a3);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = "attributeValueNames";
      v9[1] = 19;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<55ul>(v12, "' failed to satisfy constraint: string array attribute");
      }
    }
  }

  v3 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if ((*(*a1 + 48))(a1, &v13))
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = v13[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v4[2] == 32)
    {
      *a2 = v13;
      v5 = 1;
    }

    else
    {
      *a2 = 0;
      v12[16] = 257;
      (*(*a1 + 16))(&v17, a1, v12);
      if (v17)
      {
        mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
      }

      {
        llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<int>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<int>>();
        *algn_27FC18C88 = v11;
      }

      if (v17)
      {
        v16 = 261;
        v14 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<int>>(void)::Name;
        v15 = *algn_27FC18C88;
        mlir::Diagnostic::operator<<(v18, &v14);
        if (v17)
        {
          mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
          if (v17)
          {
            LODWORD(v14) = 0;
            v15 = v13;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
            v7 = v19 + 24 * v20;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v20;
          }
        }
      }

      v5 = (v21 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::DialectBytecodeWriter::writeSparseArray<int>(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = a2;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if (a2[v8])
      {
        v7 = v8;
        ++v6;
      }

      ++v8;
    }

    while (a3 != v8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v7 > 0x100 || v6 > a3 >> 1)
  {
    result = (*(*a1 + 48))(a1, 2 * a3);
    if (a3)
    {
      v14 = 4 * a3;
      do
      {
        v15 = *v4++;
        result = (*(*a1 + 48))(a1, v15);
        v14 -= 4;
      }

      while (v14);
    }
  }

  else
  {
    result = (*(*a1 + 48))(a1, (2 * v6) | 1);
    if (v6)
    {
      v10 = v7 + 1;
      v11 = 32 - __clz(v7);
      result = (*(*a1 + 48))(a1, v11);
      v12 = 0;
      do
      {
        v13 = v4[v12];
        if (v13)
        {
          result = (*(*a1 + 48))(a1, (v13 << v11) | v12);
        }

        ++v12;
      }

      while (v10 != v12);
    }
  }

  return result;
}

uint64_t mlir::pdl::OperationOp::getODSOperands(mlir::pdl::OperationOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 80);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 80 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

BOOL mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(mlir::Operation *a1, void **a2, unsigned int a3)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v3 = (*a2)[17];
  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    v10 = 1;
  }

  else
  {
    v14 = 261;
    v13[0] = "operand";
    v13[1] = 7;
    mlir::Operation::emitOpError(a1, v13, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<3ul>(v19, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
    v6 = v5;
    if (*v5)
    {
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

BOOL mlir::pdl::OperationOp::parse(void *a1, uint64_t a2)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v29 = 0;
  v42 = v44;
  v43 = 0x400000000;
  v40[0] = &v41;
  v40[1] = 0x100000000;
  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v32[0] = &v33;
  v32[1] = 0x100000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v45 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v45);
  }

  v7 = (*(*a1 + 472))(a1, &v29, v5);
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_38;
    }

    if (v29)
    {
      v8 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(a2);
      *(v8 + 8) = v29;
    }
  }

  if ((*(*a1 + 288))(a1))
  {
    v9 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v42, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v40) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v9 = 0;
  }

  v28 = v9;
  (*(*a1 + 40))(a1);
  v10 = (*(*a1 + 32))(a1);
  v45 = v47;
  p_src = 0x400000000;
  if ((*(*a1 + 80))(a1) & 1) == 0 || (__src = a1, v31[0] = &v45, v31[1] = &v37, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, &__src, 0, 0)) && ((*(*a1 + 88))(a1))
  {
    v11 = mlir::ArrayAttr::get(*v10, v45, p_src);
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v12)
  {
    goto LABEL_38;
  }

  *mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(a2) = v11;
  if ((*(*a1 + 64))(a1))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_38;
    }

    v13 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v34, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v32) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0;
  }

  __src = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v14 = *(a2 + 8);
    v45 = a1;
    p_src = &__src;
    v47[0] = a2;
    if (mlir::pdl::OperationOp::verifyInherentAttrs(v14, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v45))
    {
      v27 = v13;
      v15 = v43;
      v16 = v38;
      v17 = v35;
      v18 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(a2);
      v18[4] = v15;
      v18[5] = v16;
      v18[6] = v17;
      v19 = *(**(*(*a1 + 32))(a1) + 384);
      v45 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
      __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v19 + 232), &v45);
      v20 = *(**(*(*a1 + 32))(a1) + 384);
      v45 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
      v21 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v20 + 232), &v45);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v31);
      if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v42, v40, v28, a2 + 16))
      {
        if (!v38)
        {
LABEL_37:
          v24 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v34, v32, v27, a2 + 16);
          goto LABEL_39;
        }

        v22 = v37;
        v23 = 32 * v38;
        while (((*(*a1 + 728))(a1, v22, v21, a2 + 16) & 1) != 0)
        {
          v22 += 32;
          v23 -= 32;
          if (!v23)
          {
            goto LABEL_37;
          }
        }
      }
    }
  }

LABEL_38:
  v24 = 0;
LABEL_39:
  if (v32[0] != &v33)
  {
    free(v32[0]);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40[0] != &v41)
  {
    free(v40[0]);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL mlir::pdl::PatternOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v13, "sym_name", 8, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3[2] != 16)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 24);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  if (((*(a1 + 16) >> (v4 - 1)) & 1) == 0)
  {
    v5 = 1;
  }

  else
  {
LABEL_8:
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "benefit";
        v8[1] = 7;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<94ul>(v11, "' failed to satisfy constraint: 16-bit signless integer attribute whose value is non-negative");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::IntegerAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::IntegerAttr>();
        unk_27FC18860 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::IntegerAttr>(void)::Name;
        v16 = unk_27FC18860;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::pdl::PatternOp::parse()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

mlir::Region **std::unique_ptr<mlir::Region>::~unique_ptr[abi:nn200100](mlir::Region **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    mlir::Region::~Region(v2);
    MEMORY[0x25F891040]();
  }

  return a1;
}

BOOL mlir::pdl::RangeOp::parse(uint64_t a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x400000000;
  v12 = &v14;
  v13 = 0x100000000;
  v10 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v15, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v16 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v12) & 1) == 0))
  {
    goto LABEL_13;
  }

  if (v13)
  {
    v5 = mlir::TypeRange::dereference_iterator(v12 & 0xFFFFFFFFFFFFFFF9 | 2, 0);
    v6 = *v5;
    if (v5 && v6[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v5 = *(v5 + 8);
      v6 = *v5;
    }

    v11 = v5;
    v10 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(*v6 + 4), &v11);
  }

  else if (((*(*a1 + 576))(a1, &v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v10, &v11);
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v15, &v12, v4, a2 + 16);
    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
LABEL_14:
  if (v12 != &v14)
  {
    free(v12);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::pdl::ReplaceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v24 = *MEMORY[0x277D85DE8];
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
      while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v5))
      {
        ++v5;
        v6 += 32;
        if (v3 == v5)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_6:
  v22 = v3;
  ODSOperands = mlir::pdl::ReplaceOp::getODSOperands(this, 1u);
  v9 = v8;
  if (v8 < 2)
  {
    if (v8)
    {
      if (!mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(*this, *(*(ODSOperands + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v3))
      {
        goto LABEL_18;
      }

      LODWORD(v3) = v3 + 1;
    }

    v13 = mlir::pdl::ReplaceOp::getODSOperands(this, 2u);
    if (!v14)
    {
LABEL_17:
      v12 = 1;
      goto LABEL_19;
    }

    v15 = v14;
    v16 = v13 + 24;
    while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(*this, (*(*v16 + 8) & 0xFFFFFFFFFFFFFFF8), v3))
    {
      LODWORD(v3) = v3 + 1;
      v16 += 32;
      if (!--v15)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v20 = "operand group starting at #";
  v21 = 259;
  mlir::Operation::emitOpError(*this, &v20, v23);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v23, &v22);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<37ul>((v10 + 1), " requires 0 or 1 element, but found ");
  }

  v19 = v9;
  v12 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v11, &v19) + 200) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::pdl::ReplaceOp::getODSOperands(mlir::pdl::ReplaceOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 64);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 64 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

BOOL mlir::pdl::ReplaceOp::parse(uint64_t a1, uint64_t a2)
{
  v30[16] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v28 = v30;
  v29 = 0x400000000;
  v26[0] = &v27;
  v26[1] = 0x100000000;
  v23 = v25;
  v24 = 0x400000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "with", 4, v21) & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v28, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v26) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*a1 + 40))(a1);
  memset(v21, 0, 24);
  v5 = (*(*a1 + 712))(a1, v21, 1);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

    v6 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v23, v21, 1);
    v7 = v23 + 32 * v24;
    v8 = v6[1];
    *v7 = *v6;
    v7[1] = v8;
    LODWORD(v24) = v24 + 1;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v9 = v24;
    v10 = v29;
    v11 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(a2);
    *v11 = 1;
    v11[1] = v9;
    v11[2] = v10;
    v12 = *(**(*(*a1 + 32))(a1) + 384);
    v21[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
    v13 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), v21);
    if ((*(*a1 + 728))(a1, v19, v13, a2 + 16))
    {
      if (!v24)
      {
LABEL_19:
        v16 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v28, v26, v4, a2 + 16);
        goto LABEL_21;
      }

      v14 = v23;
      v15 = 32 * v24;
      while (((*(*a1 + 728))(a1, v14, v13, a2 + 16) & 1) != 0)
      {
        v14 += 32;
        v15 -= 32;
        if (!v15)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:
  v16 = 0;
LABEL_21:
  if (v23 != v25)
  {
    free(v23);
  }

  if (v26[0] != &v27)
  {
    free(v26[0]);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL mlir::pdl::ResultOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v3 = a1[1], *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v3[2] == 32)
  {
    v4 = 1;
  }

  else
  {
    a2(&v9, a3);
    if (v9)
    {
      mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
      if (v9)
      {
        v8 = 261;
        v7[0] = "index";
        v7[1] = 5;
        mlir::Diagnostic::operator<<(v10, v7);
        if (v9)
        {
          mlir::Diagnostic::operator<<<66ul>(v10, "' failed to satisfy constraint: 32-bit signless integer attribute");
        }
      }
    }

    v4 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl::ResultOp::getIndex(mlir::pdl::ResultOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

uint64_t mlir::pdl::ResultOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v15, v5))
  {
    return 0;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v16) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &__src;
  v16[2] = a2;
  if (!mlir::pdl::ResultOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
  {
    return 0;
  }

  v8 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v16);
  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v16);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return (*(*a1 + 728))(a1, v13, v10, a2 + 16) & 1;
}

BOOL mlir::pdl::ResultsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl::ResultsOp::parse(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  __src = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  v6 = (*(*a1 + 456))(a1, &v18, v5);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v18)
    {
      v7 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>(a2);
      *v7 = v18;
    }
  }

  v20 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v19) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = *a1;
  if (v18)
  {
    if (((*(v8 + 56))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = *(**(*(v8 + 32))(a1) + 384);
    v19[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
    v19[0] = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v19);
    __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v19[0] + 32), v19);
  }

  v14 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v10 = *(a2 + 8);
    v19[0] = a1;
    v19[1] = &v14;
    v19[2] = a2;
    if (mlir::pdl::ResultsOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19))
    {
      v11 = *(**(*(*a1 + 32))(a1) + 384);
      v19[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
      v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v19);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v16);
      return (*(*a1 + 728))(a1, v16, v12, a2 + 16) & 1;
    }
  }

  return 0;
}

BOOL mlir::pdl::RewriteOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::pdl::RewriteOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v21[26] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v21[0] = v2;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v3, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v21))
  {
    goto LABEL_16;
  }

  v20 = 0;
  v4 = *this;
  v5 = *(*this + 11);
  v6 = *(*this + 4 * ((v5 >> 23) & 1) + 18);
  if ((v5 & 0x800000) != 0)
  {
    v7 = *(v4 + 9);
  }

  else
  {
    v7 = 0;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
      v10 = 0;
      if (!mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(v4, *(*(v7 + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
      {
        goto LABEL_17;
      }

      LODWORD(v6) = 1;
    }

    ODSOperands = mlir::pdl::RewriteOp::getODSOperands(this, 1u);
    if (!v12)
    {
LABEL_15:
      v10 = 1;
      goto LABEL_17;
    }

    v13 = v12;
    v14 = ODSOperands + 24;
    while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(*this, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v6))
    {
      LODWORD(v6) = v6 + 1;
      v14 += 32;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v18 = "operand group starting at #";
  v19 = 259;
  mlir::Operation::emitOpError(v4, &v18, v21);
  v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v21, &v20);
  v9 = v8;
  if (*v8)
  {
    mlir::Diagnostic::operator<<<37ul>((v8 + 1), " requires 0 or 1 element, but found ");
  }

  v17 = v6;
  v10 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v9, &v17) + 200) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::pdl::RewriteOp::getODSOperands(mlir::pdl::RewriteOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 72);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 72 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

void mlir::pdl::RewriteOp::parse()
{
  v9[16] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = 0x400000000;
  v4 = &v6;
  v5 = 0x400000000;
  v0 = 0;
  v1 = &v3;
  v2 = 0x100000000;
  operator new();
}

BOOL mlir::pdl::TypeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v3 = 1;
  }

  else
  {
    a2(&v8, a3);
    if (v8)
    {
      mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
      if (v8)
      {
        v7 = 261;
        v6[0] = "constantType";
        v6[1] = 12;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<51ul>(v9, "' failed to satisfy constraint: any type attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 56))(a1, &v14))
  {
    v4 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
LABEL_15:
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::TypeAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypeAttr>();
        *algn_27FC18818 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::TypeAttr>(void)::Name;
        v16 = *algn_27FC18818;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::pdl::TypeOp::parse(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v4 = *(a2 + 8);
    __src = a1;
    v12[0] = &v13;
    v12[1] = a2;
    if (mlir::pdl::TypeOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
    {
      if (((*(*a1 + 112))(a1) & 1) == 0)
      {
LABEL_9:
        v9 = *(**(*(*a1 + 32))(a1) + 384);
        __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
        __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &__src);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v12);
        return 1;
      }

      v5 = **(*(*a1 + 32))(a1);
      v6 = *(v5 + 528);
      if (!v6)
      {
        v7 = *(v5 + 384);
        __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &__src);
      }

      if (mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v14, v6))
      {
        if (v14)
        {
          v8 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>(a2);
          *v8 = v14;
        }

        goto LABEL_9;
      }
    }
  }

  return 0;
}

BOOL mlir::pdl::TypesOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v4 = a1[2];
    if (v4)
    {
      v5 = a1[1];
      v6 = 8 * v4;
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v5 += 8;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_3;
    }

LABEL_13:
    v3 = 1;
    goto LABEL_14;
  }

LABEL_3:
  a2(&v11, a3);
  if (v11)
  {
    mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
    if (v11)
    {
      v10 = 261;
      v9[0] = "constantTypes";
      v9[1] = 13;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<53ul>(v12, "' failed to satisfy constraint: type array attribute");
      }
    }
  }

  v3 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl::TypesOp::parse(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v4 = *(a2 + 8);
    __src = a1;
    v12[0] = &v13;
    v12[1] = a2;
    if (mlir::pdl::TypesOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
    {
      if (((*(*a1 + 112))(a1) & 1) == 0)
      {
LABEL_9:
        v9 = *(**(*(*a1 + 32))(a1) + 384);
        __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
        __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &__src);
        __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v12);
        return 1;
      }

      v5 = **(*(*a1 + 32))(a1);
      v6 = *(v5 + 528);
      if (!v6)
      {
        v7 = *(v5 + 384);
        __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &__src);
      }

      if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v14, v6))
      {
        if (v14)
        {
          v8 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>(a2);
          *v8 = v14;
        }

        goto LABEL_9;
      }
    }
  }

  return 0;
}

uint64_t hasBindingUse(mlir::Operation *a1)
{
  mlir::Operation::getUsers(a1, v9);
  v1 = v10;
  v2 = v11;
  v8 = v10;
  v7[0] = v9[0];
  v7[1] = v9[1];
  if (v10 == v11)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v1 + 16);
    v4 = *(*(v3 + 6) + 16);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id;
    if (!v5 || (hasBindingUse(v3) & 1) != 0)
    {
      break;
    }

    mlir::ResultRange::UseIterator::operator++(v7);
    v1 = v8;
    if (v8 == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t llvm::any_of<llvm::iterator_range<mlir::ValueUserIterator<mlir::ResultRange::UseIterator,mlir::OpOperand>>,verifyResultTypesAreInferrable(mlir::pdl::OperationOp,mlir::OperandRange)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v3 = *(a1 + 32);
  v11 = v3;
  v4 = *(a1 + 72);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = *(v3 + 16);
    if (*(v6 + 16) != a2)
    {
      v7 = *(*(v6 + 48) + 16);
      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id)
      {
        break;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        break;
      }
    }

    mlir::ResultRange::UseIterator::operator++(v10);
    v3 = v11;
    if (v11 == v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::Diagnostic::append<char const(&)[14],unsigned long,char const(&)[21]>(uint64_t a1, uint64_t *a2)
{
  mlir::Diagnostic::operator<<<14ul>(a1, "result type #");
  v4 = *a2;
  v9 = 5;
  v10 = v4;
  v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v9, 1);
  v6 = *(a1 + 16) + 24 * *(a1 + 24);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  ++*(a1 + 24);
  mlir::Diagnostic::operator<<<21ul>(a1, " was not constrained");
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::DialectBytecodeReader::readSparseArray<int>(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v24[26] = *MEMORY[0x277D85DE8];
  v23 = 0;
  if (((*(*a1 + 72))(a1, &v23) & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = v23;
  v7 = v23 >> 1;
  v23 >>= 1;
  if (v6 >= 2)
  {
    if (v6)
    {
      v20 = 0;
      if ((*(*a1 + 72))(a1, &v20))
      {
        if (v20 >= 9)
        {
          v21[0] = "reading sparse array with indexing above 8 bits: ";
          v22 = 259;
          (*(*a1 + 16))(v24, a1, v21);
          mlir::InFlightDiagnostic::operator<<<unsigned long long &>(v24, &v20);
LABEL_14:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
          goto LABEL_15;
        }

        v14 = v23;
        if (!v23)
        {
          goto LABEL_3;
        }

        while (1)
        {
          v19 = 0;
          if (((*(*a1 + 72))(a1, &v19) & 1) == 0)
          {
            break;
          }

          v15 = v19 & ~(-1 << v20);
          v18 = v15;
          if (v15 >= a3)
          {
            v21[0] = "reading a sparse array found index ";
            v22 = 259;
            (*(*a1 + 16))(v24, a1, v21);
            v16 = mlir::InFlightDiagnostic::operator<<<unsigned long long &>(v24, &v18);
            v10 = v16;
            if (*v16)
            {
              mlir::Diagnostic::operator<<<11ul>((v16 + 1), " but only ");
            }

            v17 = a3;
            v11 = &v17;
            goto LABEL_12;
          }

          a2[v15] = v19 >> v20;
          if (!--v14)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_15:
      result = 0;
      goto LABEL_16;
    }

    if (v7 <= a3)
    {
      while (1)
      {
        v24[0] = 0;
        if (((*(*a1 + 72))(a1, v24) & 1) == 0)
        {
          goto LABEL_15;
        }

        *a2++ = v24[0];
        if (!--v7)
        {
          goto LABEL_3;
        }
      }
    }

    v21[0] = "trying to read an array of ";
    v22 = 259;
    (*(*a1 + 16))(v24, a1, v21);
    v9 = mlir::InFlightDiagnostic::operator<<<unsigned long long &>(v24, &v23);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<11ul>((v9 + 1), " but only ");
    }

    v20 = a3;
    v11 = &v20;
LABEL_12:
    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v10, v11);
    if (*v12)
    {
      mlir::Diagnostic::operator<<<20ul>((v12 + 1), " storage available.");
    }

    goto LABEL_14;
  }

LABEL_3:
  result = 1;
LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>(uint64_t *a1)
{
  v9 = 0;
  memset(v8, 0, 24);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(*a1, &v9, 0) || ((*(**a1 + 136))() & 1) == 0 || ((*(**a1 + 704))(*a1, v8, 1) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(a1[1], v9);
  v2 = a1[2];
  v3 = 1;
  v4 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v2, v8, 1);
  v5 = (*v2 + 32 * *(v2 + 8));
  v6 = v4[1];
  *v5 = *v4;
  v5[1] = v6;
  ++*(v2 + 8);
  return v3;
}

uint64_t mlir::Diagnostic::operator<<<94ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeConstraintOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.apply_native_constraint", 0x1B, a2, &mlir::detail::TypeIDResolver<mlir::pdl::ApplyNativeConstraintOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E81720;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a4 != 4)
  {
    if (a4 != 9)
    {
      goto LABEL_10;
    }

    if (*a3 != 0x65746167654E7369 || *(a3 + 8) != 100)
    {
      goto LABEL_10;
    }

    v6 = *(v4 + 64);
LABEL_12:
    v7 = v6 & 0xFFFFFFFFFFFFFF00;
    return v7 | v6;
  }

  if (*a3 == 1701667182)
  {
    v6 = *(v4 + 72);
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v6) = 0;
  v7 = 0;
  return v7 | v6;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 4)
  {
    if (*v5 == 1701667182)
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
      }

      else
      {
        v10 = 0;
      }

      *(v4 + 72) = v10;
    }
  }

  else if (v6 == 9)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    if (v7 == 0x65746167654E7369 && v8 == 100)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v11 = a4[1], *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v11[2] == 1)
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

      *(v4 + 64) = v12;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "isNegated";
    v14 = 9;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "name";
    v14 = 4;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4)
{
  if (!a4)
  {
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_5;
  }

  *a3 = *a4;
  if (!*a3)
  {
LABEL_5:
    *a3 = *(**(***(a2 + 8) + 32) + 592);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*a3)
  {
    *a3 = *(**(***(a2 + 8) + 32) + 592);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v24, a6);
    if (v24)
    {
      mlir::Diagnostic::operator<<<42ul>(v25, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "isNegated", 9uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v14 = v13[1], *(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v14[2] != 1)
      {
        a5(&v24, a6);
        if (!v24)
        {
          goto LABEL_4;
        }

        if (!v24)
        {
          goto LABEL_4;
        }

        v22 = 0;
        v23 = v13;
        goto LABEL_20;
      }

      *a3 = v13;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "name", 4uLL);
  if ((v16 & 1) == 0 || (v17 = *(v15 + 8)) == 0)
  {
LABEL_22:
    result = 1;
    goto LABEL_23;
  }

  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a3[1] = v17;
    goto LABEL_22;
  }

  a5(&v24, a6);
  if (!v24)
  {
    goto LABEL_4;
  }

  if (!v24)
  {
    goto LABEL_4;
  }

  v22 = 0;
  v23 = v17;
LABEL_20:
  v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
  v19 = v26 + 24 * v27;
  v20 = *v18;
  *(v19 + 16) = *(v18 + 16);
  *v19 = v20;
  ++v27;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  result = 0;
LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v20 = v22;
  v21 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v19 = 261;
    v17 = "isNegated";
    v18 = 9;
    v9 = mlir::StringAttr::get(v8, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v19 = 261;
    v17 = "name";
    v18 = 4;
    v12 = mlir::StringAttr::get(v11, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v12, v10);
  }

  v13 = v20;
  if (v21)
  {
    v14 = mlir::DictionaryAttr::get(v3, v20, v21);
    v13 = v20;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v22)
  {
    free(v13);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeConstraintOp>::hashProperties(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v11, 0, v11, v12, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeConstraintOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeConstraintOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeConstraintOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeConstraintOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1E7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E7A0))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>>();
    _MergedGlobals_22 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1E7A0);
  }

  return _MergedGlobals_22;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1E7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E7B8))
  {
    qword_27FC1E7A8 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>>();
    unk_27FC1E7B0 = v1;
    __cxa_guard_release(&qword_27FC1E7B8);
  }

  return qword_27FC1E7A8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<Empty>]";
  v6 = 121;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v56[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 48))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "(", 1uLL);
  }

  else
  {
    *v10 = 40;
    ++*(v9 + 4);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 68);
    v12 = *(a2 + 72);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = (*(*a3 + 16))(a3);
  if (v11)
  {
    v14 = v13;
    (*(*a3 + 160))(a3, *(v12 + 24));
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
        (*(*a3 + 160))(a3, v18);
        --v15;
      }

      while (v15);
    }
  }

  v19 = (*(*a3 + 16))(a3);
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

  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ":", 1uLL);
  }

  else
  {
    *v22 = 58;
    ++*(v21 + 4);
  }

  v23 = (*(*a3 + 16))(a3);
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

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v25 = *(a2 + 68);
    if (v25)
    {
      v26 = *(a2 + 72);
      (*(*a3 + 32))(a3, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25 != 1)
      {
        v27 = v25 - 1;
        v28 = (v26 + 56);
        do
        {
          v29 = (*(*a3 + 16))(a3);
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
          (*(*a3 + 32))(a3, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v27;
        }

        while (v27);
      }
    }
  }

  v32 = (*(*a3 + 16))(a3);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ")", 1uLL);
  }

  else
  {
    *v33 = 41;
    ++*(v32 + 4);
  }

  if (*(a2 + 36))
  {
    v34 = (*(*a3 + 16))(a3);
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

    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if (*(v36 + 3) == v37)
    {
      llvm::raw_ostream::write(v36, ":", 1uLL);
    }

    else
    {
      *v37 = 58;
      ++*(v36 + 4);
    }

    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (v39 >= *(v38 + 3))
    {
      llvm::raw_ostream::write(v38, 32);
    }

    else
    {
      *(v38 + 4) = v39 + 1;
      *v39 = 32;
    }

    v40 = *(a2 + 36);
    v41 = v40 ? a2 - 16 : 0;
    if (v40)
    {
      (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v40 != 1)
      {
        v42 = v41 - 16;
        v43 = 1;
        while (1)
        {
          v44 = (*(*a3 + 16))(a3);
          v45 = *(v44 + 4);
          if (*(v44 + 3) - v45 > 1uLL)
          {
            *v45 = 8236;
            *(v44 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v44, ", ", 2uLL);
          }

          v46 = *(a2 - 8) & 7;
          v47 = v41;
          v48 = v43;
          if (v46 == 6)
          {
            goto LABEL_58;
          }

          v49 = (5 - v46);
          v50 = v42;
          v48 = v43 - v49;
          if (v43 > v49)
          {
            break;
          }

LABEL_59:
          (*(*a3 + 32))(a3, *(v50 + 8) & 0xFFFFFFFFFFFFFFF8);
          ++v43;
          v42 -= 16;
          if (v40 == v43)
          {
            goto LABEL_60;
          }
        }

        v47 = v41 - 16 * v49;
LABEL_58:
        v50 = v47 - 24 * v48;
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  v54 = v56;
  v55 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v54, "name", 4);
  v51 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v51 && v51 == *(**(***(a2 + 24) + 32) + 592))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v54, "isNegated", 9);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v54, v55);
  if (v54 != v56)
  {
    free(v54);
  }

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl::ApplyNativeConstraintOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_34;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v6 = *(v5 + 16)) == 0 || *(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id)
  {
    v43 = 257;
    mlir::Operation::emitOpError(a1, v42, &v45);
    if (v45)
    {
      mlir::Diagnostic::operator<<<19ul>(&v46, "expects parent op ");
    }

    v41 = "'";
    v7 = mlir::InFlightDiagnostic::operator<<<char const*>(&v45, &v41);
    v44[0] = "pdl.pattern";
    v44[1] = 11;
    v40[0] = v44;
    v40[1] = 1;
    v8 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v7, v40);
    v9 = v8;
    if (*v8)
    {
      mlir::Diagnostic::operator<<<2ul>((v8 + 1), "'");
    }

    v10 = *(v9 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    if (v10)
    {
      goto LABEL_34;
    }
  }

  v11 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v12 = *(v11 + 72);
  if (v12)
  {
    v13 = *(v11 + 64);
    v45 = a1;
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v12, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45))
    {
      goto LABEL_34;
    }

    v45 = a1;
    if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps2(v13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45))
    {
      goto LABEL_34;
    }

    if ((*(a1 + 46) & 0x80) != 0)
    {
      v14 = *(a1 + 68);
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 72) + 24;
        while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(a1, *(*v16 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v15))
        {
          ++v15;
          v16 += 32;
          if (v14 == v15)
          {
            goto LABEL_20;
          }
        }

LABEL_34:
        v27 = 0;
        goto LABEL_35;
      }
    }

LABEL_20:
    v17 = *(a1 + 36);
    if (*(a1 + 36))
    {
      v18 = a1 - 16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = 0;
      v20 = a1 - 16;
      while (1)
      {
        v21 = v18;
        if (v19)
        {
          v22 = *(a1 - 8) & 7;
          v23 = a1 - 16;
          v24 = v19;
          if (v22 == 6)
          {
            goto LABEL_29;
          }

          v25 = (5 - v22);
          v21 = v20;
          v24 = v19 - v25;
          if (v19 > v25)
          {
            break;
          }
        }

LABEL_30:
        if (!mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(a1, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v19))
        {
          goto LABEL_34;
        }

        ++v19;
        v20 -= 16;
        if (v17 == v19)
        {
          goto LABEL_36;
        }
      }

      v23 = a1 - 16 - 16 * v25;
LABEL_29:
      v21 = v23 - 24 * v24;
      goto LABEL_30;
    }
  }

  else
  {
    v42[0] = "requires attribute 'name'";
    v43 = 259;
    mlir::Operation::emitOpError(a1, v42, &v45);
    v26 = v47;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    if (v26)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  if ((*(a1 + 46) & 0x80) == 0 || !*(a1 + 68))
  {
    v39 = "expected at least one argument";
    goto LABEL_54;
  }

  v30 = *(a1 + 36);
  if (v30)
  {
    v31 = a1 - 16;
  }

  else
  {
    v31 = 0;
  }

  if (!v30)
  {
    v27 = 1;
    goto LABEL_35;
  }

  v32 = 0;
  v33 = a1 - 16;
  v27 = 1;
  while (1)
  {
    v34 = v31;
    if (!v32)
    {
      goto LABEL_48;
    }

    v35 = *(a1 - 8) & 7;
    v36 = a1 - 16;
    v37 = v32;
    if (v35 != 6)
    {
      v38 = (5 - v35);
      v34 = v33;
      v37 = v32 - v38;
      if (v32 <= v38)
      {
        goto LABEL_48;
      }

      v36 = a1 - 16 - 16 * v38;
    }

    v34 = v36 - 24 * v37;
LABEL_48:
    if (*(*(*(v34 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      break;
    }

    ++v32;
    v33 -= 16;
    if (v30 == v32)
    {
      goto LABEL_35;
    }
  }

  v39 = "returning an operation from a constraint is not supported";
LABEL_54:
  v42[0] = v39;
  v43 = 259;
  mlir::Operation::emitOpError(a1, v42, &v45);
  v27 = v47 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
LABEL_35:
  v28 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeRewriteOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.apply_native_rewrite", 0x18, a2, &mlir::detail::TypeIDResolver<mlir::pdl::ApplyNativeRewriteOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E817E8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::getInherentAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701667182)
  {
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 4 && **(a3 + 16) == 1701667182)
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
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v4;
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "name";
    v7[1] = 4;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "name", 4uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "name";
    v11[1] = 4;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ApplyNativeRewriteOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeRewriteOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeRewriteOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ApplyNativeRewriteOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1E7C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E7C8))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>>();
    qword_27FC1E7C0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1E7C8);
  }

  return qword_27FC1E7C0;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1E7E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E7E0))
  {
    qword_27FC1E7D0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>>();
    *algn_27FC1E7D8 = v1;
    __cxa_guard_release(&qword_27FC1E7E0);
  }

  return qword_27FC1E7D0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<Empty>]";
  v6 = 121;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v55[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 48))(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, "(", 1uLL);
    }

    else
    {
      *v10 = 40;
      ++*(v9 + 4);
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v11 = *(a2 + 68);
      v12 = *(a2 + 72);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = (*(*a3 + 16))(a3);
    if (v11)
    {
      v14 = v13;
      (*(*a3 + 160))(a3, *(v12 + 24));
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
          (*(*a3 + 160))(a3, v18);
          --v15;
        }

        while (v15);
      }
    }

    v19 = (*(*a3 + 16))(a3);
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

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (*(v21 + 3) == v22)
    {
      llvm::raw_ostream::write(v21, ":", 1uLL);
    }

    else
    {
      *v22 = 58;
      ++*(v21 + 4);
    }

    v23 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v25 = *(a2 + 68);
      if (v25)
      {
        v26 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v25 != 1)
        {
          v27 = v25 - 1;
          v28 = (v26 + 56);
          do
          {
            v29 = (*(*a3 + 16))(a3);
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
            (*(*a3 + 32))(a3, *(v31 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v27;
          }

          while (v27);
        }
      }
    }

    v32 = (*(*a3 + 16))(a3);
    v33 = *(v32 + 4);
    if (*(v32 + 3) == v33)
    {
      llvm::raw_ostream::write(v32, ")", 1uLL);
    }

    else
    {
      *v33 = 41;
      ++*(v32 + 4);
    }
  }

  if (*(a2 + 36))
  {
    v34 = (*(*a3 + 16))(a3);
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

    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if (*(v36 + 3) == v37)
    {
      llvm::raw_ostream::write(v36, ":", 1uLL);
    }

    else
    {
      *v37 = 58;
      ++*(v36 + 4);
    }

    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (v39 >= *(v38 + 3))
    {
      llvm::raw_ostream::write(v38, 32);
    }

    else
    {
      *(v38 + 4) = v39 + 1;
      *v39 = 32;
    }

    v40 = *(a2 + 36);
    v41 = v40 ? a2 - 16 : 0;
    if (v40)
    {
      (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v40 != 1)
      {
        v42 = v41 - 16;
        v43 = 1;
        while (1)
        {
          v44 = (*(*a3 + 16))(a3);
          v45 = *(v44 + 4);
          if (*(v44 + 3) - v45 > 1uLL)
          {
            *v45 = 8236;
            *(v44 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v44, ", ", 2uLL);
          }

          v46 = *(a2 - 8) & 7;
          v47 = v41;
          v48 = v43;
          if (v46 == 6)
          {
            goto LABEL_60;
          }

          v49 = (5 - v46);
          v50 = v42;
          v48 = v43 - v49;
          if (v43 > v49)
          {
            break;
          }

LABEL_61:
          (*(*a3 + 32))(a3, *(v50 + 8) & 0xFFFFFFFFFFFFFFF8);
          ++v43;
          v42 -= 16;
          if (v40 == v43)
          {
            goto LABEL_62;
          }
        }

        v47 = v41 - 16 * v49;
LABEL_60:
        v50 = v47 - 24 * v48;
        goto LABEL_61;
      }
    }
  }

LABEL_62:
  v53 = v55;
  v54 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v53, "name", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v53, v54);
  if (v53 != v55)
  {
    free(v53);
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl::ApplyNativeRewriteOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v6 = *(v5 + 16)) == 0 || *(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    v31 = 257;
    mlir::Operation::emitOpError(a1, v30, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<19ul>(&v34, "expects parent op ");
    }

    v29 = "'";
    v7 = mlir::InFlightDiagnostic::operator<<<char const*>(&v33, &v29);
    v32[0] = "pdl.rewrite";
    v32[1] = 11;
    v28[0] = v32;
    v28[1] = 1;
    v8 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v7, v28);
    v9 = v8;
    if (*v8)
    {
      mlir::Diagnostic::operator<<<2ul>((v8 + 1), "'");
    }

    v10 = *(v9 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    if (v10)
    {
      goto LABEL_33;
    }
  }

  v11 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v11)
  {
    v30[0] = "requires attribute 'name'";
    v31 = 259;
    mlir::Operation::emitOpError(a1, v30, &v33);
    v24 = v35;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    if ((v24 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v25 = 0;
    goto LABEL_34;
  }

  v33 = a1;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v11, "name", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v33))
  {
    goto LABEL_33;
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v12 = *(a1 + 68);
    if (v12)
    {
      v13 = 0;
      v14 = *(a1 + 72) + 24;
      while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(a1, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13))
      {
        ++v13;
        v14 += 32;
        if (v12 == v13)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_33;
    }
  }

LABEL_19:
  v15 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v16 = a1 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 0;
    v18 = a1 - 16;
    while (1)
    {
      v19 = v16;
      if (v17)
      {
        v20 = *(a1 - 8) & 7;
        v21 = a1 - 16;
        v22 = v17;
        if (v20 == 6)
        {
          goto LABEL_28;
        }

        v23 = (5 - v20);
        v19 = v18;
        v22 = v17 - v23;
        if (v17 > v23)
        {
          break;
        }
      }

LABEL_29:
      if (!mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(a1, *(v19 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v17))
      {
        goto LABEL_33;
      }

      ++v17;
      v18 -= 16;
      if (v15 == v17)
      {
        goto LABEL_35;
      }
    }

    v21 = a1 - 16 - 16 * v23;
LABEL_28:
    v19 = v21 - 24 * v22;
    goto LABEL_29;
  }

LABEL_35:
  if ((*(a1 + 46) & 0x80) != 0 && *(a1 + 68) || *(a1 + 36))
  {
    v25 = 1;
  }

  else
  {
    v30[0] = "expected at least one argument or result";
    v31 = 259;
    mlir::Operation::emitOpError(a1, v30, &v33);
    v25 = v35 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

LABEL_34:
  v26 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::AttributeOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.attribute", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E818B0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1970037110 && v6 == 101)
    {
      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = a4;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v13[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "value", 5uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        *a3 = v10;
      }
    }

    result = 1;
  }

  else
  {
    a5(&v12, a6);
    if (v12)
    {
      mlir::Diagnostic::operator<<<42ul>(v13, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "value";
    v11[1] = 5;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::AttributeOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::AttributeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::AttributeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::AttributeOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[336];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>>();
    *algn_27FC18A98 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl<Empty>]";
  v6 = 130;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v24[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = *(a2 + 44);
  if ((v7 & 0x800000) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
  {
    v8 = (*(*a3 + 16))(a3);
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

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, ":", 1uLL);
    }

    else
    {
      *v11 = 58;
      ++*(v10 + 4);
    }

    v12 = (*(*a3 + 16))(a3);
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

    v7 = *(a2 + 44);
    if ((v7 & 0x800000) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
    {
      (*(*a3 + 160))(a3);
      v7 = *(a2 + 44);
    }
  }

  if (*(a2 + 64 + 16 * ((v7 >> 23) & 1)))
  {
    v14 = (*(*a3 + 16))(a3);
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

    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, "=", 1uLL);
    }

    else
    {
      *v17 = 61;
      ++*(v16 + 4);
    }

    v18 = (*(*a3 + 16))(a3);
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

    (*(*a3 + 40))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)));
  }

  v22 = v24;
  v23 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v22, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 200))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v22, v23);
  if (v22 != v24)
  {
    free(v22);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl::AttributeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_22;
  }

  v5 = *(a1 + 44);
  v23 = 0;
  if ((v5 & 0x800000) != 0)
  {
    v6 = *(a1 + 68);
    if (v6 >= 2)
    {
      v25[0] = "operand group starting at #";
      v26 = 259;
      mlir::Operation::emitOpError(a1, v25, &v27);
      v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v23);
      v8 = v7;
      if (*v7)
      {
        mlir::Diagnostic::operator<<<37ul>((v7 + 1), " requires 0 or 1 element, but found ");
      }

      v24[0] = v6;
      v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v8, v24) + 200);
      goto LABEL_21;
    }

    if (v6 && !mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 36))
  {
    v10 = a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = 0;
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    goto LABEL_24;
  }

  v26 = 261;
  v25[0] = "result";
  v25[1] = 6;
  mlir::Operation::emitOpError(a1, v25, &v27);
  if (v27)
  {
    mlir::Diagnostic::operator<<<3ul>(v28, " #");
  }

  v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v23);
  v13 = v12;
  if (*v12)
  {
    if (*v13)
    {
      LODWORD(v24[0]) = 4;
      v24[1] = v11;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), v24, 1);
      v15 = v13[3] + 24 * *(v13 + 8);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++*(v13 + 8);
    }
  }

  v9 = *(v13 + 200);
LABEL_21:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  if ((v9 & 1) == 0)
  {
LABEL_24:
    v20 = *(a1 + 44);
    v21 = (v20 & 0x800000) == 0 || !*(a1 + 68) || *(*(a1 + 72) + 24) == 0;
    if (*(a1 + 16 * ((v20 >> 23) & 1) + 64))
    {
      if (v21)
      {
        HasBindingUse = 1;
        goto LABEL_23;
      }
    }

    else
    {
      if (*(*(*((*(*(a1 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
      {
        HasBindingUse = verifyHasBindingUse(a1);
        goto LABEL_23;
      }
    }

    v25[0] = v22;
    v26 = 259;
    mlir::Operation::emitOpError(a1, v25, &v27);
    HasBindingUse = v28[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
    goto LABEL_23;
  }

LABEL_22:
  HasBindingUse = 0;
LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
  return HasBindingUse & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::Model(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "pdl.erase", 9, a2, &mlir::detail::TypeIDResolver<mlir::pdl::EraseOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E81978;
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::printAssembly(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::EraseOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[5] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v11, 0);
  v10 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::pdl::EraseOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 2);
  if (v6)
  {
    v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        if (*(*(v8 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v19 = 257;
  mlir::Operation::emitOpError(a1, v18, &v21);
  if (v21)
  {
    mlir::Diagnostic::operator<<<19ul>(v22, "expects parent op ");
  }

  v17 = "'";
  v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v21, &v17);
  v20[0] = "pdl.rewrite";
  v20[1] = 11;
  v16[0] = v20;
  v16[1] = 1;
  v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v16);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
  }

  v12 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  if ((v12 & 1) == 0)
  {
LABEL_16:
    v13 = mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(a1, *(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::Model(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "pdl.operand", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E81A40;
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[343];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>>();
    unk_27FC18AD0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<Empty>]";
  v6 = 126;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
  {
    v7 = (*(*a3 + 16))(a3);
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

    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, ":", 1uLL);
    }

    else
    {
      *v10 = 58;
      ++*(v9 + 4);
    }

    v11 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
    {
      (*(*a3 + 160))(a3);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, 0);
  v14 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::pdl::OperandOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v26[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_26;
  }

  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v7 = *(v6 + 16)) == 0 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id)
  {
    v23 = 257;
    mlir::Operation::emitOpError(a1, v22, &v25);
    if (v25)
    {
      mlir::Diagnostic::operator<<<19ul>(v26, "expects parent op ");
    }

    v21 = "'";
    v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v25, &v21);
    v24[0] = "pdl.pattern";
    v24[1] = 11;
    v20[0] = v24;
    v20[1] = 1;
    v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, v20);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
    }

    v11 = *(v10 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    if (v11)
    {
      goto LABEL_26;
    }
  }

  LODWORD(v24[0]) = 0;
  if ((*(a1 + 46) & 0x80) == 0)
  {
LABEL_21:
    if (*(a1 + 36))
    {
      v16 = a1 - 16;
    }

    else
    {
      v16 = 0;
    }

    if (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(a1, *(v16 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }

LABEL_26:
    HasBindingUse = 0;
    goto LABEL_27;
  }

  v12 = *(a1 + 68);
  if (v12 < 2)
  {
    if (v12 && !mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v22[0] = "operand group starting at #";
  v23 = 259;
  mlir::Operation::emitOpError(a1, v22, &v25);
  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v25, v24);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<37ul>((v13 + 1), " requires 0 or 1 element, but found ");
  }

  v20[0] = v12;
  v15 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v14, v20) + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_25:
  HasBindingUse = verifyHasBindingUse(a1);
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
  return HasBindingUse;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::Model(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v5[0] = v6;
  v5[1] = 0x300000000;
  mlir::OperationName::Impl::Impl(a1, "pdl.operands", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id, v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v5);
  *a1 = &unk_286E81B08;
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperandsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[348];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>>();
    *algn_27FC18AF8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<Empty>]";
  v6 = 126;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v15[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
  {
    v7 = (*(*a3 + 16))(a3);
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

    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, ":", 1uLL);
    }

    else
    {
      *v10 = 58;
      ++*(v9 + 4);
    }

    v11 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) && *(*(a2 + 72) + 24))
    {
      (*(*a3 + 160))(a3);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, 0);
  v14 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::pdl::OperandsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v33[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_32;
  }

  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v7 = *(v6 + 16)) == 0 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id)
  {
    v28 = 257;
    mlir::Operation::emitOpError(a1, v27, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<19ul>(v33, "expects parent op ");
    }

    v26 = "'";
    v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v32, &v26);
    v31[0] = "pdl.pattern";
    v31[1] = 11;
    v29 = v31;
    v30 = 1;
    v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, &v29);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
    }

    v11 = *(v10 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    if (v11)
    {
      goto LABEL_32;
    }
  }

  LODWORD(v31[0]) = 0;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v12 = *(a1 + 68);
    if (v12 >= 2)
    {
      v27[0] = "operand group starting at #";
      v28 = 259;
      mlir::Operation::emitOpError(a1, v27, &v32);
      v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, v31);
      v14 = v13;
      if (*v13)
      {
        mlir::Diagnostic::operator<<<37ul>((v13 + 1), " requires 0 or 1 element, but found ");
      }

      v29 = v12;
      v15 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v14, &v29) + 200);
      goto LABEL_31;
    }

    if (v12 && !mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      goto LABEL_32;
    }
  }

  if (*(a1 + 36))
  {
    v16 = a1 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v31[0]) = 0;
  if ((*v17)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*v17[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    goto LABEL_34;
  }

  v28 = 261;
  v27[0] = "result";
  v27[1] = 6;
  mlir::Operation::emitOpError(a1, v27, &v32);
  if (v32)
  {
    mlir::Diagnostic::operator<<<3ul>(v33, " #");
  }

  v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, v31);
  v19 = v18;
  if (*v18)
  {
    if (*v19)
    {
      LODWORD(v29) = 4;
      v30 = v17;
      v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v29, 1);
      v21 = v19[3] + 24 * *(v19 + 8);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 16);
      *v21 = v22;
      ++*(v19 + 8);
    }
  }

  v15 = *(v19 + 200);
LABEL_31:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  if ((v15 & 1) == 0)
  {
LABEL_34:
    HasBindingUse = verifyHasBindingUse(a1);
    goto LABEL_33;
  }

LABEL_32:
  HasBindingUse = 0;
LABEL_33:
  v24 = *MEMORY[0x277D85DE8];
  return HasBindingUse;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::OperationOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.operation", 0xD, a2, &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E81BD0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1632530543 || *(a3 + 4) != 25965)
    {
      goto LABEL_29;
    }

    v11 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_32;
  }

  if (a4 != 21)
  {
    if (a4 != 19)
    {
LABEL_29:
      LOBYTE(v11) = 0;
      v12 = 0;
      return v12 | v11;
    }

    if (*a3 != 0x7475626972747461 || *(a3 + 8) != 0x614E65756C615665 || *(a3 + 11) != 0x73656D614E65756CLL)
    {
      v6 = *(a3 + 11);
      v7 = *a3 == 0x53646E617265706FLL && *(a3 + 8) == 0x6953746E656D6765;
      v8 = 1400139365;
      goto LABEL_19;
    }

    v11 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
LABEL_32:
    v12 = v11 & 0xFFFFFFFFFFFFFF00;
    return v12 | v11;
  }

  v6 = *(a3 + 13);
  v7 = *a3 == 0x5F646E617265706FLL && *(a3 + 8) == 0x5F746E656D676573;
  v8 = 1935635566;
LABEL_19:
  v9 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v9)
  {
    goto LABEL_29;
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80, 3);
  v12 = v11 & 0xFFFFFFFFFFFFFF00;
  return v12 | v11;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  switch(v5)
  {
    case 6:
      v13 = *v4;
      v14 = *(v4 + 2);
      if (v13 == 1632530543 && v14 == 25965)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v16 = a4;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v16;
      }

      break;
    case 21:
      v8 = *v4 ^ 0x5F646E617265706FLL;
      v9 = *(v4 + 1) ^ 0x5F746E656D676573;
      v10 = *(v4 + 13);
      v11 = 1935635566;
      goto LABEL_13;
    case 19:
      if (*v4 != 0x7475626972747461 || *(v4 + 1) != 0x614E65756C615665 || *(v4 + 11) != 0x73656D614E65756CLL)
      {
        v8 = *v4 ^ 0x53646E617265706FLL;
        v9 = *(v4 + 1) ^ 0x6953746E656D6765;
        v10 = *(v4 + 11);
        v11 = 1400139365;
LABEL_13:
        if (v8 | v9 | v10 ^ (v11 | 0x73657A6900000000))
        {
          v12 = 1;
        }

        else
        {
          v12 = a4 == 0;
        }

        if (!v12 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
        {
          v18 = *(a4 + 8);
          if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v18[2] == 32 && *(a4 + 16) == 3)
          {
            v19 = *(a4 + 32);
            if (v19 >= 4)
            {
              return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80), *(a4 + 24), v19 & 0xFFFFFFFFFFFFFFFCLL);
            }
          }
        }

        return result;
      }

      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v17;
      break;
    default:
      return result;
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v20 = 261;
    v18 = "attributeValueNames";
    v19 = 19;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "opName";
    v19 = 6;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 16, 3);
  v15 = *(**v14 + 32);
  v20 = 261;
  v18 = "operandSegmentSizes";
  v19 = 19;
  v17 = mlir::StringAttr::get(v15, &v18, v16);
  mlir::NamedAttrList::push_back(a3, v17, v14);
}

double mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v27, a6);
    if (v27)
    {
      mlir::Diagnostic::operator<<<42ul>(v28, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "attributeValueNames", 0x13uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v27, a6);
        if (v27)
        {
          goto LABEL_18;
        }

        goto LABEL_4;
      }

      *a3 = v14;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "opName", 6uLL);
  if (v16)
  {
    v14 = *(v15 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a5(&v27, a6);
        if (v27)
        {
LABEL_18:
          if (v27)
          {
            v25 = 0;
            v26 = v14;
            v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v29, &v25, 1);
            v18 = v29 + 24 * v30;
            v19 = *v17;
            *(v18 + 16) = *(v17 + 16);
            *v18 = v19;
            ++v30;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
        goto LABEL_5;
      }

      a3[1] = v14;
    }
  }

  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v21 & 1) == 0 || (v22 = *(v20 + 8)) == 0) && ((v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v24 & 1) == 0) || (v22 = *(v23 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 2, 3, v22, a5, a6, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v23 = v25;
  v24 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v22 = 261;
    v20 = "attributeValueNames";
    v21 = 19;
    v9 = mlir::StringAttr::get(v8, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v22 = 261;
    v20 = "opName";
    v21 = 6;
    v12 = mlir::StringAttr::get(v11, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v12, v10);
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 16, 3);
  v14 = *(**v13 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v16 = mlir::StringAttr::get(v14, &v20, v15);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v16, v13);
  if (v24)
  {
    v17 = mlir::DictionaryAttr::get(v3, v23, v24);
  }

  else
  {
    v17 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

__n128 mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a3 + 16) == *(a2 + 16) && *(a3 + 24) == *(a2 + 24);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::OperationOp>::hashProperties(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = *(a2 + 20);
  v7 = __ROR8__(v6 + 12, 12);
  v8 = 0x9DDFEA08EB382D69 * (a2[2] ^ v7 ^ 0xFF51AFD7ED558CCDLL);
  v11 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47))) ^ v6;
  memset(v14, 0, sizeof(v14));
  v15 = 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v13, 0, v14, &v14[3] + 8, &v12, &v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::OperationOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::OperationOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::OperationOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::OperationOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3 + 1))
  {
    goto LABEL_12;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_12:
      result = 0;
      goto LABEL_13;
    }

    if (*(v9 + 16) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_12;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 2, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 4, 3uLL) & 1) == 0)
  {
    goto LABEL_12;
  }

  result = 1;
LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::OperationOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 16))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 16, 3);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 16), 3);
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[7] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[353];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>>();
    unk_27FC18B20 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl<Empty>]";
  v6 = 130;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[358];
}

uint64_t llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>();
    *algn_27FC18B48 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AttrSizedOperandSegments<Empty>]";
  v6 = 108;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v6 = a2;
  v108[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = v6 + 64;
  v8 = (*(v6 + 44) >> 23) & 1;
  if (*(v6 + 64 + 16 * v8 + 8))
  {
    v9 = (*(*a3 + 16))(a3);
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

    (*(*a3 + 48))(a3, *(v7 + 16 * ((*(v6 + 44) >> 23) & 1) + 8));
    v8 = (*(v6 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8 + 16))
  {
    v11 = (*(*a3 + 16))(a3);
    v12 = *(v11 + 4);
    if (*(v11 + 3) == v12)
    {
      llvm::raw_ostream::write(v11, "(", 1uLL);
    }

    else
    {
      *v12 = 40;
      ++*(v11 + 4);
    }

    v13 = *(v6 + 44);
    v14 = *(v7 + 16 * ((v13 >> 23) & 1) + 16);
    if ((v13 & 0x800000) != 0)
    {
      v15 = *(v6 + 72);
    }

    else
    {
      v15 = 0;
    }

    v16 = (*(*a3 + 16))(a3);
    if (v14)
    {
      v17 = v16;
      (*(*a3 + 160))(a3, *(v15 + 24));
      if (v14 != 1)
      {
        v18 = v14 - 1;
        v19 = (v15 + 56);
        do
        {
          v20 = *(v17 + 4);
          if (*(v17 + 3) - v20 > 1uLL)
          {
            *v20 = 8236;
            *(v17 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v17, ", ", 2uLL);
          }

          v21 = *v19;
          v19 += 4;
          (*(*a3 + 160))(a3, v21);
          --v18;
        }

        while (v18);
      }
    }

    v22 = (*(*a3 + 16))(a3);
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

    v24 = (*(*a3 + 16))(a3);
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

    v26 = (*(*a3 + 16))(a3);
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

    v28 = *(v6 + 44);
    v29 = *(v7 + 16 * ((v28 >> 23) & 1) + 16);
    if ((v28 & 0x800000) != 0)
    {
      v30 = *(v6 + 72);
      if (v29)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v30 = 0;
      if (v29)
      {
LABEL_30:
        (*(*a3 + 32))(a3, *(*(v30 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v29 != 1)
        {
          v31 = v29 - 1;
          v32 = (v30 + 56);
          do
          {
            v33 = (*(*a3 + 16))(a3);
            v34 = *(v33 + 4);
            if (*(v33 + 3) - v34 > 1uLL)
            {
              *v34 = 8236;
              *(v33 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v33, ", ", 2uLL);
            }

            v35 = *v32;
            v32 += 4;
            (*(*a3 + 32))(a3, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v31;
          }

          while (v31);
        }
      }
    }

    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if (*(v36 + 3) == v37)
    {
      llvm::raw_ostream::write(v36, ")", 1uLL);
    }

    else
    {
      *v37 = 41;
      ++*(v36 + 4);
    }
  }

  v38 = (*(*a3 + 16))(a3);
  v39 = *(v38 + 4);
  if (v39 >= *(v38 + 3))
  {
    llvm::raw_ostream::write(v38, 32);
  }

  else
  {
    *(v38 + 4) = v39 + 1;
    *v39 = 32;
  }

  v40 = *(v6 + 44);
  v41 = (v7 + 16 * ((v40 >> 23) & 1));
  if ((v40 & 0x800000) != 0)
  {
    v42 = *(v6 + 72);
  }

  else
  {
    v42 = 0;
  }

  v43 = *v41;
  if (*(*v41 + 16))
  {
    v44 = v41[4];
    v45 = (*(*a3 + 16))(a3);
    v46 = *(v45 + 4);
    v104 = v6 + 64;
    v105 = v6;
    if (*(v45 + 3) - v46 > 1uLL)
    {
      *v46 = 31520;
      *(v45 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v45, " {", 2uLL);
    }

    v47 = *(v43 + 16);
    if (v47 << 32)
    {
      v48 = v42 + 32 * v44;
      (*(*a3 + 40))(a3, **(v43 + 8));
      v49 = (*(*a3 + 16))(a3);
      v50 = *(v49 + 4);
      if ((*(v49 + 3) - v50) > 2)
      {
        *(v50 + 2) = 32;
        *v50 = 15648;
        *(v49 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v49, " = ", 3uLL);
      }

      (*(*a3 + 160))(a3, *(v48 + 24));
      if (v47 << 32 != 0x100000000)
      {
        v51 = 1;
        v52 = 0x100000000;
        do
        {
          v53 = (*(*a3 + 16))(a3);
          v54 = *(v53 + 4);
          if (*(v53 + 3) - v54 > 1uLL)
          {
            *v54 = 8236;
            *(v53 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v53, ", ", 2uLL);
          }

          (*(*a3 + 40))(a3, *(*(v43 + 8) + 8 * v51));
          v55 = (*(*a3 + 16))(a3);
          v56 = *(v55 + 4);
          if ((*(v55 + 3) - v56) > 2)
          {
            *(v56 + 2) = 32;
            *v56 = 15648;
            *(v55 + 4) += 3;
          }

          else
          {
            llvm::raw_ostream::write(v55, " = ", 3uLL);
          }

          (*(*a3 + 160))(a3, *(v48 + (v52 >> 27) + 24));
          ++v51;
          v52 += 0x100000000;
        }

        while (v47 != v51);
      }
    }

    v57 = (*(*a3 + 16))(a3);
    v58 = *(v57 + 4);
    if (v58 >= *(v57 + 3))
    {
      llvm::raw_ostream::write(v57, 125);
    }

    else
    {
      *(v57 + 4) = v58 + 1;
      *v58 = 125;
    }

    v7 = v104;
    v6 = v105;
  }

  if (*(v7 + 16 * ((*(v6 + 44) >> 23) & 1) + 24))
  {
    v59 = (*(*a3 + 16))(a3);
    v60 = *(v59 + 4);
    if (v60 >= *(v59 + 3))
    {
      llvm::raw_ostream::write(v59, 32);
    }

    else
    {
      *(v59 + 4) = v60 + 1;
      *v60 = 32;
    }

    v61 = (*(*a3 + 16))(a3);
    v62 = *(v61 + 4);
    if (*(v61 + 3) - v62 > 1uLL)
    {
      *v62 = 15917;
      *(v61 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v61, "->", 2uLL);
    }

    v63 = (*(*a3 + 16))(a3);
    v64 = *(v63 + 4);
    if (v64 >= *(v63 + 3))
    {
      llvm::raw_ostream::write(v63, 32);
    }

    else
    {
      *(v63 + 4) = v64 + 1;
      *v64 = 32;
    }

    v65 = (*(*a3 + 16))(a3);
    v66 = *(v65 + 4);
    if (*(v65 + 3) == v66)
    {
      llvm::raw_ostream::write(v65, "(", 1uLL);
    }

    else
    {
      *v66 = 40;
      ++*(v65 + 4);
    }

    v67 = *(v6 + 44);
    v68 = (v7 + 16 * ((v67 >> 23) & 1));
    v69 = v68[6];
    if ((v67 & 0x800000) != 0)
    {
      v70 = *(v6 + 72);
    }

    else
    {
      v70 = 0;
    }

    v71 = v68[4];
    v72 = v68[5];
    v73 = (*(*a3 + 16))(a3);
    if (v69)
    {
      v74 = v73;
      v75 = (v72 + v71);
      v76 = (v69 + v75);
      v77 = v70 + 32 * v75;
      (*(*a3 + 160))(a3, *(v77 + 24));
      if (v76 - v75 != 1)
      {
        v78 = ~v75 + v76;
        v79 = (v77 + 56);
        do
        {
          v80 = *(v74 + 4);
          if (*(v74 + 3) - v80 > 1uLL)
          {
            *v80 = 8236;
            *(v74 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v74, ", ", 2uLL);
          }

          v81 = *v79;
          v79 += 4;
          (*(*a3 + 160))(a3, v81);
          --v78;
        }

        while (v78);
      }
    }

    v82 = (*(*a3 + 16))(a3);
    v83 = *(v82 + 4);
    if (v83 >= *(v82 + 3))
    {
      llvm::raw_ostream::write(v82, 32);
    }

    else
    {
      *(v82 + 4) = v83 + 1;
      *v83 = 32;
    }

    v84 = (*(*a3 + 16))(a3);
    v85 = *(v84 + 4);
    if (*(v84 + 3) == v85)
    {
      llvm::raw_ostream::write(v84, ":", 1uLL);
    }

    else
    {
      *v85 = 58;
      ++*(v84 + 4);
    }

    v86 = (*(*a3 + 16))(a3);
    v87 = *(v86 + 4);
    if (v87 >= *(v86 + 3))
    {
      llvm::raw_ostream::write(v86, 32);
    }

    else
    {
      *(v86 + 4) = v87 + 1;
      *v87 = 32;
    }

    v88 = *(v6 + 44);
    v89 = (v7 + 16 * ((v88 >> 23) & 1));
    v90 = v89[6];
    if ((v88 & 0x800000) != 0)
    {
      v91 = *(v6 + 72);
      if (v90)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v91 = 0;
      if (v90)
      {
LABEL_98:
        v92 = (v89[5] + v89[4]);
        v93 = (v90 + v92);
        v94 = v91 + 32 * v92;
        (*(*a3 + 32))(a3, *(*(v94 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v93 - v92 != 1)
        {
          v95 = ~v92 + v93;
          v96 = (v94 + 56);
          do
          {
            v97 = (*(*a3 + 16))(a3);
            v98 = *(v97 + 4);
            if (*(v97 + 3) - v98 > 1uLL)
            {
              *v98 = 8236;
              *(v97 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v97, ", ", 2uLL);
            }

            v99 = *v96;
            v96 += 4;
            (*(*a3 + 32))(a3, *(v99 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v95;
          }

          while (v95);
        }
      }
    }

    v100 = (*(*a3 + 16))(a3);
    v101 = *(v100 + 4);
    if (*(v100 + 3) == v101)
    {
      llvm::raw_ostream::write(v100, ")", 1uLL);
    }

    else
    {
      *v101 = 41;
      ++*(v100 + 4);
    }
  }

  v106 = v108;
  v107 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v106, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v106, "opName", 6);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v106, "attributeValueNames", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(v6);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v106, v107);
  if (v106 != v108)
  {
    free(v106);
  }

  v103 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl::OperationOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::OperationType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v5 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
    if (mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5))
    {
      v89 = a1;
      v6 = a1 + 64;
      v7 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 + 8);
        v93 = a1;
        if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v9, "opName", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v93))
        {
          v93 = a1;
          if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v93))
          {
            v10 = *(a1 + 44);
            v11 = *(v6 + 16 * ((v10 >> 23) & 1) + 16);
            if ((v10 & 0x800000) != 0)
            {
              v12 = *(a1 + 72);
              if (v11)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v12 = 0;
              if (v11)
              {
LABEL_12:
                v13 = 0;
                v14 = v12 + 24;
                while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps8(a1, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), v13))
                {
                  ++v13;
                  v14 += 32;
                  if (v11 == v13)
                  {
                    goto LABEL_15;
                  }
                }

                goto LABEL_43;
              }
            }

LABEL_15:
            ODSOperands = mlir::pdl::OperationOp::getODSOperands(&v89, 1u);
            if (v16)
            {
              v17 = v16;
              v18 = ODSOperands + 24;
              do
              {
                v19 = *(*v18 + 8) & 0xFFFFFFFFFFFFFFF8;
                v86 = v11;
                if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
                {
                  v92 = 261;
                  v90 = "operand";
                  v91 = 7;
                  mlir::Operation::emitOpError(v89, &v90, &v93);
                  if (v93)
                  {
                    mlir::Diagnostic::operator<<<3ul>(v94, " #");
                  }

                  v20 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v93, &v86);
                  v21 = v20;
                  if (*v20)
                  {
                    if (*v21)
                    {
                      LODWORD(v87) = 4;
                      v88 = v19;
                      v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v87, 1);
                      v23 = v21[3] + 24 * *(v21 + 8);
                      v24 = *v22;
                      *(v23 + 16) = *(v22 + 16);
                      *v23 = v24;
                      ++*(v21 + 8);
                    }
                  }

                  v25 = *(v21 + 200);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v93);
                  if (v25)
                  {
                    goto LABEL_43;
                  }
                }

                v18 += 32;
                LODWORD(v11) = v11 + 1;
              }

              while (--v17);
            }

            v26 = mlir::pdl::OperationOp::getODSOperands(&v89, 2u);
            if (v27)
            {
              v28 = v27;
              v29 = v26 + 24;
              do
              {
                v30 = (*(*v29 + 8) & 0xFFFFFFFFFFFFFFF8);
                v86 = v11;
                v31 = (*v30)[17];
                if (v31 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id && (v31 != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || *(*v30[1] + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id))
                {
                  v92 = 261;
                  v90 = "operand";
                  v91 = 7;
                  mlir::Operation::emitOpError(v89, &v90, &v93);
                  if (v93)
                  {
                    mlir::Diagnostic::operator<<<3ul>(v94, " #");
                  }

                  v32 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v93, &v86);
                  v33 = v32;
                  if (*v32)
                  {
                    if (*v33)
                    {
                      LODWORD(v87) = 4;
                      v88 = v30;
                      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v33 + 3), &v87, 1);
                      v35 = v33[3] + 24 * *(v33 + 8);
                      v36 = *v34;
                      *(v35 + 16) = *(v34 + 16);
                      *v35 = v36;
                      ++*(v33 + 8);
                    }
                  }

                  v37 = *(v33 + 200);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v93);
                  if (v37)
                  {
                    goto LABEL_43;
                  }
                }

                v29 += 32;
                LODWORD(v11) = v11 + 1;
              }

              while (--v28);
            }

            v38 = *(v89 + 9) ? v89 - 16 : 0;
            if (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(v89, *(v38 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
            {
LABEL_45:
              v43 = *(a1 + 16);
              if (v43 && (v44 = *(v43 + 24) & 0xFFFFFFFFFFFFFFF8) != 0 && (v45 = *(v44 + 16)) != 0 && *(*(v45 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
              {
                if (!*(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 8))
                {
                  v92 = 259;
                  mlir::Operation::emitOpError(a1, &v90, &v93);
                  v71 = v95;
                  goto LABEL_84;
                }

                v46 = 1;
              }

              else
              {
                v46 = 0;
              }

              v47 = *(a1 + 44);
              v48 = (v47 >> 23) & 1;
              v49 = (v6 + 16 * v48);
              v50 = *v49;
              v51 = ((*(v49 + 5) + *(v49 + 4)) - *(v49 + 4));
              if (*(*v49 + 16) == v51)
              {
                if (v46)
                {
                  v52 = v49[1];
                  if (!v52)
                  {
                    goto LABEL_56;
                  }

                  mlir::OperationName::OperationName(&v93, *(v52 + 16), *(v52 + 24), *(***(a1 + 24) + 32));
                  v53 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();
                  if (*(v93 + 16) != &mlir::detail::TypeIDResolver<void,void>::id && !mlir::detail::InterfaceMap::lookup(v93 + 32, v53))
                  {
                    v47 = *(a1 + 44);
                    v48 = (v47 >> 23) & 1;
LABEL_56:
                    v54 = (v6 + 16 * v48);
                    if ((v47 & 0x800000) != 0)
                    {
                      v55 = *(a1 + 72);
                    }

                    else
                    {
                      v55 = 0;
                    }

                    v56 = v54[4];
                    v57 = v54[5];
                    v58 = v54[6];
                    v59 = *(a1 + 16);
                    v60 = *(a1 - 16);
                    if (v60)
                    {
                      while (1)
                      {
                        v61 = v60[2];
                        if (v61 && *(*(v61 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::ReplaceOp,void>::id)
                        {
                          v63 = (*(v61 + 46) & 0x80) != 0 ? *(v61 + 72) : 0;
                          if (((v60 - v63) & 0x1FFFFFFFE0) != 0)
                          {
                            v64 = *(*(v61 + 72) + 24);
                            if ((~*(v64 + 8) & 7) == 0)
                            {
                              v64 = 0;
                            }

                            v65 = *(v64 + 8) & 7;
                            v66 = (v65 == 6 ? v64 + 24 * *(v64 + 16) + 120 : v64 + 16 * v65 + 16);
                            if (*(v66 + 2) != v59 || mlir::Operation::isBeforeInBlock(v66, a1))
                            {
                              break;
                            }
                          }
                        }

                        v60 = *v60;
                        if (!v60)
                        {
                          goto LABEL_85;
                        }
                      }
                    }

                    else
                    {
LABEL_85:
                      if (v58)
                      {
                        v72 = 0;
                        v73 = (v57 + v56);
                        v74 = (v58 + v73) - v73;
                        v75 = v55 + 32 * v73 + 24;
                        do
                        {
                          v76 = *v75;
                          if ((~*(*v75 + 8) & 7) == 0)
                          {
                            v76 = 0;
                          }

                          v77 = *(v76 + 8) & 7;
                          if (v77 == 6)
                          {
                            v78 = v76 + 24 * *(v76 + 16) + 120;
                          }

                          else
                          {
                            v78 = v76 + 16 * v77 + 16;
                          }

                          v79 = *(*(v78 + 48) + 16);
                          if (v79 != &mlir::detail::TypeIDResolver<mlir::pdl::ApplyNativeRewriteOp,void>::id)
                          {
                            if (v79 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id && v79 != &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id || !*(v78 + 16 * ((*(v78 + 44) >> 23) & 1) + 64) && (mlir::Operation::getUsers(v78, &v93), (llvm::any_of<llvm::iterator_range<mlir::ValueUserIterator<mlir::ResultRange::UseIterator,mlir::OpOperand>>,verifyResultTypesAreInferrable(mlir::pdl::OperationOp,mlir::OperandRange)::$_1>(&v93, v59) & 1) == 0))
                            {
                              v92 = 259;
                              mlir::Operation::emitOpError(a1, &v90, &v93);
                              mlir::Diagnostic::attachNote(v94, 0, 0);
                            }
                          }

                          ++v72;
                          v75 += 32;
                        }

                        while (v74 != v72);
                      }

                      else
                      {
                        v80 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
                        if (v80)
                        {
                          v81 = **(***(a1 + 24) + 32);
                          v82 = llvm::StringMap<mlir::RegisteredOperationName,llvm::MallocAllocator>::find(v81 + 208, *(v80 + 16), *(v80 + 24));
                          if (*(v81 + 208) + 8 * *(v81 + 216) != v82)
                          {
                            v83 = *(*v82 + 8);
                            v84 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
                            if (((*(*v83 + 32))(v83, v84) & 1) == 0)
                            {
                              v85 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
                              if (((*(*v83 + 32))(v83, v85) & 1) == 0)
                              {
                                v92 = 259;
                                mlir::Operation::emitOpError(a1, &v90, &v93);
                                mlir::Diagnostic::attachNote(v94, 0, 0);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                HasBindingUse = verifyHasBindingUse(a1);
                goto LABEL_44;
              }

              v92 = 257;
              mlir::Operation::emitOpError(a1, &v90, &v93);
              if (v93)
              {
                mlir::Diagnostic::operator<<<71ul>(v94, "expected the same number of attribute values and attribute names, got ");
              }

              v87 = *(v50 + 16);
              v67 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v93, &v87);
              v68 = v67;
              if (*v67)
              {
                mlir::Diagnostic::operator<<<12ul>((v67 + 1), " names and ");
              }

              v89 = v51;
              v69 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v68, &v89);
              v70 = v69;
              if (*v69)
              {
                mlir::Diagnostic::operator<<<8ul>((v69 + 1), " values");
              }

              v71 = *(v70 + 200);
LABEL_84:
              HasBindingUse = v71 ^ 1;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v93);
              goto LABEL_44;
            }
          }
        }
      }

      else
      {
        v90 = "requires attribute 'attributeValueNames'";
        v92 = 259;
        mlir::Operation::emitOpError(a1, &v90, &v93);
        v39 = v95;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v93);
        if ((v39 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_43:
  HasBindingUse = 0;
LABEL_44:
  v41 = *MEMORY[0x277D85DE8];
  return HasBindingUse & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::pdl::PatternOp>,mlir::OpTrait::ZeroResults<mlir::pdl::PatternOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::PatternOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::PatternOp>,mlir::OpTrait::SingleBlock<mlir::pdl::PatternOp>,mlir::OpTrait::OpInvariants<mlir::pdl::PatternOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::PatternOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::pdl::PatternOp>,mlir::SymbolOpInterface::Trait<mlir::pdl::PatternOp>,mlir::OpAsmOpInterface::Trait<mlir::pdl::PatternOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.pattern", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E81C98;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::getInherentAttr(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a4 != 8)
  {
    if (a4 != 7)
    {
      goto LABEL_10;
    }

    if (*a3 != 1701733730 || *(a3 + 3) != 1953064549)
    {
      goto LABEL_10;
    }

    v6 = *(v4 + 64);
LABEL_12:
    v7 = v6 & 0xFFFFFFFFFFFFFF00;
    return v7 | v6;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v6 = *(v4 + 72);
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v6) = 0;
  v7 = 0;
  return v7 | v6;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 8)
  {
    if (*v5 == 0x656D616E5F6D7973)
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
      }

      else
      {
        v10 = 0;
      }

      *(v4 + 72) = v10;
    }
  }

  else if (v6 == 7)
  {
    v7 = *v5;
    v8 = *(v5 + 3);
    if (v7 == 1701733730 && v8 == 1953064549)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      *(v4 + 64) = v11;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "benefit";
    v14 = 7;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "sym_name";
    v14 = 8;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v23, a6);
    if (v23)
    {
      mlir::Diagnostic::operator<<<42ul>(v24, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "benefit", 7uLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v15)
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v23, a6);
          if (!v23)
          {
            goto LABEL_4;
          }

          if (!v23)
          {
            goto LABEL_4;
          }

          v21 = 0;
          v22 = v16;
          goto LABEL_18;
        }

        a3[1] = v16;
      }
    }

    result = 1;
    goto LABEL_21;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *a3 = v13;
    goto LABEL_12;
  }

  a5(&v23, a6);
  if (!v23)
  {
    goto LABEL_4;
  }

  if (!v23)
  {
    goto LABEL_4;
  }

  v21 = 0;
  v22 = v13;
LABEL_18:
  v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
  v18 = v25 + 24 * v26;
  v19 = *v17;
  *(v18 + 16) = *(v17 + 16);
  *v18 = v19;
  ++v26;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  result = 0;
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v20 = v22;
  v21 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v19 = 261;
    v17 = "benefit";
    v18 = 7;
    v9 = mlir::StringAttr::get(v8, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v19 = 261;
    v17 = "sym_name";
    v18 = 8;
    v12 = mlir::StringAttr::get(v11, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v12, v10);
  }

  v13 = v20;
  if (v21)
  {
    v14 = mlir::DictionaryAttr::get(v3, v20, v21);
    v13 = v20;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v22)
  {
    free(v13);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::PatternOp>::hashProperties(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v11, 0, v11, v12, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::pdl::PatternOp>,mlir::OpTrait::ZeroResults<mlir::pdl::PatternOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::PatternOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::PatternOp>,mlir::OpTrait::SingleBlock<mlir::pdl::PatternOp>,mlir::OpTrait::OpInvariants<mlir::pdl::PatternOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::PatternOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::pdl::PatternOp>,mlir::SymbolOpInterface::Trait<mlir::pdl::PatternOp>,mlir::OpAsmOpInterface::Trait<mlir::pdl::PatternOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::isDeclaration;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::PatternOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v29[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 16;
  if (*&a2[4 * ((a2[11] >> 23) & 1) + 18])
  {
    v8 = (*(*a3 + 16))(a3);
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

    v10 = *&v7[4 * ((a2[11] >> 23) & 1) + 2];
    (*(*a3 + 88))(a3, *(v10 + 16), *(v10 + 24));
  }

  v11 = (*(*a3 + 16))(a3);
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

  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ":", 1uLL);
  }

  else
  {
    *v14 = 58;
    ++*(v13 + 4);
  }

  v15 = (*(*a3 + 16))(a3);
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

  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 6uLL)
  {
    *(v18 + 3) = 1953064549;
    *v18 = 1701733730;
    *(v17 + 4) += 7;
  }

  else
  {
    llvm::raw_ostream::write(v17, "benefit", 7uLL);
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, "(", 1uLL);
  }

  else
  {
    *v20 = 40;
    ++*(v19 + 4);
  }

  (*(*a3 + 48))(a3, *&v7[4 * ((a2[11] >> 23) & 1)]);
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ")", 1uLL);
  }

  else
  {
    *v22 = 41;
    ++*(v21 + 4);
  }

  v27 = v29;
  v28 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "sym_name", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "benefit", 7);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 200))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v27, v28);
  v24 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 224))(a3, ((&v7[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10], 1, 1, 0);
  if (v27 != v29)
  {
    free(v27);
  }

  v26 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    goto LABEL_31;
  }

  v6 = a1[11];
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_21;
  }

  v7 = 0;
  v8 = (((&a1[4 * ((v6 >> 23) & 1) + 17] + ((v6 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  while (1)
  {
    if (v8 == *v8)
    {
      goto LABEL_11;
    }

    v9 = v8[1];
    if (v8 == v9 || v8 != *(v9 + 8))
    {
      break;
    }

    if (*(v9 + 24) == v9 + 24)
    {
      v28 = 257;
      mlir::Operation::emitOpError(a1, v27, &v30);
      if (v30)
      {
        mlir::Diagnostic::operator<<<26ul>(&v31, "expects a non-empty block");
      }

      v12 = v32;
      goto LABEL_19;
    }

LABEL_11:
    ++v7;
    v8 += 3;
    if ((v6 & 0x7FFFFF) == v7)
    {
      goto LABEL_21;
    }
  }

  LODWORD(v25[0]) = v7;
  v27[0] = "expects region #";
  v28 = 259;
  mlir::Operation::emitOpError(a1, v27, &v30);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, v25);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
  }

  v12 = *(v11 + 200);
LABEL_19:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  if (v12)
  {
    goto LABEL_31;
  }

  LODWORD(v6) = a1[11];
LABEL_21:
  v13 = &a1[4 * ((v6 >> 23) & 1) + 16];
  v14 = *v13;
  if (!*v13)
  {
    v27[0] = "requires attribute 'benefit'";
    v28 = 259;
    mlir::Operation::emitOpError(a1, v27, &v30);
    v19 = v32;
    goto LABEL_30;
  }

  v15 = v13[1];
  v30 = a1;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(v14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v30))
  {
    goto LABEL_31;
  }

  v30 = a1;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(v15, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v30))
  {
    goto LABEL_31;
  }

  v16 = ((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10];
  v29 = 0;
  v30 = *(v16 + 8);
  v27[0] = v16;
  v25[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__1;
  if (llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(&v30, v27, 1, v25))
  {
    goto LABEL_33;
  }

  v27[0] = "region #";
  v28 = 259;
  mlir::Operation::emitOpError(a1, v27, &v30);
  v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v29);
  v18 = v17;
  v24 = 1283;
  v23[0] = " ('";
  v23[2] = "bodyRegion";
  v23[3] = 10;
  v25[0] = v23;
  v25[2] = "') ";
  v26 = 770;
  if (*v17)
  {
    mlir::Diagnostic::operator<<((v17 + 1), v25);
    if (*v18)
    {
      mlir::Diagnostic::operator<<<50ul>((v18 + 1), "failed to verify constraint: region with 1 blocks");
    }
  }

  v19 = *(v18 + 200);
LABEL_30:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  if ((v19 & 1) == 0)
  {
LABEL_33:
    v20 = mlir::detail::SymbolOpInterfaceTrait<mlir::pdl::PatternOp>::verifyTrait(a1);
  }

  else
  {
LABEL_31:
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::pdl::PatternOp>::verifyTrait(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, "sym_name", 8);
  v4 = 1;
  if ((v3 & 1) != 0 && v2)
  {
    if (mlir::detail::verifySymbol(a1, v3))
    {
      v5 = *(a1 + 16);
      if (v5)
      {
        v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (v6)
        {
          v7 = *(v6 + 16);
          if (v7 && (v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(), ((*(**(v7 + 48) + 32))(*(v7 + 48), v8) & 1) == 0))
          {
            v11 = *(*(v7 + 48) + 16);
            v4 = 1;
            if (v11 != &mlir::detail::TypeIDResolver<void,void>::id)
            {
              v12 = "symbol's parent must have the SymbolTable trait";
              v13 = 259;
              mlir::Operation::emitOpError(a1, &v12, v14);
              v4 = (v14[200] & 1) == 0;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
            }
          }

          else
          {
            v4 = 1;
          }
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::Op<mlir::pdl::PatternOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(a1, a2))
  {
    v31 = a1;
    v3 = ((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10];
    v4 = *(v3 + 8);
    v5 = v4 - 8;
    if (!v4)
    {
      v5 = 0;
    }

    v6 = *(v5 + 32);
    if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
    {
      LOWORD(v35) = 259;
      mlir::Operation::emitOpError(a1, v34, v36);
      mlir::Diagnostic::attachNote(v36 + 1, *(v6 + 24), 1);
    }

    *&v36[0] = &v31;
    if (v4 != v3)
    {
      do
      {
        v10 = v4 - 8;
        if (!v4)
        {
          v10 = 0;
        }

        v11 = *(v10 + 40);
        v12 = v10 + 32;
        while (v11 != v12)
        {
          v13 = *(v11 + 8);
          v14 = mlir::detail::walk<mlir::ForwardIterator>(v11, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>, v36, 1);
          v11 = v13;
          if (!v14)
          {
            goto LABEL_6;
          }
        }

        v4 = *(v4 + 8);
      }

      while (v4 != v3);
      v4 = *(v3 + 8);
    }

    v15 = v4 - 8;
    if (!v4)
    {
      v15 = 0;
    }

    v16 = (v15 + 32);
    v17 = *(v15 + 40);
    if (v17 == (v15 + 32))
    {
      goto LABEL_55;
    }

    v18 = *(v15 + 40);
    while (*(*(v18 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
    {
      v18 = *(v18 + 1);
      if (v18 == v16)
      {
        goto LABEL_55;
      }
    }

    if (v18 == v16)
    {
LABEL_55:
      LOWORD(v35) = 259;
      mlir::Operation::emitOpError(v31, v34, v36);
      v7 = v39 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
      goto LABEL_7;
    }

    v32[0] = 0;
    v32[1] = 0;
    v19 = 1;
    v33 = 0;
    while (1)
    {
      v20 = *(*(v17 + 6) + 16);
      v21 = v20 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandOp,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::pdl::OperandsOp,void>::id;
      v22 = v21 || v20 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id;
      v23 = v22 || v20 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id;
      if (v23 || v20 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationOp,void>::id)
      {
        break;
      }

LABEL_53:
      v17 = *(v17 + 1);
      if (v17 == v16)
      {
        v7 = 1;
        MEMORY[0x25F891030](v32[0], 8);
        goto LABEL_7;
      }
    }

    mlir::Operation::getUsers(v17, v36);
    v25 = v37;
    v26 = v38;
    v35 = v37;
    v34[0] = v36[0];
    v34[1] = v36[1];
    while (1)
    {
      if (v25 == v26)
      {
        goto LABEL_53;
      }

      v27 = *(v25 + 16);
      v28 = *(v27 + 16);
      if (!v28)
      {
        break;
      }

      if (*(*(v27 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
      {
        goto LABEL_49;
      }

      v29 = *(v28 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (v29)
      {
        v30 = *(*(v29 + 16) + 48);
        goto LABEL_47;
      }

LABEL_48:
      mlir::ResultRange::UseIterator::operator++(v34);
      v25 = v35;
    }

    v30 = *(v27 + 48);
LABEL_47:
    if (*(v30 + 16) == &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
    {
LABEL_49:
      if (v19)
      {
        visit(v17, v32);
      }

      else
      {
        *&v36[0] = v17;
        if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::doFind<mlir::Operation const*>(v32, v36))
        {
          *&v34[0] = "the operations must form a connected component";
          LOWORD(v35) = 259;
          mlir::Operation::emitOpError(v31, v34, v36);
          mlir::Diagnostic::attachNote(v36 + 1, *(v17 + 3), 1);
        }
      }

      v19 = 0;
      goto LABEL_53;
    }

    goto LABEL_48;
  }

LABEL_6:
  v7 = 0;
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::RangeOp>>(v6);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::RangeOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.range", 9, a2, &mlir::detail::TypeIDResolver<mlir::pdl::RangeOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E81D60;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RangeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::RangeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::RangeOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::RangeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::RangeOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v38[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v7 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v9 = *(a2 + 68);
      v10 = *(a2 + 72);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v11 = (*(*a3 + 16))(a3);
    if (v9)
    {
      v12 = v11;
      (*(*a3 + 160))(a3, *(v10 + 24));
      v13 = v9 - 1;
      if (v13)
      {
        v14 = (v10 + 56);
        do
        {
          v15 = *(v12 + 4);
          if (*(v12 + 3) - v15 > 1uLL)
          {
            *v15 = 8236;
            *(v12 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v12, ", ", 2uLL);
          }

          v16 = *v14;
          v14 += 4;
          (*(*a3 + 160))(a3, v16);
          --v13;
        }

        while (v13);
      }
    }

    v17 = (*(*a3 + 16))(a3);
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

    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (*(v19 + 3) == v20)
    {
      llvm::raw_ostream::write(v19, ":", 1uLL);
    }

    else
    {
      *v20 = 58;
      ++*(v19 + 4);
    }

    v21 = (*(*a3 + 16))(a3);
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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v23 = *(a2 + 68);
      if (v23)
      {
        v24 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v23 != 1)
        {
          v25 = v23 - 1;
          v26 = (v24 + 56);
          do
          {
            v27 = (*(*a3 + 16))(a3);
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
            (*(*a3 + 32))(a3, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v25;
          }

          while (v25);
        }
      }
    }
  }

  v30 = (*(*a3 + 16))(a3);
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

  if ((*(a2 + 46) & 0x80) == 0 || !*(a2 + 68))
  {
    if (*(a2 + 36))
    {
      v32 = a2 - 16;
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v32 + 8);
    v34 = (*(*a3 + 16))(a3);
    v35 = *(v34 + 4);
    if (*(v34 + 3) - v35 > 1uLL)
    {
      *v35 = 8250;
      *(v34 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v34, ": ", 2uLL);
    }

    (*(*a3 + 32))(a3, v33 & 0xFFFFFFFFFFFFFFF8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v38, 0);
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl::RangeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_32;
  }

  v5 = *(a1 + 16);
  if (!v5 || (v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v7 = *(v6 + 16)) == 0 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    v41 = 257;
    mlir::Operation::emitOpError(a1, v40, &v45);
    if (v45)
    {
      mlir::Diagnostic::operator<<<19ul>(v46, "expects parent op ");
    }

    v39 = "'";
    v8 = mlir::InFlightDiagnostic::operator<<<char const*>(&v45, &v39);
    v44[0] = "pdl.rewrite";
    v44[1] = 11;
    v42 = v44;
    v43 = 1;
    v9 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v8, &v42);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<2ul>((v9 + 1), "'");
    }

    v11 = *(v10 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    if (v11)
    {
      goto LABEL_32;
    }
  }

  if ((*(a1 + 46) & 0x80) != 0)
  {
    v12 = *(a1 + 68);
    if (v12)
    {
      v13 = 0;
      v14 = *(a1 + 72) + 24;
      while (mlir::pdl::__mlir_ods_local_type_constraint_PDLOps1(a1, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13))
      {
        ++v13;
        v14 += 32;
        if (v12 == v13)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_32;
    }
  }

LABEL_18:
  v15 = *(a1 + 36) ? a1 - 16 : 0;
  v16 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v44[0]) = 0;
  if ((*v16)[17] != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id || ((v17 = *(*v16[1] + 136), v17 != &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id) ? (v18 = v17 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id) : (v18 = 1), !v18))
  {
    v41 = 261;
    v40[0] = "result";
    v40[1] = 6;
    mlir::Operation::emitOpError(a1, v40, &v45);
    if (v45)
    {
      mlir::Diagnostic::operator<<<3ul>(v46, " #");
    }

    v19 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v45, v44);
    v20 = v19;
    if (*v19)
    {
      if (*v20)
      {
        LODWORD(v42) = 4;
        v43 = v16;
        v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v42, 1);
        v22 = v20[3] + 24 * *(v20 + 8);
        v23 = *v21;
        *(v22 + 16) = *(v21 + 16);
        *v22 = v23;
        ++*(v20 + 8);
      }
    }

    v24 = *(v20 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    if (v24)
    {
LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

  if ((*(a1 + 46) & 0x80) != 0 && (v28 = *(a1 + 68), v28))
  {
    v29 = *((*(a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v30 = *(a1 + 72) + 24;
    while (1)
    {
      v31 = (*(*v30 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v31)
      {
        v32 = *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
      }

      else
      {
        v32 = 0;
      }

      if (v32)
      {
        v31 = v31[1];
      }

      if (v31 != v29)
      {
        break;
      }

      v30 += 32;
      v25 = 1;
      if (!--v28)
      {
        goto LABEL_33;
      }
    }

    v40[0] = "expected operand to have element type ";
    v41 = 259;
    mlir::Operation::emitOpError(a1, v40, &v45);
    if (v45)
    {
      LODWORD(v42) = 4;
      v43 = v29;
      v33 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v47, &v42, 1);
      v34 = v47 + 24 * v48;
      v35 = *v33;
      *(v34 + 16) = *(v33 + 16);
      *v34 = v35;
      ++v48;
      if (v45)
      {
        mlir::Diagnostic::operator<<<11ul>(v46, ", but got ");
        if (v45)
        {
          LODWORD(v42) = 4;
          v43 = v31;
          v36 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v47, &v42, 1);
          v37 = v47 + 24 * v48;
          v38 = *v36;
          *(v37 + 16) = *(v36 + 16);
          *v37 = v38;
          ++v48;
        }
      }
    }

    v25 = v49 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
  }

  else
  {
    v25 = 1;
  }

LABEL_33:
  v26 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.replace", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::pdl::ReplaceOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E81E28;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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
    v11 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 3);
    v10 = v11 & 0xFFFFFFFFFFFFFF00;
    v9 = v11;
    return v10 | v9;
  }

LABEL_15:
  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 19)
  {
    v6 = *v4 ^ 0x53646E617265706FLL;
    v7 = v4[1] ^ 0x6953746E656D6765;
    v8 = *(v4 + 11);
    v9 = 1400139365;
  }

  else
  {
    if (v5 != 21)
    {
      return result;
    }

    v6 = *v4 ^ 0x5F646E617265706FLL;
    v7 = v4[1] ^ 0x5F746E656D676573;
    v8 = *(v4 + 13);
    v9 = 1935635566;
  }

  if (v6 | v7 | v8 ^ (v9 | 0x73657A6900000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = a4 == 0;
  }

  if (!v10 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v11 = *(a4 + 8);
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v11[2] == 32 && *(a4 + 16) == 3)
    {
      v12 = *(a4 + 32);
      if (v12 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), *(a4 + 24), v12 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64, 3);
  v5 = *(**v4 + 32);
  v9 = 261;
  v8[0] = "operandSegmentSizes";
  v8[1] = 19;
  v7 = mlir::StringAttr::get(v5, v8, v6);
  mlir::NamedAttrList::push_back(a3, v7, v4);
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 8) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v18[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
    if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0) && ((v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v15 & 1) == 0) || (v13 = *(v14 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3, 3, v13, a5, a6, "DenseI32ArrayAttr", 17))
    {
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    a5(&v17, a6);
    if (v17)
    {
      mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  }

  result = 0;
LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v2 = *(***(a2 + 24) + 32);
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v13 = v15;
  v14 = 0x300000000;
  v4 = mlir::detail::DenseArrayAttrImpl<int>::get(v2, v3 + 64, 3);
  v5 = *(**v4 + 32);
  v12 = 261;
  v11[0] = "operandSegmentSizes";
  v11[1] = 19;
  v7 = mlir::StringAttr::get(v5, v11, v6);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v7, v4);
  if (v14)
  {
    v8 = mlir::DictionaryAttr::get(v2, v13, v14);
  }

  else
  {
    v8 = 0;
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = *(a2 + 4);
  v3 = 0x9DDFEA08EB382D69 * (*a2 ^ __ROR8__(v2 + 12, 12) ^ 0xFF51AFD7ED558CCDLL);
  v4 = __ROR8__(v2 + 12, 12) ^ (v3 >> 47);
  v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ v3)) >> 47))) ^ v2;
  v6 = 8 * v5 + 8;
  v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    if (*(v9 + 16) >= 4)
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

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3uLL) & 1) == 0)
  {
    goto LABEL_10;
  }

  result = 1;
LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 64, 3);
    (*(*a3 + 16))(a3, v6);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 3);
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[7] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v65[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
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

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 3uLL)
  {
    *v12 = 1752459639;
    *(v11 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v11, "with", 4uLL);
  }

  v13 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8))
  {
    v14 = (*(*a3 + 16))(a3);
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

    v16 = *(a2 + 44);
    v17 = (v13 + 16 * ((v16 >> 23) & 1));
    v18 = v17[2];
    if ((v16 & 0x800000) != 0)
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = 0;
    }

    v20 = *v17;
    v21 = v17[1];
    v22 = (*(*a3 + 16))(a3);
    if (v18)
    {
      v23 = v22;
      v24 = (v21 + v20);
      v25 = (v18 + v24);
      v26 = v19 + 32 * v24;
      (*(*a3 + 160))(a3, *(v26 + 24));
      if (v25 - v24 != 1)
      {
        v27 = ~v24 + v25;
        v28 = (v26 + 56);
        do
        {
          v29 = *(v23 + 4);
          if (*(v23 + 3) - v29 > 1uLL)
          {
            *v29 = 8236;
            *(v23 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v23, ", ", 2uLL);
          }

          v30 = *v28;
          v28 += 4;
          (*(*a3 + 160))(a3, v30);
          --v27;
        }

        while (v27);
      }
    }

    v31 = (*(*a3 + 16))(a3);
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

    v33 = (*(*a3 + 16))(a3);
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

    v35 = (*(*a3 + 16))(a3);
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

    v37 = *(a2 + 44);
    v38 = (v13 + 16 * ((v37 >> 23) & 1));
    v39 = v38[2];
    if ((v37 & 0x800000) != 0)
    {
      v40 = *(a2 + 72);
      if (v39)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v40 = 0;
      if (v39)
      {
LABEL_34:
        v41 = (v38[1] + *v38);
        v42 = (v39 + v41);
        v43 = v40 + 32 * v41;
        (*(*a3 + 32))(a3, *(*(v43 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v42 - v41 != 1)
        {
          v44 = ~v41 + v42;
          v45 = (v43 + 56);
          do
          {
            v46 = (*(*a3 + 16))(a3);
            v47 = *(v46 + 4);
            if (*(v46 + 3) - v47 > 1uLL)
            {
              *v47 = 8236;
              *(v46 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v46, ", ", 2uLL);
            }

            v48 = *v45;
            v45 += 4;
            (*(*a3 + 32))(a3, *(v48 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v44;
          }

          while (v44);
        }
      }
    }

    v49 = (*(*a3 + 16))(a3);
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

  v51 = *(a2 + 44);
  v52 = (v13 + 16 * ((v51 >> 23) & 1));
  v53 = v52[1];
  if ((v51 & 0x800000) != 0)
  {
    v54 = *(a2 + 72);
    if (!v53)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v54 = 0;
    if (!v53)
    {
      goto LABEL_53;
    }
  }

  if (!*(v54 + 32 * *v52 + 24))
  {
    goto LABEL_53;
  }

  v55 = (*(*a3 + 16))(a3);
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

  v57 = *(a2 + 44);
  v58 = (v13 + 16 * ((v57 >> 23) & 1));
  v59 = v58[1];
  if ((v57 & 0x800000) != 0)
  {
    v60 = *(a2 + 72);
    if (!v59)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v60 = 0;
    if (!v59)
    {
      goto LABEL_53;
    }
  }

  if (*(v60 + 32 * *v58 + 24))
  {
    (*(*a3 + 160))(a3);
  }

LABEL_53:
  v63 = v65;
  v64 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v63, "operandSegmentSizes", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v63, v64);
  if (v63 != v65)
  {
    free(v63);
  }

  v62 = *MEMORY[0x277D85DE8];
}