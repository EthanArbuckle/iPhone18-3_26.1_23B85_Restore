uint64_t mlir::LLVM::CtPopOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::CtPopOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::DbgDeclareOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
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
        v6[0] = "locationExpr";
        v6[1] = 12;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<33ul>(v9, "' failed to satisfy constraint: ");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
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
        v6[0] = "varInfo";
        v6[1] = 7;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<33ul>(v9, "' failed to satisfy constraint: ");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::DIExpressionAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DIExpressionAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC215D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC215D8))
      {
        qword_27FC215C8 = llvm::detail::getTypeNameImpl<mlir::LLVM::DIExpressionAttr>();
        unk_27FC215D0 = v12;
        __cxa_guard_release(&qword_27FC215D8);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC215C8;
        v16 = unk_27FC215D0;
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

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::DILocalVariableAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC215F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC215F0))
      {
        qword_27FC215E0 = llvm::detail::getTypeNameImpl<mlir::LLVM::DILocalVariableAttr>();
        *algn_27FC215E8 = v12;
        __cxa_guard_release(&qword_27FC215F0);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC215E0;
        v16 = *algn_27FC215E8;
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

BOOL mlir::LLVM::DbgDeclareOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DILocalVariableAttr>(a1, &v18))
  {
    return 0;
  }

  v4 = v18;
  if (v18)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  v5 = (*(*a1 + 456))(a1, &v17, 0);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    if (v17)
    {
      v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgDeclareOpGenericAdaptorBase::Properties>(a2);
      *v6 = v17;
    }
  }

  if ((*(*a1 + 136))(a1))
  {
    v7 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
    {
      v11 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        v8 = *(a2 + 8);
        v10[0] = a1;
        v10[1] = &v11;
        v10[2] = a2;
        if (mlir::LLVM::DbgDeclareOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgDeclareOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
        {
          return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, a2 + 16);
        }
      }
    }
  }

  return 0;
}

BOOL mlir::AsmParser::parseAttribute<mlir::LLVM::DILocalVariableAttr>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 440))(a1, &v11, 0))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::LLVM::DbgLabelOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps9(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps9(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id)
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
        v6[0] = "label";
        v6[1] = 5;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<33ul>(v9, "' failed to satisfy constraint: ");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::DbgLabelOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v12 = 0;
  v13[0] = a1;
  if (((*(*a1 + 448))(a1, &v12, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM11DILabelAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v13) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v12;
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgLabelOpGenericAdaptorBase::Properties>(a2) = v5;
  }

  else
  {
    v10[0] = "invalid kind of attribute specified";
    v11 = 259;
    (*(*a1 + 24))(v13, a1, v4, v10);
    v6 = v14;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    if (v6)
    {
LABEL_9:
      result = 0;
      goto LABEL_10;
    }
  }

  v10[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = v10;
  v13[2] = a2;
  if (!mlir::LLVM::DbgLabelOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgLabelOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13))
  {
    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::DbgValueOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::LLVM::DbgValueOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2);
  result[1] = a4;
  if (a5)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2);
    *result = a5;
  }

  return result;
}

BOOL mlir::LLVM::DbgValueOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  if (!mlir::AsmParser::parseAttribute<mlir::LLVM::DILocalVariableAttr>(a1, &v18))
  {
    return 0;
  }

  v4 = v18;
  if (v18)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  v5 = (*(*a1 + 456))(a1, &v17, 0);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    if (v17)
    {
      v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::DbgValueOpGenericAdaptorBase::Properties>(a2);
      *v6 = v17;
    }
  }

  if ((*(*a1 + 136))(a1))
  {
    v7 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
    {
      v11 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        v8 = *(a2 + 8);
        v10[0] = a1;
        v10[1] = &v11;
        v10[2] = a2;
        if (mlir::LLVM::DbgValueOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::DbgValueOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10))
        {
          return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, a2 + 16);
        }
      }
    }
  }

  return 0;
}

BOOL mlir::LLVM::EhTypeidForOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
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

BOOL mlir::LLVM::Exp2Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::Exp2Op::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::Exp2Op::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::Exp2Op::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Exp2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::ExpOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::ExpOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::ExpOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::ExpOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExpOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

uint64_t mlir::LLVM::ExpectOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::LLVM::ExpectOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7[1] = 1;
  __src = 0;
  v7[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, *v7[0], a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::ExpectWithProbabilityOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps10(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps10(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
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
        v6[0] = "prob";
        v6[1] = 4;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<55ul>(v9, "' failed to satisfy constraint: 64-bit float attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::ExpectWithProbabilityOp::inferReturnTypes(uint64_t a1, unint64_t a2, unint64_t **a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = a1;
  v8[1] = a2;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (a2 >= 2)
  {
    v5 = 1;
    **a3 = *(mlir::ValueRange::dereference_iterator(v8, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::LLVM::ExpectWithProbabilityOp::parse(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v13[1] = 1;
  __src = 0;
  v13[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = (*(*a1 + 32))(a1);
  F64Type = mlir::Builder::getF64Type(v5);
  v7 = (*(*a1 + 40))(a1);
  v22 = 0;
  if (((*(*a1 + 440))(a1, &v22, F64Type) & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = v22;
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExpectWithProbabilityOpGenericAdaptorBase::Properties>(a2) = v8;
  }

  else
  {
    v20[0] = "invalid kind of attribute specified";
    v21 = 259;
    (*(*a1 + 24))(v23, a1, v7, v20);
    v9 = v24;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
    if (v9)
    {
LABEL_16:
      result = 0;
      goto LABEL_17;
    }
  }

  v20[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(a2 + 8);
  v23[0] = a1;
  v23[1] = v20;
  v23[2] = a2;
  if (!mlir::LLVM::ExpectWithProbabilityOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExpectWithProbabilityOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v23))
  {
    goto LABEL_16;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_16;
  }

  v23[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, v23))
  {
    goto LABEL_16;
  }

  __src = v23[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v15);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v17, v13, v4, a2 + 16))
  {
    goto LABEL_16;
  }

  result = (*(*a1 + 728))(a1, v15, *v13[0], a2 + 16) & 1;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::FAbsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FAbsOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FAbsOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::FAbsOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FAbsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::FCeilOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FCeilOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FCeilOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::FCeilOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FCeilOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::FFloorOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FFloorOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FFloorOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::FFloorOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FFloorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::FMAOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FMAOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FMAOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::FMAOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMAOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::FMulAddOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FMulAddOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FMulAddOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::FMulAddOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMulAddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::FTruncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FTruncOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FTruncOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::FTruncOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FTruncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

uint64_t mlir::LLVM::FshlOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FshlOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::FshrOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::FshrOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::GetActiveLaneMaskOp::parse(uint64_t a1, uint64_t a2)
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
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
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

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &__src))
  {
    return 0;
  }

  v11 = __src;
  if ((*(*a1 + 120))(a1) & 1) != 0 && (__src = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, &__src)) && (v9 = __src, v20 = 257, ((*(*a1 + 400))(a1, "to", 2, &__src)) && (v7 = 0, ((*(*a1 + 536))(a1, &v7)) && (__src = v7, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v19), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::InvariantEndOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 64)
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps10(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id && !a2[2])
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
      mlir::Diagnostic::operator<<<51ul>((v5 + 1), " must be LLVM pointer in address space 0, but got ");
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

BOOL mlir::LLVM::InvariantEndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v19, v5))
  {
    return 0;
  }

  if (v19)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantEndOpGenericAdaptorBase::Properties>(a2);
    *v6 = v19;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = a2;
  if (mlir::LLVM::InvariantEndOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InvariantEndOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v12) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v15) & 1) != 0 && (v9 = *(*(*a1 + 32))(a1), LODWORD(v12[0]) = 0, v10 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v9, v12), ((*(*a1 + 728))(a1, v20, v10, a2 + 16) & 1) != 0))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v14, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::InvariantStartOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::InvariantStartOp::parse(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v14[0] = &v15;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v19, v5))
  {
    return 0;
  }

  if (v19)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InvariantStartOpGenericAdaptorBase::Properties>(a2);
    *v6 = v19;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v11 = a1;
  v12[0] = &v13;
  v12[1] = a2;
  if (!mlir::LLVM::InvariantStartOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InvariantStartOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v11) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &v15) & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(*a1 + 32))(a1);
  LODWORD(v11) = 0;
  v11 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMPointerType,unsigned int &>(v9, &v11);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v11, v12);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v14, v7, a2 + 16);
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 32)
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
          mlir::Diagnostic::operator<<<66ul>(v14, "' failed to satisfy constraint: 32-bit signless integer attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::LLVM::LaunderInvariantGroupOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::LaunderInvariantGroupOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  __src = 0;
  v6[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
}

BOOL mlir::LLVM::LifetimeEndOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::LLVM::LifetimeEndOp::build(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  v7 = mlir::IntegerType::get(*a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v7, a3);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>(a2);
  *result = IntegerAttr;
  return result;
}

BOOL mlir::LLVM::LifetimeEndOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, v5))
  {
    return 0;
  }

  if (v17)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeEndOpGenericAdaptorBase::Properties>(a2);
    *v6 = v17;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v15, 1)) && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::LifetimeEndOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LifetimeEndOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::LifetimeStartOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "size", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::LLVM::LifetimeStartOp::build(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  v7 = mlir::IntegerType::get(*a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v7, a3);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>(a2);
  *result = IntegerAttr;
  return result;
}

BOOL mlir::LLVM::LifetimeStartOp::parse(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12[1] = 1;
  v13 = 0;
  v12[0] = &v13;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, v5))
  {
    return 0;
  }

  if (v17)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LifetimeStartOpGenericAdaptorBase::Properties>(a2);
    *v6 = v17;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && (v7 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v15, 1)) && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v8 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::LifetimeStartOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LifetimeStartOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v13))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v12, v7, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps11(mlir::Operation *a1, uint64_t a2)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2))
  {
    v4 = 1;
  }

  else
  {
    v13 = 261;
    v12[0] = "operand";
    v12[1] = 7;
    mlir::Operation::emitOpError(a1, v12, &v17);
    if (v17)
    {
      mlir::Diagnostic::operator<<<3ul>(v18, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v17, &v14);
    v6 = v5;
    if (*v5)
    {
      mlir::Diagnostic::operator<<<44ul>((v5 + 1), " must be floating point LLVM type, but got ");
      if (*v6)
      {
        v15 = 4;
        v16 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v15, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v4 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::LLVM::LlrintOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::LlroundOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::Log10Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::Log10Op::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::Log10Op::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::Log10Op::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Log10Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::Log2Op::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::Log2Op::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::Log2Op::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::Log2Op::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::Log2Op::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::LogOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::LogOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::LogOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::LogOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LogOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::LrintOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::LroundOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::MaskedLoadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "alignment", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps13(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps13(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
        v6[0] = "nontemporal";
        v6[1] = 11;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<47ul>(v9, "' failed to satisfy constraint: unit attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::LLVM::MaskedLoadOp::getODSOperands(mlir::LLVM::MaskedLoadOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = byte_25D0A01CC;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 68);
    v8 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  byte_25D0A01CC[a2];
  return v8 + 32 * (a2 + (v7 - 3) * v2);
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a3;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 3;
  if (v6)
  {
    v7 = 1;
  }

  v8 = a2[v7];
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v8[2] == 1)
  {
    v9 = 1;
  }

  else
  {
LABEL_10:
    v18 = 261;
    v17[0] = "operand";
    v17[1] = 7;
    mlir::Operation::emitOpError(a1, v17, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<3ul>(v23, " #");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v22, &v19);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<76ul>((v10 + 1), " must be LLVM dialect-compatible vector of 1-bit signless integer, but got ");
      if (*v11)
      {
        v20 = 4;
        v21 = a2;
        v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v20, 1);
        v13 = v11[3] + 24 * *(v11 + 8);
        v14 = *v12;
        *(v13 + 16) = *(v12 + 16);
        *v13 = v14;
        ++*(v11 + 8);
      }
    }

    v9 = (v11[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps13(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a3;
  if (mlir::LLVM::isCompatibleVectorType(a2))
  {
    v5 = 1;
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

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<67ul>((v6 + 1), " must be variadic of LLVM dialect-compatible vector type, but got ");
      if (*v7)
      {
        v16 = 4;
        v17 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v16, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v5 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a5;
  if (mlir::LLVM::isCompatibleVectorType(a2))
  {
    v9 = 1;
  }

  else
  {
    v18 = 261;
    v17[0] = a3;
    v17[1] = a4;
    mlir::Operation::emitOpError(a1, v17, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<3ul>(v23, " #");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v22, &v19);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<55ul>((v10 + 1), " must be LLVM dialect-compatible vector type, but got ");
      if (*v11)
      {
        v20 = 4;
        v21 = a2;
        v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v20, 1);
        v13 = v11[3] + 24 * *(v11 + 8);
        v14 = *v12;
        *(v13 + 16) = *(v12 + 16);
        *v13 = v14;
        ++*(v11 + 8);
      }
    }

    v9 = (v11[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::LLVM::MaskedLoadOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::MaskedLoadOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaskedLoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::MaskedStoreOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v8, "alignment", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::MaskedStoreOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v25[0] = a1;
  v25[1] = &v9;
  v25[2] = a2;
  if (!mlir::LLVM::MaskedStoreOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaskedStoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v25))
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v15 = v25[0], ((*(*a1 + 120))(a1)) && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v13 = v25[0], v26 = 257, ((*(*a1 + 400))(a1, "into", 4, v25)) && ((*(*a1 + 536))(a1, &v11) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v10, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v12, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixColumnMajorLoadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "columns", 7, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(v13, "isVolatile", 10, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v16, "rows", 4, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixColumnMajorLoadOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v8[0] = &v9;
  v8[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v20 = 257;
  if (((*(*a1 + 400))(a1, "stride", 6, v19) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v19[0] = a1;
  v19[1] = &__src;
  v19[2] = a2;
  if (!mlir::LLVM::MatrixColumnMajorLoadOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixColumnMajorLoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19))
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (v19[0] = 0, ((*(*a1 + 536))(a1, v19)) && (__src = v19[0], v20 = 257, ((*(*a1 + 400))(a1, "from", 4, v19)) && ((*(*a1 + 536))(a1, &v11) & 1) != 0 && (v20 = 257, ((*(*a1 + 400))(a1, "stride", 6, v19)) && (v19[0] = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, v19)) && (v9 = v19[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v8, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixColumnMajorStoreOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "columns", 7, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(v13, "isVolatile", 10, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v16, "rows", 4, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixColumnMajorStoreOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*a1 + 400))(a1, "stride", 6, v25) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
    return 0;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v25[0] = a1;
  v25[1] = &v9;
  v25[2] = a2;
  if (!mlir::LLVM::MatrixColumnMajorStoreOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixColumnMajorStoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v25))
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v15 = v25[0], v26 = 257, ((*(*a1 + 400))(a1, "to", 2, v25)) && ((*(*a1 + 536))(a1, &v13) & 1) != 0 && (v26 = 257, ((*(*a1 + 400))(a1, "stride", 6, v25)) && (v25[0] = 0, mlir::AsmParser::parseType<mlir::IntegerType>(a1, v25)) && (v11 = v25[0], mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v12, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v10, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixMultiplyOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "lhs_columns", 11, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v13, "lhs_rows", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v16, "rhs_columns", 11, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixMultiplyOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v12 = 0;
  v13[0] = &v14;
  v11[0] = &v12;
  v11[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v8 = a1;
  v9[0] = &v10;
  v9[1] = a2;
  if (!mlir::LLVM::MatrixMultiplyOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixMultiplyOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v8))
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v14 = v8, ((*(*a1 + 120))(a1)) && (v8 = 0, ((*(*a1 + 536))(a1, &v8)) && (v12 = v8, ((*(*a1 + 296))(a1)) && ((*(*a1 + 56))(a1) & 1) != 0 && (v10 = 0, ((*(*a1 + 536))(a1, &v10)) && (v8 = v10, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v8, v9), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v13, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v11, v5, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::MatrixTransposeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v10, "columns", 7, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v13, "rows", 4, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::MatrixTransposeOp::parse(uint64_t a1, uint64_t a2)
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

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  __src = a1;
  v14[0] = &v7;
  v14[1] = a2;
  if (!mlir::LLVM::MatrixTransposeOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MatrixTransposeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
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
  v15 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &__src) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (((*(*a1 + 536))(a1, &v7) & 1) == 0)
  {
    return 0;
  }

  __src = v7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v14);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16);
}

BOOL mlir::LLVM::MaxNumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::MaxNumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::MaxNumOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::MaxNumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaxNumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::MaximumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::MaximumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::MaximumOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::MaximumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MaximumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps15(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
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
      v9[0] = "access_groups";
      v9[1] = 13;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<73ul>(v12, "' failed to satisfy constraint: LLVM dialect access group metadata array");
      }
    }
  }

  v3 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps16(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
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
        mlir::Diagnostic::operator<<<63ul>(v16, "' failed to satisfy constraint: LLVM dialect alias scope array");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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
        v6[0] = "len";
        v6[1] = 3;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<60ul>(v9, "' failed to satisfy constraint: arbitrary integer attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps17(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id)
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
      v9[0] = "tbaa";
      v9[1] = 4;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<69ul>(v12, "' failed to satisfy constraint: LLVM dialect TBAA tag metadata array");
      }
    }
  }

  v3 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemcpyInlineOp::getIsVolatile(mlir::LLVM::MemcpyInlineOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemcpyInlineOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2) + 24) = a5;
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    result[4] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyInlineOpGenericAdaptorBase::Properties>(a2);
    result[5] = a10;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemcpyOp::getIsVolatile(mlir::LLVM::MemcpyOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemcpyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v15, 0, &v15, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    result[3] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemcpyOpGenericAdaptorBase::Properties>(a2);
    result[4] = a10;
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemmoveOp::getIsVolatile(mlir::LLVM::MemmoveOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemmoveOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v15, 0, &v15, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    result[3] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemmoveOpGenericAdaptorBase::Properties>(a2);
    result[4] = a10;
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemsetInlineOp::getIsVolatile(mlir::LLVM::MemsetInlineOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemsetInlineOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2) + 24) = a5;
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    result[4] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetInlineOpGenericAdaptorBase::Properties>(a2);
    result[5] = a10;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps15(mlir::Operation *a1, _DWORD *a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = 1;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 8)
  {
    v3 = 1;
  }

  else
  {
    v12 = 261;
    v11[0] = "operand";
    v11[1] = 7;
    mlir::Operation::emitOpError(a1, v11, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<3ul>(v17, " #");
    }

    v4 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
    v5 = v4;
    if (*v4)
    {
      mlir::Diagnostic::operator<<<42ul>((v4 + 1), " must be 8-bit signless integer, but got ");
      if (*v5)
      {
        v14 = 4;
        v15 = a2;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v5 + 3), &v14, 1);
        v7 = v5[3] + 24 * *(v5 + 8);
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++*(v5 + 8);
      }
    }

    v3 = (v5[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::MemsetOp::getIsVolatile(mlir::LLVM::MemsetOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) != 0;
}

void *mlir::LLVM::MemsetOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a4;
  v17 = a3;
  v15 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v15, 0, &v15, 1);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
  result[2] = a6;
  if (a7)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    *result = a7;
  }

  if (a8)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    result[1] = a8;
  }

  if (a9)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    result[3] = a9;
  }

  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MemsetOpGenericAdaptorBase::Properties>(a2);
    result[4] = a10;
  }

  return result;
}

BOOL mlir::LLVM::MinNumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::MinNumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::MinNumOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::MinNumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MinNumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::MinimumOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::MinimumOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::MinimumOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::MinimumOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::MinimumOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::NearbyintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::NearbyintOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::NearbyintOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::NearbyintOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::NearbyintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::NoAliasScopeDeclOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps18(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps18(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
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
        v6[0] = "scope";
        v6[1] = 5;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<57ul>(v9, "' failed to satisfy constraint: LLVM dialect alias scope");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::NoAliasScopeDeclOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v12 = 0;
  v13[0] = a1;
  if (((*(*a1 + 448))(a1, &v12, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4LLVM14AliasScopeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v13) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v12;
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::NoAliasScopeDeclOpGenericAdaptorBase::Properties>(a2) = v5;
  }

  else
  {
    v10[0] = "invalid kind of attribute specified";
    v11 = 259;
    (*(*a1 + 24))(v13, a1, v4, v10);
    v6 = v14;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    if (v6)
    {
LABEL_9:
      result = 0;
      goto LABEL_10;
    }
  }

  v10[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 8);
  v13[0] = a1;
  v13[1] = v10;
  v13[2] = a2;
  if (!mlir::LLVM::NoAliasScopeDeclOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::NoAliasScopeDeclOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13))
  {
    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::PowIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::PowIOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::PowIOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::PowIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::PowOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::PowOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::PowOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::PowOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::PowOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

uint64_t mlir::LLVM::PtrAnnotation::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::RintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::RintOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::RintOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::RintOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::RoundEvenOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::RoundEvenOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::RoundEvenOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::RoundEvenOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RoundEvenOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::RoundOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::RoundOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::RoundOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::RoundOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::RoundOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

uint64_t mlir::LLVM::SAddSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SAddSat::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::SMaxOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SMaxOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::SMinOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SMinOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::LLVM::SSACopyOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  __src = v19;
  v18 = 0x200000000;
  v4 = *(a2 + 2);
  v5 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::SSACopyOp::inferReturnTypes(Dictionary, v7, v8, v4 & 0xFFFFFFFFFFFFFFF9, v5, v9, v10, v11, v14, v15, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v12);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v18);
  if (__src != v19)
  {
    free(__src);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::LLVM::SSACopyOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::LLVM::SSACopyOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  __src = 0;
  v7[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
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

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v9);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

uint64_t mlir::LLVM::SSHLSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SSHLSat::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::SSubSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SSubSat::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::SinOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::SinOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SinOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::SinOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SinOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::SinhOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::SinhOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SinhOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::SinhOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SinhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::SqrtOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::SqrtOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::SqrtOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::SqrtOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SqrtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::StackRestoreOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  v7 = 0;
  v6[0] = &v7;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v7))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::LLVM::StackSaveOp::parse(uint64_t a1, uint64_t a2)
{
  __src = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v6);
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v27[25] = *MEMORY[0x277D85DE8];
  v23 = a5;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 3;
  if (v10)
  {
    v11 = 1;
  }

  v12 = a2[v11];
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v12[2] >> 30))
  {
    v13 = 1;
  }

  else
  {
LABEL_10:
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    mlir::Operation::emitOpError(a1, v21, &v26);
    if (v26)
    {
      mlir::Diagnostic::operator<<<3ul>(v27, " #");
    }

    v14 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v26, &v23);
    v15 = v14;
    if (*v14)
    {
      mlir::Diagnostic::operator<<<70ul>((v14 + 1), " must be LLVM dialect-compatible vector of signless integer, but got ");
      if (*v15)
      {
        v24 = 4;
        v25 = a2;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v15 + 3), &v24, 1);
        v17 = v15[3] + 24 * *(v15 + 8);
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++*(v15 + 8);
      }
    }

    v13 = (v15[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::LLVM::StepVectorOp::parse(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  if (((*(*a1 + 536))(a1, &v5) & 1) == 0)
  {
    return 0;
  }

  __src = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
  return 1;
}

uint64_t mlir::LLVM::StripInvariantGroupOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::StripInvariantGroupOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  __src = 0;
  v6[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
}

BOOL mlir::LLVM::TanOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::TanOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::TanOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::TanOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::TanOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::TanhOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::TanhOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::TanhOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::TanhOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::TanhOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

uint64_t mlir::LLVM::UAddSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::UAddSat::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps19(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v3 = a1[1], *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v3[2] == 8)
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
        v7[0] = "failureKind";
        v7[1] = 11;
        mlir::Diagnostic::operator<<(v10, v7);
        if (v9)
        {
          mlir::Diagnostic::operator<<<65ul>(v10, "' failed to satisfy constraint: 8-bit signless integer attribute");
        }
      }
    }

    v4 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::LLVM::UMaxOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::UMaxOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::UMinOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::UMinOp::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::USHLSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::USHLSat::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::USubSat::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::USubSat::parse(uint64_t a1, uint64_t a2)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v12, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10 = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10)))
  {
    v6 = *(v10 + 8);
    v5 = *(v10 + 12);
    v11[0] = *(v10 + 16);
    v11[1] = v6;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11[0] + 8 * v6), (v11[0] + 8 * v6 + 8 * v5));
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v11, v4, a2 + 16);
  }

  else
  {
    v7 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v20 = a3;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_9;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 3;
  if (v6)
  {
    v7 = 1;
  }

  v8 = *a2[v7];
  v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v8 + 8, v9))
  {
    v10 = 1;
  }

  else
  {
LABEL_9:
    v19 = 261;
    v18[0] = "operand";
    v18[1] = 7;
    mlir::Operation::emitOpError(a1, v18, &v23);
    if (v23)
    {
      mlir::Diagnostic::operator<<<3ul>(v24, " #");
    }

    v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v20);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<68ul>((v11 + 1), " must be LLVM dialect-compatible vector of floating-point, but got ");
      if (*v12)
      {
        v21 = 4;
        v22 = a2;
        v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v12 + 3), &v21, 1);
        v14 = v12[3] + 24 * *(v12 + 8);
        v15 = *v13;
        *(v14 + 16) = *(v13 + 16);
        *v14 = v15;
        ++*(v12 + 8);
      }
    }

    v10 = (v12[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps19(mlir::Operation *a1, void *a2, unsigned int a3)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = a3;
  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_8;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 3;
  if (v6)
  {
    v7 = 1;
  }

  if (*(*a2[v7] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    v13 = 1;
  }

  else
  {
LABEL_8:
    v17 = 261;
    v16[0] = "operand";
    v16[1] = 7;
    mlir::Operation::emitOpError(a1, v16, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<3ul>(v22, " #");
    }

    v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
    v9 = v8;
    if (*v8)
    {
      mlir::Diagnostic::operator<<<71ul>((v8 + 1), " must be LLVM dialect-compatible vector of LLVM pointer type, but got ");
      if (*v9)
      {
        v19 = 4;
        v20 = a2;
        v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v9 + 3), &v19, 1);
        v11 = v9[3] + 24 * *(v9 + 8);
        v12 = *v10;
        *(v11 + 16) = *(v10 + 16);
        *v11 = v12;
        ++*(v9 + 8);
      }
    }

    v13 = (v9[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps20(mlir::Operation *a1, void *a2)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = *a2;
  v5 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v4 + 8, v5))
  {
    v6 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = "operand";
    v14[1] = 7;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<34ul>((v7 + 1), " must be floating-point, but got ");
      if (*v8)
      {
        v17 = 4;
        v18 = a2;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v17, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v6 = (v8[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::LLVM::VaCopyOp::parse(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v16[0] = v17;
  v16[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v12, 1) & 1) != 0 && (v15 = 257, ((*(*a1 + 400))(a1, "to", 2, v14)) && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v16))
  {
    v14[0] = v8;
    v14[1] = v11;
    v4 = (*(*a1 + 16))(a1);
    v5 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::SmallVector<mlir::Type,1u> &>(a1, v14, v16, v4, a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::VaEndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  v7 = 0;
  v6[0] = &v7;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v7))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::VaStartOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8[0] = v9;
  v8[1] = 1;
  v6[1] = 1;
  v7 = 0;
  v6[0] = &v7;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v7))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v8, v6, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::masked_gather::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v8, "alignment", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::masked_gather::getODSOperands(mlir::LLVM::masked_gather *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = byte_25D0A01CC;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 68);
    v8 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  byte_25D0A01CC[a2];
  return v8 + 32 * (a2 + (v7 - 3) * v2);
}

BOOL mlir::LLVM::masked_gather::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::masked_gather::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::masked_gather::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::masked_scatter::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v8, "alignment", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::masked_scatter::parse(uint64_t a1, uint64_t a2)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  v14[1] = 1;
  v15 = 0;
  v13 = 0;
  v14[0] = &v15;
  v12[0] = &v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v25[0] = a1;
  v25[1] = &v9;
  v25[2] = a2;
  if (!mlir::LLVM::masked_scatter::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::masked_scatter::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v25))
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v15 = v25[0], ((*(*a1 + 120))(a1)) && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v13 = v25[0], v26 = 257, ((*(*a1 + 400))(a1, "into", 4, v25)) && (v25[0] = 0, ((*(*a1 + 536))(a1, v25)) && (v11 = v25[0], mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v14, v4, a2 + 16)) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v10, v5, a2 + 16))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v12, v6, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::vector_extract::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "pos", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::vector_extract::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v13 = 0;
  v10[1] = 1;
  v11 = 0;
  v10[0] = &v11;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v6 = mlir::IntegerType::get(*v5, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v13, v6))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_extractGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v17[0] = a1;
  v17[1] = &__src;
  v17[2] = a2;
  if (!mlir::LLVM::vector_extract::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_extract::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v17[0] = 0;
  if (((*(*a1 + 536))(a1, v17) & 1) == 0)
  {
    return 0;
  }

  __src = v17[0];
  v18 = 257;
  if (((*(*a1 + 400))(a1, "from", 4, v17) & 1) == 0)
  {
    return 0;
  }

  v17[0] = 0;
  if (((*(*a1 + 536))(a1, v17) & 1) == 0)
  {
    return 0;
  }

  v11 = v17[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v10, v4, a2 + 16);
}

BOOL mlir::LLVM::vector_insert::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(v8, "pos", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::vector_insert::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2)
    {
      if (v6)
      {
        v6 = v6[3];
      }
    }
  }

  else
  {
    v6 = *v6;
  }

  **a3 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::LLVM::vector_insert::parse(uint64_t a1, uint64_t a2)
{
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11[0] = &v12;
  v11[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v6 = mlir::IntegerType::get(*v5, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v13, v6))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::vector_insertGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  __src = a1;
  v20[0] = &v10;
  v20[1] = a2;
  if (!mlir::LLVM::vector_insert::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_insert::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  if ((*(*a1 + 104))(a1) & 1) != 0 && (__src = 0, ((*(*a1 + 536))(a1, &__src)) && (v12 = __src, v21 = 257, ((*(*a1 + 400))(a1, "into", 4, &__src)) && (v10 = 0, ((*(*a1 + 536))(a1, &v10)) && (__src = v10, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v20), ((*(*a1 + 728))(a1, v14, __src, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::vector_reduce_fmax::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fmax::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::vector_reduce_fmax::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmax::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::vector_reduce_fmaximum::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fmaximum::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::vector_reduce_fmaximum::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmaximum::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::vector_reduce_fmin::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fmin::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::vector_reduce_fmin::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fmin::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::vector_reduce_fminimum::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::vector_reduce_fminimum::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::vector_reduce_fminimum::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::vector_reduce_fminimum::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::LLVMDialect::verifyOperationAttribute(int a1, mlir::Operation *this, uint64_t a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a3 + 24) != 16 || ((v4 = *(a3 + 16), v6 = *v4, v5 = v4[1], v6 == 0x7461642E6D766C6CLL) ? (v7 = v5 == 0x74756F79616C5F61) : (v7 = 0), !v7))
  {
    v8 = 1;
    goto LABEL_7;
  }

  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v20 = 257;
    mlir::Operation::emitOpError(this, v19, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<11ul>(v33, "expected '");
      if (v32)
      {
        LOWORD(v26) = 261;
        v22 = "llvm.data_layout";
        v23 = 16;
        mlir::Diagnostic::operator<<(v33, &v22);
        if (v32)
        {
          mlir::Diagnostic::operator<<<28ul>(v33, "' to be a string attributes");
        }
      }
    }

    v8 = (v33[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    goto LABEL_7;
  }

  v12 = a4[2];
  v13 = a4[3];
  v16 = this;
  llvm::DataLayout::parse(v12, v13, &v32);
  v8 = 1;
  if ((v34 & 1) == 0)
  {
LABEL_28:
    llvm::DataLayout::~DataLayout(&v32);
    goto LABEL_7;
  }

  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  LODWORD(v23) = 0;
  v27 = 0;
  v28 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v22 = &unk_286E79D28;
  v29 = v30;
  llvm::raw_ostream::SetUnbuffered(&v22);
  v14 = 0;
  if (v34)
  {
    v14 = v32;
    v32 = 0;
  }

  v21 = v14;
  v20 = 257;
  llvm::logAllUnhandledErrors(&v21, &v22, v19);
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  std::operator+<char>();
  v20 = 260;
  v19[0] = &__p;
  llvm::function_ref<void ()(llvm::Twine const&)>::callback_fn<mlir::LLVM::LLVMDialect::verifyOperationAttribute(mlir::Operation *,mlir::NamedAttribute)::$_0>(&v16, v19);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  llvm::raw_ostream::~raw_ostream(&v22);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if ((v34 & 1) == 0)
  {
    v8 = 0;
    goto LABEL_28;
  }

  v15 = v32;
  v32 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v8 = 0;
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v56[1] = a4;
  v57 = a2;
  v55 = a1;
  v56[0] = a3;
  isCompatibleType = mlir::LLVM::LLVMDialect::isCompatibleType(a2, a2, a3, a4);
  v53[0] = v56;
  v53[1] = &v55;
  v53[2] = &v54;
  v54 = a3;
  v52[0] = v56;
  v52[1] = &v55;
  v52[2] = &v54;
  v51[0] = &v57;
  v51[1] = &v55;
  v51[2] = &v54;
  v50[0] = &v57;
  v50[1] = &v55;
  v50[2] = &v54;
  result = 1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  if (v10 > 13)
  {
    if (v10 <= 16)
    {
      if (v10 == 14)
      {
        if (*v9 == 0x6972772E6D766C6CLL && *(v9 + 6) == 0x796C6E6F65746972)
        {
          goto LABEL_109;
        }

        v25 = *(v9 + 6);
        v26 = *v9 == 0x636F6E2E6D766C6CLL;
        v27 = 0x657275747061636FLL;
        goto LABEL_64;
      }

      if (v10 != 15)
      {
        goto LABEL_138;
      }

      if (*v9 != 0x696C612E6D766C6CLL || *(v9 + 7) != 0x6B636174736E6769)
      {
        goto LABEL_138;
      }

LABEL_129:
      if (mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_2::operator()(v52) && (!isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_3::operator()(v51)))
      {
        goto LABEL_136;
      }

      goto LABEL_137;
    }

    if (v10 != 17)
    {
      if (v10 == 20)
      {
        if (*v9 != 0x7265642E6D766C6CLL || *(v9 + 8) != 0x65636E6572656665 || *(v9 + 16) != 1701601889)
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (v10 != 28)
        {
          goto LABEL_138;
        }

        v14 = *v9 == 0x7265642E6D766C6CLL && *(v9 + 8) == 0x65636E6572656665;
        v15 = v14 && *(v9 + 16) == 0x5F726F5F656C6261;
        if (!v15 || *(v9 + 24) != 1819047278)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_129;
    }

    v22 = *(v9 + 16);
    v23 = *v9 == 0x6572702E6D766C6CLL && *(v9 + 8) == 0x657461636F6C6C61;
    v20 = 100;
    goto LABEL_74;
  }

  if (v10 <= 10)
  {
    if (v10 != 9)
    {
      if (v10 != 10)
      {
        goto LABEL_138;
      }

      if ((*v9 != 0x7679622E6D766C6CLL || *(v9 + 8) != 27745) && (*v9 != 0x7279622E6D766C6CLL || *(v9 + 8) != 26213))
      {
        if (memcmp(v9, "llvm.align", 0xAuLL))
        {
          v13 = "llvm.inreg";
LABEL_43:
          if (!memcmp(v9, v13, v10))
          {
LABEL_108:
            result = mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_0::operator()(v53);
            goto LABEL_138;
          }

LABEL_136:
          result = 1;
          goto LABEL_138;
        }

        goto LABEL_129;
      }

LABEL_79:
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        goto LABEL_141;
      }

      v59 = 257;
      mlir::Operation::emitError(&v62, a1, v58);
      if (v62)
      {
        v60 = 0;
        v61 = v54;
        v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v64, &v60, 1);
        v31 = v64 + 24 * v65;
        v32 = *v30;
        *(v31 + 16) = *(v30 + 16);
        *v31 = v32;
        ++v65;
        if (v62)
        {
          mlir::Diagnostic::operator<<<28ul>(v63, " should be a type attribute");
        }
      }

      v33 = v66;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
      if ((v33 & 1) == 0)
      {
LABEL_141:
        if (!isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_5::operator()(v51))
        {
          goto LABEL_136;
        }
      }

      goto LABEL_137;
    }

    v20 = 116;
    if (*v9 == 0x73656E2E6D766C6CLL && *(v9 + 8) == 116)
    {
      goto LABEL_109;
    }

    v22 = *(v9 + 8);
    v23 = *v9 == 0x6572732E6D766C6CLL;
LABEL_74:
    if (!v23 || v22 != v20)
    {
      goto LABEL_138;
    }

    goto LABEL_79;
  }

  if (v10 != 11)
  {
    if (v10 != 12)
    {
      if ((*v9 != 0x6165722E6D766C6CLL || *(v9 + 5) != 0x796C6E6F64616572) && (*v9 != 0x6165722E6D766C6CLL || *(v9 + 5) != 0x656E6F6E64616572))
      {
        if (memcmp(v9, "llvm.inalloca", 0xDuLL))
        {
          v13 = "llvm.returned";
          goto LABEL_43;
        }

        goto LABEL_79;
      }

LABEL_109:
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        goto LABEL_142;
      }

      v59 = 257;
      mlir::Operation::emitError(&v62, a1, v58);
      if (v62)
      {
        v60 = 0;
        v61 = v54;
        v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v64, &v60, 1);
        v40 = v64 + 24 * v65;
        v41 = *v39;
        *(v40 + 16) = *(v39 + 16);
        *v40 = v41;
        ++v65;
        if (v62)
        {
          mlir::Diagnostic::operator<<<28ul>(v63, " should be a unit attribute");
        }
      }

      v42 = v66;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
      if ((v42 & 1) == 0)
      {
LABEL_142:
        if (!isCompatibleType || *(*v57 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
        {
          goto LABEL_136;
        }

        v59 = 257;
        mlir::Operation::emitError(&v62, v55, v58);
        if (v62)
        {
          v60 = 0;
          v61 = v54;
          v43 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v64, &v60, 1);
          v44 = v64 + 24 * v65;
          v45 = *v43;
          *(v44 + 16) = *(v43 + 16);
          *v44 = v45;
          ++v65;
          if (v62)
          {
            mlir::Diagnostic::operator<<<45ul>(v63, " attribute attached to non-pointer LLVM type");
          }
        }

        v46 = v66;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
        if ((v46 & 1) == 0)
        {
          goto LABEL_136;
        }
      }

      goto LABEL_137;
    }

    if (*v9 == 0x616F6E2E6D766C6CLL && *(v9 + 8) == 1935763820)
    {
      goto LABEL_109;
    }

    if (*v9 == 0x6E6F6E2E6D766C6CLL && *(v9 + 8) == 1819047278)
    {
      goto LABEL_109;
    }

    if ((*v9 != 0x6769732E6D766C6CLL || *(v9 + 8) != 1954047342) && (*v9 != 0x72657A2E6D766C6CLL || *(v9 + 8) != 1954047343))
    {
      if (*v9 == 0x756F6E2E6D766C6CLL && *(v9 + 8) == 1717920878)
      {
        goto LABEL_108;
      }

      goto LABEL_138;
    }

    if (mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_0::operator()(v53) && (!isCompatibleType || mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_4::operator()(v50)))
    {
      goto LABEL_136;
    }

LABEL_137:
    result = 0;
    goto LABEL_138;
  }

  v25 = *(v9 + 3);
  v26 = *v9 == 0x666F6E2E6D766C6CLL;
  v27 = 0x656572666F6E2E6DLL;
LABEL_64:
  if (v26 && v25 == v27)
  {
    goto LABEL_109;
  }

LABEL_138:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_0::operator()(void **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(*(*a1)[1] + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    v2 = *a1[1];
    v11 = 257;
    mlir::Operation::emitError(&v14, v2, v10);
    if (v14)
    {
      v3 = *a1[2];
      v12 = 0;
      v13 = v3;
      v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v16, &v12, 1);
      v5 = v16 + 24 * v17;
      v6 = *v4;
      *(v5 + 16) = *(v4 + 16);
      *v5 = v6;
      ++v17;
      if (v14)
      {
        mlir::Diagnostic::operator<<<28ul>(&v15, " should be a unit attribute");
      }
    }

    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_3::operator()(void **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(***a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    v7 = 1;
  }

  else
  {
    v2 = *a1[1];
    v11 = 257;
    mlir::Operation::emitError(&v14, v2, v10);
    if (v14)
    {
      v3 = *a1[2];
      v12 = 0;
      v13 = v3;
      v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v16, &v12, 1);
      v5 = v16 + 24 * v17;
      v6 = *v4;
      *(v5 + 16) = *(v4 + 16);
      *v5 = v6;
      ++v17;
      if (v14)
      {
        mlir::Diagnostic::operator<<<45ul>(&v15, " attribute attached to non-pointer LLVM type");
      }
    }

    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_5::operator()(void **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(***a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    goto LABEL_7;
  }

  v2 = *a1[1];
  v11 = 257;
  mlir::Operation::emitError(&v14, v2, v10);
  if (v14)
  {
    v3 = *a1[2];
    v12 = 0;
    v13 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v16, &v12, 1);
    v5 = v16 + 24 * v17;
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++v17;
    if (v14)
    {
      mlir::Diagnostic::operator<<<45ul>(&v15, " attribute attached to non-pointer LLVM type");
    }
  }

  v7 = v18;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  if ((v7 & 1) == 0)
  {
LABEL_7:
    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_4::operator()(void **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(***a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v7 = 1;
  }

  else
  {
    v2 = *a1[1];
    v11 = 257;
    mlir::Operation::emitError(&v14, v2, v10);
    if (v14)
    {
      v3 = *a1[2];
      v12 = 0;
      v13 = v3;
      v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v16, &v12, 1);
      v5 = v16 + 24 * v17;
      v6 = *v4;
      *(v5 + 16) = *(v4 + 16);
      *v5 = v6;
      ++v17;
      if (v14)
      {
        mlir::Diagnostic::operator<<<45ul>(&v15, " attribute attached to non-integer LLVM type");
      }
    }

    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::LLVMDialect::verifyParameterAttribute(mlir::Operation *,mlir::Type,mlir::NamedAttribute)::$_2::operator()(void **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(*(*a1)[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    v2 = *a1[1];
    v11 = 257;
    mlir::Operation::emitError(&v14, v2, v10);
    if (v14)
    {
      v3 = *a1[2];
      v12 = 0;
      v13 = v3;
      v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v16, &v12, 1);
      v5 = v16 + 24 * v17;
      v6 = *v4;
      *(v5 + 16) = *(v4 + 16);
      *v5 = v6;
      ++v17;
      if (v14)
      {
        mlir::Diagnostic::operator<<<32ul>(&v15, " should be an integer attribute");
      }
    }

    v7 = (v18 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::LLVMDialect::verifyRegionArgAttribute(uint64_t a1, mlir::Operation *a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t *a6)
{
  if (!llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2))
  {
    return 1;
  }

  v11 = *((*(*(v10 + 48) + 8))() + 8 * a4);

  return mlir::LLVM::LLVMDialect::verifyParameterAttribute(a2, v11, a5, a6);
}

BOOL mlir::LLVM::LLVMDialect::verifyRegionResultAttribute(uint64_t a1, void **a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t *a6)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!llvm::DefaultDoCastIfPossible<mlir::FunctionOpInterface,mlir::Operation *,llvm::CastInfo<mlir::FunctionOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2))
  {
    v19 = 1;
LABEL_73:
    v36 = *MEMORY[0x277D85DE8];
    return v19;
  }

  v11 = *((*(*(v10 + 48) + 16))() + 8 * a4);
  v12 = *(*v11 + 136);
  if (v12 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
  {
    v38 = 257;
    mlir::Operation::emitError(&v41, a2, v37);
    if (v41)
    {
      mlir::Diagnostic::operator<<<64ul>(v42, "cannot attach result attributes to functions with a void return");
    }

    goto LABEL_72;
  }

  v13 = *(a5 + 16);
  v14 = *(a5 + 24);
  if (v14 > 12)
  {
    if (v14 <= 14)
    {
      if (v14 == 13)
      {
        if (*v13 != 0x6C6C612E6D766C6CLL || *(v13 + 5) != 0x727470636F6C6C61)
        {
          v27 = *v13 == 0x616E692E6D766C6CLL && *(v13 + 5) == 0x61636F6C6C616E69;
          if (!v27 && memcmp(*(a5 + 16), "llvm.readnone", *(a5 + 24)) && memcmp(v13, "llvm.readonly", 0xDuLL) && memcmp(v13, "llvm.returned", 0xDuLL))
          {
            goto LABEL_66;
          }
        }
      }

      else if (*v13 != 0x636F6E2E6D766C6CLL || *(v13 + 6) != 0x657275747061636FLL)
      {
        v16 = *(v13 + 6);
        v17 = *v13 == 0x6972772E6D766C6CLL;
        v18 = 0x796C6E6F65746972;
        goto LABEL_25;
      }

LABEL_69:
      v38 = 257;
      mlir::Operation::emitError(&v41, a2, v37);
      if (v41)
      {
        v39 = 0;
        v40 = a5;
        v33 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v43, &v39, 1);
        v34 = v43 + 24 * v44;
        v35 = *v33;
        *(v34 + 16) = *(v33 + 16);
        *v34 = v35;
        ++v44;
        if (v41)
        {
          mlir::Diagnostic::operator<<<33ul>(v42, " is not a valid result attribute");
        }
      }

LABEL_72:
      v19 = (v45 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
      goto LABEL_73;
    }

    if (v14 != 17)
    {
      if (v14 == 15)
      {
        if (*v13 == 0x6C6C612E6D766C6CLL && *(v13 + 7) == 0x6E67696C61636F6CLL)
        {
          goto LABEL_69;
        }

        v16 = *(v13 + 7);
        v17 = *v13 == 0x696C612E6D766C6CLL;
        v18 = 0x6B636174736E6769;
LABEL_25:
        if (!v17 || v16 != v18)
        {
          goto LABEL_66;
        }

        goto LABEL_69;
      }

      goto LABEL_66;
    }

    v24 = *(v13 + 16);
    v25 = *v13 == 0x6572702E6D766C6CLL && v13[1] == 0x657461636F6C6C61;
    v22 = 100;
LABEL_52:
    if (!v25 || v24 != v22)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  switch(v14)
  {
    case 9:
      v22 = 116;
      if (*v13 == 0x73656E2E6D766C6CLL && *(v13 + 8) == 116)
      {
        goto LABEL_69;
      }

      v24 = *(v13 + 8);
      v25 = *v13 == 0x6572732E6D766C6CLL;
      goto LABEL_52;
    case 10:
      if ((*v13 != 0x7679622E6D766C6CLL || *(v13 + 4) != 27745) && (*v13 != 0x7279622E6D766C6CLL || *(v13 + 4) != 26213))
      {
        break;
      }

      goto LABEL_69;
    case 11:
      v16 = *(v13 + 3);
      v17 = *v13 == 0x666F6E2E6D766C6CLL;
      v18 = 0x656572666F6E2E6DLL;
      goto LABEL_25;
  }

LABEL_66:
  v31 = *MEMORY[0x277D85DE8];

  return mlir::LLVM::LLVMDialect::verifyParameterAttribute(a2, v11, a5, a6);
}

char *mlir::LLVM::LLVMDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v9 = *(*a3 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    if (a3[3])
    {
      v14 = 1;
    }

    else
    {
      v14 = a3 == 0;
    }

    if (v14 || *(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
LABEL_12:
      v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
      if (!v15 || (*v16)(v16, v15) != a4 || !mlir::LLVM::LLVMDialect::isCompatibleType(a4, v17, v18, v19) || !mlir::LLVM::LLVMDialect::isCompatibleType(a4, v20, v21, v22) || (v23 = *a3, v24 = *(*a3 + 136), v24 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) && v24 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && (v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v23 + 8, v25)))
      {
        v29 = 0;
        goto LABEL_32;
      }

      if (a3)
      {
        v26 = *a3;
        v27 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v28 = mlir::detail::InterfaceMap::lookup(v26 + 8, v27);
      }

      else
      {
        v28 = 0;
      }

      v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::ConstantOp>(a2, *(**a5 + 32));
      v48 = a5;
      v49 = v40;
      v50 = v52;
      v51 = 0x400000000;
      v53 = v55;
      v54 = 0x400000000;
      v56 = v58;
      v57 = 0x400000000;
      v59 = 4;
      v60 = &v62;
      v61 = 0x100000000;
      v63 = &v65;
      v64 = 0x100000000;
      v66 = 0;
      v67 = 0;
      v68 = &mlir::detail::TypeIDResolver<void,void>::id;
      v69 = 0;
      v70 = 0;
      __src = (*v28)(v28, a3);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(&v48) = a3;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v53, &__src, v44);
      v31 = mlir::Operation::create(&v48);
      mlir::OpBuilder::insert(a2, v31);
      v32 = *(*(v31 + 6) + 16);
      v33 = &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantOp,void>::id;
      goto LABEL_23;
    }

    v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id, *(**a5 + 32));
    if (v37)
    {
      v48 = a5;
      v49 = v36;
      v50 = v52;
      v51 = 0x400000000;
      v53 = v55;
      v54 = 0x400000000;
      v56 = v58;
      v57 = 0x400000000;
      v59 = 4;
      v60 = &v62;
      v61 = 0x100000000;
      v63 = &v65;
      v64 = 0x100000000;
      v66 = 0;
      v67 = 0;
      v68 = &mlir::detail::TypeIDResolver<void,void>::id;
      v69 = 0;
      v70 = 0;
      __src = a4;
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddressOfOpGenericAdaptorBase::Properties>(&v48) = a3;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v53, &__src, v44);
      v31 = mlir::Operation::create(&v48);
      mlir::OpBuilder::insert(a2, v31);
      v34 = *(*(v31 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::AddressOfOp,void>::id;
      goto LABEL_28;
    }

    v47 = 1283;
    v45 = "llvm.mlir.addressof";
    v13 = 19;
LABEL_37:
    v46 = v13;
    v42 = 259;
    llvm::operator+(&__src, &v41, &v48);
    llvm::report_fatal_error(&v48, 1);
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id)
  {
    if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id)
    {
      if (v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id)
      {
        v10 = &unk_27FC20028;
        v11 = mlir::RegisteredOperationName::lookup(&unk_27FC20028, *(**a5 + 32));
        if ((v12 & 1) == 0)
        {
          v47 = 1283;
          v45 = "llvm.mlir.zero";
          v13 = 14;
          goto LABEL_37;
        }

        goto LABEL_25;
      }

      goto LABEL_12;
    }

    v10 = &unk_27FC1FFB0;
    v11 = mlir::RegisteredOperationName::lookup(&unk_27FC1FFB0, *(**a5 + 32));
    if (v35)
    {
LABEL_25:
      v48 = a5;
      v49 = v11;
      v50 = v52;
      v51 = 0x400000000;
      v53 = v55;
      v54 = 0x400000000;
      v56 = v58;
      v57 = 0x400000000;
      v59 = 4;
      v60 = &v62;
      v61 = 0x100000000;
      v63 = &v65;
      v64 = 0x100000000;
      v66 = 0;
      v67 = 0;
      v68 = &mlir::detail::TypeIDResolver<void,void>::id;
      v69 = 0;
      v70 = 0;
      __src = a4;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v53, &__src, v44);
      v31 = mlir::Operation::create(&v48);
      mlir::OpBuilder::insert(a2, v31);
      v34 = *(*(v31 + 6) + 16) == v10;
      goto LABEL_28;
    }

    v47 = 1283;
    v45 = "llvm.mlir.poison";
    v13 = 16;
    goto LABEL_37;
  }

  v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::LLVM::UndefOp>(a2, *(**a5 + 32));
  v48 = a5;
  v49 = v30;
  v50 = v52;
  v51 = 0x400000000;
  v53 = v55;
  v54 = 0x400000000;
  v56 = v58;
  v57 = 0x400000000;
  v59 = 4;
  v60 = &v62;
  v61 = 0x100000000;
  v63 = &v65;
  v64 = 0x100000000;
  v66 = 0;
  v67 = 0;
  v68 = &mlir::detail::TypeIDResolver<void,void>::id;
  v69 = 0;
  v70 = 0;
  __src = a4;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v53, &__src, v44);
  v31 = mlir::Operation::create(&v48);
  mlir::OpBuilder::insert(a2, v31);
  v32 = *(*(v31 + 6) + 16);
  v33 = &mlir::detail::TypeIDResolver<mlir::LLVM::UndefOp,void>::id;
LABEL_23:
  v34 = v32 == v33;
LABEL_28:
  if (v34)
  {
    v29 = v31;
  }

  else
  {
    v29 = 0;
  }

  mlir::OperationState::~OperationState(&v48);
LABEL_32:
  v38 = *MEMORY[0x277D85DE8];
  return v29;
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E8B428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = (mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::~Owner(v5) - 3);
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

void *mlir::ThreadLocalCache<llvm::DenseSet<mlir::Type,llvm::DenseMapInfo<mlir::Type,void>>>::Owner::~Owner(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v5 = a1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    MEMORY[0x25F891030](*v6, 8);
    MEMORY[0x25F891040](v6, 0x1020C405AF6BDC9);
  }

  return a1;
}

uint64_t llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(uint64_t result)
{
  v1 = *result;
  if (*result != *(result + 8))
  {
    v2 = result;
    do
    {
      if (*(*v1 + 24) != 13)
      {
        break;
      }

      v3 = *(*v1 + 16);
      v4 = *v3;
      v5 = *(v3 + 5);
      if (v4 != 0x6874616D74736166 || v5 != 0x7367616C46687461)
      {
        break;
      }

      v7 = v1[1];
      result = mlir::LLVM::FastmathFlagsAttr::get(*(**v7 + 32), 0);
      if (v7 != result)
      {
        break;
      }

      v8 = v2[1];
      v1 = (*v2 + 16);
      *v2 = v1;
    }

    while (v1 != v8);
  }

  return result;
}

uint64_t verifyStructIndices(uint64_t a1, unsigned int a2, void *a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = a2;
  if (*(*a3 + 16) > a2)
  {
    v9 = *(*a1 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id || a1 == 0)
    {
      if (v9 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || a1 == 0)
      {
        if (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || a1 == 0)
        {
          v13 = v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id || a1 == 0;
          if (v13 && (v9 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id || !a1))
          {
            v30 = a1;
            a4(&v31, a5);
            if (v31)
            {
              mlir::Diagnostic::operator<<<6ul>(&v31 + 8, "type ");
              if (v31)
              {
                mlir::Diagnostic::operator<<<mlir::Type &>(&v31 + 8, &v30);
                if (v31)
                {
                  mlir::Diagnostic::operator<<<28ul>(&v31 + 8, " cannot be indexed (index #");
                }
              }
            }

            v28 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v29);
            v24 = v28;
            if (*v28)
            {
              mlir::Diagnostic::operator<<<2ul>((v28 + 1), ")");
            }

            goto LABEL_45;
          }
        }

        v21 = *(a1 + 8);
      }

      else
      {
        v21 = *(a1 + 24);
      }

      v31 = *a3;
      v32 = a3[2];
      v22 = a2 + 1;
      goto LABEL_33;
    }

    v15 = mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::operator[](a3, a2);
    v16 = v15 & 0xFFFFFFFFFFFFFFF8;
    if ((v15 & 4) != 0)
    {
      v16 = 0;
    }

    v30 = v16;
    if (!v16)
    {
      a4(&v31, a5);
      if (v31)
      {
        mlir::Diagnostic::operator<<<16ul>(&v31 + 8, "expected index ");
      }

      v23 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v29);
      v24 = v23;
      if (*v23)
      {
        mlir::Diagnostic::operator<<<34ul>((v23 + 1), " indexing a struct to be constant");
      }

      goto LABEL_45;
    }

    Int = mlir::IntegerAttr::getInt(&v30);
    v18 = *(a1 + 24);
    if (v18)
    {
      v19 = (a1 + 16);
      v20 = *(a1 + 28) >> 3;
      if (Int < 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v19 = (a1 + 8);
      v20 = v18 >> 2;
      if (Int < 0)
      {
        goto LABEL_41;
      }
    }

    if ((Int & 0x7FFFFFFFu) < v20)
    {
      v21 = *(*v19 + 8 * (Int & 0x7FFFFFFF));
      v31 = *a3;
      v32 = a3[2];
      v22 = v29 + 1;
LABEL_33:
      v14 = verifyStructIndices(v21, v22, &v31, a4, a5);
      goto LABEL_46;
    }

LABEL_41:
    a4(&v31, a5);
    if (v31)
    {
      mlir::Diagnostic::operator<<<7ul>(&v31 + 8, "index ");
    }

    v25 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v29);
    v24 = v25;
    if (*v25)
    {
      mlir::Diagnostic::operator<<<36ul>((v25 + 1), " indexing a struct is out of bounds");
    }

LABEL_45:
    v14 = (v24[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    goto LABEL_46;
  }

  v14 = 1;
LABEL_46:
  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr> mlir::LocationAttr::findInstanceOf<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>>(void)::{lambda(mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>)#1}>(void **a1, void *a2)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
  {
    return 1;
  }

  v3 = a2[3];
  if (!v3)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id)
    {
      result = 0;
      **a1 = a2;
    }
  }

  return result;
}

llvm::raw_ostream *printOpBundles(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRangeRange,mlir::TypeRangeRange,std::optional<mlir::ArrayAttr>)::$_0::operator()<std::tuple<mlir::OperandRange,mlir::TypeRange,mlir::Attribute const&>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = **(a2 + 32);
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v7;
  (*(*a1 + 80))(a1, v6, v5);
  v9 = (*(*a1 + 16))(a1);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "(", 1uLL);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v10 = 40;
    ++*(v9 + 4);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a1, v20);
  v11 = (*(*a1 + 16))(a1);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 2)
  {
    *(v12 + 2) = 32;
    *v12 = 14880;
    *(v11 + 4) += 3;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    llvm::raw_ostream::write(v11, " : ", 3uLL);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v13 = mlir::TypeRange::dereference_iterator(v8, 0);
  (*(*a1 + 32))(a1, v13);
  if (v3 != 1)
  {
    for (i = 1; i != v3; ++i)
    {
      v15 = (*(*a1 + 16))(a1);
      v16 = *(v15 + 4);
      if (*(v15 + 3) - v16 > 1uLL)
      {
        *v16 = 8236;
        *(v15 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v15, ", ", 2uLL);
      }

      v17 = mlir::TypeRange::dereference_iterator(v8, i);
      (*(*a1 + 32))(a1, v17);
    }
  }

LABEL_15:
  result = (*(*a1 + 16))(a1);
  v19 = *(result + 4);
  if (*(result + 3) == v19)
  {
    return llvm::raw_ostream::write(result, ")", 1uLL);
  }

  *v19 = 41;
  ++*(result + 4);
  return result;
}

uint64_t std::function<mlir::TypeRange ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOpBundles(mlir::OpAsmParser &,llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u> &,llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u> &,mlir::ArrayAttr &)::$_0>(v3);
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOpBundles(mlir::OpAsmParser &,llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u> &,llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u> &,mlir::ArrayAttr &)::$_0>(uint64_t *a1)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = (*(**a1 + 40))(*a1);
  v28[0] = v29;
  v28[1] = 0x100000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  if (mlir::AsmParser::parseString(v1, __p))
  {
    if ((*(*v1 + 280))(v1) & 1) != 0 && (((*(*v1 + 304))(v1) & 1) != 0 || ((*(*v1 + 720))(v1, v28, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*v1 + 104))(v1) & 1) != 0 && (mlir::AsmParser::parseTypeList(v1, v26) & 1) != 0 && ((*(*v1 + 296))(v1)))
    {
      v6 = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>>(v2, v28, 1);
      v7 = (*v2 + 48 * *(v2 + 8));
      *v7 = v7 + 2;
      v7[1] = 0x100000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v7, v6);
      }

      ++*(v2 + 8);
      v8 = *(v4 + 8);
      v9 = *v4;
      v10 = v26;
      if (v8 >= *(v4 + 12))
      {
        if (v9 <= v26 && v9 + (v8 << 6) > v26)
        {
          v18 = v26 - v9;
          llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::grow(v4, v8 + 1);
          v9 = *v4;
          v10 = &v18[*v4];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::grow(v4, v8 + 1);
          v9 = *v4;
          v10 = v26;
        }
      }

      v11 = (v9 + (*(v4 + 8) << 6));
      *v11 = v11 + 2;
      v11[1] = 0x600000000;
      if (*(v10 + 2))
      {
        llvm::SmallVectorImpl<mlir::Type>::operator=(v11, v10);
      }

      ++*(v4 + 8);
      v12 = *(*(*v1 + 32))(v1);
      v24 = 260;
      v23[0] = __p;
      v14 = mlir::StringAttr::get(v12, v23, v13);
      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(v3, v14);
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v19 = "expect operand bundle tag";
    v20 = 259;
    (*(*v1 + 24))(v23, v1, v5, &v19);
    v15 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 48 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::LLVMVoidType>();
      mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[41];
}

uint64_t llvm::getTypeName<mlir::LLVM::LLVMVoidType>()
{
  {
    llvm::getTypeName<mlir::LLVM::LLVMVoidType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMVoidType>();
    unk_27FC1B160 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::LLVMVoidType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMVoidType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::LLVMVoidType]";
  v6 = 86;
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

unint64_t *llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a5 - a3;
  v11 = *(a1 + 8);
  v12 = a5 - a3 + v11;
  if (v12 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v12, 8);
    v11 = *(a1 + 8);
  }

  result = std::uninitialized_copy[abi:nn200100]<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Type *>(a2, a3, a4, a5, (*a1 + 8 * v11));
  *(a1 + 8) += v10;
  return result;
}

unint64_t *std::uninitialized_copy[abi:nn200100]<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = a2;
  if (a2 != a4)
  {
    v7 = a2;
    do
    {
      *a5++ = *(mlir::ValueRange::dereference_iterator(&v10, v7) + 8) & 0xFFFFFFFFFFFFFFF8;
      v11 = ++v7;
    }

    while (a4 != v7);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a5;
}

BOOL mlir::AsmParser::parseAttribute<mlir::Attribute>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v22 = 0;
  if ((*(*a1 + 440))(a1, &v22, a3))
  {
    v14 = v22;
    *a2 = v22;
    if (v14)
    {
      v15 = *(**v14 + 32);
      v24 = 261;
      v23[0] = a4;
      v23[1] = a5;
      v16 = mlir::StringAttr::get(v15, v23, v13);
      mlir::NamedAttrList::push_back(a6, v16, v14);
      v17 = 1;
    }

    else
    {
      v20 = "invalid kind of attribute specified";
      v21 = 259;
      (*(*a1 + 24))(v23, a1, v12, &v20);
      v17 = (v25 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t mlir::ElementsAttr::getValues<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = (*(a1[1] + 16))();
  v7 = v6;
  mlir::ElementsAttr::value_begin<mlir::Attribute>(a1, v20);
  v8 = *a1;
  v9 = (*(a1[1] + 16))();
  v11 = (*(v10 + 24))(v10, v9);
  if (v12)
  {
    v13 = 8 * v12;
    v14 = 1;
    do
    {
      v15 = *v11++;
      v14 *= v15;
      v13 -= 8;
    }

    while (v13);
  }

  else
  {
    v14 = 1;
  }

  v17 = 257;
  v18 = 0;
  v19 = v14;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, v5, v7, v20, &v17);
  if ((v17 & 1) == 0)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v20[0] & 1) == 0)
  {
    result = v21;
    v21 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

llvm *mlir::ElementsAttr::value_begin<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<mlir::Attribute>(a1, &v13);
  if (v16 == 1)
  {
    *a2 = v13;
    v5 = v15;
    *(a2 + 8) = v14;
    *(a2 + 16) = v5;
  }

  else
  {
    v6 = llvm::errs(result);
    v8 = llvm::getTypeName<mlir::Attribute>();
    v10 = llvm::raw_ostream::operator<<(v7, v8, v9);
    v12 = mlir::operator<<(v11, *a1);
    result = llvm::raw_ostream::operator<<(v12, "\n");
    __break(1u);
  }

  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5)
{
  v23 = *a4;
  v24 = a4[1];
  if (v23 == 1)
  {
    v25 = *(a4 + 1);
  }

  else
  {
    (*(**(a4 + 1) + 16))(&v25);
  }

  v26 = *(a4 + 2);
  v20 = *a5;
  v21 = a5[1];
  if (*a5 == 1)
  {
    v22[0] = *(a5 + 1);
  }

  else
  {
    (*(**(a5 + 1) + 16))(v22);
  }

  v9 = *(a5 + 2);
  v22[1] = v9;
  v10 = v23;
  if (v23 == 1)
  {
    v11 = v25;
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = v25;
    v25 = 0;
  }

  v13 = v22[0];
  if (v20 != 1)
  {
    v22[0] = 0;
  }

  v14 = v24;
  v15 = v26;
  if ((v23 & 1) == 0 && v11)
  {
    (*(*v11 + 8))(v11);
  }

  *a1 = v10;
  *(a1 + 1) = v14;
  if (v10)
  {
    *(a1 + 8) = v12;
  }

  else
  {
    (*(*v12 + 16))(v12);
  }

  *(a1 + 16) = v15;
  *(a1 + 24) = v20;
  *(a1 + 25) = v21;
  if (v20)
  {
    *(a1 + 32) = v13;
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    (*(*v13 + 16))(v13);
    *(a1 + 40) = v9;
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    (*(*v13 + 8))(v13);
    if (v10)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_24:
  if ((v20 & 1) == 0)
  {
    v16 = v22[0];
    v22[0] = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  if ((v23 & 1) == 0)
  {
    v17 = v25;
    v25 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  return a1;
}

void *mlir::ElementsAttr::try_value_begin<mlir::Attribute>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID();
  v4 = *a1;
  result = (*a1[1])(v9);
  if (v10 == 1)
  {
    v6 = v9[0];
    v7 = BYTE1(v9[0]);
    v8 = v9[1];
    if (LOBYTE(v9[0]) == 1)
    {
      *a2 = v9[0];
      *(a2 + 1) = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
    }

    else
    {
      *a2 = v9[0];
      *(a2 + 1) = v7;
      *(a2 + 8) = v8;
      *(a2 + 16) = 0;
      v6 = 1;
    }

    *(a2 + 24) = v6;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation &,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  return v1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<73ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<parseInsertExtractValueElementType(mlir::AsmParser &,mlir::Type &,mlir::Type,mlir::detail::DenseArrayAttrImpl<long long>)::$_0>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = (*(**a1 + 40))(*a1);
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  return (*(*v5 + 24))(v5, v6, v8);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps26(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<102ul>(uint64_t a1, char *__s)
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

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseGEPIndices(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<int> &)::$_0>(uint64_t *a1)
{
  v6 = 0;
  v7 = *a1;
  v2 = mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(v7, &v6, &v7);
  if ((v2 & 0x100) != 0)
  {
    if (v2)
    {
      llvm::SmallVectorTemplateBase<int,true>::push_back(a1[1], v6);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    llvm::SmallVectorTemplateBase<int,true>::push_back(a1[1], 0x80000000);
    v3 = *a1;
    v4 = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(a1[2]);
    return (*(*v3 + 704))(v3, v4, 1);
  }
}

unint64_t mlir::LLVM::GEPIndicesAdaptor<mlir::OperandRange>::iterator::operator*(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1 == 0x80000000)
  {
    return *(*(a1 + 16) + 32 * *(a1 + 24) + 24) | 4;
  }

  else
  {
    return mlir::IntegerAttr::get(*(**a1 + 8), v1) & 0xFFFFFFFFFFFFFFFBLL;
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::LLVM::LLVMTokenType>();
      mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[36];
}

uint64_t llvm::getTypeName<mlir::LLVM::LLVMTokenType>()
{
  {
    llvm::getTypeName<mlir::LLVM::LLVMTokenType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMTokenType>();
    *algn_27FC1B138 = v1;
  }

  return llvm::getTypeName<mlir::LLVM::LLVMTokenType>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::LLVMTokenType>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::LLVMTokenType]";
  v6 = 87;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseSwitchOpCases(mlir::OpAsmParser &,mlir::Type,mlir::DenseIntElementsAttr &,llvm::SmallVectorImpl<mlir::Block *> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>> &)::$_0>(uint64_t *a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (mlir::AsmParser::parseInteger<long long>(*a1, &v11))
  {
    v2 = a1[1];
    v3 = *a1[2];
    LODWORD(v13) = v3;
    if (v3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v12);
    }

    if (v3)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    }

    else
    {
      v4 = 0;
    }

    v12 = (v4 & v11);
    v6 = llvm::SmallVectorTemplateCommon<llvm::APInt,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::APInt,false>>(v2, &v12, 1);
    v7 = *v2 + 16 * *(v2 + 8);
    *(v7 + 8) = *(v6 + 8);
    *v7 = *v6;
    *(v6 + 8) = 0;
    ++*(v2 + 8);
    if (v13 >= 0x41 && v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }

    v10 = 0;
    v15[0] = v16;
    v15[1] = 0x100000000;
    v12 = v14;
    v13 = 0x600000000;
    if ((*(**a1 + 104))() & 1) != 0 && ((*(**a1 + 800))(*a1, &v10) & 1) != 0 && (((*(**a1 + 288))(*a1) & 1) == 0 || ((*(**a1 + 720))(*a1, v15, 0, 0, 0xFFFFFFFFLL) & 1) != 0 && ((*(**a1 + 584))(*a1, &v12) & 1) != 0 && ((*(**a1 + 296))(*a1)))
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a1[3], v10);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(a1[4], v15);
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>>::emplace_back<llvm::SmallVector<mlir::Type,6u>&>(a1[5], &v12);
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    if (v12 != v14)
    {
      free(v12);
    }

    if (v15[0] != v16)
    {
      free(v15[0]);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::LLVM::vector_extract::getVectorBitWidth(void *a1)
{
  VectorNumElements = mlir::LLVM::getVectorNumElements(a1);
  v3 = *(*a1 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v5 = 3;
  if (v4)
  {
    v5 = 1;
  }

  v7 = a1[v5];
  return mlir::Type::getIntOrFloatBitWidth(&v7) * VectorNumElements;
}

uint64_t mlir::LLVM::vector_insert::getVectorBitWidth(void *a1)
{
  VectorNumElements = mlir::LLVM::getVectorNumElements(a1);
  v3 = *(*a1 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v5 = 3;
  if (v4)
  {
    v5 = 1;
  }

  v7 = a1[v5];
  return mlir::Type::getIntOrFloatBitWidth(&v7) * VectorNumElements;
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 40))(a1);
  v22 = 0;
  if ((*(*a1 + 440))(a1, &v22, a3))
  {
    if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v14 = v22;
    }

    else
    {
      v14 = 0;
    }

    *a2 = v14;
    if (v14)
    {
      v15 = *(**v14 + 32);
      v24 = 261;
      v23[0] = a4;
      v23[1] = a5;
      v16 = mlir::StringAttr::get(v15, v23, v13);
      mlir::NamedAttrList::push_back(a6, v16, v14);
      v17 = 1;
    }

    else
    {
      v20 = "invalid kind of attribute specified";
      v21 = 259;
      (*(*a1 + 24))(v23, a1, v12, &v20);
      v17 = (v25 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

unint64_t mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::iterator::operator*(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1 == 0x80000000)
  {
    return mlir::ValueRange::dereference_iterator((a1 + 16), *(a1 + 24)) | 4;
  }

  else
  {
    return mlir::IntegerAttr::get(*(**a1 + 8), v1) & 0xFFFFFFFFFFFFFFFBLL;
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GEPOp::verify(void)::$_0>(mlir::Operation ***a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(*v2, v3, a2);
}

uint64_t *mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>()
{
  {
    mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID();
  }

  return &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
}

__n128 llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v10[2] = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  v10[3] = 0;
  v11 = 0;
  v12 = 0;
  v5 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v10, 1);
  v6 = *a1 + 40 * *(a1 + 8);
  v7 = *(v5 + 32);
  result = *(v5 + 16);
  *v6 = *v5;
  *(v6 + 16) = result;
  *(v6 + 32) = v7;
  ++*(a1 + 8);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *>(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v9[2] = 0;
  v10[0] = 0;
  *(v10 + 5) = 0;
  v3 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v9, 1);
  v4 = *a1 + 40 * *(a1 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  v7 = *MEMORY[0x277D85DE8];
  return *a1 + 40 * v4 - 40;
}