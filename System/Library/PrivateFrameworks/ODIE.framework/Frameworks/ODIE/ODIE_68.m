BOOL mlir::LLVM::CondBrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v10, "branch_weights", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CondBrOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::CondBrOp::parse(uint64_t a1, uint64_t a2)
{
  v32[16] = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v30 = v32;
  v31 = 0x400000000;
  v28[0] = &v29;
  v28[1] = 0x100000000;
  v18 = 0;
  v25 = v27;
  v26 = 0x400000000;
  v23[0] = &v24;
  v23[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 408))(a1, "weights", 7))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v20))
    {
      goto LABEL_31;
    }

    v4 = v20;
    if (v20)
    {
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CondBrOpGenericAdaptorBase::Properties>(a2) = v4;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v19) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 288))(a1))
  {
    v5 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v30, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v28) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v18))
  {
    if ((*(*a1 + 288))(a1))
    {
      v6 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 720))(a1, &v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v23) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = 0;
    }

    v17 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v7 = *(a2 + 8);
      v16[0] = a1;
      v16[1] = &v17;
      v16[2] = a2;
      if (mlir::LLVM::CondBrOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CondBrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v19);
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v18);
        v8 = v31;
        v9 = v26;
        v10 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CondBrOpGenericAdaptorBase::Properties>(a2);
        v10[4] = 1;
        v10[5] = v8;
        v10[6] = v9;
        v11 = (*(*a1 + 32))(a1);
        v12 = mlir::IntegerType::get(*v11, 1, 0);
        if (((*(*a1 + 728))(a1, v21, v12, a2 + 16) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v30, v28, v5, a2 + 16))
        {
          v13 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v25, v23, v6, a2 + 16);
          goto LABEL_32;
        }
      }
    }
  }

LABEL_31:
  v13 = 0;
LABEL_32:
  if (v23[0] != &v24)
  {
    free(v23[0]);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28[0] != &v29)
  {
    free(v28[0]);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIiEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v5 = v11[1], *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v5[2] == 32)
    {
      *a2 = v11;
      v6 = 1;
    }

    else
    {
      *a2 = 0;
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

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<int>,(void *)0>(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    v6 = (*(*a1 + 16))(a1);
    mlir::detail::DenseArrayAttrImpl<int>::print(&v7, v6);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v7);
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::LLVM::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, a3, a4);
  __src = a3;
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v8);
}

uint64_t mlir::LLVM::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 440))(a1, &v8, 0) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
    *v4 = v8;
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

  mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2 + 112, **(*(a2 + 8) + 96));
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
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v8);
  return 1;
}

uint64_t mlir::LLVM::ExtractElementOp::inferReturnTypes(uint64_t a1, uint64_t a2, void **a3)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (!a2)
  {
    return 0;
  }

  v6 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 6) != 0 || !v6)
  {
    if ((a1 & 6) == 2 && v6)
    {
      v6 = v6[3];
    }
  }

  else
  {
    v6 = *v6;
  }

  v8 = v6[1] & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*v8 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 24;
  if (v10)
  {
    v11 = 8;
  }

  **a3 = *(v8 + v11);
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps12(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
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

BOOL mlir::LLVM::ExtractElementOp::parse(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23[0] = v24;
  v23[1] = 1;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  v18[1] = 1;
  v19 = 0;
  v17 = 0;
  v18[0] = &v19;
  v16[0] = &v17;
  v16[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v24, 1) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &__src))
  {
    goto LABEL_18;
  }

  v19 = __src;
  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_18;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = __src;
  v15 = __src;
  if (mlir::LLVM::isCompatibleVectorType(__src))
  {
    v6 = *(*v17 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v8 = 3;
    if (v7)
    {
      v8 = 1;
    }

    __src = v17[v8];
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v27);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v23, v16, v4, a2 + 16))
    {
      v9 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v20, v18, v5, a2 + 16);
      goto LABEL_19;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v12 = (*(*a1 + 16))(a1);
  v14 = 257;
  (*(*a1 + 24))(&__src, a1, v12, v13);
  if (__src)
  {
    mlir::Diagnostic::operator<<<63ul>(v27, "'vector' must be LLVM dialect-compatible vector type, but got ");
    if (__src)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v27, &v15);
    }
  }

  v9 = (v27[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_19:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::LLVM::ExtractValueOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v3 = a1[1], *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v3[2] == 64)
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
        v7[0] = "position";
        v7[1] = 8;
        mlir::Diagnostic::operator<<(v10, v7);
        if (v9)
        {
          mlir::Diagnostic::operator<<<58ul>(v10, "' failed to satisfy constraint: i64 dense array attribute");
        }
      }
    }

    v4 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExtractValueOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if ((*(*a1 + 48))(a1, &v13))
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = v13[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v4[2] == 64)
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
        llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<long long>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<long long>>();
        unk_27FC1B020 = v11;
      }

      if (v17)
      {
        v16 = 261;
        v14 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<long long>>(void)::Name;
        v15 = unk_27FC1B020;
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps13(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
  {
    v6 = 1;
  }

  else
  {
    v16 = 261;
    v15[0] = a3;
    v15[1] = a4;
    mlir::Operation::emitOpError(a1, v15, &v20);
    if (v20)
    {
      mlir::Diagnostic::operator<<<3ul>(v21, " #");
    }

    v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v17);
    v9 = v8;
    if (*v8)
    {
      mlir::Diagnostic::operator<<<39ul>((v8 + 1), " must be LLVM aggregate type, but got ");
      if (*v9)
      {
        v18 = 4;
        v19 = a2;
        v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v9 + 3), &v18, 1);
        v11 = v9[3] + 24 * *(v9 + 8);
        v12 = *v10;
        *(v11 + 16) = *(v10 + 16);
        *v11 = v12;
        ++*(v9 + 8);
      }
    }

    v6 = (v9[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::LLVM::ExtractValueOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12 = 0;
  v13 = 0;
  v11[0] = &v12;
  v11[1] = 1;
  __src = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ExtractValueOpGenericAdaptorBase::Properties>(a2);
    *v5 = v13;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a2;
  if (!mlir::LLVM::ExtractValueOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ExtractValueOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v8[0] = 0;
  if (((*(*a1 + 536))(a1, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = v8[0];
  if (!parseInsertExtractValueElementType(a1, &__src, v8[0], v13))
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v11);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v14, v11, v4, a2 + 16);
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  v14[0] = a1;
  if ((*(*a1 + 448))(a1, &v13, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIxEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_, v14))
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = v13[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 64)
    {
      *a2 = v13;
      v8 = 1;
    }

    else
    {
      *a2 = 0;
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v6, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL parseInsertExtractValueElementType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  ValueElementType = getInsertExtractValueElementType(llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<parseInsertExtractValueElementType(mlir::AsmParser &,mlir::Type &,mlir::Type,mlir::detail::DenseArrayAttrImpl<long long>)::$_0>, &v7, a3, *(a4 + 24), *(a4 + 32) >> 3);
  *a2 = ValueElementType;
  return ValueElementType != 0;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    v6 = (*(*a1 + 16))(a1);
    mlir::detail::DenseArrayAttrImpl<long long>::print(&v7, v6);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v7);
    }
  }

  return result;
}

BOOL mlir::LLVM::FAddOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FAddOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps14(mlir::Operation *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v25 = a5;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2))
  {
    goto LABEL_2;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v12 = 24;
  if (v11)
  {
    v12 = 8;
  }

  if (mlir::LLVM::isCompatibleFloatingPointType(*&a2[v12]))
  {
LABEL_2:
    v9 = 1;
  }

  else
  {
LABEL_10:
    v24 = 261;
    v23[0] = a3;
    v23[1] = a4;
    mlir::Operation::emitOpError(a1, v23, &v29);
    if (v29)
    {
      mlir::Diagnostic::operator<<<3ul>(v30, " #");
    }

    v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, &v25);
    v14 = v13;
    if (*v13)
    {
      v26 = 3;
      v27 = " must be floating point LLVM type or LLVM dialect-compatible vector of floating point LLVM type, but got ";
      v28 = 105;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v26, 1);
      v16 = v14[3] + 24 * *(v14 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v14 + 8);
      if (*v14)
      {
        v26 = 4;
        v27 = a2;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v26, 1);
        v19 = v14[3] + 24 * *(v14 + 8);
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++*(v14 + 8);
      }
    }

    v9 = (v14[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::LLVM::FAddOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v6 = a1;
  v7[0] = &v8;
  v7[1] = a2;
  if (mlir::LLVM::FAddOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FAddOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8) & 1) != 0) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps26(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::FCmpPredicateAttr::classof(a1))
  {
    v5 = 1;
  }

  else
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "predicate";
        v8[1] = 9;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<63ul>(v11, "' failed to satisfy constraint: llvm.fcmp comparison predicate");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::LLVM::FCmpOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t **a3)
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

  **a3 = getI1SameShape((v6[1] & 0xFFFFFFFFFFFFFFF8));
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps15(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v26[25] = *MEMORY[0x277D85DE8];
  v22 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
  {
    goto LABEL_11;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_12;
  }

  v8 = *(*a2 + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v10 = 6;
  if (v9)
  {
    v10 = 2;
  }

  v11 = *&a2[v10];
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v11[2] == 1)
  {
LABEL_11:
    v12 = 1;
  }

  else
  {
LABEL_12:
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    mlir::Operation::emitOpError(a1, v20, &v25);
    if (v25)
    {
      mlir::Diagnostic::operator<<<3ul>(v26, " #");
    }

    v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v25, &v22);
    v14 = v13;
    if (*v13)
    {
      mlir::Diagnostic::operator<<<102ul>((v13 + 1), " must be 1-bit signless integer or LLVM dialect-compatible vector of 1-bit signless integer, but got ");
      if (*v14)
      {
        v23 = 4;
        v24 = a2;
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v23, 1);
        v16 = v14[3] + 24 * *(v14 + 8);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++*(v14 + 8);
      }
    }

    v12 = (v14[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t getI1SameShape(void *a1)
{
  v2 = mlir::IntegerType::get(*(**a1 + 32), 1, 0);
  if (!mlir::LLVM::isCompatibleVectorType(a1))
  {
    return v2;
  }

  VectorNumElements = mlir::LLVM::getVectorNumElements(a1);

  return mlir::LLVM::getVectorType(v2, VectorNumElements, BYTE4(VectorNumElements) & 1);
}

BOOL mlir::LLVM::FDivOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FDivOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::FDivOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v6 = a1;
  v7[0] = &v8;
  v7[1] = a2;
  if (mlir::LLVM::FDivOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8) & 1) != 0) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FMulOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FMulOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::FMulOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v6 = a1;
  v7[0] = &v8;
  v7[1] = a2;
  if (mlir::LLVM::FMulOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FMulOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8) & 1) != 0) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FNegOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FNegOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::FNegOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v6 = a1;
  v7[0] = &v8;
  v7[1] = a2;
  if (!mlir::LLVM::FNegOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FNegOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  if (((*(*a1 + 536))(a1, &v8) & 1) == 0)
  {
    return 0;
  }

  v6 = v8;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7);
  return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
}

BOOL mlir::LLVM::FPExtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FPToSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FPToUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FPTruncOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::FRemOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FRemOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::FRemOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v6 = a1;
  v7[0] = &v8;
  v7[1] = a2;
  if (mlir::LLVM::FRemOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FRemOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8) & 1) != 0) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FSubOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::FSubOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::FSubOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v6 = a1;
  v7[0] = &v8;
  v7[1] = a2;
  if (mlir::LLVM::FSubOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FSubOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v6) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8 = 0, ((*(*a1 + 536))(a1, &v8) & 1) != 0) && (v6 = v8, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7), ((*(*a1 + 728))(a1, v11, v6, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::FenceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v10, "ordering", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "syncscope", 9, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FenceOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::FenceOp::parse(uint64_t a1, uint64_t a2)
{
  v39[9] = *MEMORY[0x277D85DE8];
  v27 = 0;
  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_18;
    }

    v4 = **(*(*a1 + 32))(a1);
    v5 = *(v4 + 528);
    if (!v5)
    {
      v6 = *(v4 + 384);
      *&v30 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
      v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v30);
    }

    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v27, v5))
    {
      goto LABEL_18;
    }

    if (v27)
    {
      v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FenceOpGenericAdaptorBase::Properties>(a2);
      *(v7 + 8) = v27;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v25 = 0;
  v26 = 0;
  v38[0] = v39;
  v38[1] = 0x400000000;
  v39[8] = 4;
  v8 = (*(*a1 + 40))(a1);
  v34 = xmmword_2799BEB20;
  v35 = *&off_2799BEB30;
  v36 = xmmword_2799BEB40;
  v30 = xmmword_2799BEAE0;
  v31 = *&off_2799BEAF0;
  v32 = xmmword_2799BEB00;
  v33 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v25, &v30, 7))
  {
    v9 = v26;
    if (!v26)
    {
      goto LABEL_13;
    }

LABEL_11:
    v10 = mlir::LLVM::symbolizeAtomicOrdering(v25, v9);
    if (v11)
    {
      v12 = v10;
      v13 = (*(*a1 + 32))(a1);
      v14 = mlir::IntegerType::get(*v13, 64, 0);
      v15 = mlir::IntegerAttr::get(v14, v12);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::FenceOpGenericAdaptorBase::Properties>(a2) = v15;
      goto LABEL_13;
    }

    v23[0] = "invalid ";
    v24 = 259;
    (*(*a1 + 24))(&v30, a1, v8, v23);
    if (v30)
    {
      mlir::Diagnostic::operator<<<36ul>(&v30 + 8, "ordering attribute specification: ");
      if (v30)
      {
        v29 = 261;
        v28[0] = v25;
        v28[1] = v26;
        mlir::Diagnostic::operator<<(&v30 + 8, v28);
        if (v30)
        {
          v29 = 264;
          LOBYTE(v28[0]) = 34;
          mlir::Diagnostic::operator<<(&v30 + 8, v28);
        }
      }
    }

    goto LABEL_28;
  }

  v23[0] = 0;
  v18 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v18);
  v20 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v23, NoneType, "ordering", 8, v38);
  if ((v20 & 0x100) == 0)
  {
    v28[0] = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v29 = 259;
    (*(*a1 + 24))(&v30, a1, v8, v28);
LABEL_28:
    v17 = (v37 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
    goto LABEL_30;
  }

  if (v20)
  {
    v9 = *(v23[0] + 24);
    v25 = *(v23[0] + 16);
    v26 = v9;
    if (!v9)
    {
LABEL_13:
      if (v38[0] != v39)
      {
        free(v38[0]);
      }

      v38[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        v16 = *(a2 + 8);
        *&v30 = a1;
        *(&v30 + 1) = v38;
        *&v31 = a2;
        if (mlir::LLVM::FenceOp::verifyInherentAttrs(v16, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::FenceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30))
        {
          v17 = 1;
          goto LABEL_32;
        }
      }

LABEL_18:
      v17 = 0;
      goto LABEL_32;
    }

    goto LABEL_11;
  }

  v17 = 0;
LABEL_30:
  if (v38[0] != v39)
  {
    free(v38[0]);
  }

LABEL_32:
  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t mlir::LLVM::FreezeOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::FreezeOp::parse(uint64_t a1, uint64_t a2)
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

unint64_t mlir::LLVM::GEPOp::getODSOperandIndexAndLength(mlir::LLVM::GEPOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir4LLVM5GEPOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 2) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir4LLVM5GEPOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

BOOL mlir::LLVM::GEPOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(v10, "elem_type", 9, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v13, "inbounds", 8, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v16, "rawConstantIndices", 18, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::GEPOp::getODSOperands(mlir::LLVM::GEPOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::LLVM::GEPOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

BOOL mlir::LLVM::GEPOp::parse(uint64_t *a1, uint64_t a2)
{
  v32[6] = *MEMORY[0x277D85DE8];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  v28[0] = v29;
  v28[1] = 0x400000000;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(a2) + 8) = v4;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  (*(*a1 + 40))(a1);
  v30 = v32;
  v31 = 0xC00000000;
  v27[0] = a1;
  v27[1] = &v30;
  v27[2] = v28;
  v5 = (*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseGEPIndices(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::detail::DenseArrayAttrImpl<int> &)::$_0>, v27, 0, 0);
  v6 = 0;
  if (v5)
  {
    v7 = (*(*a1 + 32))(a1);
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*v7, v30, v31);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(a2) + 16) = v6;
  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v27[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = *(a2 + 8);
  v30 = a1;
  v31 = v27;
  v32[0] = a2;
  if (!mlir::LLVM::GEPOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GEPOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v30))
  {
    goto LABEL_20;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_20;
  }

  v27[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, v27))
  {
    goto LABEL_20;
  }

  v9 = *(v27[0] + 16);
  v11 = *(v27[0] + 8);
  v10 = *(v27[0] + 12);
  v22 = v9;
  v23 = v11;
  if (((*(*a1 + 120))(a1) & 1) != 0 && (v12 = (*(*a1 + 32))(a1), v14 = mlir::NoneType::get(*v12, v13), mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v21, v14)))
  {
    v15 = (v9 + 8 * v11);
    if (v21)
    {
      v16 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::GEPOpGenericAdaptorBase::Properties>(a2);
      *v16 = v21;
    }

    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v15, &v15[8 * v10]);
    v30 = v24;
    v31 = v28;
    v17 = (*(*a1 + 16))(a1);
    v18 = mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v30, &v22, v17, a2 + 16);
  }

  else
  {
LABEL_20:
    v18 = 0;
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v54 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v10 = **a2;
  v11 = *v9;
  v12 = v10 + 32 * (*a2)[1];
  v13 = *v9 + 32 * *(v9 + 2);
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  while (v10 != v12 || v11 != v13 || v51 != v12 || v52 != v13)
  {
    v15 = &unk_286E98310;
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
    v21 = *v20;
    v22 = **a2;
    v23 = v22 + 32 * (*a2)[1];
    v24 = *v20 + 32 * *(v20 + 2);
    v25 = *a3;
    v49 = v22;
    v50 = v21;
    v51 = v23;
    v52 = v24;
    v53 = v25;
    while (v22 != v23 || v21 != v24 || v51 != v23 || v52 != v24)
    {
      v27 = &unk_286E98330;
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

      v31 = &unk_286E98310;
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
      v22 = v49;
      v21 = v50;
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

BOOL mlir::LLVM::GlobalCtorsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(v10, "ctors", 5, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v10 = a1[2];
    if (!v10)
    {
LABEL_14:
      v7 = 1;
      goto LABEL_7;
    }

    v11 = a1[1];
    v12 = 8 * v10;
    while (1)
    {
      v13 = *v11;
      if (!*v11 || *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v13[3])
      {
        break;
      }

      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_14;
      }
    }
  }

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
        mlir::Diagnostic::operator<<<64ul>(v17, "' failed to satisfy constraint: flat symbol ref array attribute");
      }
    }
  }

  v7 = (v17[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v6 = a1[2];
    if (!v6)
    {
LABEL_15:
      v3 = 1;
      goto LABEL_7;
    }

    v7 = a1[1];
    v8 = 8 * v6;
    while (1)
    {
      v9 = *v7;
      if (!*v7)
      {
        break;
      }

      if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        break;
      }

      v10 = v9[1];
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v10[2] != 32)
      {
        break;
      }

      ++v7;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  a2(&v13, a3);
  if (v13)
  {
    mlir::Diagnostic::operator<<<12ul>(v14, "attribute '");
    if (v13)
    {
      v12 = 261;
      v11[0] = "priorities";
      v11[1] = 10;
      mlir::Diagnostic::operator<<(v14, v11);
      if (v13)
      {
        mlir::Diagnostic::operator<<<63ul>(v14, "' failed to satisfy constraint: 32-bit integer array attribute");
      }
    }
  }

  v3 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::GlobalCtorsOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = (*(*a1 + 40))(a1);
  result = 0;
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v4 = *(a2 + 8);
    v6[0] = a1;
    v6[1] = &v7;
    v6[2] = a2;
    if (mlir::LLVM::GlobalCtorsOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GlobalCtorsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v6))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::GlobalDtorsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps27(v10, "dtors", 5, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps28(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::GlobalDtorsOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = (*(*a1 + 40))(a1);
  result = 0;
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v4 = *(a2 + 8);
    v6[0] = a1;
    v6[1] = &v7;
    v6[2] = a2;
    if (mlir::LLVM::GlobalDtorsOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::GlobalDtorsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v6))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps29(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_7;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_9;
  }

  v3 = *(a1 + 8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3[2] != 32)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 24);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  if (((*(a1 + 16) >> (v4 - 1)) & 1) == 0)
  {
LABEL_7:
    v5 = 1;
  }

  else
  {
LABEL_9:
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "addr_space";
        v8[1] = 10;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<94ul>(v11, "' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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
        v6[0] = "comdat";
        v6[1] = 6;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<59ul>(v9, "' failed to satisfy constraint: symbol reference attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps31(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::DIGlobalVariableExpressionAttr,void>::id)
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
      v9[0] = "dbg_exprs";
      v9[1] = 9;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<65ul>(v12, "' failed to satisfy constraint: an array of variable expressions");
      }
    }
  }

  v3 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::SymbolRefAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
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
        llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolRefAttr>();
        unk_27FC18830 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name;
        v16 = unk_27FC18830;
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

uint64_t mlir::LLVM::GlobalOp::populateDefaultProperties(uint64_t result, uint64_t *a2)
{
  v3 = *(***(result + 8) + 32);
  if (!*a2)
  {
    v4 = mlir::IntegerType::get(*(***(result + 8) + 32), 32, 0);
    result = mlir::Builder::getIntegerAttr(v6, v4, 0);
    *a2 = result;
  }

  if (!a2[14])
  {
    v5 = mlir::IntegerType::get(v3, 64, 0);
    result = mlir::IntegerAttr::get(v5, 0);
    a2[14] = result;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::ICmpPredicateAttr::classof(a1))
  {
    v5 = 1;
  }

  else
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "predicate";
        v8[1] = 9;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<62ul>(v11, "' failed to satisfy constraint: lvm.icmp comparison predicate");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::LLVM::ICmpOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t **a3)
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

  **a3 = getI1SameShape((v6[1] & 0xFFFFFFFFFFFFFFF8));
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps17(mlir::Operation *a1, char *a2, unsigned int a3)
{
  v32[25] = *MEMORY[0x277D85DE8];
  v27 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(a2 + 2) >> 30))
  {
    goto LABEL_29;
  }

  isCompatibleVectorType = mlir::LLVM::isCompatibleVectorType(a2);
  v6 = *(*a2 + 136);
  if (isCompatibleVectorType)
  {
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v8 = 24;
    if (v7)
    {
      v8 = 8;
    }

    v9 = *&a2[v8];
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v9[2] >> 30)
      {
        v22 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        goto LABEL_11;
      }

LABEL_29:
      v21 = 1;
      goto LABEL_30;
    }
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    goto LABEL_29;
  }

LABEL_11:
  if (mlir::LLVM::isCompatibleVectorType(a2))
  {
    v10 = *(*a2 + 136);
    v11 = v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v12 = 24;
    if (v11)
    {
      v12 = 8;
    }

    if (*(**&a2[v12] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
    {
      goto LABEL_29;
    }
  }

  v26 = 261;
  v25[0] = "operand";
  v25[1] = 7;
  mlir::Operation::emitOpError(a1, v25, &v31);
  if (v31)
  {
    mlir::Diagnostic::operator<<<3ul>(v32, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v31, &v27);
  v14 = v13;
  if (*v13)
  {
    v28 = 3;
    v29 = " must be signless integer or LLVM dialect-compatible vector of signless integer or LLVM pointer type or LLVM dialect-compatible vector of LLVM pointer type, but got ";
    v30 = 165;
    v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v28, 1);
    v16 = v14[3] + 24 * *(v14 + 8);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 16);
    *v16 = v17;
    ++*(v14 + 8);
    if (*v14)
    {
      v28 = 4;
      v29 = a2;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v28, 1);
      v19 = v14[3] + 24 * *(v14 + 8);
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++*(v14 + 8);
    }
  }

  v21 = (v14[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
LABEL_30:
  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL mlir::LLVM::InlineAsmOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  if (v9)
  {
    v10 = v8[1];
    if (v10)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(v10, a3, a4))
      {
        return 0;
      }
    }
  }

  v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
  if (v12)
  {
    v13 = v11[1];
    if (v13)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "asm_string", 10, a3, a4))
      {
        return 0;
      }
    }
  }

  v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
  if (v15)
  {
    v16 = v14[1];
    if (v16)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v16, "constraints", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
  if (v18)
  {
    v19 = v17[1];
    if (v19)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v19, "has_side_effects", 16, a3, a4))
      {
        return 0;
      }
    }
  }

  v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
  if (v21)
  {
    v22 = v20[1];
    if (v22)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v22, "is_align_stack", 14, a3, a4))
      {
        return 0;
      }
    }
  }

  v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
  return (v24 & 1) == 0 || (v25 = v23[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v25, "operand_attrs", 13, a3, a4);
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && !mlir::LLVM::AsmDialectAttr::classof(a1))
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "asm_dialect";
        v8[1] = 11;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<65ul>(v11, "' failed to satisfy constraint: ATT (0) or Intel (1) asm dialect");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  else
  {
    v5 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::InlineAsmOp::parse(uint64_t a1, uint64_t a2)
{
  v52[16] = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v51[0] = v52;
  v51[1] = 0x400000000;
  v39 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2) + 24) = v4;
  }

  if ((*(*a1 + 408))(a1, "is_align_stack", 14))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2) + 32) = v5;
  }

  if (((*(*a1 + 408))(a1, "asm_dialect", 11) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_37;
  }

  v37 = 0;
  v38 = 0;
  v49[0] = v50;
  v49[1] = 0x400000000;
  v50[8] = 4;
  v6 = (*(*a1 + 40))(a1);
  v46 = xmmword_2799BEAC0;
  v47 = *&off_2799BEAD0;
  if ((*(*a1 + 424))(a1, &v37, &v46, 2))
  {
    v7 = v38;
    if (!v38)
    {
      goto LABEL_11;
    }

LABEL_9:
    v8 = mlir::LLVM::symbolizeAsmDialect(v37, v7);
    if (v9)
    {
      v10 = v8;
      v11 = (*(*a1 + 32))(a1);
      v12 = mlir::IntegerType::get(*v11, 64, 0);
      v13 = mlir::IntegerAttr::get(v12, v10);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2) = v13;
      goto LABEL_11;
    }

    v35[0] = "invalid ";
    v36 = 259;
    (*(*a1 + 24))(&v46, a1, v6, v35);
    if (v46)
    {
      mlir::Diagnostic::operator<<<39ul>(&v46 + 8, "asm_dialect attribute specification: ");
      if (v46)
      {
        v45 = 261;
        v44[0] = v37;
        v44[1] = v38;
        mlir::Diagnostic::operator<<(&v46 + 8, v44);
        if (v46)
        {
          v45 = 264;
          LOBYTE(v44[0]) = 34;
          mlir::Diagnostic::operator<<(&v46 + 8, v44);
        }
      }
    }

    goto LABEL_50;
  }

  v35[0] = 0;
  v32 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v32);
  v34 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v35, NoneType, "asm_dialect", 11, v49);
  if ((v34 & 0x100) == 0)
  {
    v44[0] = "expected string or keyword containing one of the following enum values for attribute 'asm_dialect' [att, intel]";
    v45 = 259;
    (*(*a1 + 24))(&v46, a1, v6, v44);
LABEL_50:
    v29 = (v48 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    goto LABEL_52;
  }

  if (v34)
  {
    v7 = *(v35[0] + 24);
    v37 = *(v35[0] + 16);
    v38 = v7;
    if (!v7)
    {
LABEL_11:
      if (v49[0] != v50)
      {
        free(v49[0]);
      }

LABEL_13:
      if (((*(*a1 + 408))(a1, "operand_attrs", 13) & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((*(*a1 + 136))(a1))
      {
        v14 = **(*(*a1 + 32))(a1);
        v15 = *(v14 + 528);
        if (!v15)
        {
          v16 = *(v14 + 384);
          *&v46 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
          v15 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v16 + 232), &v46);
        }

        if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v43, v15))
        {
          if (v43)
          {
            v17 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
            *(v17 + 40) = v43;
          }

LABEL_20:
          v49[0] = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v18 = *(a2 + 8);
            *&v46 = a1;
            *(&v46 + 1) = v49;
            *&v47 = a2;
            if (mlir::LLVM::InlineAsmOp::verifyInherentAttrs(v18, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InlineAsmOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v46))
            {
              v19 = **(*(*a1 + 32))(a1);
              v20 = *(v19 + 528);
              if (!v20)
              {
                v21 = *(v19 + 384);
                *&v46 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
                v20 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v21 + 232), &v46);
              }

              if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v42, v20))
              {
                if (v42)
                {
                  v22 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
                  *(v22 + 8) = v42;
                }

                if ((*(*a1 + 120))(a1))
                {
                  v23 = **(*(*a1 + 32))(a1);
                  v24 = *(v23 + 528);
                  if (!v24)
                  {
                    v25 = *(v23 + 384);
                    *&v46 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
                    v24 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v25 + 232), &v46);
                  }

                  if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v41, v24))
                  {
                    if (v41)
                    {
                      v26 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
                      *(v26 + 16) = v41;
                    }

                    v27 = (*(*a1 + 40))(a1);
                    if ((*(*a1 + 720))(a1, v51, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 104))(a1))
                    {
                      *&v46 = 0;
                      if (mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v46))
                      {
                        v28 = *(v46 + 8);
                        v39 = *(v46 + 16);
                        v40 = v28;
                        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v39 + 8 * v28), (v39 + 8 * v28 + 8 * *(v46 + 12)));
                        v29 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v51, &v39, v27, a2 + 16);
                        goto LABEL_38;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_37:
      v29 = 0;
      goto LABEL_38;
    }

    goto LABEL_9;
  }

  v29 = 0;
LABEL_52:
  if (v49[0] != v50)
  {
    free(v49[0]);
  }

LABEL_38:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t mlir::LLVM::InsertElementOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps18(mlir::Operation *a1, uint64_t a2)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 1;
  if (!mlir::LLVM::isCompatibleOuterType(a2) || (v4 = *(*a2 + 136), v4 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID()) || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
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
      mlir::Diagnostic::operator<<<39ul>((v6 + 1), " must be primitive LLVM type, but got ");
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

  else
  {
    v5 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::InsertElementOp::parse(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23[0] = v24;
  v23[1] = 1;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  v18[1] = 1;
  v19 = 0;
  __src = 0;
  v18[0] = &v19;
  v16[0] = &__src;
  v16[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v24, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v28))
  {
    goto LABEL_21;
  }

  v19 = v28;
  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = 0;
  if (((*(*a1 + 536))(a1, &v28) & 1) == 0)
  {
    goto LABEL_21;
  }

  __src = v28;
  v15 = v28;
  if (mlir::LLVM::isCompatibleVectorType(v28))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v18);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v23, v16, v4, a2 + 16))
    {
      v6 = *(**v16[0] + 136);
      v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
      v8 = 24;
      if (v7)
      {
        v8 = 8;
      }

      if ((*(*a1 + 728))(a1, v26, *(*v16[0] + v8), a2 + 16))
      {
        v9 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v20, v18, v5, a2 + 16);
        goto LABEL_22;
      }
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v12 = (*(*a1 + 16))(a1);
  v14 = 257;
  (*(*a1 + 24))(&v28, a1, v12, v13);
  if (v28)
  {
    mlir::Diagnostic::operator<<<63ul>(v29, "'vector' must be LLVM dialect-compatible vector type, but got ");
    if (v28)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v29, &v15);
    }
  }

  v9 = (v29[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
LABEL_22:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::LLVM::InsertValueOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InsertValueOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::InsertValueOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::InsertValueOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v16[0] = v17;
  v16[1] = 1;
  __src = 0;
  v15 = 0;
  v13[0] = &__src;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v17, 1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v15, 0))
  {
    return 0;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InsertValueOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a2;
  if (mlir::LLVM::InsertValueOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::InsertValueOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9[0] = 0, ((*(*a1 + 536))(a1, v9) & 1) != 0) && (__src = v9[0], parseInsertExtractValueElementType(a1, &v12, v9[0], v15)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v15), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v13, v5, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v11, v4, a2 + 16);
  }

  else
  {
    return 0;
  }
}

void mlir::LLVM::IntToPtrOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::LLVM::IntToPtrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

uint64_t mlir::LLVM::InvokeOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 4uLL);
}

uint64_t mlir::LLVM::InvokeOp::getODSOperands(mlir::LLVM::InvokeOp *this, unsigned int a2)
{
  LODWORD(v2) = 0;
  v3 = *(this + 11);
  v4 = (this + 16 * ((v3 >> 23) & 1) + 128);
  v5 = a2;
  do
  {
    v6 = *v4++;
    v2 = (v6 + v2);
    --v5;
  }

  while (v5);
  v7 = *(this + 4 * ((v3 >> 23) & 1) + a2 + 32);
  if ((v3 & 0x800000) != 0)
  {
    v8 = *(this + 9);
  }

  else
  {
    v8 = 0;
  }

  return v8 + 32 * v2;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 1)
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
          mlir::Diagnostic::operator<<<47ul>(v14, "' failed to satisfy constraint: BOOL attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
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
        v6[0] = "frame_pointer";
        v6[1] = 13;
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
        v7[0] = "intel_reqd_sub_group_size";
        v7[1] = 25;
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
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
        v6[0] = "target_features";
        v6[1] = 15;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<63ul>(v9, "' failed to satisfy constraint: LLVM target features attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
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
        v6[0] = "vec_type_hint";
        v6[1] = 13;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<69ul>(v9, "' failed to satisfy constraint: Explicit vectorization compiler hint");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
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
        v6[0] = "vscale_range";
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FramePointerKindAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC21138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21138))
      {
        qword_27FC21128 = llvm::detail::getTypeNameImpl<mlir::LLVM::FramePointerKindAttr>();
        unk_27FC21130 = v12;
        __cxa_guard_release(&qword_27FC21138);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC21128;
        v16 = unk_27FC21130;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::LinkageAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC20B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20B88))
      {
        qword_27FC20B78 = llvm::detail::getTypeNameImpl<mlir::LLVM::LinkageAttr>();
        unk_27FC20B80 = v12;
        __cxa_guard_release(&qword_27FC20B88);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC20B78;
        v16 = unk_27FC20B80;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::TargetFeaturesAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC21150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21150))
      {
        qword_27FC21140 = llvm::detail::getTypeNameImpl<mlir::LLVM::TargetFeaturesAttr>();
        *algn_27FC21148 = v12;
        __cxa_guard_release(&qword_27FC21150);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC21140;
        v16 = *algn_27FC21148;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VecTypeHintAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC21168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21168))
      {
        qword_27FC21158 = llvm::detail::getTypeNameImpl<mlir::LLVM::VecTypeHintAttr>();
        unk_27FC21160 = v12;
        __cxa_guard_release(&qword_27FC21168);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC21158;
        v16 = unk_27FC21160;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VScaleRangeAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC21180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21180))
      {
        qword_27FC21170 = llvm::detail::getTypeNameImpl<mlir::LLVM::VScaleRangeAttr>();
        *algn_27FC21178 = v12;
        __cxa_guard_release(&qword_27FC21180);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC21170;
        v16 = *algn_27FC21178;
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

uint64_t mlir::LLVM::LLVMFuncOp::populateDefaultProperties(uint64_t result, uint64_t *a2)
{
  v3 = *(***(result + 8) + 32);
  if (!a2[24])
  {
    result = mlir::LLVM::LinkageAttr::get(*(***(result + 8) + 32), 0);
    a2[24] = result;
  }

  if (!*a2)
  {
    result = mlir::LLVM::CConvAttr::get(v3, 0);
    *a2 = result;
  }

  if (!a2[45])
  {
    v4 = mlir::IntegerType::get(v3, 64, 0);
    result = mlir::IntegerAttr::get(v4, 0);
    a2[45] = result;
  }

  return result;
}

BOOL mlir::LLVM::LShrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "isExact", 7, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LShrOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::LShrOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

void mlir::LLVM::LShrOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4, int a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v22, 0, &v22, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v21, 0, &v21, 1);
  if (a5)
  {
    v8 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LShrOpGenericAdaptorBase::Properties>(a2) = v8;
  }

  __src = v25;
  v24 = 0x200000000;
  v9 = *(a2 + 2);
  v10 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::LShrOp::inferReturnTypes(Dictionary, v12, v13, v9 & 0xFFFFFFFFFFFFFFF9, v10, v14, v15, v16, v19, v20, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v17);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v24);
  if (__src != v25)
  {
    free(__src);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::LLVM::LShrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LShrOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (mlir::LLVM::LShrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LShrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7) & 1) != 0) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::LinkerOptionsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps40(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
      v9[0] = "options";
      v9[1] = 7;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LinkerOptionsOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::LinkerOptionsOp::parse(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v12, v5))
  {
    return 0;
  }

  if (v12)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LinkerOptionsOpGenericAdaptorBase::Properties>(a2);
    *v7 = v12;
  }

  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v8 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::LinkerOptionsOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LinkerOptionsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::LoadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  if (v9)
  {
    v10 = v8[1];
    if (v10)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v10, a3, a4))
      {
        return 0;
      }
    }
  }

  v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
  if (v12)
  {
    v13 = v11[1];
    if (v13)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v13, "alias_scopes", 12, a3, a4))
      {
        return 0;
      }
    }
  }

  v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
  if (v15)
  {
    v16 = v14[1];
    if (v16)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v16, "alignment", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
  if (v18)
  {
    v19 = v17[1];
    if (v19)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v19, "invariant", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
  if (v21)
  {
    v22 = v20[1];
    if (v22)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v22, "invariantGroup", 14, a3, a4))
      {
        return 0;
      }
    }
  }

  v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
  if (v24)
  {
    v25 = v23[1];
    if (v25)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v25, "noalias_scopes", 14, a3, a4))
      {
        return 0;
      }
    }
  }

  v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
  if (v27)
  {
    v28 = v26[1];
    if (v28)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v28, "nontemporal", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
  if (v30)
  {
    v31 = v29[1];
    if (v31)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v31, "ordering", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  v32 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 64));
  if (v33)
  {
    v34 = v32[1];
    if (v34)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v34, "syncscope", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v35 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 72));
  if (v36)
  {
    v37 = v35[1];
    if (v37)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v37, a3, a4))
      {
        return 0;
      }
    }
  }

  v38 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 80));
  return (v39 & 1) == 0 || (v40 = v38[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v40, "volatile_", 9, a3, a4);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::AtomicOrderingAttr>(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ((*(*a1 + 56))(a1, &v15))
  {
    v4 = v15;
    if (v15 && ((v5 = mlir::LLVM::AtomicOrderingAttr::classof(v15)) == 0 ? (v6 = 0) : (v6 = v4), *a2 = v6, (v5 & 1) == 0))
    {
      v14[16] = 257;
      (*(*a1 + 16))(&v19, a1, v14);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC20C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20C20))
      {
        qword_27FC20C10 = llvm::detail::getTypeNameImpl<mlir::LLVM::AtomicOrderingAttr>();
        *algn_27FC20C18 = v13;
        __cxa_guard_release(&qword_27FC20C20);
      }

      if (v19)
      {
        v18 = 261;
        v16 = qword_27FC20C10;
        v17 = *algn_27FC20C18;
        mlir::Diagnostic::operator<<(v20, &v16);
        if (v19)
        {
          mlir::Diagnostic::operator<<<12ul>(v20, ", but got: ");
          if (v19)
          {
            LODWORD(v16) = 0;
            v17 = v15;
            v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v16, 1);
            v9 = v21 + 24 * v22;
            v10 = *v8;
            *(v9 + 16) = *(v8 + 16);
            *v9 = v10;
            ++v22;
          }
        }
      }

      v7 = (v23 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::LoadOp::populateDefaultProperties(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v3 = mlir::IntegerType::get(*(***(result + 8) + 32), 64, 0);
    result = mlir::IntegerAttr::get(v3, 0);
    *(a2 + 56) = result;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps19(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[25] = *MEMORY[0x277D85DE8];
  v24 = 0;
  isCompatibleOuterType = mlir::LLVM::isCompatibleOuterType(a2);
  v9 = *a2;
  if (isCompatibleOuterType)
  {
    v10 = *(v9 + 136);
    v11 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID();
    v9 = *a2;
    if (v10 != v11)
    {
      v12 = *(v9 + 136);
      if (v12 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
      {
        if (v12 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
        {
          if ((*(a2 + 24) & 1) == 0 || (*(a2 + 28) & 5) == 4)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (v12 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
          {
            goto LABEL_11;
          }

          v27 = a2;
          if (mlir::LLVM::LLVMTargetExtType::supportsMemOps(&v27))
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  v13 = mlir::detail::TypeIDResolver<mlir::LLVM::PointerElementTypeInterface,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v13))
  {
LABEL_11:
    v14 = 1;
    goto LABEL_18;
  }

  v23 = 261;
  v22[0] = a3;
  v22[1] = a4;
  mlir::Operation::emitOpError(a1, v22, &v27);
  if (v27)
  {
    mlir::Diagnostic::operator<<<3ul>(v28, " #");
  }

  v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v24);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<39ul>((v15 + 1), " must be LLVM type with size, but got ");
    if (*v16)
    {
      v25 = 4;
      v26 = a2;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v16 + 3), &v25, 1);
      v18 = v16[3] + 24 * *(v16 + 8);
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++*(v16 + 8);
    }
  }

  v14 = (v16[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL mlir::LLVM::LoadOp::parse(uint64_t a1, uint64_t a2)
{
  v49[9] = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v35[0] = v36;
  v35[1] = 1;
  v33 = 0;
  v34 = 0;
  v32[0] = &v33;
  v32[1] = 1;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 80) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v36, 1) & 1) == 0)
  {
    goto LABEL_30;
  }

  if (((*(*a1 + 408))(a1, "atomic", 6) & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_30;
    }

    v6 = **(*(*a1 + 32))(a1);
    v7 = *(v6 + 528);
    if (!v7)
    {
      v8 = *(v6 + 384);
      *&v40 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
      v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), &v40);
    }

    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v34, v7))
    {
      goto LABEL_30;
    }

    if (v34)
    {
      v9 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2);
      *(v9 + 64) = v34;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v29 = 0;
  v30 = 0;
  v48[0] = v49;
  v48[1] = 0x400000000;
  v49[8] = 4;
  v10 = (*(*a1 + 40))(a1);
  v44 = xmmword_2799BEB20;
  v45 = *&off_2799BEB30;
  v46 = xmmword_2799BEB40;
  v40 = xmmword_2799BEAE0;
  v41 = *&off_2799BEAF0;
  v42 = xmmword_2799BEB00;
  v43 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v29, &v40, 7))
  {
    v11 = v30;
    if (!v30)
    {
      goto LABEL_17;
    }

LABEL_15:
    v12 = mlir::LLVM::symbolizeAtomicOrdering(v29, v11);
    if (v13)
    {
      v14 = v12;
      v15 = (*(*a1 + 32))(a1);
      v16 = mlir::IntegerType::get(*v15, 64, 0);
      v17 = mlir::IntegerAttr::get(v16, v14);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 56) = v17;
      goto LABEL_17;
    }

    v27[0] = "invalid ";
    v28 = 259;
    (*(*a1 + 24))(&v40, a1, v10, v27);
    if (v40)
    {
      mlir::Diagnostic::operator<<<36ul>(&v40 + 8, "ordering attribute specification: ");
      if (v40)
      {
        v39 = 261;
        v38[0] = v29;
        v38[1] = v30;
        mlir::Diagnostic::operator<<(&v40 + 8, v38);
        if (v40)
        {
          v39 = 264;
          LOBYTE(v38[0]) = 34;
          mlir::Diagnostic::operator<<(&v40 + 8, v38);
        }
      }
    }

    goto LABEL_41;
  }

  v27[0] = 0;
  v24 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v24);
  v26 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v27, NoneType, "ordering", 8, v48);
  if ((v26 & 0x100) == 0)
  {
    v38[0] = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v39 = 259;
    (*(*a1 + 24))(&v40, a1, v10, v38);
LABEL_41:
    v21 = (v47 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    goto LABEL_43;
  }

  if (v26)
  {
    v11 = *(v27[0] + 24);
    v29 = *(v27[0] + 16);
    v30 = v11;
    if (!v11)
    {
LABEL_17:
      if (v48[0] != v49)
      {
        free(v48[0]);
      }

LABEL_19:
      if ((*(*a1 + 408))(a1, "invariant", 9))
      {
        v18 = *(**(*(*a1 + 32))(a1) + 608);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 24) = v18;
      }

      if ((*(*a1 + 408))(a1, "invariant_group", 15))
      {
        v19 = *(**(*(*a1 + 32))(a1) + 608);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 32) = v19;
      }

      v48[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        v20 = *(a2 + 8);
        *&v40 = a1;
        *(&v40 + 1) = v48;
        *&v41 = a2;
        if (mlir::LLVM::LoadOp::verifyInherentAttrs(v20, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::LoadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v40) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v33) & 1) != 0 && ((*(*a1 + 56))(a1) & 1) != 0)
        {
          *&v40 = 0;
          if ((*(*a1 + 536))(a1, &v40))
          {
            __src = v40;
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v32);
            v21 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v35, v32, v5, a2 + 16);
            goto LABEL_31;
          }
        }
      }

LABEL_30:
      v21 = 0;
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  v21 = 0;
LABEL_43:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

LABEL_31:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MulOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::MulOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::MulOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::MulOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void *mlir::LLVM::NoneTokenOp::inferReturnTypes(uint64_t a1, void **a2)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a2, 1uLL);
  v4 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID();
  v5 = *(*a1 + 384);
  v7 = v4;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &v7);
  **a2 = *result;
  return result;
}

uint64_t mlir::LLVM::NoneTokenOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::OrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "isDisjoint", 10, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::OrOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::OrOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

void mlir::LLVM::OrOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4, int a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v22, 0, &v22, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v21, 0, &v21, 1);
  if (a5)
  {
    v8 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::OrOpGenericAdaptorBase::Properties>(a2) = v8;
  }

  __src = v25;
  v24 = 0x200000000;
  v9 = *(a2 + 2);
  v10 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::OrOp::inferReturnTypes(Dictionary, v12, v13, v9 & 0xFFFFFFFFFFFFFFF9, v10, v14, v15, v16, v19, v20, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v17);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v24);
  if (__src != v25)
  {
    free(__src);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::LLVM::OrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::OrOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (mlir::LLVM::OrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::OrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7) & 1) != 0) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::LLVM::PoisonOp::parse(uint64_t a1, uint64_t a2)
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

void mlir::LLVM::PtrToIntOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::LLVM::PtrToIntOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::ResumeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  v8 = v6;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::ReturnOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x400000000;
  v14[0] = &v15;
  v14[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = (*(*a1 + 40))(a1);
  memset(v13, 0, 24);
  v5 = (*(*a1 + 712))(a1, v13, 1);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    v6 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v16, v13, 1);
    v7 = v16 + 32 * v17;
    v8 = v6[1];
    *v7 = *v6;
    v7[1] = v8;
    LODWORD(v17) = v17 + 1;
    if (!v17)
    {
LABEL_11:
      v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v16, v14, v4, a2 + 16);
      goto LABEL_13;
    }
  }

  else if (!v17)
  {
    goto LABEL_11;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_12;
  }

  v13[0] = 0;
  v9 = (*(*a1 + 552))(a1, v13);
  if ((v9 & 0x100) == 0)
  {
    goto LABEL_11;
  }

  if (v9)
  {
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v14, v13[0]);
    goto LABEL_11;
  }

LABEL_12:
  v10 = 0;
LABEL_13:
  if (v14[0] != &v15)
  {
    free(v14[0]);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::LLVM::SDivOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "isExact", 7, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::SDivOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::SDivOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SDivOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (mlir::LLVM::SDivOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7) & 1) != 0) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::SExtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

BOOL mlir::LLVM::SIToFPOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
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

  __src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

uint64_t mlir::LLVM::SRemOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::SRemOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::SelectOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::LLVM::SelectOp::inferReturnTypes(uint64_t a1, unint64_t a2, unint64_t **a3)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (a2 >= 3)
  {
    **a3 = *(mlir::ValueRange::dereference_iterator(v7, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
    result = 1;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::SelectOp::parse(uint64_t a1, uint64_t *a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v17[0] = v18;
  v17[1] = 0x400000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v17, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = a2[1];
  v9 = a1;
  v10 = &v16;
  p_src = a2;
  if (mlir::LLVM::SelectOp::verifyInherentAttrs(v5, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SelectOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v9) && ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, ((*(*a1 + 536))(a1, &v9) & 1) != 0) && (v16 = v9, ((*(*a1 + 120))(a1) & 1) != 0) && (v9 = 0, ((*(*a1 + 536))(a1, &v9) & 1) != 0))
  {
    __src = v9;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 8), &__src, &v16);
    v9 = &v16;
    v10 = 1;
    p_src = &__src;
    v12 = 1;
    v13 = &__src;
    v14 = 1;
    v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(a1, v17, &v9, v4, (a2 + 2));
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::detail::concat_range<mlir::Type const,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v53 = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 2);
  v12 = *a3;
  v13 = *a3 + 8 * a3[1];
  v14 = a3[2];
  v15 = v14 + 8 * a3[3];
  v16 = a3[4];
  v17 = v16 + 8 * a3[5];
  v42 = v11;
  v43 = v12;
  v44 = v14;
  v45 = v16;
  v46 = v13;
  v47 = v15;
  v48 = v17;
  while (1)
  {
    if (v12 == v13 && v14 == v15 && v16 == v17)
    {
      v18 = v46 == v13 && v47 == v15;
      if (v18 && v48 == v17)
      {
        break;
      }
    }

    ++v10;
    llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::increment<0ul,1ul,2ul>(&v43);
    v12 = v43;
    v14 = v44;
    v16 = v45;
  }

  v41 = v10;
  if (v11 == v10)
  {
    v20 = *a2;
    v21 = *a3;
    v22 = *a3 + 8 * a3[1];
    v23 = a3[2];
    v24 = v23 + 8 * a3[3];
    v25 = a3[4];
    v26 = v25 + 8 * a3[5];
    v43 = *a2;
    v44 = v21;
    v45 = v23;
    v46 = v25;
    v47 = v22;
    v48 = v24;
    v49 = v26;
    v27 = *(a2 + 2);
    if (v27)
    {
      v28 = v20 + 32 * v27;
      while (1)
      {
        v29 = 0;
        v52 = 0;
        v50[3] = 0;
        v50[1] = 0;
        v50[0] = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<0ul>;
        v50[2] = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<1ul>;
        v51 = llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::getHelper<2ul>;
        do
        {
          v30 = v50[v29];
          v31 = v50[v29 + 1];
          v32 = (&v44 + (v31 >> 1));
          if (v31)
          {
            v30 = *(*v32 + v30);
          }

          v33 = v30(v32);
          v29 += 2;
        }

        while (!v33);
        if (((*(*a1 + 728))(a1, v20, *v33, a5) & 1) == 0)
        {
          break;
        }

        v43 += 32;
        llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*,mlir::Type const*>::increment<0ul,1ul,2ul>(&v44);
        v20 = v43;
        if (v43 == v28)
        {
          goto LABEL_22;
        }
      }

      v34 = 0;
    }

    else
    {
LABEL_22:
      v34 = 1;
    }
  }

  else
  {
    LOWORD(v51) = 257;
    (*(*a1 + 24))(&v43, a1, a4, v50);
    if (v43)
    {
      mlir::Diagnostic::operator<<<48ul>(&v44, "number of operands and types do not match: got ");
    }

    v35 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v43, &v42);
    v36 = v35;
    if (*v35)
    {
      mlir::Diagnostic::operator<<<15ul>((v35 + 1), " operands and ");
    }

    v37 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v36, &v41);
    v38 = v37;
    if (*v37)
    {
      mlir::Diagnostic::operator<<<7ul>((v37 + 1), " types");
    }

    v34 = (v38[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::LLVM::ShlOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4, int a5)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v20, 0, &v20, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v19, 0, &v19, 1);
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>(a2) = a5;
  __src = v23;
  v22 = 0x200000000;
  v7 = *(a2 + 2);
  v8 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::ShlOp::inferReturnTypes(Dictionary, v10, v11, v7 & 0xFFFFFFFFFFFFFFF9, v8, v12, v13, v14, v17, v18, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v15);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v22);
  if (__src != v23)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::LLVM::ShlOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

uint64_t mlir::LLVM::ShlOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShlOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::ShuffleVectorOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v8, "mask", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::ShuffleVectorOp::parse(void *a1, void *a2)
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
  __src = 0;
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
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v13))
  {
    return 0;
  }

  v5 = v13;
  if (v13)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ShuffleVectorOpGenericAdaptorBase::Properties>(a2) = v5;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v6 = a2[1];
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a2;
  if (mlir::LLVM::ShuffleVectorOp::verifyInherentAttrs(v6, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ShuffleVectorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v8) && ((*(*a1 + 104))(a1) & 1) != 0 && (v8[0] = 0, ((*(*a1 + 536))(a1, v8) & 1) != 0) && (v12 = v8[0], parseShuffleType(a1, v8[0], &__src, v5)) && (llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 8), &__src, v11), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v16, v11, v4, (a2 + 2))))
  {
    return (*(*a1 + 728))(a1, v14, *v11[0], a2 + 2) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL parseShuffleType(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::isCompatibleVectorType(a2))
  {
    v8 = *(*a2 + 136);
    v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v10 = 3;
    if (v9)
    {
      v10 = 1;
    }

    v11 = a2[v10];
    v12 = *(a4 + 16);
    isScalableVectorType = mlir::LLVM::isScalableVectorType(a2);
    *a3 = mlir::LLVM::getVectorType(v11, v12, isScalableVectorType);
    v14 = 1;
  }

  else
  {
    v15 = (*(*a1 + 40))(a1);
    v18 = "expected an LLVM compatible vector type";
    v19 = 259;
    (*(*a1 + 24))(v20, a1, v15, &v18);
    v14 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL mlir::LLVM::StoreOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  if (v9)
  {
    v10 = v8[1];
    if (v10)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v10, a3, a4))
      {
        return 0;
      }
    }
  }

  v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
  if (v12)
  {
    v13 = v11[1];
    if (v13)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v13, "alias_scopes", 12, a3, a4))
      {
        return 0;
      }
    }
  }

  v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
  if (v15)
  {
    v16 = v14[1];
    if (v16)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v16, "alignment", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
  if (v18)
  {
    v19 = v17[1];
    if (v19)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v19, "invariantGroup", 14, a3, a4))
      {
        return 0;
      }
    }
  }

  v20 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 32));
  if (v21)
  {
    v22 = v20[1];
    if (v22)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v22, "noalias_scopes", 14, a3, a4))
      {
        return 0;
      }
    }
  }

  v23 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 40));
  if (v24)
  {
    v25 = v23[1];
    if (v25)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v25, "nontemporal", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 48));
  if (v27)
  {
    v28 = v26[1];
    if (v28)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v28, "ordering", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  v29 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 56));
  if (v30)
  {
    v31 = v29[1];
    if (v31)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v31, "syncscope", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v32 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 64));
  if (v33)
  {
    v34 = v32[1];
    if (v34)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v34, a3, a4))
      {
        return 0;
      }
    }
  }

  v35 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 72));
  return (v36 & 1) == 0 || (v37 = v35[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v37, "volatile_", 9, a3, a4);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::StoreOp::populateDefaultProperties(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 48))
  {
    v3 = mlir::IntegerType::get(*(***(result + 8) + 32), 64, 0);
    result = mlir::IntegerAttr::get(v3, 0);
    *(a2 + 48) = result;
  }

  return result;
}

BOOL mlir::LLVM::StoreOp::parse(uint64_t a1, uint64_t a2)
{
  v52[9] = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v38[0] = v39;
  v38[1] = 1;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v35[0] = v36;
  v35[1] = 1;
  v33 = 0;
  v34 = 0;
  v32[0] = &v33;
  v32[1] = 1;
  v30[1] = 1;
  v31 = 0;
  v30[0] = &v31;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 72) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v39, 1) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_29;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v36, 1) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (((*(*a1 + 408))(a1, "atomic", 6) & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_29;
    }

    v7 = (*(*a1 + 32))(a1);
    v9 = mlir::NoneType::get(*v7, v8);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v34, v9))
    {
      goto LABEL_29;
    }

    if (v34)
    {
      v10 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
      *(v10 + 56) = v34;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v28 = 0;
  v29 = 0;
  v51[0] = v52;
  v51[1] = 0x400000000;
  v52[8] = 4;
  v11 = (*(*a1 + 40))(a1);
  v47 = xmmword_2799BEB20;
  v48 = *&off_2799BEB30;
  v49 = xmmword_2799BEB40;
  v43 = xmmword_2799BEAE0;
  v44 = *&off_2799BEAF0;
  v45 = xmmword_2799BEB00;
  v46 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v28, &v43, 7))
  {
    v12 = v29;
    if (!v29)
    {
      goto LABEL_17;
    }

LABEL_15:
    v13 = mlir::LLVM::symbolizeAtomicOrdering(v28, v12);
    if (v14)
    {
      v15 = v13;
      v16 = (*(*a1 + 32))(a1);
      v17 = mlir::LLVM::AtomicOrderingAttr::get(*v16, v15);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 48) = v17;
      goto LABEL_17;
    }

    v26[0] = "invalid ";
    v27 = 259;
    (*(*a1 + 24))(&v43, a1, v11, v26);
    if (v43)
    {
      mlir::Diagnostic::operator<<<36ul>(&v43 + 8, "ordering attribute specification: ");
      if (v43)
      {
        v42 = 261;
        v41[0] = v28;
        v41[1] = v29;
        mlir::Diagnostic::operator<<(&v43 + 8, v41);
        if (v43)
        {
          v42 = 264;
          LOBYTE(v41[0]) = 34;
          mlir::Diagnostic::operator<<(&v43 + 8, v41);
        }
      }
    }

    goto LABEL_40;
  }

  v26[0] = 0;
  v23 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v23);
  v25 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v26, NoneType, "ordering", 8, v51);
  if ((v25 & 0x100) == 0)
  {
    v41[0] = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v42 = 259;
    (*(*a1 + 24))(&v43, a1, v11, v41);
LABEL_40:
    v20 = (v50 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    goto LABEL_42;
  }

  if (v25)
  {
    v12 = *(v26[0] + 24);
    v28 = *(v26[0] + 16);
    v29 = v12;
    if (!v12)
    {
LABEL_17:
      if (v51[0] != v52)
      {
        free(v51[0]);
      }

LABEL_19:
      if ((*(*a1 + 408))(a1, "invariant_group", 15))
      {
        v18 = *(**(*(*a1 + 32))(a1) + 608);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 24) = v18;
      }

      v51[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        v19 = *(a2 + 8);
        *&v43 = a1;
        *(&v43 + 1) = v51;
        *&v44 = a2;
        if (mlir::LLVM::StoreOp::verifyInherentAttrs(v19, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::StoreOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v43) && ((*(*a1 + 104))(a1) & 1) != 0)
        {
          *&v43 = 0;
          if ((*(*a1 + 536))(a1, &v43))
          {
            v33 = v43;
            if (((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v31) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v38, v32, v5, a2 + 16))
            {
              v20 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v35, v30, v6, a2 + 16);
              goto LABEL_30;
            }
          }
        }
      }

LABEL_29:
      v20 = 0;
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v20 = 0;
LABEL_42:
  if (v51[0] != v52)
  {
    free(v51[0]);
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::SubOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::SubOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SubOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::SwitchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v10, "branch_weights", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v13, "case_operand_segments", 21, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps41(v16, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps41(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && !mlir::DenseIntElementsAttr::classof(a1))
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "case_values";
        v8[1] = 11;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<59ul>(v11, "' failed to satisfy constraint: integer elements attribute");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  else
  {
    v5 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::SwitchOp::parse(char *a1, uint64_t a2)
{
  v52[16] = *MEMORY[0x277D85DE8];
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  v26[1] = 1;
  v27 = 0;
  v25 = 0;
  v26[0] = &v27;
  v50 = v52;
  v51 = 0x400000000;
  v48[0] = &v49;
  v48[1] = 0x100000000;
  v24 = 0;
  v45 = v47;
  v46 = 0x200000000;
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0xC00000000;
  v37[0] = &v38;
  v37[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  v31 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v31))
  {
    goto LABEL_31;
  }

  v27 = v31;
  if (((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v25) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 288))(a1))
  {
    v5 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v50, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v48) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0;
  }

  v22 = (*(*a1 + 40))(a1);
  v34 = &v36;
  v35 = 0x100000000;
  v31 = &v33;
  v32 = 0x100000000;
  if (parseSwitchOpCases(a1, v27, &v24, &v45, &v34, &v31))
  {
    v21 = v5;
    v23 = a2;
    v6 = v24;
    if (v24)
    {
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(v23) + 16) = v6;
    }

    if (v35)
    {
      v7 = v34;
      v8 = &v34[48 * v35];
      do
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(&v42, *v7, (*v7 + 32 * *(v7 + 2)));
        llvm::SmallVectorTemplateBase<int,true>::push_back(&v39, *(v7 + 2));
        v7 += 48;
      }

      while (v7 != v8);
    }

    if (v32)
    {
      v9 = v31;
      v10 = &v31[64 * v32];
      do
      {
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v37, *v9, (*v9 + 8 * *(v9 + 2)));
        v9 += 64;
      }

      while (v9 != v10);
    }

    llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v31);
    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v34);
    v34 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, v23 + 112))
    {
      v11 = *(v23 + 8);
      v31 = a1;
      v32 = &v34;
      v33 = v23;
      if (mlir::LLVM::SwitchOp::verifyInherentAttrs(v11, v23 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v31))
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(v23 + 200, v25);
        v12 = v46 ? v45 | 4 : 0;
        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(v23 + 200, v12, 0, v12, v46);
        v13 = v51;
        v14 = v43;
        v15 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(v23);
        v15[6] = 1;
        v15[7] = v13;
        v15[8] = v14;
        v16 = (*(*a1 + 32))(a1);
        v17 = mlir::detail::DenseArrayAttrImpl<int>::get(*v16, v39, v40);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::SwitchOpGenericAdaptorBase::Properties>(v23) + 8) = v17;
        if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v28, v26, v4, v23 + 16) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v50, v48, v21, v23 + 16))
        {
          v18 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v42, v37, v22, v23 + 16);
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v31);
    llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v34);
  }

LABEL_31:
  v18 = 0;
LABEL_32:
  if (v37[0] != &v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48[0] != &v49)
  {
    free(v48[0]);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t parseSwitchOpCases(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v23 = a2;
  if ((*(*a1 + 312))(a1))
  {
    if ((*(*a1 + 336))(a1))
    {
      v12 = 1;
    }

    else
    {
      v24 = v26;
      v25 = 0x300000000;
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v23);
      v21[0] = a1;
      v21[1] = &v24;
      v21[2] = &IntOrFloatBitWidth;
      v21[3] = a4;
      v21[4] = a5;
      v21[5] = a6;
      v12 = 0;
      if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseSwitchOpCases(mlir::OpAsmParser &,mlir::Type,mlir::DenseIntElementsAttr &,llvm::SmallVectorImpl<mlir::Block *> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>> &,llvm::SmallVectorImpl<llvm::SmallVector<mlir::Type,6u>> &)::$_0>, v21, 0, 0))
      {
        v20 = v25;
        v13 = mlir::VectorType::get(&v20, 1uLL, a2, 0, 0);
        v14 = v13;
        if (v13)
        {
          v15 = *v13;
          v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        }

        else
        {
          v17 = 0;
        }

        *a3 = mlir::DenseElementsAttr::get(v14, v17, v24, v25);
        v12 = (*(*a1 + 328))(a1);
      }

      llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v24);
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::LLVM::TruncOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>(a2) = a5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

BOOL mlir::LLVM::TruncOp::parse(mlir::AsmParser *a1, uint64_t a2)
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

  v5 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::TruncOpGenericAdaptorBase::Properties>(a2);
  if ((parseOverflowFlags(a1, v5) & 1) == 0)
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
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  v9 = __src;
  v15 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
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

BOOL mlir::LLVM::UDivOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "isExact", 7, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::UDivOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::UDivOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UDivOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (mlir::LLVM::UDivOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::UDivOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7) & 1) != 0) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::UIToFPOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "nonNeg", 6, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::UIToFPOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  __src = 0;
  v10[0] = &v11;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::UIToFPOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = &v8;
  v15[2] = a2;
  if (!mlir::LLVM::UIToFPOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::UIToFPOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  v11 = v15[0];
  v16 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v15) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  __src = v15[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v10, v5, a2 + 16);
}

uint64_t mlir::LLVM::URemOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::URemOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::LLVM::UndefOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::VaArgOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v4 = (*(*a1 + 40))(a1);
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

  v6 = *(v8 + 8);
  v5 = *(v8 + 12);
  v9[0] = *(v8 + 16);
  v9[1] = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v9[0] + 8 * v6), (v9[0] + 8 * v6 + 8 * v5));
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v9, v4, a2 + 16);
}

uint64_t mlir::LLVM::XOrOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::XOrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::ZExtOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v8, "nonNeg", 6, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ZExtOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  __src = 0;
  v10[0] = &v11;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ZExtOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = &v8;
  v15[2] = a2;
  if (!mlir::LLVM::ZExtOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ZExtOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  v11 = v15[0];
  v16 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v15) & 1) == 0)
  {
    return 0;
  }

  v15[0] = 0;
  if (((*(*a1 + 536))(a1, v15) & 1) == 0)
  {
    return 0;
  }

  __src = v15[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v10, v5, a2 + 16);
}

uint64_t mlir::LLVM::ZeroOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps1(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 1)
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
          mlir::Diagnostic::operator<<<65ul>(v14, "' failed to satisfy constraint: 1-bit signless integer attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps1(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(a2[2] >> 30))
  {
    goto LABEL_11;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_12;
  }

  v5 = *(*a2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v7 = 6;
  if (v6)
  {
    v7 = 2;
  }

  v8 = *&a2[v7];
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v8[2] >> 30))
  {
LABEL_11:
    v9 = 1;
  }

  else
  {
LABEL_12:
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
      mlir::Diagnostic::operator<<<90ul>((v10 + 1), " must be signless integer or LLVM dialect-compatible vector of signless integer, but got ");
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (mlir::LLVM::isCompatibleOuterType(a2))
  {
    v8 = 1;
  }

  else
  {
    v17 = 261;
    v16[0] = a3;
    v16[1] = a4;
    mlir::Operation::emitOpError(a1, v16, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<3ul>(v22, " #");
    }

    v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v21, &v18);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<48ul>((v9 + 1), " must be LLVM dialect-compatible type, but got ");
      if (*v10)
      {
        v19 = 4;
        v20 = a2;
        v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v19, 1);
        v12 = v10[3] + 24 * *(v10 + 8);
        v13 = *v11;
        *(v12 + 16) = *(v11 + 16);
        *v12 = v13;
        ++*(v10 + 8);
      }
    }

    v8 = (v10[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::LLVM::Annotation::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || a2[2] >> 30)
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<36ul>((v7 + 1), " must be signless integer, but got ");
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

  else
  {
    v6 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
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
      mlir::Diagnostic::operator<<<37ul>((v6 + 1), " must be LLVM pointer type, but got ");
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 32)
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
      mlir::Diagnostic::operator<<<43ul>((v5 + 1), " must be 32-bit signless integer, but got ");
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

BOOL mlir::LLVM::AssumeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps2(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps3(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v3 = a1[1], *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v3[2] == 32)
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
        v7[0] = "op_bundle_sizes";
        v7[1] = 15;
        mlir::Diagnostic::operator<<(v10, v7);
        if (v9)
        {
          mlir::Diagnostic::operator<<<58ul>(v10, "' failed to satisfy constraint: i32 dense array attribute");
        }
      }
    }

    v4 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps3(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
        v6[0] = "op_bundle_tags";
        v6[1] = 14;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<48ul>(v9, "' failed to satisfy constraint: array attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AssumeOp::getODSOperands(mlir::LLVM::AssumeOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    __const__ZN4mlir4LLVM5GEPOp27getODSOperandIndexAndLengthEj_isVariadic[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    __const__ZN4mlir4LLVM5GEPOp27getODSOperandIndexAndLengthEj_isVariadic[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps6(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
  {
    v6 = 1;
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

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<42ul>((v7 + 1), " must be 1-bit signless integer, but got ");
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

BOOL mlir::LLVM::AssumeOp::parse(char *a1, uint64_t a2)
{
  v36[6] = *MEMORY[0x277D85DE8];
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  v29[0] = v30;
  v29[1] = 0x400000000;
  v26 = v28;
  v27 = 0xC00000000;
  v24[0] = &v25;
  v24[1] = 0x100000000;
  v19 = 0;
  v20 = 0;
  v18[0] = &v19;
  v18[1] = 1;
  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v22, 1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v6 = (*(*a1 + 40))(a1);
  v34 = v36;
  v35 = 0x100000000;
  v31 = &v33;
  v32 = 0x100000000;
  v7 = parseOpBundles(a1, &v34, &v31, &v20);
  if (v7 >= 0x100u)
  {
    if (v7)
    {
      if (v35)
      {
        v9 = v34;
        v2 = &v34[48 * v35];
        do
        {
          llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(v29, *v9, (*v9 + 32 * *(v9 + 2)));
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v26, *(v9 + 2));
          v9 += 48;
        }

        while (v9 != v2);
      }

      if (v32)
      {
        v10 = v31;
        v2 = &v31[64 * v32];
        do
        {
          llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v24, *v10, (*v10 + 8 * *(v10 + 2)));
          v10 += 64;
        }

        while (v10 != v2);
      }

      v11 = v20;
      if (v20)
      {
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(a2) + 8) = v11;
      }

      v8 = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    LOBYTE(v2) = 1;
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v31);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v34);
  if ((v2 & 1) == 0 && !v8)
  {
    goto LABEL_23;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v31 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v31))
  {
    goto LABEL_23;
  }

  v19 = v31;
  v34 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(a2 + 8);
  v31 = a1;
  v32 = &v34;
  v33 = a2;
  if (mlir::LLVM::AssumeOp::verifyInherentAttrs(v12, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AssumeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1>, &v31) && (v13 = (*(*a1 + 32))(a1), v14 = mlir::detail::DenseArrayAttrImpl<int>::get(*v13, v26, v27), *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AssumeOpGenericAdaptorBase::Properties>(a2) = v14, mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v21, v18, v5, a2 + 16)))
  {
    v15 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v29, v24, v6, a2 + 16);
  }

  else
  {
LABEL_23:
    v15 = 0;
  }

  if (v24[0] != &v25)
  {
    free(v24[0]);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::LLVM::BitReverseOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::BitReverseOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::ByteSwapOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::ByteSwapOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::ConstrainedFPTruncIntr::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps5(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps4(v13, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps5(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::FPExceptionBehaviorAttr::classof(a1))
  {
    v5 = 1;
  }

  else
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "fpExceptionBehavior";
        v8[1] = 19;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<56ul>(v11, "' failed to satisfy constraint: LLVM Exception Behavior");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps4(void *a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!mlir::LLVM::RoundingModeAttr::classof(a1) || (v11 = a1, mlir::IntegerAttr::getInt(&v11) < 0))
  {
    a2(&v11, a3);
    if (v11)
    {
      mlir::Diagnostic::operator<<<12ul>(v12, "attribute '");
      if (v11)
      {
        v10 = 261;
        v9[0] = "roundingmode";
        v9[1] = 12;
        mlir::Diagnostic::operator<<(v12, v9);
        if (v11)
        {
          mlir::Diagnostic::operator<<<76ul>(v12, "' failed to satisfy constraint: LLVM Rounding Mode whose minimum value is 0");
        }
      }
    }

    v6 = (v12[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  }

  else
  {
    v6 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ConstrainedFPTruncIntr::parse(uint64_t a1, uint64_t a2)
{
  v56[1] = *MEMORY[0x277D85DE8];
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  v35[1] = 1;
  v36 = 0;
  v35[0] = &v36;
  v54 = v56;
  v55 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v38, 1) & 1) == 0)
  {
LABEL_21:
    v21 = 0;
    goto LABEL_39;
  }

  v33 = 0;
  v34 = 0;
  v50 = v52;
  v51 = 0x400000000;
  v53 = 4;
  v5 = (*(*a1 + 40))(a1);
  v46 = xmmword_2799BEB90;
  v47 = *&off_2799BEBA0;
  v48 = xmmword_2799BEBB0;
  v42 = xmmword_2799BEB50;
  v43 = *&off_2799BEB60;
  v44 = xmmword_2799BEB70;
  v45 = *&off_2799BEB80;
  if ((*(*a1 + 424))(a1, &v33, &v42, 7))
  {
    v6 = v34;
    if (v34)
    {
LABEL_4:
      v7 = mlir::LLVM::symbolizeRoundingMode(v33, v6);
      if ((v8 & 1) == 0)
      {
        v31[0] = "invalid ";
        v32 = 259;
        (*(*a1 + 24))(&v42, a1, v5, v31);
        if (v42)
        {
          mlir::Diagnostic::operator<<<40ul>(&v42 + 8, "roundingmode attribute specification: ");
LABEL_44:
          if (v42)
          {
            v41 = 261;
            v40[0] = v33;
            v40[1] = v34;
            mlir::Diagnostic::operator<<(&v42 + 8, v40);
            if (v42)
            {
              v41 = 264;
              LOBYTE(v40[0]) = 34;
              mlir::Diagnostic::operator<<(&v42 + 8, v40);
            }
          }
        }

LABEL_30:
        v21 = (v49 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
        goto LABEL_37;
      }

      v9 = v7;
      v10 = (*(*a1 + 32))(a1);
      v11 = mlir::IntegerType::get(*v10, 64, 0);
      v12 = mlir::IntegerAttr::get(v11, v9);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(a2) + 8) = v12;
    }

LABEL_6:
    if (v50 != v52)
    {
      free(v50);
    }

    v33 = 0;
    v34 = 0;
    v50 = v52;
    v51 = 0x400000000;
    v53 = 4;
    v5 = (*(*a1 + 40))(a1);
    v42 = xmmword_2799BEBC0;
    v43 = *&off_2799BEBD0;
    v44 = xmmword_2799BEBE0;
    if ((*(*a1 + 424))(a1, &v33, &v42, 3))
    {
      v13 = v34;
      if (!v34)
      {
        goto LABEL_12;
      }

LABEL_10:
      v14 = mlir::LLVM::symbolizeFPExceptionBehavior(v33, v13);
      if (v15)
      {
        v16 = v14;
        v17 = (*(*a1 + 32))(a1);
        v18 = mlir::IntegerType::get(*v17, 64, 0);
        v19 = mlir::IntegerAttr::get(v18, v16);
        *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ConstrainedFPTruncIntrGenericAdaptorBase::Properties>(a2) = v19;
        goto LABEL_12;
      }

      v31[0] = "invalid ";
      v32 = 259;
      (*(*a1 + 24))(&v42, a1, v5, v31);
      if (!v42)
      {
        goto LABEL_30;
      }

      mlir::Diagnostic::operator<<<47ul>(&v42 + 8, "fpExceptionBehavior attribute specification: ");
      goto LABEL_44;
    }

    v31[0] = 0;
    v26 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v26);
    v28 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v31, NoneType, "fpExceptionBehavior", 19, &v50);
    if ((v28 & 0x100) == 0)
    {
      v25 = "expected string or keyword containing one of the following enum values for attribute 'fpExceptionBehavior' [ignore, maytrap, strict]";
      goto LABEL_29;
    }

    if (v28)
    {
      v13 = *(v31[0] + 24);
      v33 = *(v31[0] + 16);
      v34 = v13;
      if (!v13)
      {
LABEL_12:
        if (v50 != v52)
        {
          free(v50);
        }

        v50 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v20 = *(a2 + 8);
          *&v42 = a1;
          *(&v42 + 1) = &v50;
          *&v43 = a2;
          if (mlir::LLVM::ConstrainedFPTruncIntr::verifyInherentAttrs(v20, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ConstrainedFPTruncIntr::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v42) && ((*(*a1 + 104))(a1) & 1) != 0)
          {
            *&v42 = 0;
            if ((*(*a1 + 536))(a1, &v42))
            {
              v36 = v42;
              LOWORD(v44) = 257;
              if ((*(*a1 + 400))(a1, "to", 2, &v42) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v54))
              {
                llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v54, &v54[8 * v55]);
                v21 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v35, v4, a2 + 16);
                goto LABEL_39;
              }
            }
          }
        }

        goto LABEL_21;
      }

      goto LABEL_10;
    }

    goto LABEL_36;
  }

  v31[0] = 0;
  v22 = (*(*a1 + 32))(a1);
  v23 = mlir::Builder::getNoneType(v22);
  v24 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v31, v23, "roundingmode", 12, &v50);
  if ((v24 & 0x100) == 0)
  {
    v25 = "expected string or keyword containing one of the following enum values for attribute 'roundingmode' [towardzero, tonearest, upward, downward, tonearestaway, dynamic, invalid]";
LABEL_29:
    v40[0] = v25;
    v41 = 259;
    (*(*a1 + 24))(&v42, a1, v5, v40);
    goto LABEL_30;
  }

  if (v24)
  {
    v6 = *(v31[0] + 24);
    v33 = *(v31[0] + 16);
    v34 = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

LABEL_36:
  v21 = 0;
LABEL_37:
  if (v50 != v52)
  {
    free(v50);
  }

LABEL_39:
  if (v54 != v56)
  {
    free(v54);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL mlir::LLVM::CopySignOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps6(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
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
        v6[0] = "fastmathFlags";
        v6[1] = 13;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<52ul>(v9, "' failed to satisfy constraint: LLVM fastmath flags");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::LLVM::CopySignOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps8(mlir::Operation *a1, char *a2, unsigned int a3)
{
  v26[25] = *MEMORY[0x277D85DE8];
  v21 = a3;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2))
  {
    goto LABEL_2;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_10;
  }

  v6 = *(*a2 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v8 = 24;
  if (v7)
  {
    v8 = 8;
  }

  if (mlir::LLVM::isCompatibleFloatingPointType(*&a2[v8]))
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
LABEL_10:
    v20 = 261;
    v19[0] = "operand";
    v19[1] = 7;
    mlir::Operation::emitOpError(a1, v19, &v25);
    if (v25)
    {
      mlir::Diagnostic::operator<<<3ul>(v26, " #");
    }

    v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v25, &v21);
    v10 = v9;
    if (*v9)
    {
      v22 = 3;
      v23 = " must be floating point LLVM type or LLVM dialect-compatible vector of floating point LLVM type, but got ";
      v24 = 105;
      v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v9 + 3), &v22, 1);
      v12 = v10[3] + 24 * *(v10 + 8);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *v12 = v13;
      ++*(v10 + 8);
      if (*v10)
      {
        v22 = 4;
        v23 = a2;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v22, 1);
        v15 = v10[3] + 24 * *(v10 + 8);
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++*(v10 + 8);
      }
    }

    v5 = (v10[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::CopySignOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::CopySignOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CopySignOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

uint64_t mlir::LLVM::CoroAlignOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps9(mlir::Operation *a1, uint64_t a2, unsigned int a3)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v5 = *(*a2 + 136);
  if (v5 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTokenType,void>::resolveTypeID())
  {
    v11 = 1;
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

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<35ul>((v6 + 1), " must be LLVM token type, but got ");
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

BOOL mlir::LLVM::CoroBeginOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v14;
  v8[1] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::LLVM::CoroEndOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v17;
  v8[1] = v14;
  v8[2] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = llvm::range_size<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &> &>(a2);
  v31 = a3[1];
  v32 = v10;
  if (v10 == v31)
  {
    v11 = a2[1];
    v12 = a2[2];
    v13 = **a2;
    v14 = v13 + 32 * (*a2)[1];
    v15 = *v11;
    v16 = *v11 + 32 * v11[1];
    v17 = *v12;
    v18 = *v12 + 32 * v12[1];
    v19 = *a3;
    v33 = v13;
    v34 = v15;
    v35 = v17;
    v36 = v14;
    v37 = v16;
    v38 = v18;
    v39 = v19;
    while (1)
    {
      if (v13 == v14 && v15 == v16 && v17 == v18)
      {
        v20 = v36 == v14 && v37 == v16;
        if (v20 && v38 == v18)
        {
          break;
        }
      }

      v22 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::get<0ul,1ul,2ul>(&v33);
      if (((*(*a1 + 728))(a1, v22, *v39, a5) & 1) == 0)
      {
        v27 = 0;
        goto LABEL_24;
      }

      llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul>(&v33);
      v15 = v34;
      v17 = v35;
      ++v39;
      v13 = v33;
    }

    v27 = 1;
  }

  else
  {
    v30[16] = 257;
    (*(*a1 + 24))(&v33, a1, a4, v30);
    if (v33)
    {
      mlir::Diagnostic::operator<<<48ul>(&v34, "number of operands and types do not match: got ");
    }

    v23 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v33, &v32);
    v24 = v23;
    if (*v23)
    {
      mlir::Diagnostic::operator<<<15ul>((v23 + 1), " operands and ");
    }

    v25 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v24, &v31);
    v26 = v25;
    if (*v25)
    {
      mlir::Diagnostic::operator<<<7ul>((v25 + 1), " types");
    }

    v27 = (v26[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

LABEL_24:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

BOOL mlir::LLVM::CoroFreeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v14;
  v8[1] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::LLVM::CoroIdOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v21[0] = v22;
  v21[1] = 1;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10 = 0;
  v11 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v22, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10 = *(v9 + 16);
  v11 = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v10 + 8 * v5), (v10 + 8 * v5 + 8 * v4));
  v8[0] = v21;
  v8[1] = v18;
  v8[2] = v15;
  v8[3] = v12;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, &v10, v6, a2 + 16);
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v62 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = **a2;
  v15 = v14 + 32 * (*a2)[1];
  v16 = *v11;
  v17 = *v11 + 32 * v11[1];
  v18 = *v12;
  v19 = *v12 + 32 * v12[1];
  v20 = *v13;
  v21 = *v13 + 32 * v13[1];
  v48 = v14;
  v49 = v16;
  v50 = v18;
  v51 = v20;
  v52 = v15;
  v53 = v17;
  v54 = v19;
  v55 = v21;
  while (v14 != v15 || v16 != v17 || v18 != v19 || v20 != v21 || v52 != v15 || v53 != v17 || v54 != v19 || v55 != v21)
  {
    ++v10;
    llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul,3ul>(&v48);
    v14 = v48;
    v16 = v49;
    v18 = v50;
    v20 = v51;
  }

  v46 = a3[1];
  v47 = v10;
  if (v46 == v10)
  {
    v22 = a2[1];
    v23 = a2[2];
    v24 = a2[3];
    v25 = **a2;
    v26 = v25 + 32 * (*a2)[1];
    v27 = *v22;
    v28 = *v22 + 32 * v22[1];
    v29 = *v23;
    v30 = *v23 + 32 * v23[1];
    v31 = *v24;
    v32 = *v24 + 32 * v24[1];
    v33 = *a3;
    v48 = v25;
    v49 = v27;
    v50 = v29;
    v51 = v31;
    v52 = v26;
    v53 = v28;
    v54 = v30;
    v55 = v32;
    v56 = v33;
    while (v25 != v26 || v27 != v28 || v29 != v30 || v31 != v32 || v52 != v26 || v53 != v28 || v54 != v30 || v55 != v32)
    {
      v34 = 0;
      v61 = 0;
      v59 = 0;
      v57[3] = 0;
      v57[1] = 0;
      v57[0] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>;
      v57[2] = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>;
      v58 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<2ul>;
      v60 = llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<3ul>;
      do
      {
        v35 = v57[v34];
        v36 = v57[v34 + 1];
        v37 = (&v48 + (v36 >> 1));
        if (v36)
        {
          v35 = *(*v37 + v35);
        }

        v38 = v35(v37);
        v34 += 2;
      }

      while (!v38);
      if (((*(*a1 + 728))(a1, v38, *v56, a5) & 1) == 0)
      {
        v43 = 0;
        goto LABEL_36;
      }

      llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::increment<0ul,1ul,2ul,3ul>(&v48);
      ++v56;
      v25 = v48;
      v27 = v49;
      v29 = v50;
      v31 = v51;
    }

    v43 = 1;
  }

  else
  {
    LOWORD(v58) = 257;
    (*(*a1 + 24))(&v48, a1, a4, v57);
    if (v48)
    {
      mlir::Diagnostic::operator<<<48ul>(&v49, "number of operands and types do not match: got ");
    }

    v39 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v48, &v47);
    v40 = v39;
    if (*v39)
    {
      mlir::Diagnostic::operator<<<15ul>((v39 + 1), " operands and ");
    }

    v41 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v40, &v46);
    v42 = v41;
    if (*v41)
    {
      mlir::Diagnostic::operator<<<7ul>((v41 + 1), " types");
    }

    v43 = (v42[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
  }

LABEL_36:
  v44 = *MEMORY[0x277D85DE8];
  return v43;
}

BOOL mlir::LLVM::CoroPromiseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v17;
  v8[1] = v14;
  v8[2] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

BOOL mlir::LLVM::CoroResumeOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::CoroSaveOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::CoroSizeOp::parse(uint64_t a1, uint64_t a2)
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

uint64_t mlir::LLVM::CoroSuspendOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

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

  if ((*(*a1 + 104))(a1) & 1) != 0 && (v9 = 0, ((*(*a1 + 536))(a1, &v9)) && (__src = v9, v4 = (*(*a1 + 32))(a1), v5 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMTokenType>(*v4), v6 = (*(*a1 + 32))(a1), v7 = mlir::IntegerType::get(*v6, 1, 0), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v11), ((*(*a1 + 728))(a1, v13, v5, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v11, v7, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::LLVM::CosOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::CosOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::CosOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::CosOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CosOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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

BOOL mlir::LLVM::CoshOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::LLVM::CoshOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::CoshOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  v12 = 0;
  if ((*(*a1 + 280))() & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v11 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v5 = *(a2 + 8), v10[0] = a1, v10[1] = &v11, v10[2] = a2, mlir::LLVM::CoshOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CoshOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v10[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v10)))
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