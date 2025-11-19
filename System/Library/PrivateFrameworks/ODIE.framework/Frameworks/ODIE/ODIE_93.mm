BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
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
      mlir::Diagnostic::operator<<<25ul>((v6 + 1), " must be index, but got ");
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

BOOL mlir::affine::AffineDelinearizeIndexOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
        v7[0] = "static_basis";
        v7[1] = 12;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::getODSOperands(mlir::affine::AffineDelinearizeIndexOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    byte_25D0A02B4[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    byte_25D0A02B4[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

uint64_t mlir::affine::AffineDelinearizeIndexOp::parse(uint64_t a1, uint64_t a2)
{
  v23[16] = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v21 = v23;
  v22 = 0x400000000;
  v13 = 0;
  __src = &v20;
  v19 = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v16) & 1) == 0)
  {
    goto LABEL_14;
  }

  (*(*a1 + 40))(a1);
  v16[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v21, &v13, v16, 0))
  {
    goto LABEL_14;
  }

  v4 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineDelinearizeIndexOpGenericAdaptorBase::Properties>(a2);
  *v4 = v13;
  v12 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || (v5 = *(a2 + 8), v16[0] = a1, v16[1] = &v12, v16[2] = a2, !mlir::affine::AffineDelinearizeIndexOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineDelinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16)) || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0 || (v6 = *(**(*(*a1 + 32))(a1) + 472), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v19), ((*(*a1 + 728))(a1, v14, v6, a2 + 16) & 1) == 0))
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (v22)
  {
    v7 = v21;
    v8 = 32 * v22;
    while (((*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1) != 0)
    {
      v7 += 32;
      v9 = 1;
      v8 -= 32;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  v9 = 1;
LABEL_15:
  if (__src != &v20)
  {
    free(__src);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
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
        v6[0] = "step";
        v6[1] = 4;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<48ul>(v9, "' failed to satisfy constraint: index attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::affine::__mlir_ods_local_region_constraint_AffineOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[26] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23[0] = *(a2 + 8);
  v20[0] = a2;
  v17[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__6;
  v7 = 1;
  if ((llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v23, v20, 1, v17) & 1) == 0)
  {
    v20[0] = "region #";
    v21 = 259;
    mlir::Operation::emitOpError(a1, v20, v23);
    v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v23, &v22);
    v9 = v8;
    if (a4)
    {
      v16 = 1283;
      v15[0] = " ('";
      v15[2] = a3;
      v15[3] = a4;
      v10 = v15;
      v17[2] = "') ";
      v11 = 2;
      v12 = 3;
    }

    else
    {
      v11 = 3;
      v10 = " ";
      v12 = 1;
    }

    v19 = v12;
    v17[0] = v10;
    v18 = v11;
    if (*v8)
    {
      mlir::Diagnostic::operator<<((v8 + 1), v17);
      if (*v9)
      {
        mlir::Diagnostic::operator<<<50ul>((v9 + 1), "failed to verify constraint: region with 1 blocks");
      }
    }

    v7 = (v9[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
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
        v6[0] = "condition";
        v6[1] = 9;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<53ul>(v9, "' failed to satisfy constraint: IntegerSet attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::affine::AffineLinearizeIndexOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::affine::AffineLinearizeIndexOp::parse(uint64_t a1, uint64_t a2)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  v21 = v23;
  v22 = 0x400000000;
  __src = 0;
  v18 = 0;
  if ((*(*a1 + 408))())
  {
    *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 8) = 1;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = 257;
  if (((*(*a1 + 400))(a1, "by", 2, v19) & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  v19[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v21, &v18, v19, 0))
  {
    goto LABEL_21;
  }

  v4 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2);
  *v4 = v18;
  v16 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || (v5 = *(a2 + 8), v19[0] = a1, v19[1] = &v16, v19[2] = a2, !mlir::affine::AffineLinearizeIndexOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::AffineLinearizeIndexOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v19)) || ((*(*a1 + 104))(a1) & 1) == 0 || (v19[0] = 0, !mlir::AsmParser::parseType<mlir::IndexType>(a1, v19)))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  __src = v19[0];
  v6 = v25;
  v7 = v22;
  *(mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2) + 12) = v6 | (v7 << 32);
  v8 = *(**(*(*a1 + 32))(a1) + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v18);
  if (v25)
  {
    v9 = v24;
    v10 = 32 * v25;
    while (((*(*a1 + 728))(a1, v9, v8, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_21;
  }

LABEL_16:
  if (v22)
  {
    v11 = v21;
    v12 = 32 * v22;
    while (((*(*a1 + 728))(a1, v11, v8, a2 + 16) & 1) != 0)
    {
      v11 += 32;
      v13 = 1;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v13 = 1;
LABEL_22:
  if (v21 != v23)
  {
    free(v21);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::affine::AffineLoadOp::getODSOperands(mlir::affine::AffineLoadOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    byte_25D0A02B4[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    byte_25D0A02B4[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps4(mlir::Operation *a1, uint64_t *a2, unsigned int a3)
{
  v21[25] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v4 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v4 + 8, v11);
    (*(v12 + 8))(v12, a2);
    v10 = 1;
  }

  else
  {
    v16 = 261;
    v15[0] = "operand";
    v15[1] = 7;
    mlir::Operation::emitOpError(a1, v15, &v20);
    if (v20)
    {
      mlir::Diagnostic::operator<<<3ul>(v21, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v17);
    v6 = v5;
    if (*v5)
    {
      mlir::Diagnostic::operator<<<45ul>((v5 + 1), " must be memref of any type values, but got ");
      if (*v6)
      {
        v18 = 4;
        v19 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v18, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v10 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::affine::AffineMaxOp::build(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(a2) = v8;
  __src = v13;
  v12 = 0x200000000;
  v9 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v9 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v12);
  if (__src != v13)
  {
    free(__src);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::affine::AffineMinOp::build(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x277D85DE8];
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
  v8 = mlir::AffineMapAttr::get(a3);
  *mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(a2) = v8;
  __src = v13;
  v12 = 0x200000000;
  v9 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v9 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v12);
  if (__src != v13)
  {
    free(__src);
  }

  v10 = *MEMORY[0x277D85DE8];
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::DenseIntElementsAttr::classof(a1) && (v10 = a1[1], v11 = (*(a1[2] + 8))(), *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v11[2] == 32)
  {
    v12 = 1;
  }

  else
  {
    a4(&v17, a5);
    if (v17)
    {
      mlir::Diagnostic::operator<<<12ul>(v18, "attribute '");
      if (v17)
      {
        v16 = 261;
        v15[0] = a2;
        v15[1] = a3;
        mlir::Diagnostic::operator<<(v18, v15);
        if (v17)
        {
          mlir::Diagnostic::operator<<<75ul>(v18, "' failed to satisfy constraint: 32-bit signless integer elements attribute");
        }
      }
    }

    v12 = (v18[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v6 = a1[2];
    if (!v6)
    {
LABEL_12:
      v5 = 1;
      goto LABEL_13;
    }

    v7 = a1[1];
    v8 = 8 * v6;
    while (*v7 && (mlir::arith::AtomicRMWKindAttr::classof(*v7) & 1) != 0)
    {
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
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
      v11[0] = "reductions";
      v11[1] = 10;
      mlir::Diagnostic::operator<<(v14, v11);
      if (v13)
      {
        mlir::Diagnostic::operator<<<46ul>(v14, "' failed to satisfy constraint: Reduction ops");
      }
    }
  }

  v5 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
      if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v10[2] != 64)
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
      v11[0] = "steps";
      v11[1] = 5;
      mlir::Diagnostic::operator<<(v14, v11);
      if (v13)
      {
        mlir::Diagnostic::operator<<<63ul>(v14, "' failed to satisfy constraint: 64-bit integer array attribute");
      }
    }
  }

  v3 = (v14[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 1)
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

BOOL mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(void *a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v6 = a1[1], *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v6[2] == 32 && (v12 = a1, (mlir::IntegerAttr::getInt(&v12) & 0x8000000000000000) == 0) && (v10[0] = a1, mlir::IntegerAttr::getInt(v10) <= 3))
  {
    v7 = 1;
  }

  else
  {
    a2(&v12, a3);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = "localityHint";
        v10[1] = 12;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<116ul>(v13, "' failed to satisfy constraint: 32-bit signless integer attribute whose minimum value is 0 whose maximum value is 3");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::BoolAttr>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if ((*(*a1 + 48))(a1, &v13))
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v4 = v13[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v4[2] == 1)
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
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::affine::AffinePrefetchOp::getODSOperands(mlir::affine::AffinePrefetchOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    byte_25D0A02B4[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    byte_25D0A02B4[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

unint64_t mlir::affine::AffineStoreOp::getODSOperandIndexAndLength(mlir::affine::AffineStoreOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = byte_25D0A02B6;
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

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (byte_25D0A02B6[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::affine::AffineStoreOp::getODSOperands(mlir::affine::AffineStoreOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::affine::AffineStoreOp::getODSOperandIndexAndLength(this, a2);
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

uint64_t mlir::affine::AffineVectorLoadOp::getODSOperands(mlir::affine::AffineVectorLoadOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    byte_25D0A02B4[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    byte_25D0A02B4[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

BOOL mlir::affine::__mlir_ods_local_type_constraint_AffineOps6(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a5;
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && a2[2] >= 1)
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v6 + 8, v13);
    (*(v14 + 8))(v14, a2);
    v12 = 1;
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

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v22, &v19);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<45ul>((v7 + 1), " must be vector of any type values, but got ");
      if (*v8)
      {
        v20 = 4;
        v21 = a2;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v20, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v12 = (v8[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::affine::AffineVectorStoreOp::getODSOperandIndexAndLength(mlir::affine::AffineVectorStoreOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = byte_25D0A02B6;
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

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (byte_25D0A02B6[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::affine::AffineVectorStoreOp::getODSOperands(mlir::affine::AffineVectorStoreOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::affine::AffineVectorStoreOp::getODSOperandIndexAndLength(this, a2);
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

BOOL mlir::affine::AffineYieldOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v5 = ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v11 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v8) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16);
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v10 != v12)
  {
    free(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::ShapedDimOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ShapedDimOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  return v1;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::ViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *a1, unsigned int **a2)
{
  if ((a1[9] & 1) == 0)
  {
    v3 = *a1;
    if (*a1 && *(*(*a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      v5 = **a2;
      v6 = *a2[1];
      v15 = *a1;
      v7 = *(v3 - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(v7 + 16) <= v5)
      {
        isValidSymbol = 0;
      }

      else
      {
        v8 = *(v7 + 8);
        if (v8[v5] == 0x8000000000000000)
        {
          if (v5)
          {
            LODWORD(v9) = 0;
            v10 = 8 * v5;
            do
            {
              v11 = *v8++;
              if (v11 == 0x8000000000000000)
              {
                v9 = (v9 + 1);
              }

              else
              {
                v9 = v9;
              }

              v10 -= 8;
            }

            while (v10);
          }

          else
          {
            v9 = 0;
          }

          ODSOperands = mlir::memref::ViewOp::getODSOperands(&v15, 2u);
          mlir::memref::ViewOp::getODSOperands(&v15, 2u);
          isValidSymbol = mlir::affine::isValidSymbol(*(ODSOperands + 32 * v9 + 24), v6);
        }

        else
        {
          isValidSymbol = 1;
        }
      }

      a1[8] = isValidSymbol;
      a1[9] = 1;
    }
  }

  return a1;
}

uint64_t mlir::memref::ViewOp::getODSOperands(mlir::memref::ViewOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::memref::ViewOp::getODSOperandIndexAndLength(this, a2);
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

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::SubViewOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *a1, unsigned int **a2)
{
  if ((a1[9] & 1) == 0)
  {
    v3 = *a1;
    if (*a1 && *(*(*a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
    {
      v5 = **a2;
      if (*(v3 + 36))
      {
        v6 = v3 - 16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(v7 + 16) <= v5)
      {
        isValidSymbol = 0;
      }

      else
      {
        v8 = *(v7 + 8);
        if (v8[v5] == 0x8000000000000000)
        {
          v9 = *a2[1];
          if (v5)
          {
            LODWORD(v10) = 0;
            v11 = 8 * v5;
            do
            {
              v12 = *v8++;
              if (v12 == 0x8000000000000000)
              {
                v10 = (v10 + 1);
              }

              else
              {
                v10 = v10;
              }

              v11 -= 8;
            }

            while (v11);
          }

          else
          {
            v10 = 0;
          }

          isValidSymbol = mlir::affine::isValidSymbol(*(*(v3 + 72) + 32 * (*(v3 + 108) + *(v3 + 104)) + 32 * v10 + 24), v9);
        }

        else
        {
          isValidSymbol = 1;
        }
      }

      a1[8] = isValidSymbol;
      a1[9] = 1;
    }
  }

  return a1;
}

_BYTE *llvm::TypeSwitch<mlir::Operation *,BOOL>::Case<mlir::memref::AllocOp,isDimOpValidSymbol(mlir::ShapedDimOpInterface,mlir::Region *)::$_0 &>(_BYTE *a1, unsigned int **a2)
{
  if ((a1[9] & 1) == 0)
  {
    v3 = *a1;
    if (*a1 && *(*(*a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id)
    {
      v5 = **a2;
      v6 = *(v3 - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(v6 + 16) <= v5)
      {
        isValidSymbol = 0;
      }

      else
      {
        v7 = *(v6 + 8);
        if (v7[v5] == 0x8000000000000000)
        {
          v8 = *a2[1];
          if (v5)
          {
            LODWORD(v9) = 0;
            v10 = 8 * v5;
            do
            {
              v11 = *v7++;
              if (v11 == 0x8000000000000000)
              {
                v9 = (v9 + 1);
              }

              else
              {
                v9 = v9;
              }

              v10 -= 8;
            }

            while (v10);
          }

          else
          {
            v9 = 0;
          }

          isValidSymbol = mlir::affine::isValidSymbol(*(*(v3 + 72) + 32 * v9 + 24), v8);
        }

        else
        {
          isValidSymbol = 1;
        }
      }

      a1[8] = isValidSymbol;
      a1[9] = 1;
    }
  }

  return a1;
}

void llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t mlir::AffineMap::shiftDims(uint64_t ***this, int a2, int a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a2;
  v6 = **this;
  v5 = *(*this + 1);
  v7 = (*this + 3);
  v8 = *(*this + 2);
  v14[2] = &v13;
  v14[3] = &v12;
  v16[2] = &v13;
  v16[3] = &v12;
  v16[0] = v7;
  v16[1] = this;
  v17 = 1;
  v14[0] = (v7 + 8 * v8);
  v14[1] = this;
  v15 = 1;
  v18 = v20;
  v19 = 0x400000000;
  llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftDims(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(&v18, v16, v14);
  Impl = mlir::AffineMap::getImpl(v6 + a2, v5, v18, v19, (*this)[2]);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Impl;
}

uint64_t mlir::AffineMap::shiftSymbols(uint64_t ***this, int a2, int a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a2;
  v5 = **this;
  v6 = *(*this + 1);
  v7 = (*this + 3);
  v8 = *(*this + 2);
  v14[2] = &v13;
  v14[3] = &v12;
  v16[2] = &v13;
  v16[3] = &v12;
  v16[0] = v7;
  v16[1] = this;
  v17 = 1;
  v14[0] = (v7 + 8 * v8);
  v14[1] = this;
  v15 = 1;
  v18 = v20;
  v19 = 0x400000000;
  llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftSymbols(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(&v18, v16, v14);
  Impl = mlir::AffineMap::getImpl(v5, v6 + a2, v18, v19, (*this)[2]);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Impl;
}

void llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftDims(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(uint64_t a1, uint64_t a2, uint64_t ****a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a3 - *a2;
  v9 = *(a1 + 8);
  v10 = v9 + (v8 >> 3);
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    v6 = *a2;
    v7 = *a3;
    v9 = *(a1 + 8);
  }

  if (v6 != v7)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = (*a1 + 8 * v9);
    do
    {
      v15 = *v6++;
      v16 = v15;
      *v14++ = mlir::AffineExpr::shiftDims(&v16, **v11, *v12, *v13);
    }

    while (v6 != v7);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + (v8 >> 3);
}

void llvm::SmallVectorImpl<mlir::AffineExpr>::append<llvm::mapped_iterator<mlir::AffineExpr const*,mlir::AffineMap::shiftSymbols(unsigned int,unsigned int)::{lambda(mlir::AffineExpr)#1},mlir::AffineExpr>,void>(uint64_t a1, uint64_t a2, uint64_t ****a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a3 - *a2;
  v9 = *(a1 + 8);
  v10 = v9 + (v8 >> 3);
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    v6 = *a2;
    v7 = *a3;
    v9 = *(a1 + 8);
  }

  if (v6 != v7)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = (*a1 + 8 * v9);
    do
    {
      v15 = *v6++;
      v16 = v15;
      *v14++ = mlir::AffineExpr::shiftSymbols(&v16, *(*v11 + 4), *v12, *v13);
    }

    while (v6 != v7);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + (v8 >> 3);
}

uint64_t foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(uint64_t **a1, int a2)
{
  v46[8] = *MEMORY[0x277D85DE8];
  v44 = v46;
  v45 = 0x800000000;
  v4 = *a1;
  v5 = **a1;
  v6 = *(v5 + 44);
  v7 = v5 + 16 * ((v6 >> 23) & 1);
  v8 = *(v7 + 88);
  if (!a2)
  {
    v10 = *(v7 + 92);
    if ((v6 & 0x800000) != 0)
    {
      v11 = *(v5 + 72);
    }

    else
    {
      v11 = 0;
    }

    v9 = v11 + 32 * v8;
    v8 = (v10 + v8) - v8;
    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_8:
    v12 = (v9 + 24);
    while (1)
    {
      v13 = *v12;
      v41 = 0;
      v38 = &v41;
      if ((~*(v13 + 8) & 7) == 0)
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = *(v13 + 8) & 7;
        if (v14 == 6)
        {
          v15 = v13 + 24 * *(v13 + 16);
          v16 = (v15 + 120);
          if (v15 == -120)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = (v13 + 16 * v14 + 16);
        }

        mlir::detail::constant_op_binder<mlir::Attribute>::match(&v38, v16);
        v16 = v41;
      }

      else
      {
        v16 = 0;
      }

LABEL_18:
      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v44, v16);
      v12 += 4;
      if (!--v8)
      {
        v4 = *a1;
        goto LABEL_20;
      }
    }
  }

  if ((v6 & 0x800000) != 0)
  {
    v9 = *(v5 + 72);
    if (!*(v7 + 88))
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v9 = 0;
  if (*(v7 + 88))
  {
    goto LABEL_8;
  }

LABEL_20:
  v17 = *v4 + 16 * ((*(*v4 + 44) >> 23) & 1);
  v18 = 16;
  if (a2)
  {
    v18 = 0;
  }

  v40 = *(*(v17 + v18 + 64) + 8);
  v41 = v43;
  v42 = 0x400000000;
  if (mlir::AffineMap::constantFold(&v40, v44, v45, &v41, 0))
  {
    v20 = *v41;
    v21 = *(*v41 + 24);
    v39 = v21;
    if (v21 > 0x40)
    {
      operator new[]();
    }

    v38 = *(v20 + 16);
    if (v42 >= 2)
    {
      v23 = 8 * v42;
      v24 = 8;
      do
      {
        v25 = *(v41 + v24);
        v37 = *(v25 + 24);
        if (v37 > 0x40)
        {
          operator new[]();
        }

        v36 = *(v25 + 16);
        v26 = llvm::APInt::compareSigned(&v38, &v36);
        v27 = v26 < 0;
        if (a2)
        {
          v27 = v26 > 0;
        }

        if (v27)
        {
          v28 = &v38;
        }

        else
        {
          v28 = &v36;
        }

        llvm::APInt::operator=(&v38, v28);
        if (v37 >= 0x41 && v36)
        {
          MEMORY[0x25F891010](v36, 0x1000C8000313F17);
        }

        v24 += 8;
      }

      while (v23 != v24);
      v21 = v39;
    }

    v29 = *a1;
    if (a2)
    {
      if (v21 > 0x40)
      {
        v30 = *v38;
      }

      else if (v21)
      {
        v30 = (v38 << -v21) >> -v21;
      }

      else
      {
        v30 = 0;
      }

      ConstantMap = mlir::AffineMap::getConstantMap(v30, *(***(*v29 + 24) + 32), v19);
      mlir::affine::AffineForOp::setLowerBound(v29, 0, 0, ConstantMap);
    }

    else
    {
      if (v21 > 0x40)
      {
        v31 = *v38;
      }

      else if (v21)
      {
        v31 = (v38 << -v21) >> -v21;
      }

      else
      {
        v31 = 0;
      }

      v33 = mlir::AffineMap::getConstantMap(v31, *(***(*v29 + 24) + 32), v19);
      mlir::affine::AffineForOp::setUpperBound(v29, 0, 0, v33);
    }

    if (v39 >= 0x41 && v38)
    {
      MEMORY[0x25F891010](v38, 0x1000C8000313F17);
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v22;
}

void simplifyMinOrMaxExprWithOperands(uint64_t *a1, uint64_t *a2, unint64_t a3, int a4)
{
  v68[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v66 = v68;
    v67 = 0x300000000;
    v9 = v65;
    v63 = v65;
    v64 = 0x300000000;
    if (a3 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v68, a3, 16);
      if (a3 > HIDWORD(v64))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, a3, 16);
      }
    }

    v10 = 8 * a3;
    do
    {
      v11 = *a2++;
      LowerBound = getLowerBound(v11);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v66, LowerBound, v13);
      UpperBound = getUpperBound(v11);
      llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v63, UpperBound, v15);
      v10 -= 8;
    }

    while (v10);
    v16 = v62;
    v60 = v62;
    v61 = 0x400000000;
    v17 = v59;
    v57 = v59;
    v58 = 0x400000000;
    v18 = *a1;
    v19 = *(*a1 + 8);
    if (v19 < 5)
    {
      v20 = 4;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v19, 16);
      v18 = *a1;
      LODWORD(v19) = *(*a1 + 8);
      v20 = HIDWORD(v58);
    }

    if (v20 < v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v19, 16);
      v18 = *a1;
      LODWORD(v19) = *(*a1 + 8);
    }

    if (v19)
    {
      v21 = (v18 + 24);
      v22 = 8 * v19;
      do
      {
        v23 = *v21;
        if (*v21)
        {
          v24 = *(*v21 + 8) == 5;
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          v9 = v9 & 0xFFFFFFFFFFFFFF00 | 1;
          llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v60, *(v23 + 16), v9);
          v27 = *(v23 + 16);
          v29 = v17 & 0xFFFFFFFFFFFFFF00 | 1;
          v17 = v29;
        }

        else
        {
          BoundForAffineExpr = mlir::getBoundForAffineExpr(*v21, **a1, *(*a1 + 4), v66, v67, v63, v64, 0);
          v4 = v4 & 0xFFFFFFFFFFFFFF00 | v26;
          llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v60, BoundForAffineExpr, v4);
          v27 = mlir::getBoundForAffineExpr(v23, **a1, *(*a1 + 4), v66, v67, v63, v64, 1);
          v16 = v16 & 0xFFFFFFFFFFFFFF00 | v28;
          v29 = v16;
        }

        llvm::SmallVectorTemplateBase<std::optional<long long>,true>::push_back(&v57, v27, v29);
        ++v21;
        v22 -= 8;
      }

      while (v22);
      v18 = *a1;
      v31 = *(*a1 + 8);
      v54 = v56;
      v55 = 0x400000000;
      if (v31)
      {
        v32 = 0;
        v33 = (v18 + 24);
        v34 = v18 + 24 + 8 * v31;
        while (1)
        {
          AffineConstantExpr = *v33;
          if (*(v60 + 16 * v32 + 8) == 1)
          {
            v36 = (v57 + 16 * v32);
            if (*(v36 + 8) == 1)
            {
              v37 = *(v60 + 2 * v32);
              if (v37 == *v36)
              {
                AffineConstantExpr = mlir::getAffineConstantExpr(v37, *AffineConstantExpr, v30);
              }
            }
          }

          if (a4)
          {
            v38 = v57 + 16 * v32;
            if (v38[8] == 1 && v61)
            {
              v39 = 0;
              v40 = v60 + 16 * v32;
              v41 = 16 * v61;
              v42 = v60 + 8;
              v43 = v57 + 8;
              do
              {
                if (v32 != v39 && (*v42 & 1) != 0)
                {
                  v44 = *(v42 - 1);
                  if (v44 > *v38 || v44 >= *v38 && (*v43 != 1 || v40[8] != 1 || *v40 != *v38 || v39 <= v32 || v44 != *(v43 - 1)))
                  {
                    goto LABEL_57;
                  }
                }

                ++v39;
                v42 += 16;
                v43 += 16;
                v41 -= 16;
              }

              while (v41);
            }
          }

          else
          {
            v45 = v60 + 16 * v32;
            if (v45[8] == 1 && v58)
            {
              v46 = 0;
              v47 = v57;
              v48 = v57 + 16 * v32;
              v49 = v60 + 8;
              do
              {
                if (v32 != v46)
                {
                  v50 = *(v47 + 8);
                  if (v50)
                  {
                    if (*v47 < *v45)
                    {
                      goto LABEL_57;
                    }

                    if (*v47 <= *v45)
                    {
                      if (*v49 != 1)
                      {
                        goto LABEL_57;
                      }

                      v30 = v48[8];
                      if (v30 != 1)
                      {
                        goto LABEL_57;
                      }

                      v30 = *v48;
                      if (*v45 != *v48 || v50 != 1 || v46 <= v32 || *v47 != *(v49 - 1))
                      {
                        goto LABEL_57;
                      }
                    }
                  }
                }

                ++v46;
                v47 += 2;
                v49 += 16;
              }

              while (v47 != (v57 + 16 * v58));
            }
          }

          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v54, AffineConstantExpr);
LABEL_57:
          ++v32;
          if (++v33 == v34)
          {
            v18 = *a1;
            v51 = v54;
            v52 = v55;
            goto LABEL_61;
          }
        }
      }

      v52 = 0;
      v51 = v56;
    }

    else
    {
      v52 = 0;
      v54 = v56;
      v55 = 0x400000000;
      v51 = v56;
    }

LABEL_61:
    *a1 = mlir::AffineMap::getImpl(*v18, *(v18 + 4), v51, v52, *(v18 + 16));
    if (v54 != v56)
    {
      free(v54);
    }

    if (v57 != v59)
    {
      free(v57);
    }

    if (v60 != v62)
    {
      free(v60);
    }

    if (v63 != v65)
    {
      free(v63);
    }

    if (v66 != v68)
    {
      free(v66);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

unint64_t getLowerBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (v1 && (v2 = *(*(v1 + 16 * ((*(v1 + 44) >> 23) & 1) + 64) + 8), *(v2 + 8) == 1) && (v3 = *(v2 + 24), *(v3 + 8) == 5))
  {
    v5 = *(v3 + 16);
    v4 = v5 & 0xFFFFFFFFFFFFFF00;
    v5 = v5;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4 | v5;
}

unint64_t getUpperBound(uint64_t a1)
{
  v1 = mlir::affine::getForInductionVarOwner(a1);
  if (v1)
  {
    v2 = &v1[4 * ((v1[11] >> 23) & 1)];
    v3 = *(*(v2 + 10) + 8);
    if (*(v3 + 8) == 1)
    {
      v4 = *(v3 + 24);
      if (*(v4 + 8) == 5)
      {
        v5 = *(*(v2 + 8) + 8);
        if (*(v5 + 8) == 1)
        {
          v6 = *(v5 + 24);
          v7 = *(v4 + 16);
          if (*(v6 + 8) == 5)
          {
            v8 = v7 + ~*(v6 + 16);
            v9 = v7 + ~(v8 % mlir::affine::AffineForOp::getStepAsInt(v1));
LABEL_11:
            v10 = v9 & 0xFFFFFFFFFFFFFF00;
            return v10 | v9;
          }
        }

        else
        {
          v7 = *(v4 + 16);
        }

        v9 = v7 - 1;
        goto LABEL_11;
      }
    }
  }

  LOBYTE(v9) = 0;
  v10 = 0;
  return v10 | v9;
}

uint64_t deduplicateAndResolveOperands(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 32))(a1);
  if (a3)
  {
    v13 = *(**v12 + 472);
    v14 = &a2[6 * a3];
    if (a6 == 6)
    {
      v15 = 6;
    }

    else
    {
      v15 = 7;
    }

    v32 = &a2[6 * a3];
    while (1)
    {
      v33 = v35;
      v34 = 0x600000000;
      v16 = *(a2 + 2);
      if (v16)
      {
        v17 = *a2;
        v18 = 32 * v16;
        do
        {
          if (((*(*a1 + 728))(a1, v17, v13, &v33) & 1) == 0)
          {
            v29 = 1;
            goto LABEL_24;
          }

          v17 += 32;
          v18 -= 32;
        }

        while (v18);
        if (!v34)
        {
          goto LABEL_22;
        }

        v19 = v33;
        v20 = (v33 + 8 * v34);
        do
        {
          v21 = *v19;
          v22 = *a4;
          v23 = *(a4 + 8);
          if (v23)
          {
            v24 = 8 * v23;
            v25 = *a4;
            while (*v25 != v21)
            {
              v25 += 8;
              v24 -= 8;
              if (!v24)
              {
                v25 = &v22[8 * v23];
                break;
              }
            }
          }

          else
          {
            v25 = *a4;
          }

          v26 = (v25 - v22) >> 3;
          if (v23 == v26)
          {
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a4, v21);
          }

          v27 = (*(*a1 + 32))(a1);
          AffineDimOrSymbol = getAffineDimOrSymbol(v15, v26, *v27);
          llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(a5, AffineDimOrSymbol);
          ++v19;
        }

        while (v19 != v20);
        v29 = 0;
        v14 = v32;
      }

      else
      {
LABEL_22:
        v29 = 0;
      }

LABEL_24:
      if (v33 != v35)
      {
        free(v33);
      }

      if (v29)
      {
        break;
      }

      a2 += 6;
      if (a2 == v14)
      {
        goto LABEL_28;
      }
    }

    result = 0;
  }

  else
  {
LABEL_28:
    result = 1;
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseAffineMapWithMinMax(mlir::OpAsmParser &,mlir::OperationState &,anonymous namespace::MinMaxKind)::$_0>(void *a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1[1])
  {
    v3 = "max";
  }

  else
  {
    v3 = "min";
  }

  if (((*(*v2 + 408))(v2, v3, 3) & 1) == 0)
  {
    v13 = *a1;
    v14 = llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<>(a1[6]);
    v15 = llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<>(a1[7]);
    v16 = a1[5];
    v17 = *(v16 + 2);
    if (v17 >= *(v16 + 3))
    {
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(a1[5], 0);
      v18 = *v16;
      v19 = *(v16 + 2);
    }

    else
    {
      v18 = *v16;
      *(*v16 + 8 * v17) = 0;
      v19 = v17 + 1;
      *(v16 + 2) = v19;
    }

    if ((*(*v13 + 744))(v13, v14, v15, v18 + 8 * v19 - 8))
    {
      v20 = a1[8];
      v12 = 1;
      llvm::SmallVectorTemplateBase<int,true>::push_back(v20, 1);
      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v4 = a1[3];
  *(a1[2] + 8) = 0;
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[4];
  if (((*(**a1 + 736))(*a1) & 1) == 0)
  {
    goto LABEL_18;
  }

  mlir::NamedAttrList::erase(a1[4] + 112, *a1[3], *(a1[3] + 8));
  llvm::SmallVectorImpl<mlir::AffineExpr>::insert<mlir::AffineExpr const*,void>(a1[5], *a1[5] + 8 * *(a1[5] + 8), (MEMORY[8] + 24), (MEMORY[8] + 24 + 8 * *(MEMORY[8] + 8)));
  v10 = a1[2];
  v8 = *v10;
  v9 = *(v10 + 8);
  LODWORD(v10) = *MEMORY[8];
  if (v9 >= *MEMORY[8])
  {
    v10 = v10;
  }

  else
  {
    v10 = v9;
  }

  v25[0] = v26;
  v25[1] = 0x100000000;
  llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(v25, v8, &v8[32 * v10]);
  v11 = &v8[32 * *MEMORY[8]];
  v23[0] = v24;
  v23[1] = 0x100000000;
  llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(v23, v11, &v8[32 * v9]);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(a1[6], *(MEMORY[8] + 8), v25);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(a1[7], *(MEMORY[8] + 8), v23);
  llvm::SmallVectorTemplateBase<int,true>::push_back(a1[8], *(MEMORY[8] + 8));
  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  v12 = 1;
LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>>(a1, a3, a2);
  if (a2)
  {
    v6 = result;
    v7 = (*a1 + 48 * *(a1 + 8));
    v8 = a2;
    do
    {
      *v7 = v7 + 2;
      v7[1] = 0x100000000;
      if (*(v6 + 8))
      {
        result = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v7, v6);
      }

      v7 += 6;
      --v8;
    }

    while (v8);
  }

  *(a1 + 8) += a2;
  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + 48 * v1);
  *v2 = v2 + 2;
  v2[1] = 0x100000000;
  LODWORD(v2) = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return *a1 + 48 * v2 - 48;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<>(uint64_t a1)
{
  v8 = 0;
  v2 = a1 + 16;
  v3 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 48, &v8);
  v4 = &v3[6 * *(a1 + 8)];
  *v4 = v4 + 2;
  v4[1] = 0x100000000;
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::moveElementsForGrow(a1, v3);
  v5 = v8;
  if (*a1 != v2)
  {
    free(*a1);
  }

  *a1 = v3;
  v6 = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  return &v3[6 * v6 - 6];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<116ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v11[0] = a2;
  v11[1] = a4;
  v11[2] = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  v11[3] = 0;
  v12 = 0;
  v13 = 0;
  v5 = llvm::SmallVectorTemplateCommon<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>>(a1, v11, 1);
  v6 = *a1 + 40 * *(a1 + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 16);
  *v6 = *v5;
  *(v6 + 16) = v8;
  *(v6 + 32) = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  v9 = *MEMORY[0x277D85DE8];
  return *a1 + 40 * v6 - 40;
}

__n128 llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = a4;
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

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::Model(void *a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FC23B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23B98))
  {
    started = llvm::getTypeName<mlir::affine::AffineDmaStartOp>();
    _MergedGlobals_53 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(started, v12);
    __cxa_guard_release(&qword_27FC23B98);
  }

  v4 = _MergedGlobals_53;
  v13[0] = v14;
  v13[1] = 0x300000000;
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v5 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getAffineMapAttrForMemRef;
  v6 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v13, v6, v5);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v7 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getEffects;
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v13, v8, v7);
  mlir::OperationName::Impl::Impl(a1, "affine.dma_start", 0x10, a2, v4, v13);
  mlir::detail::InterfaceMap::~InterfaceMap(v13);
  *a1 = &unk_286E9D420;
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::foldHook(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaStartOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t llvm::getTypeName<mlir::affine::AffineDmaStartOp>()
{
  if ((atomic_load_explicit(&qword_27FC23BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BB0))
  {
    qword_27FC23BA0 = llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaStartOp>();
    *algn_27FC23BA8 = v1;
    __cxa_guard_release(&qword_27FC23BB0);
  }

  return qword_27FC23BA0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaStartOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineDmaStartOp]";
  v6 = 92;
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

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  if (*(*(a2 + 72) + 24) == a3)
  {
    v7 = *(***(a2 + 24) + 32);
    v12 = 261;
    v8 = "src_map";
  }

  else
  {
    v5 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
    v6 = *(*(a2 + 72) + 32 * (**(v5 + 8) + *(*(v5 + 8) + 4) + 1) + 24);
    v7 = *(***(a2 + 24) + 32);
    v12 = 261;
    if (v6 == a3)
    {
      v8 = "dst_map";
    }

    else
    {
      v8 = "tag_map";
    }
  }

  v11[0] = v8;
  v11[1] = 7;
  v9 = mlir::StringAttr::get(v7, v11, a3);
  (*(**(a2 + 48) + 80))(*(a2 + 48), a2, v8, 7);
  return v9;
}

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BC0))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineMapAccessInterface>();
    qword_27FC23BB8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23BC0);
  }

  return qword_27FC23BB8;
}

uint64_t llvm::getTypeName<mlir::affine::AffineMapAccessInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BD8))
  {
    qword_27FC23BC8 = llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface>();
    unk_27FC23BD0 = v1;
    __cxa_guard_release(&qword_27FC23BD8);
  }

  return qword_27FC23BC8;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineMapAccessInterface]";
  v6 = 100;
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

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaStartOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v6 = *(a2 + 72);
  v7 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a3, v5, v6, v7);
  v8 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
  v9 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  v10 = *(a2 + 72) + 32 * (**(v9 + 8) + *(*(v9 + 8) + 4) + 1);
  v11 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
  v12 = *(a3 + 8);
  if (v12 >= *(a3 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a3, v8, v10, v11);
  }

  else
  {
    v13 = *a3 + 40 * v12;
    *v13 = v8;
    *(v13 + 8) = v11;
    *(v13 + 16) = v10 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 36) = 0;
    ++*(a3 + 8);
  }

  v14 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
  v15 = *(a2 + 72) + 32 * mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v18);
  v16 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();

  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(a3, v14, v15, v16);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23BE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23BE8))
  {
    v1 = llvm::getTypeName<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>();
    qword_27FC23BE0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23BE8);
  }

  return qword_27FC23BE0;
}

uint64_t llvm::getTypeName<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C00))
  {
    qword_27FC23BF0 = llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>();
    *algn_27FC23BF8 = v1;
    __cxa_guard_release(&qword_27FC23C00);
  }

  return qword_27FC23BF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineMapAccessInterface::Trait<Empty>]";
  v6 = 114;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v53 = a2;
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 91);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 91;
  }

  v11 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  SrcIndices = mlir::affine::AffineDmaStartOp::getSrcIndices(a2);
  (*(*a3 + 240))(a3, v11, SrcIndices & 0xFFFFFFFFFFFFFFF9 | 2, v13);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 2)
  {
    *(v15 + 2) = 32;
    *v15 = 11357;
    *(v14 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v14, "], ", 3uLL);
  }

  v16 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * (**(v16 + 8) + *(*(v16 + 8) + 4) + 1) + 24));
  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 91);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 91;
  }

  v19 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "dst_map", 7);
  DstIndices = mlir::affine::AffineDmaStartOp::getDstIndices(&v53);
  (*(*a3 + 240))(a3, v19, DstIndices & 0xFFFFFFFFFFFFFFF9 | 2, v21);
  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if ((*(v22 + 3) - v23) > 2)
  {
    *(v23 + 2) = 32;
    *v23 = 11357;
    *(v22 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v22, "], ", 3uLL);
  }

  TagMemRefOperandIndex = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v53);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * TagMemRefOperandIndex + 24));
  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 91);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 91;
  }

  v27 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  TagIndices = mlir::affine::AffineDmaStartOp::getTagIndices(&v53);
  (*(*a3 + 240))(a3, v27, TagIndices & 0xFFFFFFFFFFFFFFF9 | 2, v29);
  v30 = (*(*a3 + 16))(a3);
  v31 = *(v30 + 4);
  if ((*(v30 + 3) - v31) > 2)
  {
    *(v31 + 2) = 32;
    *v31 = 11357;
    *(v30 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v30, "], ", 3uLL);
  }

  v32 = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v53);
  v33 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * (v32 + **(v33 + 8) + *(*(v33 + 8) + 4) + 1) + 24));
  if (mlir::affine::AffineDmaStartOp::isStrided(&v53))
  {
    v34 = (*(*a3 + 16))(a3);
    v35 = *(v34 + 4);
    if (*(v34 + 3) - v35 > 1uLL)
    {
      *v35 = 8236;
      *(v34 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v34, ", ", 2uLL);
    }

    if (mlir::affine::AffineDmaStartOp::isStrided(&v53))
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v36 = (*(a2 + 68) - 2);
      }

      else
      {
        v36 = 4294967294;
      }

      v37 = *(*(a2 + 72) + 32 * v36 + 24);
    }

    else
    {
      v37 = 0;
    }

    (*(*a3 + 160))(a3, v37);
    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (*(v38 + 3) - v39 > 1uLL)
    {
      *v39 = 8236;
      *(v38 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v38, ", ", 2uLL);
    }

    if (mlir::affine::AffineDmaStartOp::isStrided(&v53))
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v40 = (*(a2 + 68) - 1);
      }

      else
      {
        v40 = 0xFFFFFFFFLL;
      }

      v41 = *(*(a2 + 72) + 32 * v40 + 24);
    }

    else
    {
      v41 = 0;
    }

    (*(*a3 + 160))(a3, v41);
  }

  v42 = (*(*a3 + 16))(a3);
  v43 = *(v42 + 4);
  if ((*(v42 + 3) - v43) > 2)
  {
    *(v43 + 2) = 32;
    *v43 = 14880;
    *(v42 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v42, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v46 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "src_map", 7);
  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 32 * (**(v46 + 8) + *(*(v46 + 8) + 4) + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v47 = (*(*a3 + 16))(a3);
  v48 = *(v47 + 4);
  if (*(v47 + 3) - v48 > 1uLL)
  {
    *v48 = 8236;
    *(v47 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v47, ", ", 2uLL);
  }

  v49 = mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v53);
  v50 = *(*a3 + 32);
  v51 = *(*(*(a2 + 72) + 32 * v49 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;

  return v50(a3, v51);
}

uint64_t mlir::Op<mlir::affine::AffineDmaStartOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroResults(a1, a2))
  {
    v34 = a1;
    if (*(*(*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v3 = "expected DMA source to be of memref type";
LABEL_9:
      v35 = v3;
      v36 = 259;
      mlir::Operation::emitOpError(a1, &v35, v37);
      v4 = v37[200] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v37);
      goto LABEL_10;
    }

    v5 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, "src_map", 7);
    if (*(*(*(*(*(a1 + 72) + 32 * (**(v5 + 8) + *(*(v5 + 8) + 4) + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v3 = "expected DMA destination to be of memref type";
      goto LABEL_9;
    }

    if (*(*(*(*(*(a1 + 72) + 32 * mlir::affine::AffineDmaStartOp::getTagMemRefOperandIndex(&v34) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v3 = "expected DMA tag to be of memref type";
      goto LABEL_9;
    }

    v8 = *((*(**(a1 + 48) + 80))(*(a1 + 48), a1, "src_map", 7) + 8);
    v9 = *v8;
    v10 = v8[1];
    v11 = *((*(**(a1 + 48) + 80))(*(a1 + 48), a1, "dst_map", 7) + 8);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(**(a1 + 48) + 80))(*(a1 + 48), a1, "tag_map", 7);
    v16 = v10 + v9 + v12 + v13 + **(v14 + 8) + *(*(v14 + 8) + 4);
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v17 = *(a1 + 68);
      if (v17 == v16 + 4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 == -4)
      {
        goto LABEL_14;
      }

      v17 = 0;
    }

    if (v17 != v16 + 6)
    {
      v3 = "incorrect number of operands";
      goto LABEL_9;
    }

LABEL_14:
    AffineScope = mlir::affine::getAffineScope(a1, v15);
    SrcIndices = mlir::affine::AffineDmaStartOp::getSrcIndices(a1);
    if (v20)
    {
      v21 = v20;
      v22 = (SrcIndices + 24);
      while (1)
      {
        v23 = *v22;
        if (*(*(*(*v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v3 = "src index to dma_start must have 'index' type";
          goto LABEL_9;
        }

        if ((mlir::affine::isValidDim(*v22, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v23, AffineScope) & 1) == 0)
        {
          break;
        }

        v22 += 4;
        if (!--v21)
        {
          goto LABEL_20;
        }
      }

      v3 = "src index must be a valid dimension or symbol identifier";
    }

    else
    {
LABEL_20:
      DstIndices = mlir::affine::AffineDmaStartOp::getDstIndices(&v34);
      if (v25)
      {
        v26 = v25;
        v27 = (DstIndices + 24);
        while (1)
        {
          v28 = *v27;
          if (*(*(*(*v27 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
          {
            v3 = "dst index to dma_start must have 'index' type";
            goto LABEL_9;
          }

          if ((mlir::affine::isValidDim(*v27, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v28, AffineScope) & 1) == 0)
          {
            break;
          }

          v27 += 4;
          if (!--v26)
          {
            goto LABEL_26;
          }
        }

        v3 = "dst index must be a valid dimension or symbol identifier";
      }

      else
      {
LABEL_26:
        TagIndices = mlir::affine::AffineDmaStartOp::getTagIndices(&v34);
        if (!v30)
        {
          v4 = 1;
          goto LABEL_10;
        }

        v31 = v30;
        v32 = (TagIndices + 24);
        while (1)
        {
          v33 = *v32;
          if (*(*(*(*v32 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
          {
            v3 = "tag index to dma_start must have 'index' type";
            goto LABEL_9;
          }

          if ((mlir::affine::isValidDim(*v32, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v33, AffineScope) & 1) == 0)
          {
            break;
          }

          v32 += 4;
          v4 = 1;
          if (!--v31)
          {
            goto LABEL_10;
          }
        }

        v3 = "tag index must be a valid dimension or symbol identifier";
      }
    }

    goto LABEL_9;
  }

  v4 = 0;
LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::Model(void *a1, uint64_t a2)
{
  v12[6] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27FC23C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C10))
  {
    v9 = llvm::getTypeName<mlir::affine::AffineDmaWaitOp>();
    qword_27FC23C08 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v9, v10);
    __cxa_guard_release(&qword_27FC23C10);
  }

  v4 = qword_27FC23C08;
  v11[0] = v12;
  v11[1] = 0x300000000;
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v5 = mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaWaitOp>::getAffineMapAttrForMemRef;
  v6 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v6, v5);
  mlir::OperationName::Impl::Impl(a1, "affine.dma_wait", 0xF, a2, v4, v11);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  *a1 = &unk_286E9D4E8;
  v7 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::foldHook(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDmaWaitOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t llvm::getTypeName<mlir::affine::AffineDmaWaitOp>()
{
  if ((atomic_load_explicit(&qword_27FC23C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C28))
  {
    qword_27FC23C18 = llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaWaitOp>();
    unk_27FC23C20 = v1;
    __cxa_guard_release(&qword_27FC23C28);
  }

  return qword_27FC23C18;
}

const char *llvm::detail::getTypeNameImpl<mlir::affine::AffineDmaWaitOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::affine::AffineDmaWaitOp]";
  v6 = 91;
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

uint64_t mlir::affine::detail::AffineMapAccessInterfaceInterfaceTraits::Model<mlir::affine::AffineDmaWaitOp>::getAffineMapAttrForMemRef(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v8 = 261;
  v7[0] = "tag_map";
  v7[1] = 7;
  v5 = mlir::StringAttr::get(v4, v7, a3);
  (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  return v5;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::affine::AffineMapAccessInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::affine::AffineMapAccessInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[4] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 91);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 91;
  }

  TagIndices = mlir::affine::AffineDmaWaitOp::getTagIndices(a2);
  v20 = v22;
  v21 = 0x200000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v20, TagIndices, 0, TagIndices, v12);
  v13 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  (*(*a3 + 240))(a3, v13, v20 & 0xFFFFFFFFFFFFFFF9, v21);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if ((*(v14 + 3) - v15) > 2)
  {
    *(v15 + 2) = 32;
    *v15 = 11357;
    *(v14 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v14, "], ", 3uLL);
  }

  v16 = (*(**(a2 + 48) + 80))(*(a2 + 48), a2, "tag_map", 7);
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 32 * (**(v16 + 8) + *(*(v16 + 8) + 4) + 1) + 24));
  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if ((*(v17 + 3) - v18) > 2)
  {
    *(v18 + 2) = 32;
    *v18 = 14880;
    *(v17 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v17, " : ", 3uLL);
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v20 != v22)
  {
    free(v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::affine::AffineDmaWaitOp,mlir::OpTrait::MemRefsNormalizable,mlir::OpTrait::VariadicOperands,mlir::OpTrait::ZeroResults,mlir::OpTrait::OpInvariants,mlir::affine::AffineMapAccessInterface::Trait>::verifyInvariants(mlir::affine *a1, mlir::Operation *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroResults(a1, a2))
  {
    if (*(*(*(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      AffineScope = mlir::affine::getAffineScope(a1, v3);
      TagIndices = mlir::affine::AffineDmaWaitOp::getTagIndices(a1);
      if (!v10)
      {
LABEL_13:
        v5 = 1;
        goto LABEL_6;
      }

      v11 = v10;
      v12 = (TagIndices + 24);
      while (1)
      {
        v13 = *v12;
        if (*(*(*(*v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v4 = "index to dma_wait must have 'index' type";
          goto LABEL_4;
        }

        if ((mlir::affine::isValidDim(*v12, AffineScope) & 1) == 0 && (mlir::affine::isValidSymbol(v13, AffineScope) & 1) == 0)
        {
          break;
        }

        v12 += 4;
        if (!--v11)
        {
          goto LABEL_13;
        }
      }

      v4 = "index must be a valid dimension or symbol identifier";
    }

    else
    {
      v4 = "expected DMA tag to be of memref type";
    }

LABEL_4:
    v14 = v4;
    v15 = 259;
    mlir::Operation::emitOpError(a1, &v14, v16);
    v5 = v16[200] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.apply", 0xC, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9D5B0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "map";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v9, "map", 3, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "map", 3uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "map";
    v11[1] = 3;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineApplyOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineApplyOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  *v19 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
  v24 = v20;
  v22[0] = v16;
  v22[1] = v15;
  if ((llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22) & 1) == 0)
  {
    v23 = "affine.apply";
    v24 = 12;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineApplyOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 8);
  v21 = v7;
  v8 = *(v7 + 24);
  v9 = *(v8 + 8);
  if (v8)
  {
    v10 = v9 == 6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v16 = *(v8 + 16);
LABEL_13:
    v14 = *(*(a2 + 72) + 32 * v16 + 24) | 4;
    goto LABEL_14;
  }

  if (v8)
  {
    v11 = v9 == 7;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v16 = (*(v8 + 16) + *v7);
    goto LABEL_13;
  }

  v23[0] = v24;
  v23[1] = 0x100000000;
  v20 = 0;
  v12 = mlir::AffineMap::constantFold(&v21, a3, a4, v23, &v20);
  if (v20 == 1)
  {
    v13 = *(**(***(a2 + 24) + 32) + 560);
    v22 = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
    v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v13 + 232), &v22) & 0xFFFFFFFFFFFFFFFBLL;
    v15 = v23[0];
  }

  else
  {
    v19 = v12;
    v15 = v23[0];
    if (v19)
    {
      v14 = *v23[0] & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v15 != v24)
  {
    free(v15);
  }

LABEL_14:
  if (v14 < 8 || a2 - 16 == (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v14 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    result = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[10] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v18[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, " ", 1uLL);
  }

  else
  {
    *v8 = 32;
    ++*(v7 + 4);
  }

  (*(*a3 + 40))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)));
  v9 = *(a2 + 44);
  if ((v9 & 0x800000) != 0)
  {
    v10 = *(a2 + 72);
    v11 = *(a2 + 68);
    v12 = v10;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
  }

  printDimAndSymbolList(v10, 0, v12, v11, **(*(a2 + 64 + 16 * ((v9 >> 23) & 1)) + 8), a3);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v14 = *(AttrDictionary + 8);
  v15 = *(AttrDictionary + 16);
  v18[0] = "map";
  v18[1] = 3;
  result = (*(*a3 + 192))(a3, v14, v15, v18, 1);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::affine::AffineApplyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (!v5)
  {
    v18[0] = "requires attribute 'map'";
    v19 = 259;
    mlir::Operation::emitOpError(a1, v18, v20);
    v13 = v21;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_18:
    v14 = *(a1 + 44);
    v15 = *(*(a1 + 64 + 16 * ((v14 >> 23) & 1)) + 8);
    if ((v14 & 0x800000) != 0)
    {
      v16 = *(a1 + 68);
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15[1] + *v15)
    {
      if (v15[2] == 1)
      {
        v10 = 1;
        goto LABEL_16;
      }

      v17 = "mapping must produce one value";
    }

    else
    {
      v17 = "operand count and affine map dimension and symbol count must match";
    }

    v18[0] = v17;
    v19 = 259;
    mlir::Operation::emitOpError(a1, v18, v20);
    v10 = v21 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
    goto LABEL_16;
  }

  v20[0] = a1;
  if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v5, "map", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20))
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v6 = *(a1 + 68);
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 72) + 24;
        while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v8 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
        {
          ++v7;
          v8 += 32;
          if (v6 == v7)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_15;
      }
    }

LABEL_11:
    v9 = *(a1 + 36) ? a1 - 16 : 0;
    if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v9 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDelinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineDelinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.delinearize_index", 0x18, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9D678;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x625F636974617473 ? (v4 = *(a3 + 8) == 1936290657) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 12)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 0x625F636974617473 && v6 == 1936290657)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v8 = a4[1], *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v8[2] == 64)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v9;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "static_basis";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "static_basis", 0xCuLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
        {
          a5(&v20, a6);
          if (v20)
          {
            if (v20)
            {
              v18 = 0;
              v19 = v12;
              v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
              v16 = v22 + 24 * v23;
              v17 = *v15;
              *(v16 + 16) = *(v15 + 16);
              *v16 = v17;
              ++v23;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_12;
  }

  a5(&v20, a6);
  if (v20)
  {
    mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  result = 0;
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "static_basis";
    v11[1] = 12;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineDelinearizeIndexOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineDelinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineDelinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineDelinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineDelinearizeIndexOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineDelinearizeIndexOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  mlir::affine::AffineDelinearizeIndexOp::getMixedBasis(&v41, a2);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v9 = ((*(a2 + 68) - 1) << 32) | 1;
  }

  else
  {
    v9 = 0xFFFFFFFF00000001;
  }

  v37[0] = a2;
  v37[1] = v9;
  v38 = v40;
  v39 = 0x100000000;
  foldCstValueToCstAttrBasis(&v44, v41, v42, v37, (a3 + 8), (8 * a4 - 8) >> 3);
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != &v43)
  {
    free(v41);
  }

  v10 = a2 + 64;
  if (v47 == 1)
  {
    *(v10 + 16 * ((*(a2 + 44) >> 23) & 1)) = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(a2 + 24) + 32), v44, v45);
LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  if (*(a2 + 36) == 1)
  {
    ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, *(ODSOperands + 24) | 4);
    goto LABEL_11;
  }

  v12 = 0;
  if (*a3 && a4 == 1)
  {
    v41 = *a3;
    Int = mlir::IntegerAttr::getInt(&v41);
    v16 = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0);
    v17 = *(v10 + 16 * ((*(a2 + 44) >> 23) & 1));
    v18 = *(*(v16 + 24) + 8);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32) >> 3;
    v21 = *(a2 + 36);
    v22 = v20 == v21;
    v23 = v19 + 8 * (v20 == v21);
    v24 = v20 == v21 ? -1 : 0;
    if (v23 + 8 * v20 + 8 * v24 == v23)
    {
      v29 = Int;
    }

    else
    {
      v25 = -8 * (v20 + v24);
      v26 = (8 * v22 + 8 * v20 + 8 * v24 + v19 - 8);
      do
      {
        v28 = *v26--;
        v27 = v28;
        v29 = Int / v28;
        v30 = mlir::IntegerAttr::get((v18 & 0xFFFFFFFFFFFFFFF8), (v28 & ((Int % v28) >> 63)) + Int % v28);
        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v30 & 0xFFFFFFFFFFFFFFFBLL);
        if (Int)
        {
          if ((v27 ^ Int) < 0)
          {
            v29 = (((v27 >> 63) | 1) + Int) / v27 - 1;
          }
        }

        else
        {
          v29 = 0;
        }

        Int = v29;
        v25 += 8;
      }

      while (v25);
    }

    v31 = mlir::IntegerAttr::get((v18 & 0xFFFFFFFFFFFFFFF8), v29);
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v31 & 0xFFFFFFFFFFFFFFFBLL);
    v32 = *(a5 + 8);
    v12 = 1;
    if (v32)
    {
      v33 = (*a5 + 8 * v32 - 8);
      if (v33 > *a5)
      {
        v34 = *a5 + 8;
        do
        {
          v35 = *(v34 - 8);
          *(v34 - 8) = *v33;
          *v33-- = v35;
          v36 = v34 >= v33;
          v34 += 8;
        }

        while (!v36);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v47 == 1 && v44 != &v46)
  {
    free(v44);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[9] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[8] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v40[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 0);
  (*(*a3 + 160))(a3, *(ODSOperands + 24));
  v10 = (*(*a3 + 16))(a3);
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

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 3uLL)
  {
    *v13 = 1869901417;
    *(v12 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v12, "into", 4uLL);
  }

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

  v16 = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a2, 1u);
  v17 = *&a2[4 * ((a2[11] >> 23) & 1) + 16];
  mlir::printDynamicIndexList(a3, a2, v16, v18, *(v17 + 24), *(v17 + 32) >> 3, 0, 0, 2, 0, 1);
  v38 = v40;
  v39 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v38, "static_basis", 12);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v38, v39);
  v20 = (*(*a3 + 16))(a3);
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

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
    ++*(v22 + 4);
  }

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

  v26 = a2[9];
  if (v26)
  {
    v27 = a2 - 4;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    (*(*a3 + 32))(a3, *(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v26 != 1)
    {
      v28 = v27 - 4;
      v29 = 1;
      while (1)
      {
        v30 = (*(*a3 + 16))(a3);
        v31 = *(v30 + 4);
        if (*(v30 + 3) - v31 > 1uLL)
        {
          *v31 = 8236;
          *(v30 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v30, ", ", 2uLL);
        }

        v32 = *(a2 - 1) & 7;
        v33 = v27;
        v34 = v29;
        if (v32 == 6)
        {
          goto LABEL_34;
        }

        v35 = (5 - v32);
        v36 = v28;
        v34 = v29 - v35;
        if (v29 > v35)
        {
          break;
        }

LABEL_35:
        (*(*a3 + 32))(a3, *(v36 + 1) & 0xFFFFFFFFFFFFFFF8);
        ++v29;
        v28 -= 4;
        if (v26 == v29)
        {
          goto LABEL_36;
        }
      }

      v33 = &v27[-4 * v35];
LABEL_34:
      v36 = &v33[-6 * v34];
      goto LABEL_35;
    }
  }

LABEL_36:
  if (v38 != v40)
  {
    free(v38);
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::affine::AffineDelinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    v4 = *&a1[4 * ((a1[11] >> 23) & 1) + 16];
    if (v4)
    {
      v43[0] = a1;
      if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v43))
      {
        ODSOperands = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 0);
        v7 = v6;
        if (v6)
        {
          v8 = 0;
          v9 = ODSOperands + 24;
          while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v8))
          {
            ++v8;
            v9 += 32;
            if (v7 == v8)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_28;
        }

LABEL_10:
        v10 = mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 1u);
        if (v11)
        {
          v12 = v11;
          v13 = v10 + 24;
          while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v13 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7))
          {
            LODWORD(v7) = v7 + 1;
            v13 += 32;
            if (!--v12)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_28;
        }

LABEL_14:
        v14 = a1[9];
        if (a1[9])
        {
          v15 = a1 - 4;
        }

        else
        {
          v15 = 0;
        }

        if (v14)
        {
          v16 = 0;
          v17 = a1 - 4;
          while (1)
          {
            v18 = v15;
            if (v16)
            {
              v19 = *(a1 - 1) & 7;
              v20 = (a1 - 4);
              v21 = v16;
              if (v19 == 6)
              {
                goto LABEL_23;
              }

              v22 = (5 - v19);
              v18 = v17;
              v21 = v16 - v22;
              if (v16 > v22)
              {
                break;
              }
            }

LABEL_24:
            if (!mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(v18 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v16))
            {
              goto LABEL_28;
            }

            ++v16;
            v17 -= 4;
            if (v14 == v16)
            {
              goto LABEL_30;
            }
          }

          v20 = &a1[-4 * v22 - 4];
LABEL_23:
          v18 = v20 - 24 * v21;
          goto LABEL_24;
        }

LABEL_30:
        v27 = *&a1[4 * ((a1[11] >> 23) & 1) + 16];
        v28 = *(v27 + 32);
        v29 = v28 >> 3;
        v30 = a1[9];
        if (v28 >> 3 == v30 || (v28 >> 3) + 1 == v30)
        {
          if (v28 >= 8)
          {
            v34 = 0;
            v35 = *(v27 + 24);
            v36 = 8 * v29;
            v37 = 8 * v29;
            v38 = v35;
            do
            {
              v39 = *v38++;
              if (v39 == 0x8000000000000000)
              {
                ++v34;
              }

              v37 -= 8;
            }

            while (v37);
            mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 1u);
            if (v34 == v40)
            {
              v24 = 1;
              while (*v35 - 1 >= 0)
              {
                ++v35;
                v36 -= 8;
                if (!v36)
                {
                  goto LABEL_29;
                }
              }

              v33 = "no basis element may be statically non-positive";
              goto LABEL_48;
            }
          }

          else
          {
            v24 = 1;
            mlir::affine::AffineDelinearizeIndexOp::getODSOperands(a1, 1u);
            if (!v32)
            {
              goto LABEL_29;
            }
          }

          v33 = "mismatch between dynamic and static basis (kDynamic marker but no corresponding dynamic basis entry) -- this can only happen due to an incorrect fold/rewrite";
        }

        else
        {
          v33 = "should return an index for each basis element and up to one extra index";
        }

LABEL_48:
        v41[0] = v33;
        v42 = 259;
        mlir::Operation::emitOpError(a1, v41, v43);
        v24 = v44 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v43);
        goto LABEL_29;
      }
    }

    else
    {
      v41[0] = "requires attribute 'static_basis'";
      v42 = 259;
      mlir::Operation::emitOpError(a1, v41, v43);
      v23 = v44;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v43);
      if ((v23 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_28:
  v24 = 0;
LABEL_29:
  v25 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.for", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9D740;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | v4;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v11 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v11)
    {
      v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88, 3);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    goto LABEL_30;
  }

  if (a4 == 4)
  {
    if (*a3 != 1885697139)
    {
LABEL_30:
      LOBYTE(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
LABEL_33:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  v5 = 0;
  if (a4 == 13)
  {
    if (*a3 == 0x756F427265776F6CLL && *(a3 + 5) == 0x70614D646E756F42)
    {
      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    }

    else
    {
      if (*a3 != 0x756F427265707075 || *(a3 + 5) != 0x70614D646E756F42)
      {
        goto LABEL_30;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
    }

    goto LABEL_33;
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 > 18)
  {
    if (v5 == 19)
    {
      v11 = *v4 ^ 0x53646E617265706FLL;
      v12 = v4[1] ^ 0x6953746E656D6765;
      v13 = *(v4 + 11);
      v14 = 1400139365;
    }

    else
    {
      if (v5 != 21)
      {
        return result;
      }

      v11 = *v4 ^ 0x5F646E617265706FLL;
      v12 = v4[1] ^ 0x5F746E656D676573;
      v13 = *(v4 + 13);
      v14 = 1935635566;
    }

    if (v11 | v12 | v13 ^ (v14 | 0x73657A6900000000))
    {
      v16 = 1;
    }

    else
    {
      v16 = a4 == 0;
    }

    if (!v16 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v17 = *(a4 + 8);
      if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v17[2] == 32 && *(a4 + 16) == 3)
      {
        v18 = *(a4 + 32);
        if (v18 >= 4)
        {
          return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88), *(a4 + 24), v18 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (v5 == 4)
  {
    if (*v4 == 1885697139)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v15 = a4;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v15;
    }
  }

  else if (v5 == 13)
  {
    if (*v4 == 0x756F427265776F6CLL && *(v4 + 5) == 0x70614D646E756F42)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
        {
          v19 = a4;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v19;
    }

    else
    {
      v7 = *v4;
      v8 = *(v4 + 5);
      if (v7 == 0x756F427265707075 && v8 == 0x70614D646E756F42)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v10;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v23 = 261;
    v21 = "lowerBoundMap";
    v22 = 13;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "step";
    v22 = 4;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = *(**v14 + 32);
    v23 = 261;
    v21 = "upperBoundMap";
    v22 = 13;
    v16 = mlir::StringAttr::get(v15, &v21, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 24, 3);
  v18 = *(**v17 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v20 = mlir::StringAttr::get(v18, &v21, v19);
  mlir::NamedAttrList::push_back(a3, v20, v17);
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 0;
  if ((v10 & 1) == 0 || (v11 = v9[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v11, "lowerBoundMap", 13, a4, a5))
  {
    v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
    if ((v13 & 1) == 0 || (v14 = v12[1]) == 0 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v14, a4, a5))
    {
      v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
      if ((v16 & 1) == 0)
      {
        return 1;
      }

      v17 = v15[1];
      if (!v17 || mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v17, "upperBoundMap", 13, a4, a5))
      {
        return 1;
      }
    }
  }

  return result;
}

double mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v30, a6);
    if (v30)
    {
      mlir::Diagnostic::operator<<<42ul>(v31, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "lowerBoundMap", 0xDuLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        a5(&v30, a6);
        if (v30)
        {
LABEL_24:
          mlir::Diagnostic::operator<<<59ul>(v31, v15);
LABEL_25:
          if (v30)
          {
            v28 = 0;
            v29 = v14;
            v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v28, 1);
            v21 = v32 + 24 * v33;
            v22 = *v20;
            *(v21 + 16) = *(v20 + 16);
            *v21 = v22;
            ++v33;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      *a3 = v14;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "step", 4uLL);
  if (v17)
  {
    v14 = *(v16 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a5(&v30, a6);
        if (v30)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }

      a3[1] = v14;
    }
  }

  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "upperBoundMap", 0xDuLL);
  if (v19)
  {
    v14 = *(v18 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
      {
        a5(&v30, a6);
        if (v30)
        {
          goto LABEL_24;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        goto LABEL_5;
      }

      a3[2] = v14;
    }
  }

  v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v24 & 1) == 0 || (v25 = *(v23 + 8)) == 0) && ((v26 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v27 & 1) == 0) || (v25 = *(v26 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 3, 3, v25, a5, a6, "DenseI32ArrayAttr", 17))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v28[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v26 = v28;
  v27 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v25 = 261;
    v23 = "lowerBoundMap";
    v24 = 13;
    v9 = mlir::StringAttr::get(v8, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v25 = 261;
    v23 = "step";
    v24 = 4;
    v12 = mlir::StringAttr::get(v11, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v12, v10);
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    v14 = *(**v13 + 32);
    v25 = 261;
    v23 = "upperBoundMap";
    v24 = 13;
    v15 = mlir::StringAttr::get(v14, &v23, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v15, v13);
  }

  v16 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 24, 3);
  v17 = *(**v16 + 32);
  v25 = 261;
  v23 = "operandSegmentSizes";
  v24 = 19;
  v19 = mlir::StringAttr::get(v17, &v23, v18);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v26, v19, v16);
  if (v27)
  {
    v20 = mlir::DictionaryAttr::get(v3, v26, v27);
  }

  else
  {
    v20 = 0;
  }

  if (v26 != v28)
  {
    free(v26);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineForOp>::hashProperties(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v18 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v16 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = *(a2 + 28);
  v12 = __ROR8__(v11 + 12, 12);
  v15 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v12 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v11;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v19, 0, v19, v20, &v18, &v17, &v16, &v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineForOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineForOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineForOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineForOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineForOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineForOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::affine::AffineForOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineForOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineForOp>,mlir::LoopLikeOpInterface::Trait<mlir::affine::AffineForOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineForOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3))
  {
    goto LABEL_15;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_15:
      result = 0;
      goto LABEL_16;
    }

    if (*(v9 + 16) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_15;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::AffineMapAttr>(a1, v3 + 2) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3uLL) & 1) == 0)
  {
    goto LABEL_15;
  }

  result = 1;
LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 16))(a3, v7);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 24, 3);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 16))(a3, *(v6 + 8));
  (*(*a3 + 16))(a3, *(v6 + 16));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 24), 3);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineForOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x80040FDC59921uLL);
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::replaceWithAdditionalYields;
  v3 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::isDefinedOutsideOfLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v4 = *(mlir::Value::getParentRegion(&v10) + 16);
  if (v4 == a2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v6)
    {
      break;
    }

    v4 = *(v6 + 16);
    v7 = v4 != 0;
    if (v4 == a2 || v4 == 0)
    {
      return !v7;
    }
  }

  v7 = 0;
  return !v7;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopRegions(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::Region *>::append<mlir::Region * const*,void>(a2, &v3, &v4);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopInductionVars(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v3 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  if (v3)
  {
    v4 = v3 - 8;
  }

  else
  {
    v4 = 0;
  }

  v6 = **(v4 + 48);
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v7, &v6, &v7);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopLowerBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64) + 8);
  if (*(v3 + 8) == 1 && (v4 = *(v3 + 24), *(v4 + 8) == 5))
  {
    v6[0] = *(***(a1 + 24) + 32);
    memset(&v6[1], 0, 24);
    __src = mlir::Builder::getI64IntegerAttr(v6, *(v4 + 16)) & 0xFFFFFFFFFFFFFFFBLL;
    v8 = v10;
    v9 = 0x600000000;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v8, &__src, &v8);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (v9)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v8);
    }

    *(a2 + 64) = 1;
    if (v8 != v10)
    {
      free(v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopSteps(mlir::affine::AffineForOp *this@<X1>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v5[0] = *(***(this + 3) + 32);
  memset(&v5[1], 0, 24);
  StepAsInt = mlir::affine::AffineForOp::getStepAsInt(this);
  __src = mlir::Builder::getI64IntegerAttr(v5, StepAsInt) & 0xFFFFFFFFFFFFFFFBLL;
  v7 = v9;
  v8 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v7, &__src, &v7);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v8)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v7);
  }

  *(a2 + 64) = 1;
  if (v7 != v9)
  {
    free(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getLoopUpperBounds(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 80) + 8);
  if (*(v3 + 8) == 1 && (v4 = *(v3 + 24), *(v4 + 8) == 5))
  {
    v6[0] = *(***(a1 + 24) + 32);
    memset(&v6[1], 0, 24);
    __src = mlir::Builder::getI64IntegerAttr(v6, *(v4 + 16)) & 0xFFFFFFFFFFFFFFFBLL;
    v8 = v10;
    v9 = 0x600000000;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v8, &__src, &v8);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    if (v9)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v8);
    }

    *(a2 + 64) = 1;
    if (v8 != v10)
    {
      free(v8);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getInitsMutable(uint64_t a1, uint64_t a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  v3 += 22;
  v6 = v3[2];
  v7 = v5 + v4;
  v8 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
  v9 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v3, 3);
  __src = 2;
  v15 = v8;
  v16 = v9;
  v17 = a2;
  v18 = v7;
  v19 = v6;
  v20[0] = v21;
  v20[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v20, &__src, &v17);
  if ((*(v17 + 46) & 0x80) != 0)
  {
    v10 = *(v17 + 72);
  }

  else
  {
    v10 = 0;
  }

  v11 = v18;
  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 + 32 * v11;
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionIterArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  v5 = ((*(v3 + 56) - v4) >> 3) - 1;
  return v4 + 8;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getYieldedValuesMutable(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 68);
    v6 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = 1;
}

void mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::replaceWithAdditionalYields(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63[8] = *MEMORY[0x277D85DE8];
  v8 = (a3 + 24);
  v42 = *(a3 + 24);
  *(a3 + 24) = *(a2 + 16);
  *(a3 + 32) = a2;
  v9 = a2 + 64;
  v10 = *(a2 + 44);
  v11 = (a2 + 64 + 16 * ((v10 >> 23) & 1));
  v12 = (v11[7] + v11[6]);
  v13 = v11[8];
  if ((v10 & 0x800000) != 0)
  {
    v14 = *(a2 + 72);
  }

  else
  {
    v14 = 0;
  }

  v46 = &v48;
  v47 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v46, v14 + 32 * v12, 0, v14 + 32 * v12, (v13 + v12) - v12);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v46, a4, 0, a4, a5);
  v15 = *(a2 + 24);
  v16 = *(a2 + 44);
  v17 = v9 + 16 * ((v16 >> 23) & 1);
  if ((v16 & 0x800000) != 0)
  {
    v18 = *(a2 + 72);
    v19 = v18 & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v18 = 0;
    v19 = 2;
  }

  v41 = v19;
  v21 = *(v17 + 24);
  v20 = *(v17 + 28);
  v39 = *(*v17 + 8);
  v40 = *(*(v17 + 16) + 8);
  StepAsInt = mlir::affine::AffineForOp::getStepAsInt(a2);
  v22 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineForOp,void>::id, *(**v15 + 32));
  if (v23)
  {
    v54 = v15;
    v55 = v22;
    v56[0] = &v57;
    v24 = (v20 + v21) - v21;
    v56[1] = 0x400000000;
    v58[0] = &v59;
    v58[1] = 0x400000000;
    v60[0] = v61;
    v60[1] = 0x400000000;
    v61[8] = 4;
    v61[9] = v62;
    v61[10] = 0x100000000;
    v62[1] = v63;
    v62[2] = 0x100000000;
    v63[2] = 0;
    v63[1] = 0;
    v63[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v63[4] = 0;
    v63[6] = 0;
    v25 = (v18 + 32 * v21) & 0xFFFFFFFFFFFFFFF9;
    v26 = v47;
    v27 = v46 & 0xFFFFFFFFFFFFFFF9;
    v37 = *v8;
    v49 = __PAIR64__(v24, v21);
    v36 = v24;
    LODWORD(v50) = v47;
    v28 = mlir::detail::DenseArrayAttrImpl<int>::get(*(v8 - 2), &v49, 3);
    mlir::OperationState::addAttribute(&v54, "operandSegmentSizes", 0x13, v28);
    v49 = v27;
    v50 = 0;
    if (v26)
    {
      for (i = 0; i != v26; v50 = i)
      {
        __src = (*(mlir::ValueRange::dereference_iterator(&v49, i) + 8) & 0xFFFFFFFFFFFFFFF8);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v58, &__src, v44);
        ++i;
      }
    }

    v30 = *(*(v55 + 96) + 8);
    IntegerAttr = mlir::Builder::getIntegerAttr((v8 - 2), *(**(v8 - 2) + 472), StepAsInt);
    mlir::NamedAttrList::push_back(v60, v30, IntegerAttr);
    v32 = **(v55 + 96);
    v33 = mlir::AffineMapAttr::get(v39);
    mlir::NamedAttrList::push_back(v60, v32, v33);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v56, v41, 0, v41, v21);
    v34 = *(*(v55 + 96) + 16);
    v35 = mlir::AffineMapAttr::get(v40);
    mlir::NamedAttrList::push_back(v60, v34, v35);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v56, v25 | 2, 0, v25 | 2, v36);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v56, v27, 0, v27, v26);
    mlir::OperationState::addRegion(&v54);
  }

  v53 = 1283;
  v51 = "affine.for";
  v52 = 10;
  v45 = 259;
  llvm::operator+(&v49, &__src, &v54);
  llvm::report_fatal_error(&v54, 1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::areTypesCompatible;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  v4 = v3[22];
  v5 = v3[23];
  LODWORD(v3) = v3[24];
  if ((v2 & 0x800000) != 0)
  {
    v6 = *(a2 + 72);
  }

  else
  {
    v6 = 0;
  }

  return v6 + 32 * (v5 + v4);
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getEntrySuccessorRegions(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::affine::AffineForOp::getSuccessorRegions(&v6, 0, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineForOp>::getSuccessorRegions(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::affine::AffineForOp::getSuccessorRegions(&v5, a3, a4).n128_u64[0];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = (*(a2 + 44) >> 23) & 1;
  v45 = a2;
  v42 = &v45;
  v9 = *(*(a2 + 64 + 16 * v8) + 8);
  if (*(v9 + 8) == 1 && *(*(v9 + 24) + 8) == 5)
  {
    v10 = 0;
    v11 = a2;
  }

  else
  {
    v10 = foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(&v42, 1);
    v11 = v45;
    v8 = (*(v45 + 11) >> 23) & 1;
  }

  v12 = *(v11[2 * v8 + 10] + 8);
  if (*(v12 + 8) != 1 || *(*(v12 + 24) + 8) != 5)
  {
    v10 |= foldLoopBounds(mlir::affine::AffineForOp)::$_0::operator()(&v42, 0);
  }

  v41 = a2;
  v13 = *(a2 + 44);
  v14 = *(v7 + 16 * ((v13 >> 23) & 1) + 24);
  if ((v13 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  v45 = v47;
  v46 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v45, v15, 0, v15, v14);
  v16 = *(a2 + 44);
  v17 = v7 + 16 * ((v16 >> 23) & 1);
  v18 = *(v17 + 24);
  v19 = *(v17 + 28);
  if ((v16 & 0x800000) != 0)
  {
    v20 = *(a2 + 72);
  }

  else
  {
    v20 = 0;
  }

  v42 = v44;
  v43 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v42, v20 + 32 * v18, 0, v20 + 32 * v18, (v19 + v18) - v18);
  v21 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
  v22 = *(*v21 + 8);
  v23 = *(v21[2] + 8);
  v39 = v23;
  v40 = v22;
  composeAffineMapAndOperands(&v40, &v45);
  mlir::affine::canonicalizeMapAndOperands(&v40, &v45);
  simplifyMinOrMaxExprWithOperands(&v40, v45, v46, 1);
  simplifyMinOrMaxExprWithOperands(&v39, v42, v43, 0);
  v40 = mlir::removeDuplicateExprs(v40);
  composeAffineMapAndOperands(&v39, &v42);
  mlir::affine::canonicalizeMapAndOperands(&v39, &v42);
  v24 = mlir::removeDuplicateExprs(v39);
  v39 = v24;
  v25 = v40 == v22 && v24 == v23;
  v26 = !v25;
  if (!v25)
  {
    if (v40 == v22)
    {
      v27 = v24;
    }

    else
    {
      mlir::affine::AffineForOp::setLowerBound(&v41, v45 & 0xFFFFFFFFFFFFFFF9, v46, v40);
      v27 = v39;
    }

    if (v27 != v23)
    {
      mlir::affine::AffineForOp::setUpperBound(&v41, v42 & 0xFFFFFFFFFFFFFFF9, v43, v27);
    }
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  v28 = v10 | v26;
  if ((v30 & 1) != 0 && !TrivialConstantTripCount && *(a2 + 36))
  {
    v31 = *(a2 + 44);
    v32 = (v7 + 16 * ((v31 >> 23) & 1));
    v33 = (v32[7] + v32[6]);
    v34 = v32[8];
    if ((v31 & 0x800000) != 0)
    {
      v35 = *(a2 + 72);
      v36 = v35 + 32 * v33;
    }

    else
    {
      v35 = 0;
      v36 = 32 * v33;
    }

    *(a5 + 8) = 0;
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a5, v36, 0, v35 + 32 * v33, (v33 + v34) - v33);
    v28 = 1;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v28;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[14] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[13] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 13);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23C38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C38))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>();
    qword_27FC23C30 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23C38);
  }

  return qword_27FC23C30;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23C50))
  {
    qword_27FC23C40 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>();
    *algn_27FC23C48 = v1;
    __cxa_guard_release(&qword_27FC23C50);
  }

  return qword_27FC23C40;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<Empty>]";
  v6 = 148;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v84 = *MEMORY[0x277D85DE8];
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

  v9 = a2 + 64;
  v10 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  (*(*a3 + 152))(a3, **(v11 + 48), 0, 0, 1);
  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 2)
  {
    *(v13 + 2) = 32;
    *v13 = 15648;
    *(v12 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v12, " = ", 3uLL);
  }

  v14 = *(a2 + 44);
  if ((v14 & 0x800000) != 0)
  {
    v15 = *(a2 + 72);
  }

  else
  {
    v15 = 0;
  }

  printBound(*(v9 + 16 * ((v14 >> 23) & 1)), v15, *(v9 + 16 * ((v14 >> 23) & 1) + 24), "max", a3);
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 3uLL)
  {
    *v17 = 544175136;
    *(v16 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v16, " to ", 4uLL);
  }

  v18 = *(a2 + 44);
  v19 = v9 + 16 * ((v18 >> 23) & 1);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 28);
  if ((v18 & 0x800000) != 0)
  {
    v23 = *(a2 + 72);
  }

  else
  {
    v23 = 0;
  }

  printBound(v20, v23 + 32 * v21, (v22 + v21) - v21, "min", a3);
  if (mlir::affine::AffineForOp::getStepAsInt(a2) != 1)
  {
    v24 = (*(*a3 + 16))(a3);
    v25 = *(v24 + 4);
    if ((*(v24 + 3) - v25) > 5)
    {
      *(v25 + 4) = 8304;
      *v25 = 1702130464;
      *(v24 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v24, " step ", 6uLL);
    }

    StepAsInt = mlir::affine::AffineForOp::getStepAsInt(a2);
    v27 = (*(*a3 + 16))(a3);
    llvm::write_integer(v27, StepAsInt, 0, 0);
  }

  NumIterOperands = mlir::affine::AffineForOp::getNumIterOperands(a2);
  if (!NumIterOperands)
  {
    goto LABEL_66;
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  v80 = NumIterOperands;
  if ((*(v29 + 3) - v30) > 0xA)
  {
    *(v30 + 7) = 678651762;
    *v30 = *" iter_args(";
    *(v29 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v29, " iter_args(", 0xBuLL);
  }

  v31 = *(a2 + 44);
  v32 = (v9 + 16 * ((v31 >> 23) & 1));
  v33 = *(((v32 + ((v31 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v33)
  {
    v34 = v33 - 8;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v34 + 48);
  v36 = *(v34 + 56) - v35;
  v37 = v36 >> 3;
  v38 = (v36 >> 3) - 1;
  if ((v31 & 0x800000) != 0)
  {
    v39 = *(a2 + 72);
    if (v36 >> 3 != 1)
    {
LABEL_31:
      v40 = v32[8];
      if (v40)
      {
        v41 = (v32[7] + v32[6]);
        v42 = v39 + 32 * v41;
        v43 = *(v42 + 24);
        (*(*a3 + 160))(a3, *(v35 + 8));
        v44 = (*(*a3 + 16))(a3);
        v45 = *(v44 + 4);
        if ((*(v44 + 3) - v45) > 2)
        {
          *(v45 + 2) = 32;
          *v45 = 15648;
          *(v44 + 4) += 3;
        }

        else
        {
          llvm::raw_ostream::write(v44, " = ", 3uLL);
        }

        (*(*a3 + 160))(a3, v43);
        if (v38 != 1)
        {
          v46 = (v40 + v41);
          v47 = (v35 + 16);
          v48 = 8 * v37 - 16;
          v49 = (v42 + 56);
          v50 = ~v41 + v46;
          do
          {
            if (!v50)
            {
              break;
            }

            v51 = (*(*a3 + 16))(a3);
            v52 = *(v51 + 4);
            if (*(v51 + 3) - v52 > 1uLL)
            {
              *v52 = 8236;
              *(v51 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v51, ", ", 2uLL);
            }

            v53 = *v49;
            (*(*a3 + 160))(a3, *v47);
            v54 = (*(*a3 + 16))(a3);
            v55 = *(v54 + 4);
            if ((*(v54 + 3) - v55) > 2)
            {
              *(v55 + 2) = 32;
              *v55 = 15648;
              *(v54 + 4) += 3;
            }

            else
            {
              llvm::raw_ostream::write(v54, " = ", 3uLL);
            }

            (*(*a3 + 160))(a3, v53);
            ++v47;
            v49 += 4;
            --v50;
            v48 -= 8;
          }

          while (v48);
        }
      }
    }
  }

  else
  {
    v39 = 0;
    if (v36 >> 3 != 1)
    {
      goto LABEL_31;
    }
  }

  v56 = (*(*a3 + 16))(a3);
  v57 = *(v56 + 4);
  if ((*(v56 + 3) - v57) > 5)
  {
    *(v57 + 4) = 10272;
    *v57 = 1043144745;
    *(v56 + 4) += 6;
  }

  else
  {
    llvm::raw_ostream::write(v56, ") -> (", 6uLL);
  }

  v58 = *(a2 + 36);
  if (v58)
  {
    v59 = a2 - 16;
  }

  else
  {
    v59 = 0;
  }

  if (v58)
  {
    (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v58 != 1)
    {
      v60 = v59 - 16;
      v61 = 1;
      while (1)
      {
        v62 = (*(*a3 + 16))(a3);
        v63 = *(v62 + 4);
        if (*(v62 + 3) - v63 > 1uLL)
        {
          *v63 = 8236;
          *(v62 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v62, ", ", 2uLL);
        }

        v64 = *(a2 - 8) & 7;
        v65 = v59;
        v66 = v61;
        if (v64 == 6)
        {
          goto LABEL_60;
        }

        v67 = (5 - v64);
        v68 = v60;
        v66 = v61 - v67;
        if (v61 > v67)
        {
          break;
        }

LABEL_61:
        (*(*a3 + 32))(a3, *(v68 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v61;
        v60 -= 16;
        if (v58 == v61)
        {
          goto LABEL_62;
        }
      }

      v65 = v59 - 16 * v67;
LABEL_60:
      v68 = v65 - 24 * v66;
      goto LABEL_61;
    }
  }

LABEL_62:
  v69 = (*(*a3 + 16))(a3);
  v70 = *(v69 + 4);
  if (*(v69 + 3) == v70)
  {
    llvm::raw_ostream::write(v69, ")", 1uLL);
  }

  else
  {
    *v70 = 41;
    ++*(v69 + 4);
  }

  v9 = a2 + 64;
  NumIterOperands = v80;
LABEL_66:
  v71 = (*(*a3 + 16))(a3);
  v72 = *(v71 + 4);
  if (v72 >= *(v71 + 3))
  {
    llvm::raw_ostream::write(v71, 32);
  }

  else
  {
    *(v71 + 4) = v72 + 1;
    *v72 = 32;
  }

  (*(*a3 + 224))(a3, ((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, NumIterOperands != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v74 = *(AttrDictionary + 8);
  v75 = *(AttrDictionary + 16);
  v76 = *(*(a2 + 48) + 96);
  v77 = *(v76[2] + 16);
  v81[0] = *(*v76 + 16);
  v81[1] = v77;
  v81[2] = *(v76[1] + 16);
  v82 = "operandSegmentSizes";
  v83 = 19;
  result = (*(*a3 + 192))(a3, v74, v75, v81, 4);
  v79 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_48;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4))
  {
    goto LABEL_48;
  }

  v5 = *(a1 + 44);
  if ((v5 & 0x7FFFFF) == 0)
  {
    goto LABEL_22;
  }

  v6 = 0;
  v7 = (((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_12;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v35 = 257;
      mlir::Operation::emitOpError(a1, v34, &v36);
      if (v36)
      {
        mlir::Diagnostic::operator<<<26ul>(&v37, "expects a non-empty block");
      }

      v11 = v38;
      goto LABEL_20;
    }

LABEL_12:
    ++v6;
    v7 += 3;
    if ((v5 & 0x7FFFFF) == v6)
    {
      goto LABEL_22;
    }
  }

  v33 = v6;
  v34[0] = "expects region #";
  v35 = 259;
  mlir::Operation::emitOpError(a1, v34, &v36);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v36, &v33);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_20:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
  if (v11)
  {
LABEL_48:
    v26 = 0;
    goto LABEL_49;
  }

  LODWORD(v5) = *(a1 + 44);
LABEL_22:
  v12 = a1 + 64;
  v13 = (a1 + 64 + 16 * ((v5 >> 23) & 1));
  v14 = *v13;
  if (!*v13)
  {
    v25 = "requires attribute 'lowerBoundMap'";
LABEL_37:
    v34[0] = v25;
    v35 = 259;
    mlir::Operation::emitOpError(a1, v34, &v36);
    v26 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
    goto LABEL_49;
  }

  v15 = v13[1];
  if (!v15)
  {
    v25 = "requires attribute 'step'";
    goto LABEL_37;
  }

  v16 = v13[2];
  if (!v16)
  {
    v25 = "requires attribute 'upperBoundMap'";
    goto LABEL_37;
  }

  v36 = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v14, "lowerBoundMap", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v36))
  {
    goto LABEL_48;
  }

  v36 = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(v16, "upperBoundMap", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v36))
  {
    goto LABEL_48;
  }

  v36 = a1;
  if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(v15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v36))
  {
    goto LABEL_48;
  }

  v17 = *(a1 + 44);
  v18 = (v17 >> 23) & 1;
  v19 = *(v12 + 16 * v18 + 24);
  if ((v17 & 0x800000) != 0)
  {
    v20 = *(a1 + 72);
    if (v19)
    {
LABEL_30:
      v21 = 0;
      v22 = v20 + 24;
      while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v21))
      {
        ++v21;
        v22 += 32;
        if (v19 == v21)
        {
          v17 = *(a1 + 44);
          v18 = (v17 >> 23) & 1;
          v23 = v17 & 0x800000;
          v24 = *(v12 + 16 * v18 + 24);
          goto LABEL_41;
        }
      }

      goto LABEL_48;
    }
  }

  else
  {
    v20 = 0;
    if (v19)
    {
      goto LABEL_30;
    }
  }

  v24 = 0;
  v23 = v17 & 0x800000;
LABEL_41:
  v27 = *(v12 + 16 * v18 + 28);
  if (v23)
  {
    v28 = *(a1 + 72);
    if (v27)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v28 = 0;
    if (v27)
    {
LABEL_43:
      v29 = v27 + v24 - v24;
      v30 = v28 + 32 * v24 + 24;
      while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v30 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v19))
      {
        LODWORD(v19) = v19 + 1;
        v30 += 32;
        if (!--v29)
        {
          LODWORD(v17) = *(a1 + 44);
          goto LABEL_47;
        }
      }

      goto LABEL_48;
    }
  }

LABEL_47:
  v26 = mlir::affine::__mlir_ods_local_region_constraint_AffineOps1(a1, ((v12 + 16 * ((v17 >> 23) & 1) + ((v17 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "region", 6);
LABEL_49:
  v31 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

uint64_t mlir::Op<mlir::affine::AffineForOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::LoopLikeOpInterface::Trait,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(mlir::detail *this, mlir::Operation *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id)
        {
          v35 = 1283;
          v34[0] = "expects regions to end with '";
          v34[2] = "affine.yield";
          v34[3] = 12;
          v36[0] = v34;
          v36[2] = "', found '";
          v37 = 770;
          v20 = *(v8 + 8);
          v38 = v36;
          v39 = *(v20 + 16);
          v40 = 1282;
          v41[0] = &v38;
          v41[2] = "'";
          v42 = 770;
          mlir::Operation::emitOpError(this, v41, v45);
          mlir::Diagnostic::attachNote(v46, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if ((mlir::detail::verifyLoopLikeOpInterface(this, a2) & 1) == 0 || (mlir::detail::verifyTypesAlongControlFlowEdges(this, v9) & 1) == 0)
  {
    goto LABEL_19;
  }

  v41[0] = this;
  v10 = this + 64;
  v11 = *(this + 11);
  v12 = (v11 >> 23) & 1;
  v13 = (this + 16 * v12 + 64);
  v14 = *(((v13 + ((v11 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
  if (v14)
  {
    v15 = v14 - 8;
  }

  else
  {
    v15 = 0;
  }

  v17 = v15 + 48;
  v16 = *(v15 + 48);
  if (((*(v17 + 8) - v16) & 0x7FFFFFFF8) != 0 && *(*(*(*v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v23 = *(*v13 + 8);
    if (v23[1] + *v23)
    {
      if ((v11 & 0x800000) != 0)
      {
        v24 = *(this + 9);
      }

      else
      {
        v24 = 0;
      }

      if ((verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(v41, v24, v13[6], *v23) & 1) == 0)
      {
        goto LABEL_19;
      }

      v11 = *(this + 11);
      v12 = (v11 >> 23) & 1;
    }

    v25 = &v10[16 * v12];
    v26 = *(*(v25 + 2) + 8);
    v27 = *v26;
    if (!(v26[1] + *v26) || ((v28 = *(v25 + 6), v29 = *(v25 + 7), (v11 & 0x800000) == 0) ? (v30 = 0) : (v30 = *(this + 9)), (verifyDimAndSymbolIdentifiers<mlir::affine::AffineForOp>(v41, (v30 + 32 * v28), (v29 + v28) - v28, v27) & 1) != 0))
    {
      v31 = *(this + 9);
      if (v31)
      {
        if (mlir::affine::AffineForOp::getNumIterOperands(this) != v31)
        {
          v18 = "mismatch between the number of loop-carried values and results";
          goto LABEL_17;
        }

        v32 = *((&v10[16 * ((*(this + 11) >> 23) & 1) + 7 + ((*(this + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10) + 8);
        if (v32)
        {
          v33 = v32 - 8;
        }

        else
        {
          v33 = 0;
        }

        if (((*(v33 + 56) - *(v33 + 48)) >> 3) - 1 != v31)
        {
          v18 = "mismatch between the number of basic block args and results";
          goto LABEL_17;
        }
      }

      v19 = 1;
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  v18 = "expected body to have a single index argument for the induction variable";
LABEL_17:
  v43 = v18;
  v44 = 259;
  mlir::Operation::emitOpError(this, &v43, v45);
  v19 = v47 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v45);
LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineIfOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::NoRegionArguments<mlir::affine::AffineIfOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineIfOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineIfOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineIfOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineIfOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineIfOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineIfOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.if", 9, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineIfOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9D808;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::foldHook(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x6F697469646E6F63 ? (v4 = *(a3 + 8) == 110) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == 0x6F697469646E6F63 && v6 == 110)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "condition";
    v7[1] = 9;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(v9, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "condition", 9uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "condition";
    v11[1] = 9;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineIfOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicResults<mlir::affine::AffineIfOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineIfOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlock<mlir::affine::AffineIfOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::affine::AffineIfOp>,mlir::OpTrait::NoRegionArguments<mlir::affine::AffineIfOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineIfOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineIfOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineIfOp>,mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::affine::AffineIfOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::affine::AffineIfOp>,mlir::RegionBranchOpInterface::Trait<mlir::affine::AffineIfOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineIfOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v4 = 0;
    }

    *v3 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC24050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC24050))
      {
        qword_27FC24040 = llvm::detail::getTypeNameImpl<mlir::IntegerSetAttr>();
        *algn_27FC24048 = v12;
        __cxa_guard_release(&qword_27FC24050);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC24040;
        v16 = *algn_27FC24048;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineIfOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::areTypesCompatible;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorOperands(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 72);
    v3 = *(a2 + 68);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  return v2 + 32 * v3;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::affine::AffineIfOp::getSuccessorRegions(&v6, 0, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::affine::AffineIfOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::affine::AffineIfOp::getSuccessorRegions(&v5, a3, a4).n128_u64[0];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v95[8] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "condition", 9uLL);
  if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v4 = Attr;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 8);
  v71 = v5;
  if ((*(v2 + 46) & 0x80) != 0)
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 68);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v78 = v80;
  v79 = 0x400000000;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v78, v6, 0, v6, v7);
  Impl = mlir::AffineMap::getImpl(*v5, v5[1], *(v5 + 1), *(v5 + 2), ***(v5 + 1));
  v8 = v79;
  if (v79)
  {
    v9 = v78;
    v10 = 8 * v79;
    while (1)
    {
      v11 = *v9;
      if ((~*(*v9 + 8) & 7) == 0)
      {
        v11 = 0;
      }

      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = *(v11 + 8) & 7;
      if (v12 == 6)
      {
        v13 = v11 + 24 * *(v11 + 16) + 120;
        if (!v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = v11 + 16 * v12 + 16;
      }

      if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
      {
        break;
      }

LABEL_16:
      v9 += 8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    composeAffineMapAndOperands(&Impl, &v78);
    v5 = mlir::IntegerSet::get(*Impl, *(Impl + 1), Impl + 3, *(Impl + 2), *(v5 + 3), *(v5 + 4));
    v71 = v5;
    v8 = v79;
    if (v79)
    {
LABEL_19:
      v14 = ***(v5 + 1);
      Impl = v92;
      v91 = 0x800000000;
      v69 = v2;
      if (v8 <= 8)
      {
        __src = v86;
        v85 = 0x800000000;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&Impl, v92, v8, 8);
        __src = v86;
        v85 = 0x800000000;
        if (v79 >= 9)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v86, v79, 8);
        }
      }

      v15 = *v5;
      v16 = v5[1];
      v93 = v95;
      v94 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v93, v15);
      v17 = v5[1];
      v18 = v17 + *v5;
      if (v17 + *v5)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          if (v19 >= *v5)
          {
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&Impl, *(v78 + v19));
          }

          else if (mlir::affine::isValidSymbol(*(v78 + v19)))
          {
            AffineDimOrSymbol = getAffineDimOrSymbol(7u, v21 + v16, v14);
            v93[v19] = AffineDimOrSymbol;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&__src, *(v78 + v19));
            ++v21;
          }

          else
          {
            v23 = getAffineDimOrSymbol(6u, v20, v14);
            v93[v19] = v23;
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&Impl, *(v78 + v19));
            v20 = (v20 + 1);
          }

          ++v19;
        }

        while (v18 != v19);
      }

      else
      {
        v21 = 0;
        LODWORD(v20) = 0;
      }

      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>(&Impl, __src, __src + 8 * v85);
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v78, &Impl);
      v24 = mlir::IntegerSet::replaceDimsAndSymbols(&v71, v93, v94, 0, 0, v20, v21 + v16);
      v71 = v24;
      if (v93 != v95)
      {
        free(v93);
      }

      if (__src != v86)
      {
        free(__src);
      }

      if (Impl != v92)
      {
        free(Impl);
      }

      llvm::SmallBitVector::SmallBitVector(&v77, *v24, 0);
      llvm::SmallBitVector::SmallBitVector(&v76, v24[1], 0);
      Impl = &v77;
      v91 = &v76;
      v25 = *(v24 + 2);
      if (v25)
      {
        v26 = *(v24 + 1);
        v27 = 8 * v25;
        do
        {
          v28 = *v26++;
          mlir::AffineExpr::walk<void>(v28, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void canonicalizeMapOrSetAndOperands<mlir::IntegerSet>(mlir::IntegerSet *,llvm::SmallVectorImpl<mlir::Value> *)::{lambda(mlir::AffineExpr)#1}>, &Impl);
          v27 -= 8;
        }

        while (v27);
      }

      v70 = ***(v24 + 1);
      v93 = v95;
      v94 = 0x800000000;
      if (v79 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v95, v79, 8);
      }

      Impl = 1;
      for (i = 8; i != 136; i += 16)
      {
        *(&Impl + i) = -4096;
      }

      v30 = *v24;
      v87 = v89;
      v88 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v87, v30);
      v31 = *v24;
      if (v31)
      {
        v32 = 0;
        v33 = 0;
        while (1)
        {
          if (v77)
          {
            if (((1 << v32) & (v77 >> 1) & ~(-1 << (v77 >> 58))) != 0)
            {
LABEL_52:
              v34 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&Impl, *(v78 + v32));
              v35 = (v91 + 16 * v92[0]);
              if (Impl)
              {
                v35 = &v93;
              }

              if (v35 == v34)
              {
                v36 = getAffineDimOrSymbol(6u, v33, v70);
                *(v87 + v32) = v36;
                llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v93, *(v78 + v32));
                v37 = *(v87 + v32);
                v81 = *(v78 + v32);
                v82 = v37;
                llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(&__src, &Impl, &v81, &v82);
                v33 = (v33 + 1);
              }

              else
              {
                *(v87 + v32) = *(v34 + 8);
              }
            }
          }

          else if ((*(*v77 + 8 * (v32 >> 6)) & (1 << v32)) != 0)
          {
            goto LABEL_52;
          }

          if (v31 == ++v32)
          {
            goto LABEL_60;
          }
        }
      }

      LODWORD(v33) = 0;
LABEL_60:
      __src = 1;
      for (j = 8; j != 136; j += 16)
      {
        *(&__src + j) = -4096;
      }

      v39 = v24[1];
      v81 = v83;
      v82 = 0x800000000;
      llvm::SmallVectorImpl<mlir::AffineExpr>::resizeImpl<false>(&v81, v39);
      v40 = v24[1];
      if (v40)
      {
        v41 = 0;
        v42 = 0;
        while (1)
        {
          if (v76)
          {
            if (((1 << v41) & (v76 >> 1) & ~(-1 << (v76 >> 58))) != 0)
            {
LABEL_68:
              v75 = 0;
              v43 = v78;
              v44 = *(v78 + v41 + *v24);
              v72[0] = &v75;
              if ((~*(v44 + 8) & 7) == 0)
              {
                v44 = 0;
              }

              if (!v44)
              {
                goto LABEL_81;
              }

              v45 = *(v44 + 8) & 7;
              if (v45 == 6)
              {
                v46 = v44 + 24 * *(v44 + 16);
                v47 = v46 + 120;
                if (v46 == -120)
                {
LABEL_81:
                  v51 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::find(&__src, v43[v41 + *v24]);
                  v52 = (v85 + 16 * v86[0]);
                  if (__src)
                  {
                    v52 = &v87;
                  }

                  if (v52 == v51)
                  {
                    v53 = getAffineDimOrSymbol(7u, v42, v70);
                    *(v81 + v41) = v53;
                    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v93, *(v78 + v41 + *v24));
                    v54 = *(v81 + v41);
                    v73 = *(v78 + v41 + *v24);
                    v74 = v54;
                    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,mlir::AffineExpr,8u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>,mlir::Value,mlir::AffineExpr,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>(v72, &__src, &v73, &v74);
                    v42 = (v42 + 1);
                  }

                  else
                  {
                    *(v81 + v41) = *(v51 + 8);
                  }

                  goto LABEL_88;
                }
              }

              else
              {
                v47 = v44 + 16 * v45 + 16;
              }

              if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(v72, v47))
              {
                v49 = *(v75 + 24);
                if (v49 > 0x40)
                {
                  operator new[]();
                }

                if (v49)
                {
                  v50 = (*(v75 + 16) << -v49) >> -v49;
                }

                else
                {
                  v50 = 0;
                }

                AffineConstantExpr = mlir::getAffineConstantExpr(v50, v70, v48);
                *(v81 + v41) = AffineConstantExpr;
                goto LABEL_88;
              }

              v43 = v78;
              goto LABEL_81;
            }
          }

          else if ((*(*v76 + 8 * (v41 >> 6)) & (1 << v41)) != 0)
          {
            goto LABEL_68;
          }

LABEL_88:
          if (v40 == ++v41)
          {
            goto LABEL_91;
          }
        }
      }

      LODWORD(v42) = 0;
LABEL_91:
      v5 = mlir::IntegerSet::replaceDimsAndSymbols(&v71, v87, v88, v81, v82, v33, v42);
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v78, &v93);
      if (v81 != v83)
      {
        free(v81);
      }

      v2 = v69;
      if ((__src & 1) == 0)
      {
        MEMORY[0x25F891030](v85, 8);
      }

      if (v87 != v89)
      {
        free(v87);
      }

      if ((Impl & 1) == 0)
      {
        MEMORY[0x25F891030](v91, 8);
      }

      if (v93 != v95)
      {
        free(v93);
      }

      llvm::SmallBitVector::~SmallBitVector(&v76);
      llvm::SmallBitVector::~SmallBitVector(&v77);
    }
  }

  v56 = mlir::Operation::getAttr(v2, "condition", 9uLL);
  if (*(*v56 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (v5 == *(v57 + 8))
  {
    if ((*(v2 + 46) & 0x80) != 0)
    {
      v60 = *(v2 + 72);
      v61 = *(v2 + 68);
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    v58 = v78;
    v59 = v79;
    if (v61 == v79)
    {
      if (v79)
      {
        v62 = 0;
        v63 = ((v61 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v64 = (v60 + 24);
        while (8 * v61 != v62 && *(v78 + v62) == *v64)
        {
          v62 += 8;
          v64 += 4;
          if (8 * v79 == v62)
          {
            goto LABEL_117;
          }
        }
      }

      else
      {
        v63 = 0;
LABEL_117:
        if (v63 == v61)
        {
          v65 = 0;
          goto LABEL_122;
        }
      }
    }
  }

  else
  {
    v58 = v78;
    v59 = v79;
  }

  v66 = mlir::IntegerSetAttr::get(v5);
  mlir::Operation::setAttr(v2, "condition", 9, v66);
  if ((*(v2 + 46) & 0x80) != 0)
  {
    mlir::detail::OperandStorage::setOperands((v2 + 64), v2, v58 & 0xFFFFFFFFFFFFFFF9, v59);
  }

  v65 = 1;
LABEL_122:
  if (v78 != v80)
  {
    free(v78);
  }

  v67 = *MEMORY[0x277D85DE8];
  return v65;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::RecursivelySpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RecursivelySpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[12] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  Attr = mlir::Operation::getAttr(a2, "condition", 9uLL);
  if (Attr)
  {
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v8 = Attr;
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

  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, " ", 1uLL);
  }

  else
  {
    *v10 = 32;
    ++*(v9 + 4);
  }

  (*(*a3 + 40))(a3, v8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 68);
    v13 = v11;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 0;
  }

  printDimAndSymbolList(v11, 0, v13, v12, **(v8 + 8), a3);
  v14 = *(a2 + 36);
  v15 = (a2 - 16);
  if (!v14)
  {
    v15 = 0;
  }

  v27 = v15;
  v28 = 0;
  v29 = v15;
  v30 = v14;
  if (v14)
  {
    mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a3, &v27);
  }

  v16 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 224))(a3, ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), 0, *(a2 + 36) != 0, 0);
  v18 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v20 = *(v18 + 24);
  v19 = v18 + 24;
  if (v20 != v19)
  {
    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if ((*(v21 + 3) - v22) > 5)
    {
      *(v22 + 4) = 8293;
      *v22 = 1936483616;
      *(v21 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v21, " else ", 6uLL);
    }

    (*(*a3 + 224))(a3, v19, 0, *(a2 + 36) != 0, 0);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v24 = *(AttrDictionary + 8);
  v25 = *(AttrDictionary + 16);
  v27 = "condition";
  v28 = 9;
  return (*(*a3 + 192))(a3, v24, v25, &v27, 1);
}

uint64_t mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyInvariants(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyNRegions(a1, 2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2))
  {
    goto LABEL_24;
  }

  v4 = *(a1 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) == 0)
  {
    goto LABEL_18;
  }

  v6 = 0;
  v7 = (((a1 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v7 == *v7)
    {
      goto LABEL_9;
    }

    v8 = v7[1];
    if (v7 == v8 || v7 != *(v8 + 8))
    {
      break;
    }

    if (*(v8 + 24) == v8 + 24)
    {
      v31 = 257;
      mlir::Operation::emitOpError(a1, v30, &v32);
      if (v32)
      {
        mlir::Diagnostic::operator<<<26ul>(&v33, "expects a non-empty block");
      }

      v11 = v34;
      goto LABEL_17;
    }

LABEL_9:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_18;
    }
  }

  v29 = v6;
  v30[0] = "expects region #";
  v31 = 259;
  mlir::Operation::emitOpError(a1, v30, &v32);
  v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, &v29);
  v10 = v9;
  if (*v9)
  {
    mlir::Diagnostic::operator<<<23ul>((v9 + 1), " to have 0 or 1 blocks");
  }

  v11 = *(v10 + 200);
LABEL_17:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  if (v11)
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((mlir::OpTrait::impl::verifyNoRegionArguments(a1, v3) & 1) == 0)
  {
    goto LABEL_24;
  }

  v12 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v12)
  {
    v32 = a1;
    if (!mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(v12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v32) || !mlir::affine::__mlir_ods_local_region_constraint_AffineOps1(a1, ((a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40), "thenRegion", 10))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v30[0] = "requires attribute 'condition'";
    v31 = 259;
    mlir::Operation::emitOpError(a1, v30, &v32);
    v13 = v34;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    if (v13)
    {
      goto LABEL_24;
    }
  }

  Attr = mlir::Operation::getAttr(a1, "condition", 9uLL);
  if (!Attr || *(*Attr + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v19 = "requires an integer set attribute named 'condition'";
LABEL_29:
    v30[0] = v19;
    v31 = 259;
    mlir::Operation::emitOpError(a1, v30, &v32);
    v14 = v34 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    goto LABEL_25;
  }

  v20 = Attr[1];
  if ((*(a1 + 46) & 0x80) == 0)
  {
    if (!(v20[1] + *v20))
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  v21 = *(a1 + 68);
  v22 = *v20;
  if (v21 != v20[1] + v22)
  {
LABEL_44:
    v19 = "operand count and condition integer set dimension and symbol count must match";
    goto LABEL_29;
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  v23 = 0;
  v24 = (*(a1 + 72) + 24);
  while (2)
  {
    v25 = *v24;
    AffineScope = mlir::affine::getAffineScope(a1, v18);
    if (v23 < v22)
    {
      if ((mlir::affine::isValidDim(v25, AffineScope) & 1) == 0)
      {
        v27 = "operand cannot be used as a dimension id";
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (mlir::affine::isValidSymbol(v25, AffineScope))
    {
LABEL_38:
      ++v23;
      v24 += 4;
      if (v21 == v23)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  v27 = "operand cannot be used as a symbol";
LABEL_41:
  v30[0] = v27;
  v31 = 259;
  mlir::Operation::emitOpError(a1, v30, &v32);
  v28 = v34;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  if ((v28 & 1) == 0)
  {
LABEL_42:
    v14 = 1;
    goto LABEL_25;
  }

LABEL_24:
  v14 = 0;
LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t mlir::Op<mlir::affine::AffineIfOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::affine::AffineYieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::RecursivelySpeculatableImplTrait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait>::verifyRegionInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v2 = a1[11];
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = (((&a1[4 * ((v2 >> 23) & 1) + 17] + ((v2 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    do
    {
      if (v4 != *v4)
      {
        v5 = v4[1];
        if (v5)
        {
          v6 = v5 - 8;
        }

        else
        {
          v6 = 0;
        }

        v7 = *(*(v6 + 32) + 48);
        if (*(v7 + 16) != &mlir::detail::TypeIDResolver<mlir::affine::AffineYieldOp,void>::id)
        {
          v13 = 1283;
          v12[0] = "expects regions to end with '";
          v12[2] = "affine.yield";
          v12[3] = 12;
          v14[0] = v12;
          v14[2] = "', found '";
          v15 = 770;
          v9 = *(v7 + 8);
          v16 = v14;
          v17 = *(v9 + 16);
          v18 = 1282;
          v19[0] = &v16;
          v19[2] = "'";
          v20 = 770;
          mlir::Operation::emitOpError(a1, v19, v21);
          mlir::Diagnostic::attachNote(v22, 0, 0);
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  v8 = mlir::detail::verifyTypesAlongControlFlowEdges(a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineLinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.linearize_index", 0x16, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineLinearizeIndexOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9D8D0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::foldHook(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 == 21)
  {
    v8 = *(a3 + 13);
    v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v10 = 1935635566;
LABEL_18:
    v11 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v11)
    {
      v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 76, 2);
      v7 = v6 & 0xFFFFFFFFFFFFFF00;
      return v7 | v6;
    }

    goto LABEL_22;
  }

  if (a4 == 19)
  {
    v8 = *(a3 + 11);
    v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v10 = 1400139365;
    goto LABEL_18;
  }

  if (a4 != 12 || (*a3 == 0x625F636974617473 ? (v5 = *(a3 + 2) == 1936290657) : (v5 = 0), !v5))
  {
LABEL_22:
    LOBYTE(v6) = 0;
    v7 = 0;
    return v7 | v6;
  }

  v6 = *v4;
  v7 = *v4 & 0xFFFFFFFFFFFFFF00;
  return v7 | v6;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 21)
  {
    v11 = *v4 ^ 0x5F646E617265706FLL;
    v12 = v4[1] ^ 0x5F746E656D676573;
    v13 = *(v4 + 13);
    v14 = 1935635566;
  }

  else
  {
    if (v5 != 19)
    {
      if (v5 == 12)
      {
        v6 = *v4;
        v7 = *(v4 + 2);
        if (v6 == 0x625F636974617473 && v7 == 1936290657)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v9 = *(a4 + 8), *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
          {
            if (v9[2] == 64)
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

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v10;
        }
      }

      return result;
    }

    v11 = *v4 ^ 0x53646E617265706FLL;
    v12 = v4[1] ^ 0x6953746E656D6765;
    v13 = *(v4 + 11);
    v14 = 1400139365;
  }

  if (v11 | v12 | v13 ^ (v14 | 0x73657A6900000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = a4 == 0;
  }

  if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v16 = *(a4 + 8);
    if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 2)
    {
      v17 = *(a4 + 32);
      if (v17 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 76), *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v17 = 261;
    v15 = "static_basis";
    v16 = 12;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 12, 2);
  v12 = *(**v11 + 32);
  v17 = 261;
  v15 = "operandSegmentSizes";
  v16 = 19;
  v14 = mlir::StringAttr::get(v12, &v15, v13);
  mlir::NamedAttrList::push_back(a3, v14, v11);
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v36, a6);
    if (v36)
    {
      mlir::Diagnostic::operator<<<42ul>(v37, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
    goto LABEL_5;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "static_basis", 0xCuLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v14[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        a5(&v36, a6);
        if (v36)
        {
          if (v36)
          {
            v34 = 0;
            v35 = v14;
            v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v38, &v34, 1);
            v30 = v38 + 24 * v39;
            v31 = *v29;
            *(v30 + 16) = *(v29 + 16);
            *v30 = v31;
            ++v39;
          }
        }

        goto LABEL_4;
      }

      *a3 = v14;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "disjoint", 8uLL);
  if (v17)
  {
    v18 = *(v16 + 8);
    v19 = (a3 + 1);
    if (v18)
    {
      v20 = *(*v18 + 136);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v32 = 1;
      }

      else
      {
        if (v20 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          goto LABEL_5;
        }

        v21 = *(v18 + 8);
        if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v21[2] != 1)
        {
          goto LABEL_5;
        }

        v22 = *(v18 + 24);
        if (v22 > 0x40)
        {
          v23 = llvm::APInt::countLeadingZerosSlowCase((v18 + 16)) == v22;
        }

        else
        {
          v23 = *(v18 + 16) == 0;
        }

        v33 = v23;
        v32 = v33 ^ 1;
      }

      *v19 = v32;
      goto LABEL_23;
    }
  }

  else
  {
    v19 = (a3 + 1);
  }

  *v19 = 0;
LABEL_23:
  v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v25 & 1) == 0 || (v26 = *(v24 + 8)) == 0) && ((v27 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v28 & 1) == 0) || (v26 = *(v27 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 12, 2, v26, a5, a6, "DenseI32ArrayAttr", 17))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v24 = v26;
  v25 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v23 = 261;
    v21 = "static_basis";
    v22 = 12;
    v9 = mlir::StringAttr::get(v8, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v9, v5);
  }

  v10 = 592;
  if (*(v6 + 8))
  {
    v10 = 608;
  }

  v11 = *(*v3 + v10);
  v12 = *(**v11 + 32);
  v23 = 261;
  v21 = "disjoint";
  v22 = 8;
  v13 = mlir::StringAttr::get(v12, &v21, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 12, 2);
  v15 = *(**v14 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v17 = mlir::StringAttr::get(v15, &v21, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v17, v14);
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(v3, v24, v25);
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

__n128 mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u32[0] = a3[1].n128_u32[0];
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLinearizeIndexOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0xBF764FA75DAEC915;
  if (*(a2 + 8))
  {
    v5 = 0xAE759FEEB770345DLL;
  }

  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) >> 47));
  v6 = *(a2 + 16) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (8 * *(a2 + 12) + 8));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * v4;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v12, 0, v13, &v13[3] + 8, &v11, &v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLinearizeIndexOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineLinearizeIndexOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineLinearizeIndexOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLinearizeIndexOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_12:
      result = 0;
      goto LABEL_13;
    }

    if (*(v9 + 16) >= 3)
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
      memmove(v3 + 12, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) || ((*(*a1 + 120))(a1, v3 + 1) & 1) == 0 || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 3, 2uLL) & 1) == 0)
  {
    goto LABEL_12;
  }

  result = 1;
LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v6 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 12, 2);
    (*(*a3 + 16))(a3, v6);
  }

  (*(*a3 + 16))(a3, *v5);
  (*(*a3 + 96))(a3, *(v5 + 8));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 12), 2);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::isCompatibleReturnTypes;
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v19, 1uLL);
  *v19 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v23 = (v19 & 0xFFFFFFFFFFFFFFF9 | 2);
  v24 = v20;
  v22[0] = v16;
  v22[1] = v15;
  if ((llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v23, v22) & 1) == 0)
  {
    v23 = "affine.linearize_index";
    v24 = 22;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v23, "' op inferred type(s) ", &v19, " are incompatible with return type(s) of operation ", a11);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::affine::AffineLinearizeIndexOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v10 = *(v8 + 12);
  v9 = *(v8 + 16);
  mlir::affine::AffineLinearizeIndexOp::getMixedBasis(&v41, a2);
  v11 = v41;
  v12 = v42;
  v13 = v7 + 16 * ((*(a2 + 44) >> 23) & 1);
  v14 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
  v15 = *(v13 + 12);
  v16 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v13 + 12, 2);
  LODWORD(__src) = 1;
  v45 = v14;
  v46 = v16;
  v38[0] = a2;
  v38[1] = v15;
  v39[0] = v40;
  v39[1] = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v39, &__src, v47);
  foldCstValueToCstAttrBasis(&__src, v11, v12, v38, &a3[v10], (v9 + v10) - v10);
  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  if (v41 != &v43)
  {
    free(v41);
  }

  if (v48 == 1)
  {
    *(v7 + 16 * ((*(a2 + 44) >> 23) & 1)) = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(a2 + 24) + 32), __src, v45);
    v17 = a2 - 16;
LABEL_18:
    v23 = v17 | 4;
    goto LABEL_28;
  }

  v18 = *(a2 + 44);
  v19 = (v7 + 16 * ((v18 >> 23) & 1));
  v20 = v19[3];
  if ((v18 & 0x800000) != 0 && v20 == 1)
  {
    v17 = *(*(a2 + 72) + 24);
    goto LABEL_18;
  }

  if (!v20)
  {
    v24 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = 0;
LABEL_27:
    v23 = mlir::IntegerAttr::get(v24, v25) & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_28;
  }

  if (v10)
  {
    v21 = 8 * v10;
    v22 = a3;
    while (*v22)
    {
      ++v22;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

LABEL_14:
  if (!v9)
  {
    v26 = *v19;
    v27 = *(*v19 + 32);
    if (v27 >= 8)
    {
      v28 = 0;
      v30 = &a3[v10 - 1];
      v31 = v27 & 0xFFFFFFFFFFFFFFF8;
      v32 = *(v26 + 24) - 8;
      v29 = 1;
      do
      {
        v33 = *v30--;
        v41 = v33;
        v28 += mlir::IntegerAttr::getInt(&v41) * v29;
        v29 *= *(v32 + v31);
        v31 -= 8;
      }

      while (v31);
      v34 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
      v20 = v34[3];
      v27 = *(*v34 + 32);
    }

    else
    {
      v28 = 0;
      v29 = 1;
    }

    if (v20 != v27 >> 3)
    {
      v41 = *a3;
      v28 += mlir::IntegerAttr::getInt(&v41) * v29;
    }

    v24 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    v25 = v28;
    goto LABEL_27;
  }

LABEL_15:
  v23 = 0;
LABEL_28:
  if (v48 == 1 && __src != &v46)
  {
    free(__src);
  }

  if (v23 < 8 || a2 - 16 == (v23 & ((v23 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v23 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v23);
    result = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v47[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8))
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
    if (*(v10 + 3) - v11 > 7uLL)
    {
      *v11 = 0x746E696F6A736964;
      *(v10 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v10, "disjoint", 8uLL);
    }
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

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "[", 1uLL);
  }

  else
  {
    *v15 = 91;
    ++*(v14 + 4);
  }

  v16 = *(a2 + 44);
  v17 = *(v7 + 16 * ((v16 >> 23) & 1) + 12);
  if ((v16 & 0x800000) != 0)
  {
    v18 = *(a2 + 72);
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(*a3 + 16))(a3);
  if (v17)
  {
    v20 = v19;
    (*(*a3 + 160))(a3, *(v18 + 24));
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
        (*(*a3 + 160))(a3, v24);
        --v21;
      }

      while (v21);
    }
  }

  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, "]", 1uLL);
  }

  else
  {
    *v26 = 93;
    ++*(v25 + 4);
  }

  v27 = (*(*a3 + 16))(a3);
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

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 1uLL)
  {
    *v30 = 31074;
    *(v29 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v29, "by", 2uLL);
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

  v33 = *(a2 + 44);
  v34 = (v7 + 16 * ((v33 >> 23) & 1));
  if ((v33 & 0x800000) != 0)
  {
    v35 = *(a2 + 72);
  }

  else
  {
    v35 = 0;
  }

  mlir::printDynamicIndexList(a3, a2, v35 + 32 * v34[3], v34[4] + v34[3] - v34[3], *(*v34 + 24), *(*v34 + 32) >> 3, 0, 0, 2, 0, 1);
  v45 = v47;
  v46 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v45, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v45, "static_basis", 12);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v45, v46);
  v37 = (*(*a3 + 16))(a3);
  v38 = *(v37 + 4);
  if (v38 >= *(v37 + 3))
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    *(v37 + 4) = v38 + 1;
    *v38 = 32;
  }

  v39 = (*(*a3 + 16))(a3);
  v40 = *(v39 + 4);
  if (*(v39 + 3) == v40)
  {
    llvm::raw_ostream::write(v39, ":", 1uLL);
  }

  else
  {
    *v40 = 58;
    ++*(v39 + 4);
  }

  v41 = (*(*a3 + 16))(a3);
  v42 = *(v41 + 4);
  if (v42 >= *(v41 + 3))
  {
    llvm::raw_ostream::write(v41, 32);
  }

  else
  {
    *(v41 + 4) = v42 + 1;
    *v42 = 32;
  }

  if (*(a2 + 36))
  {
    v43 = a2 - 16;
  }

  else
  {
    v43 = 0;
  }

  (*(*a3 + 32))(a3, *(v43 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v45 != v47)
  {
    free(v45);
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::affine::AffineLinearizeIndexOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v5 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
    if (mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5))
    {
      v6 = a1 + 64;
      v7 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
      if (v7)
      {
        v38[0] = a1;
        if (mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::affine::__mlir_ods_local_attr_constraint_AffineOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38))
        {
          v8 = *(a1 + 44);
          v9 = (v8 >> 23) & 1;
          v10 = *(v6 + 16 * v9 + 12);
          if ((v8 & 0x800000) != 0)
          {
            v11 = *(a1 + 72);
            if (v10)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v11 = 0;
            if (v10)
            {
LABEL_11:
              v12 = 0;
              v13 = v11 + 24;
              while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v13 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12))
              {
                ++v12;
                v13 += 32;
                if (v10 == v12)
                {
                  v14 = *(a1 + 44);
                  v9 = (v14 >> 23) & 1;
                  v15 = v14 & 0x800000;
                  v16 = *(v6 + 16 * v9 + 12);
                  goto LABEL_20;
                }
              }

              goto LABEL_36;
            }
          }

          v16 = 0;
          v15 = v8 & 0x800000;
LABEL_20:
          v18 = *(v6 + 16 * v9 + 16);
          if (v15)
          {
            v19 = *(a1 + 72);
            if (v18)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v19 = 0;
            if (v18)
            {
LABEL_22:
              v20 = v18 + v16 - v16;
              v21 = v19 + 32 * v16 + 24;
              while (mlir::affine::__mlir_ods_local_type_constraint_AffineOps1(a1, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
              {
                LODWORD(v10) = v10 + 1;
                v21 += 32;
                if (!--v20)
                {
                  goto LABEL_25;
                }
              }

              goto LABEL_36;
            }
          }

LABEL_25:
          v22 = *(a1 + 36) ? a1 - 16 : 0;
          if (mlir::affine::__mlir_ods_local_type_constraint_AffineOps2(a1, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
          {
LABEL_29:
            v23 = (v6 + 16 * ((*(a1 + 44) >> 23) & 1));
            v24 = v23[3];
            v25 = *(*v23 + 32);
            v26 = v25 >> 3;
            if (v25 >> 3 == v24 || (v25 >> 3) + 1 == v24)
            {
              if (v25 >= 8)
              {
                v28 = 0;
                v33 = *(*v23 + 24);
                v34 = 8 * v26;
                do
                {
                  v35 = *v33++;
                  if (v35 == 0x8000000000000000)
                  {
                    ++v28;
                  }

                  v34 -= 8;
                }

                while (v34);
              }

              else
              {
                v28 = 0;
              }

              if (v28 == v23[4] + v24 - v24)
              {
                v29 = 1;
                goto LABEL_37;
              }

              v32 = "mismatch between dynamic and static basis (kDynamic marker but no corresponding dynamic basis entry) -- this can only happen due to an incorrect fold/rewrite";
            }

            else
            {
              v32 = "should be passed a basis element for each index except possibly the first";
            }

            v36[0] = v32;
            v37 = 259;
            mlir::Operation::emitOpError(a1, v36, v38);
            v29 = v39 ^ 1;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
            goto LABEL_37;
          }
        }
      }

      else
      {
        v36[0] = "requires attribute 'static_basis'";
        v37 = 259;
        mlir::Operation::emitOpError(a1, v36, v38);
        v17 = v39;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v38);
        if ((v17 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }
  }

LABEL_36:
  v29 = 0;
LABEL_37:
  v30 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneResult<mlir::affine::AffineLoadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineLoadOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::affine::AffineLoadOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineLoadOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineReadOpInterface::Trait<mlir::affine::AffineLoadOp>,mlir::affine::AffineMapAccessInterface::Trait<mlir::affine::AffineLoadOp>,mlir::OpTrait::MemRefsNormalizable<mlir::affine::AffineLoadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineLoadOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "affine.load", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::affine::AffineLoadOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E9D998;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::foldHook(uint64_t a1, mlir::affine::AffineLoadOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::affine::AffineLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 24941 ? (v4 = *(a3 + 2) == 112) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::affine::AffineLoadOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 3)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 24941 && v6 == 112)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}