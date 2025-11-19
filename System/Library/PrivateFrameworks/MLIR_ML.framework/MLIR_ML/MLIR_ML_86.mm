uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid CallInlineMode";
        v22 = 52;
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

uint64_t mlir::mps::CallOp::getSymbolName(mlir::mps::CallOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

uint64_t mlir::mps::CallOp::setSymbolName(uint64_t a1, size_t a2, const llvm::Twine *a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::SymbolRefAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::CallOp::setInlineMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

unint64_t mlir::mps::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = a7;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a8;
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

unint64_t mlir::mps::CallOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, size_t a7, const llvm::Twine *a8, unsigned int a9)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  v15 = mlir::SymbolRefAttr::get(*a1, a7, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v15;
  v17 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v17);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v26[1] = v17;
  v30[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v30[1] = v26;
  v29 = a9;
  v19 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v20 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v19 >> 47) ^ v19);
  v27[0] = &v29;
  v27[1] = v30;
  v28 = &v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((v20 >> 47) ^ v20), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = result;
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

uint64_t mlir::mps::CallOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

uint64_t mlir::mps::CallOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v28[0] = "requires attribute 'inlineMode'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 != 1)
    {
      return v12;
    }

    if (v37 != &v38)
    {
      free(v37);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v36;
      v15 = __p;
      if (v36 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v36 = v13;
      operator delete(v15);
    }

    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      if (v34 != v33)
      {
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
        goto LABEL_45;
      }

LABEL_46:
      v34 = v16;
      operator delete(v18);
    }

LABEL_47:
    if (v31 != &v32)
    {
      free(v31);
    }

    return v12;
  }

  v7 = *(v4 + 8);
  if (!v7)
  {
    v28[0] = "requires attribute 'symbolName'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 != 1)
    {
      return v12;
    }

    if (v37 != &v38)
    {
      free(v37);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v36;
      v23 = __p;
      if (v36 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v36 = v21;
      operator delete(v23);
    }

    v16 = v33;
    if (v33)
    {
      v24 = v34;
      v18 = v33;
      if (v34 != v33)
      {
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

        while (v24 != v16);
LABEL_45:
        v18 = v33;
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v30[0] = v2;
  if ((mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v7, "symbolName", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
  {
    return 0;
  }

  v30[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(v5, "inlineMode", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 17);
    if (v9)
    {
      v10 = 0;
      v11 = *(v8 + 9) + 24;
      while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps9(*this, *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
      {
        ++v10;
        v11 += 32;
        if (v9 == v10)
        {
          v8 = *this;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

LABEL_11:
  mlir::mps::CallOp::verifyInvariantsImpl(this, v8, v30);
  return LOBYTE(v30[0]);
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps9(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_33;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v43 = v7;
    mlir::TensorType::operator mlir::ShapedType();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v43 + 8);
    v15 = *(v43 + 16);
    if (!v15)
    {
      goto LABEL_18;
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
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v48[0] = a2;
  v48[1] = v22;
  v44[0] = mlir::ShapedType::getElementType(v48);
  if (mlir::Type::isSignlessInteger(v44, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v44, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v44, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v44, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v44, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v44, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v44, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v44, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v44, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(v44))
  {
    return 1;
  }

  if (mlir::Type::isF32(v44))
  {
    return 1;
  }

  if (mlir::Type::isBF16(v44))
  {
    return 1;
  }

  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (*(*v44[0] + 17) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

LABEL_33:
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

    v23 = v49 + 24 * v50;
    v24 = v46;
    *(v23 + 2) = v47;
    *v23 = v24;
    v25 = ++v50;
    if (v48[0])
    {
      LODWORD(v46) = 5;
      *(&v46 + 1) = a5;
      if (v25 >= v51)
      {
        if (v49 > &v46 || v49 + 24 * v25 <= &v46)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = v49 + 24 * v50;
      v27 = v46;
      *(v26 + 2) = v47;
      *v26 = v27;
      v28 = ++v50;
      if (v48[0])
      {
        LODWORD(v46) = 3;
        *(&v46 + 1) = " must be variadic of tensor of mps native type values, but got ";
        v47 = 63;
        if (v28 >= v51)
        {
          if (v49 > &v46 || v49 + 24 * v28 <= &v46)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = v49 + 24 * v50;
        v30 = v46;
        *(v29 + 2) = v47;
        *v29 = v30;
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

          v31 = v49 + 24 * v50;
          v32 = v46;
          *(v31 + 2) = v47;
          *v31 = v32;
          ++v50;
        }
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
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

  return v33;
}

uint64_t mlir::mps::detail::CastOpGenericAdaptorBase::CastOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::CastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "resultElementType", 0x11uLL);
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
    v33 = 62;
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

uint64_t mlir::mps::CastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "resultElementType", 0x11, *a2);
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

unint64_t mlir::mps::CastOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::mps::CastOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 17 && (*a3 == 0x6C45746C75736572 ? (v4 = *(a3 + 8) == 0x707954746E656D65) : (v4 = 0), v4 ? (v5 = *(a3 + 16) == 101) : (v5 = 0), v5))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::mps::CastOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 17)
  {
    v4 = *a2 == 0x6C45746C75736572 && *(a2 + 8) == 0x707954746E656D65;
    if (v4 && *(a2 + 16) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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
  }

  return result;
}

uint64_t mlir::mps::CastOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "resultElementType", 0x11uLL, *a2);
  }

  return result;
}

uint64_t mlir::mps::CastOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2) & 1;
}

uint64_t mlir::mps::CastOp::setResultElementType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a5;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::TypeAttr::get(a5);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = result;
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::CastOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v7 = *(a2 + 256);
  if (!v7)
  {
    operator new();
  }

  *v7 = a4;
  __src = v22;
  v21 = 0x200000000;
  v8 = *a1;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CastOp::inferReturnTypes(v8, v12, v13, v19[0], v19[1], Dictionary, v11, v14, v18[0], v18[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v21;
  v16 = *(a2 + 72);
  if (v16 + v21 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v21);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v22)
  {
    free(__src);
  }
}

{
  v23[2] = *MEMORY[0x277D85DE8];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v7 = mlir::TypeAttr::get(a4);
  v8 = *(a2 + 256);
  if (!v8)
  {
    operator new();
  }

  *v8 = v7;
  __src = v23;
  v22 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v19, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CastOp::inferReturnTypes(v9, v13, v14, v20[0], v20[1], Dictionary, v12, v15, v19[0], v19[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = v22;
  v17 = *(a2 + 72);
  if (v17 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v17), __src, 8 * v22);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v23)
  {
    free(__src);
  }
}

unint64_t mlir::mps::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a5;
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a6;
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

{
  v15 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::TypeAttr::get(a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = result;
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

uint64_t mlir::mps::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::CastOp::build(mlir::UnknownLoc **a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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

  __src = v30;
  v29 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  v20 = mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  v21 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CastOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v25 = v29;
  v26 = *(a2 + 72);
  if (v26 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v26), __src, 8 * v29);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v3, "resultElementType", 17, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
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
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'resultElementType'";
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

uint64_t mlir::mps::CeilOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::CeilOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::CeilOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::CeilOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::CeilOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::CeilOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::CeilOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::CeilOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ClampOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a5;
  v12 = a4;
  v10 = a6;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v10, 1uLL);
  v9 = *(a2 + 72);
  if (v9 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ClampOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a3;
  v10 = a5;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v17;
  v16 = 0x200000000;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v14, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v13, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v8 = v16;
  v9 = *(a2 + 72);
  if (v9 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v16)
  {
    memcpy((*(a2 + 64) + 8 * v9), __src, 8 * v16);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v17)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ClampOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a6;
  v16 = a5;
  v14 = a7;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
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

unint64_t mlir::mps::ClampOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ClampOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v19[2] = *MEMORY[0x277D85DE8];
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
  __src = v19;
  v18 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = v18;
  v15 = *(a2 + 72);
  if (v15 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v15), __src, 8 * v18);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ClampOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::detail::ColToImOpGenericAdaptorBase::ColToImOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::ColToImOpAdaptor::verify(void *a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (!v3)
  {
    v62 = "'mps.col_to_im' op requires attribute 'data_layout'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v74;
      v28 = __p;
      if (v74 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v74 = v26;
      operator delete(v28);
    }

    v29 = v71;
    if (v71)
    {
      v30 = v72;
      v31 = v71;
      if (v72 != v71)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v30 != v29);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v61 = a1[4];
  if (!v61)
  {
    v62 = "'mps.col_to_im' op requires attribute 'dilation_rates'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v74;
      v36 = __p;
      if (v74 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v74 = v34;
      operator delete(v36);
    }

    v29 = v71;
    if (v71)
    {
      v37 = v72;
      v31 = v71;
      if (v72 != v71)
      {
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

        while (v37 != v29);
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v60 = a1[5];
  if (!v60)
  {
    v62 = "'mps.col_to_im' op requires attribute 'explicit_padding'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v74;
      v42 = __p;
      if (v74 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v74 = v40;
      operator delete(v42);
    }

    v29 = v71;
    if (v71)
    {
      v43 = v72;
      v31 = v71;
      if (v72 != v71)
      {
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

        while (v43 != v29);
        goto LABEL_91;
      }

LABEL_92:
      v72 = v29;
      operator delete(v31);
    }

LABEL_93:
    if (v69 != &v70)
    {
      free(v69);
    }

    return v25;
  }

  v59 = a1[6];
  if (!v59)
  {
    v62 = "'mps.col_to_im' op requires attribute 'kernel_sizes'";
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v74;
      v48 = __p;
      if (v74 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v74 = v46;
      operator delete(v48);
    }

    v29 = v71;
    if (v71)
    {
      v49 = v72;
      v31 = v71;
      if (v72 != v71)
      {
        do
        {
          v51 = *--v49;
          v50 = v51;
          *v49 = 0;
          if (v51)
          {
            MEMORY[0x259C63150](v50, 0x1000C8077774924);
          }
        }

        while (v49 != v29);
LABEL_91:
        v31 = v71;
        goto LABEL_92;
      }

      goto LABEL_92;
    }

    goto LABEL_93;
  }

  v58 = a1[7];
  if (v58)
  {
    v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v59);
    v63 = v4;
    v54[0] = mlir::ElementsAttr::getType(&v62);
    v67 = mlir::TensorType::operator mlir::ShapedType(v54);
    v68 = v5;
    Shape = mlir::ShapedType::getShape(&v67);
    Type = 2;
    if (v7 == 1 && *Shape == Type && (ElementType = v59, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v55 = v59, *&v65 = mlir::DenseElementsAttr::getType(&v55), *(&v65 + 1) = v8, v56 = mlir::ShapedType::getElementType(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
    {
      v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v58);
      v63 = v9;
      v54[0] = mlir::ElementsAttr::getType(&v62);
      v67 = mlir::TensorType::operator mlir::ShapedType(v54);
      v68 = v10;
      v11 = mlir::ShapedType::getShape(&v67);
      Type = 2;
      if (v12 == 1 && *v11 == Type && (ElementType = v58, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v55 = v58, *&v65 = mlir::DenseElementsAttr::getType(&v55), *(&v65 + 1) = v13, v56 = mlir::ShapedType::getElementType(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
      {
        v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v61);
        v63 = v14;
        v54[0] = mlir::ElementsAttr::getType(&v62);
        v67 = mlir::TensorType::operator mlir::ShapedType(v54);
        v68 = v15;
        v16 = mlir::ShapedType::getShape(&v67);
        Type = 2;
        if (v17 == 1 && *v16 == Type && (ElementType = v61, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(&ElementType)) && (v55 = v61, *&v65 = mlir::DenseElementsAttr::getType(&v55), *(&v65 + 1) = v18, v56 = mlir::ShapedType::getElementType(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
        {
          v62 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v60);
          v63 = v19;
          Type = mlir::ElementsAttr::getType(&v62);
          v67 = mlir::TensorType::operator mlir::ShapedType(&Type);
          v68 = v20;
          v21 = mlir::ShapedType::getShape(&v67);
          v65 = xmmword_2573695A0;
          if (v22 == 2 && (*v21 == v65 ? (v23 = v21[1] == *(&v65 + 1)) : (v23 = 0), v23 && (v56 = v60, v54[0] = mlir::DenseElementsAttr::getType(&v56), v54[1] = v24, ElementType = mlir::ShapedType::getElementType(v54), mlir::Type::isUnsignedInteger(&ElementType, 64))))
          {
            if (*(v3 + 8) < 2u)
            {
              return 1;
            }

            v52 = "'mps.col_to_im' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NCHW or NHWC";
          }

          else
          {
            v52 = "'mps.col_to_im' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
          }
        }

        else
        {
          v52 = "'mps.col_to_im' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
        }
      }

      else
      {
        v52 = "'mps.col_to_im' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
      }
    }

    else
    {
      v52 = "'mps.col_to_im' op attribute 'kernel_sizes' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
    }

    v62 = v52;
    v64 = 259;
    mlir::emitError(a2, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
    return v25;
  }

  v62 = "'mps.col_to_im' op requires attribute 'strides'";
  v64 = 259;
  mlir::emitError(a2, &v62, &v67);
  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
  if (v67)
  {
    mlir::InFlightDiagnostic::report(&v67);
  }

  if (v76 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v68);
  }

  return v25;
}

uint64_t llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::ColToImOpAdaptor::verify(mlir::Location)::$_0>(uint64_t *a1)
{
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v8, v2, NumElements);
  v12 = v10;
  v13 = v11;
  for (i = v9; v13 != i; *&v13 = v13 + 1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v12, &v14);
    v6 = v15;
    result = v14;
    v15 = 0;
    if (v6 <= 0x40)
    {
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v7 = *v14;
      if (v14)
      {
        MEMORY[0x259C63150](v14, 0x1000C8000313F17);
        if (v15 >= 0x41)
        {
          if (v14)
          {
            MEMORY[0x259C63150](v14, 0x1000C8000313F17);
          }
        }
      }

      if (!v7)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t mlir::mps::ColToImOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_81;
    }

    v27 = v64;
    v19 = v63;
    if (v64 == v63)
    {
LABEL_80:
      v64 = v17;
      operator delete(v19);
LABEL_81:
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
    goto LABEL_79;
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
        goto LABEL_81;
      }

      v18 = v64;
      v19 = v63;
      if (v64 == v63)
      {
        goto LABEL_80;
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
      goto LABEL_79;
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

      v39 = v59 + 24 * v60;
      v40 = v55;
      *(v39 + 2) = v56;
      *v39 = v40;
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

        v41 = v59 + 24 * v60;
        v42 = v55;
        *(v41 + 2) = v56;
        *v41 = v42;
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

    v43 = __p;
    if (__p)
    {
      v44 = v66;
      v45 = __p;
      if (v66 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v66 = v43;
      operator delete(v45);
    }

    v17 = v63;
    if (!v63)
    {
      goto LABEL_81;
    }

    v46 = v64;
    v19 = v63;
    if (v64 == v63)
    {
      goto LABEL_80;
    }

    do
    {
      v48 = *--v46;
      v47 = v48;
      *v46 = 0;
      if (v48)
      {
        MEMORY[0x259C63150](v47, 0x1000C8077774924);
      }
    }

    while (v46 != v17);
LABEL_79:
    v19 = v63;
    goto LABEL_80;
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

        v49 = v59 + 24 * v60;
        v50 = v55;
        *(v49 + 2) = v56;
        *v49 = v50;
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

          v51 = v59 + 24 * v60;
          v52 = v55;
          *(v51 + 2) = v56;
          *v51 = v52;
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

  v34 = mlir::DictionaryAttr::get(&v54, "kernel_sizes", 0xCuLL);
  *&v55 = v34;
  if (v34)
  {
    v35 = v34;
    if (!mlir::DenseIntElementsAttr::classof(v34))
    {
      a3(&v57, a4);
      goto LABEL_93;
    }

    a1[3] = v35;
  }

  v36 = mlir::DictionaryAttr::get(&v54, "strides", 7uLL);
  *&v55 = v36;
  if (!v36)
  {
    return 1;
  }

  v37 = v36;
  if (mlir::DenseIntElementsAttr::classof(v36))
  {
    a1[4] = v37;
    return 1;
  }

  a3(&v57, a4);
LABEL_93:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v53, &v55);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  return 0;
}

uint64_t mlir::mps::ColToImOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v26, "data_layout", 0xB, *a2);
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
    v8 = mlir::Builder::getNamedAttr(&v26, "dilation_rates", 0xE, v7);
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
    v12 = mlir::Builder::getNamedAttr(&v26, "explicit_padding", 0x10, v11);
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
    v16 = mlir::Builder::getNamedAttr(&v26, "kernel_sizes", 0xC, v15);
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
    v20 = mlir::Builder::getNamedAttr(&v26, "strides", 7, v19);
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

unint64_t mlir::mps::ColToImOp::computePropertiesHash(void *a1)
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

uint64_t mlir::mps::ColToImOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 11)
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

  if (__n == 12)
  {
    if (!memcmp(__s1, "kernel_sizes", 0xCuLL))
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

    return 0;
  }

  if (__n != 16 || memcmp(__s1, "explicit_padding", 0x10uLL))
  {
    return 0;
  }

  return a2[2];
}

uint64_t mlir::mps::ColToImOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 11)
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
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }

          v5[4] = v10;
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
      case 12:
        result = memcmp(__s1, "kernel_sizes", 0xCuLL);
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
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
        if (!result)
        {
          if (a4)
          {
            result = mlir::DenseIntElementsAttr::classof(a4);
            if (result)
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

        break;
    }
  }

  return result;
}

void mlir::mps::ColToImOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
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
    mlir::NamedAttrList::append(a3, "kernel_sizes", 0xCuLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {

    mlir::NamedAttrList::append(a3, "strides", 7uLL, v8);
  }
}

BOOL mlir::mps::ColToImOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v8, "data_layout", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v10, "explicit_padding", 16, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v11, "kernel_sizes", 12, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v12, "strides", 7, a3, a4) & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(_DWORD *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id && a1[2] < 2u)
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

    v8 = v26 + 24 * v27;
    v9 = v21;
    *(v8 + 2) = v22;
    *v8 = v9;
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid TensorDataLayout is one of NCHW or NHWC";
        v22 = 77;
        if (v27 >= v28)
        {
          if (v26 > &v21 || v26 + 24 * v27 <= &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v26 + 24 * v27;
        v11 = v21;
        *(v10 + 2) = v22;
        *v10 = v11;
        ++v27;
      }
    }
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
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

  return v7;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t), uint64_t a5)
{
  v81 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      v59 = a1;
      v60 = v21;
      Type = mlir::ElementsAttr::getType(&v59);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v59 = a1;
    v60 = 0;
    Type = mlir::ElementsAttr::getType(&v59);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v32 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v32;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v33 = v26[1];
LABEL_31:
      v61[0] = Type;
      v61[1] = v33;
      Shape = mlir::ShapedType::getShape(v61);
      v80 = 2;
      if (v35 == 1 && *Shape == v80)
      {
        v58 = a1;
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v66, a1, 0);
        NumElements = mlir::DenseElementsAttr::getNumElements(&v58);
        mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v62, a1, NumElements);
        v69 = v66;
        v70 = v67;
        for (i = v63; v70 != i; *&v70 = v70 + 1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v69, &v64);
          v53 = v65;
          v65 = 0;
          if (v53 > 0x40)
          {
            v54 = *v64;
            if (v64)
            {
              MEMORY[0x259C63150](v64, 0x1000C8000313F17);
              if (v65 >= 0x41)
              {
                if (v64)
                {
                  MEMORY[0x259C63150](v64, 0x1000C8000313F17);
                }
              }
            }

            if (!v54)
            {
              goto LABEL_33;
            }
          }

          else if (!v64)
          {
            goto LABEL_33;
          }
        }

        v55 = a1;
        v56[0] = mlir::DenseElementsAttr::getType(&v55);
        v56[1] = v51;
        ElementType = mlir::ShapedType::getElementType(v56);
        if (mlir::Type::isUnsignedInteger(&ElementType, 64))
        {
          return 1;
        }
      }

      goto LABEL_33;
    }

LABEL_30:
    v33 = 0;
    goto LABEL_31;
  }

LABEL_33:
  a4(&v69, a5);
  if (v69)
  {
    LODWORD(v66) = 3;
    *(&v66 + 1) = "attribute '";
    *&v67 = 11;
    if (v71 >= v72)
    {
      if (*(&v70 + 1) > &v66 || *(&v70 + 1) + 24 * v71 <= &v66)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v36 = *(&v70 + 1) + 24 * v71;
    v37 = v66;
    *(v36 + 16) = v67;
    *v36 = v37;
    ++v71;
    if (v69)
    {
      v68 = 261;
      *&v66 = a2;
      *(&v66 + 1) = a3;
      mlir::Diagnostic::operator<<(&v69 + 8, &v66);
      if (v69)
      {
        LODWORD(v66) = 3;
        *(&v66 + 1) = "' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
        *&v67 = 77;
        if (v71 >= v72)
        {
          if (*(&v70 + 1) > &v66 || *(&v70 + 1) + 24 * v71 <= &v66)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = *(&v70 + 1) + 24 * v71;
        v39 = v66;
        *(v38 + 16) = v67;
        *v38 = v39;
        ++v71;
      }
    }
  }

  v40 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v69);
  if (v69)
  {
    mlir::InFlightDiagnostic::report(&v69);
  }

  if (v79 == 1)
  {
    if (v78 != &v79)
    {
      free(v78);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v77;
      v43 = __p;
      if (v77 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v77 = v41;
      operator delete(v43);
    }

    v44 = v74;
    if (v74)
    {
      v45 = v75;
      v46 = v74;
      if (v75 != v74)
      {
        do
        {
          v48 = *--v45;
          v47 = v48;
          *v45 = 0;
          if (v48)
          {
            MEMORY[0x259C63150](v47, 0x1000C8077774924);
          }
        }

        while (v45 != v44);
        v46 = v74;
      }

      v75 = v44;
      operator delete(v46);
    }

    if (*(&v70 + 1) != &v73)
    {
      free(*(&v70 + 1));
    }
  }

  return v40;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 1;
  }

  if (mlir::DenseIntElementsAttr::classof(a1))
  {
    v10 = *a1;
    {
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v52 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v52 + 8);
      v13 = *(v52 + 16);
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v14 = v12;
    v15 = v13;
    do
    {
      v16 = v15 >> 1;
      v17 = &v14[2 * (v15 >> 1)];
      v19 = *v17;
      v18 = v17 + 2;
      v15 += ~(v15 >> 1);
      if (v19 < v11)
      {
        v14 = v18;
      }

      else
      {
        v15 = v16;
      }
    }

    while (v15);
    if (v14 != &v12[2 * v13] && *v14 == v11)
    {
      v21 = v14[1];
      *&v57 = a1;
      *(&v57 + 1) = v21;
      Type = mlir::ElementsAttr::getType(&v57);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v57 = a1;
    Type = mlir::ElementsAttr::getType(&v57);
    if (!Type)
    {
      goto LABEL_30;
    }

LABEL_18:
    v22 = *Type;
    {
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v51 = v22;
      v53 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v53;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v51 + 8);
      v25 = *(v51 + 16);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = v24;
    v27 = v25;
    do
    {
      v28 = v27 >> 1;
      v29 = &v26[2 * (v27 >> 1)];
      v31 = *v29;
      v30 = v29 + 2;
      v27 += ~(v27 >> 1);
      if (v31 < v23)
      {
        v26 = v30;
      }

      else
      {
        v27 = v28;
      }
    }

    while (v27);
    if (v26 != &v24[2 * v25] && *v26 == v23)
    {
      v32 = v26[1];
      goto LABEL_31;
    }

LABEL_30:
    v32 = 0;
LABEL_31:
    v60 = Type;
    v61 = v32;
    Shape = mlir::ShapedType::getShape(&v60);
    v72 = xmmword_2573695A0;
    if (v34 == 2 && *Shape == v72 && Shape[1] == *(&v72 + 1))
    {
      v54 = a1;
      v55[0] = mlir::DenseElementsAttr::getType(&v54);
      v55[1] = v36;
      ElementType = mlir::ShapedType::getElementType(v55);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }
    }
  }

  a4(&v60, a5);
  if (v60)
  {
    LODWORD(v57) = 3;
    *(&v57 + 1) = "attribute '";
    v58 = 11;
    if (v63 >= v64)
    {
      if (v62 > &v57 || v62 + 24 * v63 <= &v57)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v38 = v62 + 24 * v63;
    v39 = v57;
    *(v38 + 2) = v58;
    *v38 = v39;
    ++v63;
    if (v60)
    {
      v59 = 261;
      *&v57 = a2;
      *(&v57 + 1) = a3;
      mlir::Diagnostic::operator<<(&v61, &v57);
      if (v60)
      {
        LODWORD(v57) = 3;
        *(&v57 + 1) = "' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        v58 = 71;
        if (v63 >= v64)
        {
          if (v62 > &v57 || v62 + 24 * v63 <= &v57)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v62 + 24 * v63;
        v41 = v57;
        *(v40 + 2) = v58;
        *v40 = v41;
        ++v63;
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v69;
      v44 = __p;
      if (v69 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v69 = v42;
      operator delete(v44);
    }

    v45 = v66;
    if (v66)
    {
      v46 = v67;
      v47 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x259C63150](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        v47 = v66;
      }

      v67 = v45;
      operator delete(v47);
    }

    if (v62 != &v65)
    {
      free(v62);
    }
  }

  return v37;
}

BOOL mlir::mps::ColToImOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 4);
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::TensorDataLayoutAttr]";
  *(&v28 + 1) = 81;
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

uint64_t mlir::mps::ColToImOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  v4 = v3[12];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::ColToImOp::setDataLayout(uint64_t a1, unsigned int a2)
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

void mlir::mps::ColToImOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, __int128 *a7, uint64_t a8, __int128 *a9)
{
  mlir::mps::get2DElementsForImToCol(a1, a5);
  mlir::mps::get2DElementsForImToCol(a1, a7);
  mlir::mps::get2DElementsForImToCol(a1, a9);
  mlir::mps::getFormattedPaddingImToCol();
}

uint64_t mlir::mps::ColToImOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a5;
  v23 = a4;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = a6;
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

  *v20 = a10;
  v21 = *(a2 + 72);
  if (v21 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v21) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ColToImOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 24) = a5;
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
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = a9;
  __src = v34;
  v33 = 0x200000000;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v21 = *(a2 + 256);
  v22 = mlir::RegionRange::RegionRange(v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ColToImOp::inferReturnTypes(v22, v23, v24, v31[0], v31[1], Dictionary, v21, v25, v30[0], v30[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = v33;
  v27 = *(a2 + 72);
  if (v27 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v27), __src, 8 * v33);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + v26;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ColToImOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a6;
  v26 = a5;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v25, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a7;
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

  *v21 = a11;
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

uint64_t mlir::mps::ColToImOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v27 = a5;
  v28 = a4;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = a6;
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
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v20);
  v29[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v29[1] = v20;
  v33[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v33[1] = v29;
  v32 = a10;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v23 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v22 >> 47) ^ v22);
  v30[0] = &v32;
  v30[1] = v33;
  v31 = &v32;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v23 >> 47) ^ v23), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v30);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *v25 = result;
  v26 = *(a2 + 72);
  if (v26 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v26) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ColToImOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = a4;
  v35 = a3;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = a5;
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
  v41 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v42 = v19;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v39 = &v41;
  v37 = a9;
  v21 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v22 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v21 >> 47) ^ v21);
  v36 = &v37;
  v43 = &v37;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v22 >> 47) ^ v22), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v43);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *v24 = ParametricStorageTypeImpl;
  __src = v40;
  v39 = 0x200000000;
  mlir::ValueRange::ValueRange(&v43, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v27 = *(a2 + 256);
  v28 = mlir::RegionRange::RegionRange(&v41, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ColToImOp::inferReturnTypes(v28, v29, v30, v43, p_src, Dictionary, v27, v31, v41, v42, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v32 = v39;
  v33 = *(a2 + 72);
  if (v33 + v39 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v39)
  {
    memcpy((*(a2 + 64) + 8 * v33), __src, 8 * v39);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + v32;
  if (__src != v40)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ColToImOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v30 = a6;
  v31 = a5;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a7;
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
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v21);
  v32[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v32[1] = v21;
  v36[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v36[1] = v32;
  v35 = a11;
  v23 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v24 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v23 >> 47) ^ v23);
  v33[0] = &v35;
  v33[1] = v36;
  v34 = &v35;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v24 >> 47) ^ v24), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v34, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v33);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *v26 = result;
  v27 = *(a2 + 72);
  if (a4 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v28 = 0;
    v29 = *(a2 + 64) + 8 * v27;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v28);
      *(v29 + 8 * v28++) = result;
    }

    while (a4 != v28);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + a4;
  return result;
}

uint64_t mlir::mps::ColToImOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ColToImOp::build(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v29[2] = *MEMORY[0x277D85DE8];
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

  __src = v29;
  v28 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  v18 = mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  v19 = *(a2 + 256);
  v20 = mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ColToImOp::inferReturnTypes(v20, v21, v22, a3, a4, v18, v19, v23, v26[0], v26[1], &__src) & 1) == 0)
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

BOOL mlir::mps::ColToImOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v52 = *MEMORY[0x277D85DE8];
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
            v42 = *this;
            if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v7, "kernel_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42) & 1) != 0 && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v8, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(v6, "explicit_padding", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (v42 = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(v3, "data_layout", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v42)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
            {
              if (*(*this + 9))
              {
                v10 = *this - 16;
              }

              else
              {
                v10 = 0;
              }

              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
              return mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v40[0] = "requires attribute 'strides'";
            v41 = 259;
            mlir::OpState::emitOpError(this, v40, &v42);
            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
            if (v42)
            {
              mlir::InFlightDiagnostic::report(&v42);
            }

            if (v51 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v43);
            }
          }

          return v12;
        }

        v40[0] = "requires attribute 'kernel_sizes'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v33 = __p;
          if (__p)
          {
            v34 = v49;
            v35 = __p;
            if (v49 != __p)
            {
              do
              {
                v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
              }

              while (v34 != v33);
              v35 = __p;
            }

            v49 = v33;
            operator delete(v35);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_84;
          }

          v36 = v47;
          v18 = v46;
          if (v47 == v46)
          {
LABEL_83:
            v47 = v16;
            operator delete(v18);
LABEL_84:
            if (v44 != &v45)
            {
              free(v44);
            }

            return v12;
          }

          do
          {
            v38 = *--v36;
            v37 = v38;
            *v36 = 0;
            if (v38)
            {
              MEMORY[0x259C63150](v37, 0x1000C8077774924);
            }
          }

          while (v36 != v16);
LABEL_82:
          v18 = v46;
          goto LABEL_83;
        }
      }

      else
      {
        v40[0] = "requires attribute 'explicit_padding'";
        v41 = 259;
        mlir::OpState::emitOpError(this, v40, &v42);
        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
        if (v42)
        {
          mlir::InFlightDiagnostic::report(&v42);
        }

        if (v51 == 1)
        {
          if (v50 != &v51)
          {
            free(v50);
          }

          v27 = __p;
          if (__p)
          {
            v28 = v49;
            v29 = __p;
            if (v49 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v49 = v27;
            operator delete(v29);
          }

          v16 = v46;
          if (!v46)
          {
            goto LABEL_84;
          }

          v30 = v47;
          v18 = v46;
          if (v47 == v46)
          {
            goto LABEL_83;
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

          while (v30 != v16);
          goto LABEL_82;
        }
      }
    }

    else
    {
      v40[0] = "requires attribute 'dilation_rates'";
      v41 = 259;
      mlir::OpState::emitOpError(this, v40, &v42);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        mlir::InFlightDiagnostic::report(&v42);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v49;
          v23 = __p;
          if (v49 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v49 = v21;
          operator delete(v23);
        }

        v16 = v46;
        if (!v46)
        {
          goto LABEL_84;
        }

        v24 = v47;
        v18 = v46;
        if (v47 == v46)
        {
          goto LABEL_83;
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

        while (v24 != v16);
        goto LABEL_82;
      }
    }
  }

  else
  {
    v40[0] = "requires attribute 'data_layout'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v42);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v49;
        v15 = __p;
        if (v49 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v49 = v13;
        operator delete(v15);
      }

      v16 = v46;
      if (!v46)
      {
        goto LABEL_84;
      }

      v17 = v47;
      v18 = v46;
      if (v47 == v46)
      {
        goto LABEL_83;
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
      goto LABEL_82;
    }
  }

  return v12;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps10(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v98 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = *(*a2 + 17);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = v10[1];
      v33 = *(v10 + 4);
      if (!v33)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v40 = v10;
      mlir::TensorType::operator mlir::ShapedType();
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = v40[1];
      v33 = *(v40 + 4);
      if (!v33)
      {
        goto LABEL_56;
      }
    }

    v34 = v32;
    v35 = v33;
    do
    {
      v36 = v35 >> 1;
      v37 = &v34[2 * (v35 >> 1)];
      v39 = *v37;
      v38 = v37 + 2;
      v35 += ~(v35 >> 1);
      if (v39 < v31)
      {
        v34 = v38;
      }

      else
      {
        v35 = v36;
      }
    }

    while (v35);
    if (v34 != &v32[2 * v33] && *v34 == v31)
    {
      v41 = v34[1];
      goto LABEL_58;
    }

LABEL_56:
    v41 = 0;
LABEL_58:
    v87[0] = a2;
    v87[1] = v41;
    ElementType = mlir::ShapedType::getElementType(v87);
    if (mlir::Type::isF32(&ElementType))
    {
      return 1;
    }

    v10 = *a2;
    if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

LABEL_62:
    {
      v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v44 = v10[1];
      v45 = *(v10 + 4);
      if (!v45)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v52 = v10;
      mlir::mps::ConstantOp::verify();
      v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v44 = v52[1];
      v45 = *(v52 + 4);
      if (!v45)
      {
        goto LABEL_74;
      }
    }

    v46 = v44;
    v47 = v45;
    do
    {
      v48 = v47 >> 1;
      v49 = &v46[2 * (v47 >> 1)];
      v51 = *v49;
      v50 = v49 + 2;
      v47 += ~(v47 >> 1);
      if (v51 < v43)
      {
        v46 = v50;
      }

      else
      {
        v47 = v48;
      }
    }

    while (v47);
    if (v46 != &v44[2 * v45] && *v46 == v43)
    {
      v53 = v46[1];
      v80 = a2;
      v81 = v53;
      if (!mlir::ShapedType::hasRank(&v80))
      {
        goto LABEL_3;
      }

      goto LABEL_77;
    }

LABEL_74:
    v80 = a2;
    v81 = 0;
    if (!mlir::ShapedType::hasRank(&v80))
    {
      goto LABEL_3;
    }

LABEL_77:
    v54 = *a2;
    {
      v55 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v56 = v54[1];
      v57 = *(v54 + 4);
      if (!v57)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v79 = v54;
      mlir::mps::ConstantOp::verify();
      v55 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v56 = v79[1];
      v57 = *(v79 + 4);
      if (!v57)
      {
        goto LABEL_89;
      }
    }

    v58 = v56;
    v59 = v57;
    do
    {
      v60 = v59 >> 1;
      v61 = &v58[2 * (v59 >> 1)];
      v63 = *v61;
      v62 = v61 + 2;
      v59 += ~(v59 >> 1);
      if (v63 < v55)
      {
        v58 = v62;
      }

      else
      {
        v59 = v60;
      }
    }

    while (v59);
    if (v58 != &v56[2 * v57] && *v58 == v55)
    {
      v65 = v58[1];
      *&v85 = a2;
      *(&v85 + 1) = v65;
      mlir::ShapedType::getShape(&v85);
      if (v66 != 3)
      {
        goto LABEL_3;
      }

      goto LABEL_92;
    }

LABEL_89:
    v85 = a2;
    mlir::ShapedType::getShape(&v85);
    if (v64 != 3)
    {
      goto LABEL_3;
    }

LABEL_92:
    v67 = *a2;
    {
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = v67[1];
      v70 = *(v67 + 4);
      if (!v70)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v77 = v67;
      mlir::mps::ConstantOp::verify();
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = v77[1];
      v70 = *(v77 + 4);
      if (!v70)
      {
        goto LABEL_106;
      }
    }

    v71 = v69;
    v72 = v70;
    do
    {
      v73 = v72 >> 1;
      v74 = &v71[2 * (v72 >> 1)];
      v76 = *v74;
      v75 = v74 + 2;
      v72 += ~(v72 >> 1);
      if (v76 < v68)
      {
        v71 = v75;
      }

      else
      {
        v72 = v73;
      }
    }

    while (v72);
    if (v71 != &v69[2 * v70] && *v71 == v68)
    {
      v78 = v71[1];
LABEL_108:
      v83[0] = a2;
      v83[1] = v78;
      ElementType = mlir::ShapedType::getElementType(v83);
      if (!mlir::Type::isF32(&ElementType))
      {
        goto LABEL_3;
      }

      return 1;
    }

LABEL_106:
    v78 = 0;
    goto LABEL_108;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_62;
  }

LABEL_3:
  v82 = 261;
  v80 = a3;
  v81 = a4;
  mlir::Operation::emitOpError(v87, a1, &v80);
  if (v87[0])
  {
    LODWORD(v85) = 3;
    *(&v85 + 1) = " #";
    v86 = 2;
    if (v89 >= v90)
    {
      if (v88 > &v85 || v88 + 24 * v89 <= &v85)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v88 + 24 * v89;
    v13 = v85;
    *(v12 + 2) = v86;
    *v12 = v13;
    v14 = ++v89;
    if (v87[0])
    {
      LODWORD(v85) = 5;
      *(&v85 + 1) = a5;
      if (v14 >= v90)
      {
        if (v88 > &v85 || v88 + 24 * v14 <= &v85)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = v88 + 24 * v89;
      v16 = v85;
      *(v15 + 2) = v86;
      *v15 = v16;
      v17 = ++v89;
      if (v87[0])
      {
        LODWORD(v85) = 3;
        *(&v85 + 1) = " must be unranked tensor of 32-bit float values or 3D tensor of 32-bit float values, but got ";
        v86 = 93;
        if (v17 >= v90)
        {
          if (v88 > &v85 || v88 + 24 * v17 <= &v85)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v18 = v88 + 24 * v89;
        v19 = v85;
        *(v18 + 2) = v86;
        *v18 = v19;
        ++v89;
        if (v87[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
          if (v89 >= v90)
          {
            if (v88 > &v85 || v88 + 24 * v89 <= &v85)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v20 = v88 + 24 * v89;
          v21 = v85;
          *(v20 + 2) = v86;
          *v20 = v21;
          ++v89;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
  if (v87[0])
  {
    mlir::InFlightDiagnostic::report(v87);
  }

  if (v97 == 1)
  {
    if (v96 != &v97)
    {
      free(v96);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v95;
      v25 = __p;
      if (v95 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v95 = v23;
      operator delete(v25);
    }

    v26 = v92;
    if (v92)
    {
      v27 = v93;
      v28 = v92;
      if (v93 != v92)
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
        v28 = v92;
      }

      v93 = v26;
      operator delete(v28);
    }

    if (v88 != &v91)
    {
      free(v88);
    }
  }

  return v22;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps11(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v98 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = *(*a2 + 17);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = v10[1];
      v33 = *(v10 + 4);
      if (!v33)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v40 = v10;
      mlir::TensorType::operator mlir::ShapedType();
      v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v32 = v40[1];
      v33 = *(v40 + 4);
      if (!v33)
      {
        goto LABEL_56;
      }
    }

    v34 = v32;
    v35 = v33;
    do
    {
      v36 = v35 >> 1;
      v37 = &v34[2 * (v35 >> 1)];
      v39 = *v37;
      v38 = v37 + 2;
      v35 += ~(v35 >> 1);
      if (v39 < v31)
      {
        v34 = v38;
      }

      else
      {
        v35 = v36;
      }
    }

    while (v35);
    if (v34 != &v32[2 * v33] && *v34 == v31)
    {
      v41 = v34[1];
      goto LABEL_58;
    }

LABEL_56:
    v41 = 0;
LABEL_58:
    v87[0] = a2;
    v87[1] = v41;
    ElementType = mlir::ShapedType::getElementType(v87);
    if (mlir::Type::isF32(&ElementType))
    {
      return 1;
    }

    v10 = *a2;
    if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_3;
    }

LABEL_62:
    {
      v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v44 = v10[1];
      v45 = *(v10 + 4);
      if (!v45)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v52 = v10;
      mlir::mps::ConstantOp::verify();
      v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v44 = v52[1];
      v45 = *(v52 + 4);
      if (!v45)
      {
        goto LABEL_74;
      }
    }

    v46 = v44;
    v47 = v45;
    do
    {
      v48 = v47 >> 1;
      v49 = &v46[2 * (v47 >> 1)];
      v51 = *v49;
      v50 = v49 + 2;
      v47 += ~(v47 >> 1);
      if (v51 < v43)
      {
        v46 = v50;
      }

      else
      {
        v47 = v48;
      }
    }

    while (v47);
    if (v46 != &v44[2 * v45] && *v46 == v43)
    {
      v53 = v46[1];
      v80 = a2;
      v81 = v53;
      if (!mlir::ShapedType::hasRank(&v80))
      {
        goto LABEL_3;
      }

      goto LABEL_77;
    }

LABEL_74:
    v80 = a2;
    v81 = 0;
    if (!mlir::ShapedType::hasRank(&v80))
    {
      goto LABEL_3;
    }

LABEL_77:
    v54 = *a2;
    {
      v55 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v56 = v54[1];
      v57 = *(v54 + 4);
      if (!v57)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v79 = v54;
      mlir::mps::ConstantOp::verify();
      v55 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v56 = v79[1];
      v57 = *(v79 + 4);
      if (!v57)
      {
        goto LABEL_89;
      }
    }

    v58 = v56;
    v59 = v57;
    do
    {
      v60 = v59 >> 1;
      v61 = &v58[2 * (v59 >> 1)];
      v63 = *v61;
      v62 = v61 + 2;
      v59 += ~(v59 >> 1);
      if (v63 < v55)
      {
        v58 = v62;
      }

      else
      {
        v59 = v60;
      }
    }

    while (v59);
    if (v58 != &v56[2 * v57] && *v58 == v55)
    {
      v65 = v58[1];
      *&v85 = a2;
      *(&v85 + 1) = v65;
      mlir::ShapedType::getShape(&v85);
      if (v66 != 4)
      {
        goto LABEL_3;
      }

      goto LABEL_92;
    }

LABEL_89:
    v85 = a2;
    mlir::ShapedType::getShape(&v85);
    if (v64 != 4)
    {
      goto LABEL_3;
    }

LABEL_92:
    v67 = *a2;
    {
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = v67[1];
      v70 = *(v67 + 4);
      if (!v70)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v77 = v67;
      mlir::mps::ConstantOp::verify();
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = v77[1];
      v70 = *(v77 + 4);
      if (!v70)
      {
        goto LABEL_106;
      }
    }

    v71 = v69;
    v72 = v70;
    do
    {
      v73 = v72 >> 1;
      v74 = &v71[2 * (v72 >> 1)];
      v76 = *v74;
      v75 = v74 + 2;
      v72 += ~(v72 >> 1);
      if (v76 < v68)
      {
        v71 = v75;
      }

      else
      {
        v72 = v73;
      }
    }

    while (v72);
    if (v71 != &v69[2 * v70] && *v71 == v68)
    {
      v78 = v71[1];
LABEL_108:
      v83[0] = a2;
      v83[1] = v78;
      ElementType = mlir::ShapedType::getElementType(v83);
      if (!mlir::Type::isF32(&ElementType))
      {
        goto LABEL_3;
      }

      return 1;
    }

LABEL_106:
    v78 = 0;
    goto LABEL_108;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_62;
  }

LABEL_3:
  v82 = 261;
  v80 = a3;
  v81 = a4;
  mlir::Operation::emitOpError(v87, a1, &v80);
  if (v87[0])
  {
    LODWORD(v85) = 3;
    *(&v85 + 1) = " #";
    v86 = 2;
    if (v89 >= v90)
    {
      if (v88 > &v85 || v88 + 24 * v89 <= &v85)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = v88 + 24 * v89;
    v13 = v85;
    *(v12 + 2) = v86;
    *v12 = v13;
    v14 = ++v89;
    if (v87[0])
    {
      LODWORD(v85) = 5;
      *(&v85 + 1) = a5;
      if (v14 >= v90)
      {
        if (v88 > &v85 || v88 + 24 * v14 <= &v85)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = v88 + 24 * v89;
      v16 = v85;
      *(v15 + 2) = v86;
      *v15 = v16;
      v17 = ++v89;
      if (v87[0])
      {
        LODWORD(v85) = 3;
        *(&v85 + 1) = " must be unranked tensor of 32-bit float values or 4D tensor of 32-bit float values, but got ";
        v86 = 93;
        if (v17 >= v90)
        {
          if (v88 > &v85 || v88 + 24 * v17 <= &v85)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v18 = v88 + 24 * v89;
        v19 = v85;
        *(v18 + 2) = v86;
        *v18 = v19;
        ++v89;
        if (v87[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v85, a2);
          if (v89 >= v90)
          {
            if (v88 > &v85 || v88 + 24 * v89 <= &v85)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v20 = v88 + 24 * v89;
          v21 = v85;
          *(v20 + 2) = v86;
          *v20 = v21;
          ++v89;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
  if (v87[0])
  {
    mlir::InFlightDiagnostic::report(v87);
  }

  if (v97 == 1)
  {
    if (v96 != &v97)
    {
      free(v96);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v95;
      v25 = __p;
      if (v95 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v95 = v23;
      operator delete(v25);
    }

    v26 = v92;
    if (v92)
    {
      v27 = v93;
      v28 = v92;
      if (v93 != v92)
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
        v28 = v92;
      }

      v93 = v26;
      operator delete(v28);
    }

    if (v88 != &v91)
    {
      free(v88);
    }
  }

  return v22;
}

uint64_t mlir::mps::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::mps::detail::ConcatOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::ConcatOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
      v28 = &asc_2573D9516[v6];
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
  v25 = &asc_2573D9516[v23];
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
  if (asc_2573D9516[v5])
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::mps::ConcatOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "interleave", 0xAuLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

uint64_t mlir::mps::ConcatOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "interleave", 0xA, *a2);
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

unint64_t mlir::mps::ConcatOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::mps::ConcatOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x61656C7265746E69 ? (v4 = *(a3 + 8) == 25974) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::mps::ConcatOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 10 && *a2 == 0x61656C7265746E69 && *(a2 + 8) == 25974)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

uint64_t mlir::mps::ConcatOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "interleave", 0xAuLL, *a2);
  }

  return result;
}

BOOL mlir::mps::ConcatOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v2);
}

uint64_t mlir::mps::ConcatOp::setInterleave(uint64_t this, int a2)
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

uint64_t mlir::mps::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a6;
  mlir::OperationState::addOperands(a2, a4, a5);
  result = mlir::OperationState::addOperands(a2, &v13, 1uLL);
  if (a7)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = a7;
  }

  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ConcatOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v18 = a5;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  if (a6)
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      operator new();
    }

    *v9 = a6;
  }

  __src = v23;
  v22 = 0x200000000;
  v10 = *a1;
  v11 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v19, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ConcatOp::inferReturnTypes(v10, v11, 1, v20[0], v20[1], Dictionary, v14, v15, v19[0], v19[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = v22;
  v17 = *(a2 + 72);
  if (v17 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v17), __src, 8 * v22);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v23)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a7;
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a8)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a8;
  }

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

uint64_t mlir::mps::ConcatOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v15 = a6;
  mlir::OperationState::addOperands(a2, a4, a5);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  if (a7)
  {
    result = mlir::Builder::getUnitAttr(a1, v12);
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = result;
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

void mlir::mps::ConcatOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v20 = a5;
  mlir::OperationState::addOperands(a2, a3, a4);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v9);
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *v11 = UnitAttr;
  }

  __src = v25;
  v24 = 0x200000000;
  v12 = *a1;
  v13 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ConcatOp::inferReturnTypes(v12, v13, 1, v22[0], v22[1], Dictionary, v16, v17, v21[0], v21[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v24;
  v19 = *(a2 + 72);
  if (v19 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v24);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v25)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ConcatOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v19 = a7;
  mlir::OperationState::addOperands(a2, a5, a6);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  if (!a8)
  {
    v15 = *(a2 + 72);
    if (a4 + v15 <= *(a2 + 76))
    {
      goto LABEL_3;
    }

LABEL_9:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v14);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = result;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (a4)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a4 != v17);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

uint64_t mlir::mps::ConcatOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ConcatOp::build(mlir::Float32Type **a1, uint64_t a2, char *a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::ConcatOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
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

uint64_t mlir::mps::ConcatOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v20 = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v3, "interleave", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v20) & 1) == 0)
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v7 = 0;
    v6 = 0xFFFFFFFFLL;
LABEL_5:
    v8 = 0;
    v9 = v7 + 24;
    while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(*this, (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v8) & 1) != 0)
    {
      ++v8;
      v9 += 32;
      if (v6 == v8)
      {
        v4 = *this;
        if ((*(*this + 46) & 0x80) != 0)
        {
          goto LABEL_11;
        }

        v10 = 0;
        v11 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }
    }

    return 0;
  }

  v5 = *(v4 + 17);
  v6 = (v5 - 1);
  if (v5 != 1)
  {
    v7 = *(v4 + 9);
    goto LABEL_5;
  }

  LODWORD(v8) = 0;
LABEL_11:
  v10 = *(v4 + 9);
  v11 = (*(v4 + 17) - 1);
LABEL_12:
  v12 = (v11 + 1);
  v13 = v12 - v11;
  if (v12 != v11)
  {
    v14 = v10 + 32 * v11 + 24;
    while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v8) & 1) != 0)
    {
      LODWORD(v8) = v8 + 1;
      v14 += 32;
      if (!--v13)
      {
        v4 = *this;
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  v15 = *(v4 + 9);
  v16 = v4 - 16;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps12(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = *(*a2 + 17);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  {
    v61 = a1;
    v21 = v9;
    mlir::TensorType::operator mlir::ShapedType();
    a1 = v61;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = v21[1];
    v14 = *(v21 + 4);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = a1;
    v23 = 0;
    goto LABEL_20;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = v9[1];
  v14 = *(v9 + 4);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
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
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_18;
  }

  v22 = a1;
  v23 = v15[1];
LABEL_20:
  v70[0] = a2;
  v70[1] = v23;
  *&v68 = mlir::ShapedType::getElementType(v70);
  if (mlir::Type::isSignlessInteger(&v68, 1) || mlir::Type::isSignedInteger(&v68, 8) || mlir::Type::isSignedInteger(&v68, 16) || mlir::Type::isSignedInteger(&v68, 32) || mlir::Type::isSignedInteger(&v68, 64) || mlir::Type::isUnsignedInteger(&v68, 8) || mlir::Type::isUnsignedInteger(&v68, 16) || mlir::Type::isUnsignedInteger(&v68, 32) || mlir::Type::isUnsignedInteger(&v68, 64) || mlir::Type::isF16(&v68) || mlir::Type::isF32(&v68) || mlir::Type::isBF16(&v68) || *(*v68 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 17);
  a1 = v22;
LABEL_34:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_55;
  }

  {
    v34 = a1;
    v35 = v9;
    mlir::mps::ConstantOp::verify();
    a1 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = v35[1];
    v27 = *(v35 + 4);
    if (v27)
    {
      goto LABEL_41;
    }

LABEL_51:
    v36 = a1;
    v37 = 0;
    goto LABEL_53;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = v9[1];
  v27 = *(v9 + 4);
  if (!v27)
  {
    goto LABEL_51;
  }

LABEL_41:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_51;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_53:
  v62 = a2;
  v63 = v37;
  ElementType = mlir::ShapedType::getElementType(&v62);
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v58 = ElementType;
    v67 = ElementType;
    *&v68 = mlir::ComplexType::getElementType(&v67);
    if (!mlir::Type::isF16(&v68))
    {
      v65 = v58;
      v66 = mlir::ComplexType::getElementType(&v65);
      isF32 = mlir::Type::isF32(&v66);
      a1 = v36;
      if (!isF32)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_55:
  v64 = 261;
  v62 = a3;
  v63 = a4;
  mlir::Operation::emitOpError(v70, a1, &v62);
  if (v70[0])
  {
    LODWORD(v68) = 3;
    *(&v68 + 1) = " #";
    v69 = 2;
    if (v72 >= v73)
    {
      if (v71 > &v68 || v71 + 24 * v72 <= &v68)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v71 + 24 * v72;
    v40 = v68;
    *(v39 + 2) = v69;
    *v39 = v40;
    v41 = ++v72;
    if (v70[0])
    {
      LODWORD(v68) = 5;
      *(&v68 + 1) = a5;
      if (v41 >= v73)
      {
        if (v71 > &v68 || v71 + 24 * v41 <= &v68)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v71 + 24 * v72;
      v43 = v68;
      *(v42 + 2) = v69;
      *v42 = v43;
      v44 = ++v72;
      if (v70[0])
      {
        LODWORD(v68) = 3;
        *(&v68 + 1) = " must be variadic of tensor of mps native type values or tensor of complex values, but got ";
        v69 = 91;
        if (v44 >= v73)
        {
          if (v71 > &v68 || v71 + 24 * v44 <= &v68)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v71 + 24 * v72;
        v46 = v68;
        *(v45 + 2) = v69;
        *v45 = v46;
        ++v72;
        if (v70[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v68, a2);
          if (v72 >= v73)
          {
            if (v71 > &v68 || v71 + 24 * v72 <= &v68)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v71 + 24 * v72;
          v48 = v68;
          *(v47 + 2) = v69;
          *v47 = v48;
          ++v72;
        }
      }
    }
  }

  v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
  if (v70[0])
  {
    mlir::InFlightDiagnostic::report(v70);
  }

  if (v80 == 1)
  {
    if (v79 != &v80)
    {
      free(v79);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v78;
      v52 = __p;
      if (v78 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v78 = v50;
      operator delete(v52);
    }

    v53 = v75;
    if (v75)
    {
      v54 = v76;
      v55 = v75;
      if (v76 != v75)
      {
        do
        {
          v57 = *--v54;
          v56 = v57;
          *v54 = 0;
          if (v57)
          {
            MEMORY[0x259C63150](v56, 0x1000C8077774924);
          }
        }

        while (v54 != v53);
        v55 = v75;
      }

      v76 = v53;
      operator delete(v55);
    }

    if (v71 != &v74)
    {
      free(v71);
    }
  }

  return v49;
}

uint64_t mlir::mps::ConjugateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::ConjugateOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::ConjugateOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::ConjugateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::ConjugateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ConjugateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::ConjugateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ConjugateOp::verifyInvariants(mlir::Operation **this)
{
  v2 = mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64;
  v4 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(*v4 + 136);
    v6 = v5 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    v7 = v5 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id ? v4 : 0;
    v18 = v7;
    if (v6)
    {
      v11 = v4[2];
      v13 = a2;
      Context = mlir::Attribute::getContext(&v18);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v15);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v11 + 88);
      llvm::sys::RWMutexImpl::unlock((Manager + 48));
      a2 = v13;
      v2 = a1;
      v8 = *(v13 + 44);
      v9 = v8 & 0x7FFFFF;
      if ((v8 & 0x7FFFFF) != 0)
      {
        goto LABEL_7;
      }

LABEL_9:
      v10 = 0;
      v9 = 0;
      goto LABEL_10;
    }
  }

  v8 = *(a2 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = ((v3 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
LABEL_10:
  mlir::RegionRange::RegionRange((v2 + 32), v10, v9);
  return v2;
}

uint64_t mlir::mps::ConstantOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v26 = v4;
  if (v4)
  {
    v6 = mlir::DictionaryAttr::get(&v26, "value", 5uLL);
    if (v6)
    {
      v7 = *(*v6 + 136);
      v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
      if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      v29[0] = v9;
      if (v8)
      {
        v10 = v6[2];
        v11 = v6;
        Context = mlir::Attribute::getContext(v29);
        Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v13);
        llvm::sys::RWMutexImpl::lock((Manager + 48));
        ++*(v10 + 88);
        llvm::sys::RWMutexImpl::unlock((Manager + 48));
        v6 = v11;
      }

      *a1 = v6;
    }

    return 1;
  }

  else
  {
    a3(v29, a4);
    if (v29[0])
    {
      LODWORD(v27) = 3;
      *(&v27 + 1) = "expected DictionaryAttr to set properties";
      v28 = 41;
      if (v31 >= v32)
      {
        if (v30 > &v27 || v30 + 24 * v31 <= &v27)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = v30 + 24 * v31;
      v17 = v27;
      *(v16 + 2) = v28;
      *v16 = v17;
      ++v31;
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v37;
        v20 = __p;
        if (v37 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v37 = v18;
        operator delete(v20);
      }

      v21 = v34;
      if (v34)
      {
        v22 = v35;
        v23 = v34;
        if (v35 != v34)
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
          v23 = v34;
        }

        v35 = v21;
        operator delete(v23);
      }

      if (v30 != &v33)
      {
        free(v30);
      }
    }

    return 0;
  }
}

uint64_t mlir::mps::ConstantOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, mlir::MLIRContext *a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v2 = *a2;
  if (!*a2)
  {
    v2 = mlir::UnitAttr::get(a1, a2);
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v11, "value", 5, v2);
  if (v13 >= HIDWORD(v13))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v12 + 16 * v13);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = __CFADD__(v13, 1);
  v7 = (v13 + 1);
  LODWORD(v13) = v13 + 1;
  if (v6)
  {
    DictionaryAttr = 0;
    v9 = v12;
    if (v12 == v14)
    {
      return DictionaryAttr;
    }

    goto LABEL_9;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v11, v12, v7);
  v9 = v12;
  if (v12 != v14)
  {
LABEL_9:
    free(v9);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::ConstantOp::computePropertiesHash(unint64_t *a1)
{
  v1 = *a1;
  if (*(**a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v4 = llvm::hash_value(**(v1 + 16), *(*(v1 + 16) + 8));
    v5 = HIDWORD(*(v1 + 40));
    v6 = 0x9DDFEA08EB382D69 * ((8 * *(v1 + 40) - 0xAE502812AA7333) ^ v5);
    v7 = (0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47);
    v8 = HIDWORD(*(v1 + 8));
    v9 = 0x9DDFEA08EB382D69 * ((8 * *(v1 + 8) - 0xAE502812AA7333) ^ v8);
    v10 = 0x86D804B173C04367 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
    v11 = __ROR8__(0xB492B66FBE98F273 * v4 - 0x9DDFEA08EB382D69 * v7, 43) + 0x6C105E72878303FFLL * v7 + __ROR8__(v10 ^ 0xFF51AFD7ED558CCDLL, 30);
    v2 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * v4 + __ROR8__((0x9DDFEA08EB382D69 * v7) ^ 0xC949D7C7509E6557, 20) - v10 + 24;
    v3 = v11 ^ v2;
  }

  else
  {
    v2 = HIDWORD(v1);
    v3 = (8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1);
  }

  v12 = 0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * v3) >> 47) ^ (0x9DDFEA08EB382D69 * v3));
  v13 = v12 ^ (v12 >> 47);
  v14 = ((0x9DDFEA08EB382D69 * v13) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (((0x759C16B48 * v13) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
}

uint64_t mlir::mps::ConstantOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  v12 = 0;
  if (((*(*a1 + 48))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  v3 = v12;
  if (v12)
  {
    v4 = *(*v12 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

    v13 = v6;
    if (v5)
    {
      v7 = v12[2];
      Context = mlir::Attribute::getContext(&v13);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v9);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v7 + 88);
      llvm::sys::RWMutexImpl::unlock((Manager + 48));
    }
  }

  *v2 = v3;
  return 1;
}

uint64_t mlir::mps::ConstantOp::writeProperties(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16 * ((*(*result + 44) >> 23) & 1) + 64);
  if (v2)
  {
    return (*(*a2 + 16))(a2, v2);
  }

  return result;
}

void mlir::mps::ConstantOp::build(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  if (a3 && ((v6 = *(*a3 + 136), v7 = v6 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v6 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id) ? (v8 = 0) : (v8 = a3), v17 = v8, v7))
  {
    v10 = a3[2];
    Context = mlir::Attribute::getContext(&v17);
    Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v12);
    llvm::sys::RWMutexImpl::lock((Manager + 48));
    ++*(v10 + 88);
    llvm::sys::RWMutexImpl::unlock((Manager + 48));
    v9 = *(a2 + 256);
    if (!v9)
    {
LABEL_7:
      operator new();
    }
  }

  else
  {
    v9 = *(a2 + 256);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  *v9 = a3;
  Type = mlir::ElementsAttr::getType(v16);
  {
    mlir::mps::ConstantOp::verify();
    v15 = *(a2 + 72);
    if (v15 >= *(a2 + 76))
    {
LABEL_12:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v15 = *(a2 + 72);
    if (v15 >= *(a2 + 76))
    {
      goto LABEL_12;
    }
  }

  *(*(a2 + 64) + 8 * v15) = Type;
  ++*(a2 + 72);
}

void mlir::mps::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4 || ((v7 = *(*a4 + 136), v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v7 != &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id) ? (v9 = 0) : (v9 = a4), v16 = v9, !v8))
  {
    v10 = *(a2 + 256);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    operator new();
  }

  v12 = a4[2];
  Context = mlir::Attribute::getContext(&v16);
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v14);
  llvm::sys::RWMutexImpl::lock((Manager + 48));
  ++*(v12 + 88);
  llvm::sys::RWMutexImpl::unlock((Manager + 48));
  v10 = *(a2 + 256);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  *v10 = a4;
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
}

void mlir::mps::ConstantOp::build(uint64_t **this, mlir::OpBuilder *a2, mlir::OperationState *a3)
{
  v10 = a3;
  IntegerType = mlir::Builder::getIntegerType(this, 32, 1);
  v8 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
  v5 = mlir::TensorType::operator mlir::ShapedType(&v8);
  RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v5);
  v6 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&RawIntOrFloat);
  mlir::mps::ConstantOp::build(v6, a2, v6, v7);
}

void mlir::mps::ConstantOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a4;
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 1);
  v9 = mlir::RankedTensorType::get(v11, 1, IntegerType, 0);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v9);
  RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v6);
  v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&RawIntOrFloat);
  mlir::mps::ConstantOp::build(v7, a2, v7, v8);
}

{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a4;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 1);
  v9 = mlir::RankedTensorType::get(v11, 1, IntegerType, 0);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v9);
  RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v6);
  v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&RawIntOrFloat);
  mlir::mps::ConstantOp::build(v7, a2, v7, v8);
}

void mlir::mps::ConstantOp::build(mlir::Float32Type **this, mlir::OpBuilder *a2, mlir::OperationState *a3, float a4)
{
  v11 = a4;
  F32Type = mlir::Builder::getF32Type(this, a2);
  v9 = mlir::RankedTensorType::get(0, 0, F32Type, 0);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v9);
  RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v6);
  v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&RawIntOrFloat);
  mlir::mps::ConstantOp::build(v7, a2, v7, v8);
}

void mlir::mps::ConstantOp::build(mlir::Float32Type **a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a4;
  F32Type = mlir::Builder::getF32Type(a1, a2);
  v9 = mlir::RankedTensorType::get(v11, 1, F32Type, 0);
  v6 = mlir::TensorType::operator mlir::ShapedType(&v9);
  RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v6);
  v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&RawIntOrFloat);
  mlir::mps::ConstantOp::build(v7, a2, v7, v8);
}

uint64_t mlir::mps::ConstantOp::verifyInvariantsImpl(mlir::Operation **this)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps13(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps13(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v85 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *(*a2 + 17);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_52;
  }

  {
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = v7[1];
    v12 = *(v7 + 4);
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v63 = a1;
    v19 = a4;
    v20 = a3;
    mlir::TensorType::operator mlir::ShapedType();
    a3 = v20;
    a4 = v19;
    a1 = v63;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = v7[1];
    v12 = *(v7 + 4);
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10)
  {
    v21 = a3;
    v22 = a4;
    v23 = a1;
    v24 = v13[1];
    goto LABEL_20;
  }

LABEL_18:
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = 0;
LABEL_20:
  v74[0] = a2;
  v74[1] = v24;
  *&v72 = mlir::ShapedType::getElementType(v74);
  if (mlir::Type::isSignlessInteger(&v72, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&v72, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&v72, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&v72, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(&v72, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&v72, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&v72, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&v72, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(&v72, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(&v72))
  {
    return 1;
  }

  if (mlir::Type::isF32(&v72))
  {
    return 1;
  }

  if (mlir::Type::isBF16(&v72))
  {
    return 1;
  }

  v25 = *(*v72 + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  if (v25 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v70 = v72;
    ElementType = mlir::ComplexType::getElementType(&v70);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    v68 = v72;
    v69 = mlir::ComplexType::getElementType(&v68);
    if (mlir::Type::isF32(&v69))
    {
      return 1;
    }
  }

  if (mlir::Type::isSignedInteger(&v72, 2) || mlir::Type::isSignedInteger(&v72, 4) || mlir::Type::isSignedInteger(&v72, 8) || mlir::Type::isSignedInteger(&v72, 16) || mlir::Type::isSignedInteger(&v72, 32) || mlir::Type::isUnsignedInteger(&v72, 1) || mlir::Type::isUnsignedInteger(&v72, 2) || mlir::Type::isUnsignedInteger(&v72, 4) || mlir::Type::isUnsignedInteger(&v72, 8) || mlir::Type::isUnsignedInteger(&v72, 16) || mlir::Type::isUnsignedInteger(&v72, 32) || *(*v72 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id || mlir::Type::isUnsignedInteger(&v72, 2) || mlir::Type::isUnsignedInteger(&v72, 3) || mlir::Type::isUnsignedInteger(&v72, 4) || mlir::Type::isUnsignedInteger(&v72, 6) || mlir::Type::isUnsignedInteger(&v72, 8))
  {
    return 1;
  }

  v8 = *(*a2 + 17);
  a1 = v23;
  a4 = v22;
  v7 = *a2;
  a3 = v21;
LABEL_52:
  if (v8 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    {
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = v7[1];
      v47 = *(v7 + 4);
      if (!v47)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v64 = a1;
      v54 = a4;
      v55 = a3;
      mlir::mps::ConstantOp::verify();
      a3 = v55;
      a4 = v54;
      a1 = v64;
      v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v46 = v7[1];
      v47 = *(v7 + 4);
      if (!v47)
      {
        goto LABEL_109;
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
      v56 = a3;
      v57 = a4;
      v58 = a1;
      v59 = v48[1];
LABEL_111:
      v65 = a2;
      v66 = v59;
      *&v72 = mlir::ShapedType::getElementType(&v65);
      if (!mlir::Type::isSignlessInteger(&v72, 1) && !mlir::Type::isSignedInteger(&v72, 8) && !mlir::Type::isSignedInteger(&v72, 16) && !mlir::Type::isSignedInteger(&v72, 32) && !mlir::Type::isSignedInteger(&v72, 64) && !mlir::Type::isUnsignedInteger(&v72, 8) && !mlir::Type::isUnsignedInteger(&v72, 16) && !mlir::Type::isUnsignedInteger(&v72, 32) && !mlir::Type::isUnsignedInteger(&v72, 64) && !mlir::Type::isF16(&v72) && !mlir::Type::isF32(&v72) && !mlir::Type::isBF16(&v72))
      {
        v60 = *(*v72 + 136);
        if (v60 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          if (v60 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || (v70 = v72, ElementType = mlir::ComplexType::getElementType(&v70), !mlir::Type::isF16(&ElementType)) && (v68 = v72, v69 = mlir::ComplexType::getElementType(&v68), !mlir::Type::isF32(&v69)))
          {
            if (!mlir::Type::isSignedInteger(&v72, 2) && !mlir::Type::isSignedInteger(&v72, 4) && !mlir::Type::isSignedInteger(&v72, 8) && !mlir::Type::isSignedInteger(&v72, 16) && !mlir::Type::isSignedInteger(&v72, 32) && !mlir::Type::isUnsignedInteger(&v72, 1) && !mlir::Type::isUnsignedInteger(&v72, 2) && !mlir::Type::isUnsignedInteger(&v72, 4) && !mlir::Type::isUnsignedInteger(&v72, 8) && !mlir::Type::isUnsignedInteger(&v72, 16) && !mlir::Type::isUnsignedInteger(&v72, 32) && *(*v72 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isUnsignedInteger(&v72, 2) && !mlir::Type::isUnsignedInteger(&v72, 3) && !mlir::Type::isUnsignedInteger(&v72, 4) && !mlir::Type::isUnsignedInteger(&v72, 6))
            {
              isUnsignedInteger = mlir::Type::isUnsignedInteger(&v72, 8);
              a1 = v58;
              a4 = v57;
              a3 = v56;
              if (!isUnsignedInteger)
              {
                goto LABEL_53;
              }
            }
          }
        }
      }

      return 1;
    }

LABEL_109:
    v56 = a3;
    v57 = a4;
    v58 = a1;
    v59 = 0;
    goto LABEL_111;
  }

LABEL_53:
  v67 = 261;
  v65 = a3;
  v66 = a4;
  mlir::Operation::emitOpError(v74, a1, &v65);
  if (v74[0])
  {
    LODWORD(v72) = 3;
    *(&v72 + 1) = " #";
    v73 = 2;
    if (v76 >= v77)
    {
      if (v75 > &v72 || v75 + 24 * v76 <= &v72)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = v75 + 24 * v76;
    v27 = v72;
    *(v26 + 2) = v73;
    *v26 = v27;
    v28 = ++v76;
    if (v74[0])
    {
      LODWORD(v72) = 5;
      *(&v72 + 1) = a5;
      if (v28 >= v77)
      {
        if (v75 > &v72 || v75 + 24 * v28 <= &v72)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v29 = v75 + 24 * v76;
      v30 = v72;
      *(v29 + 2) = v73;
      *v29 = v30;
      v31 = ++v76;
      if (v74[0])
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = " must be tensor of mps native type or complex or quantized or palette LUT index values or memref of mps native type or complex or quantized or palette LUT index values, but got ";
        v73 = 177;
        if (v31 >= v77)
        {
          if (v75 > &v72 || v75 + 24 * v31 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v75 + 24 * v76;
        v33 = v72;
        *(v32 + 2) = v73;
        *v32 = v33;
        ++v76;
        if (v74[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, a2);
          if (v76 >= v77)
          {
            if (v75 > &v72 || v75 + 24 * v76 <= &v72)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v75 + 24 * v76;
          v35 = v72;
          *(v34 + 2) = v73;
          *v34 = v35;
          ++v76;
        }
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v74);
  if (v74[0])
  {
    mlir::InFlightDiagnostic::report(v74);
  }

  if (v84 == 1)
  {
    if (v83 != &v84)
    {
      free(v83);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v82;
      v39 = __p;
      if (v82 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v82 = v37;
      operator delete(v39);
    }

    v40 = v79;
    if (v79)
    {
      v41 = v80;
      v42 = v79;
      if (v80 != v79)
      {
        do
        {
          v44 = *--v41;
          v43 = v44;
          *v41 = 0;
          if (v44)
          {
            MEMORY[0x259C63150](v43, 0x1000C8077774924);
          }
        }

        while (v41 != v40);
        v42 = v79;
      }

      v80 = v40;
      operator delete(v42);
    }

    if (v75 != &v78)
    {
      free(v75);
    }
  }

  return v36;
}

BOOL mlir::mps::ConstantOp::verifyInvariants(mlir::Operation **this)
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
  return (mlir::mps::__mlir_ods_local_type_constraint_MPSOps13(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) != 0 && mlir::mps::ConstantOp::verify(this);
}

uint64_t mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::Conv2DDataGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a1 + 72) = *(v3 + 48);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 80), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 80), 0, 0);
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
  v6 = *(v3 + 32);
  *(a1 + 72) = *(v3 + 48);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 80), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 80), 0, 0);
  }

  return a1;
}

unint64_t mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
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
    v9 = "0MPSDialectE";
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
      v28 = &dword_257374322 + v6;
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
  v25 = (&dword_257374322 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
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
  if (*(&dword_257374322 + v5))
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t *mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase::getGroups(mlir::mps::detail::Conv2DDataGradientOpGenericAdaptorBase *this)
{
  v5 = *(this + 6);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::Conv2DDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v55 = v6;
  if (!v6)
  {
    a3(&v58, a4);
    if (v58)
    {
      LODWORD(v56) = 3;
      *(&v56 + 1) = "expected DictionaryAttr to set properties";
      v57 = 41;
      if (v61 >= v62)
      {
        if (v60 > &v56 || v60 + 24 * v61 <= &v56)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v60 + 24 * v61;
      v23 = v56;
      *(v22 + 2) = v57;
      *v22 = v23;
      ++v61;
      if (v58)
      {
        mlir::InFlightDiagnostic::report(&v58);
      }
    }

    if (v69 != 1)
    {
      return 0;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v67;
      v26 = __p;
      if (v67 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v67 = v24;
      operator delete(v26);
    }

    v17 = v64;
    if (!v64)
    {
      goto LABEL_77;
    }

    v27 = v65;
    v19 = v64;
    if (v65 == v64)
    {
LABEL_76:
      v65 = v17;
      operator delete(v19);
LABEL_77:
      if (v60 != &v63)
      {
        free(v60);
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

  v8 = mlir::DictionaryAttr::get(&v55, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v58, a4);
      if (v58)
      {
        LODWORD(v56) = 3;
        v57 = 56;
        if (v61 >= v62)
        {
          if (v60 > &v56 || v60 + 24 * v61 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v60 + 24 * v61;
        v11 = v56;
        *(v10 + 2) = v57;
        *v10 = v11;
        ++v61;
        if (v58)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, v9);
          if (v61 >= v62)
          {
            if (v60 > &v56 || v60 + 24 * v61 <= &v56)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v60 + 24 * v61;
          v13 = v56;
          *(v12 + 2) = v57;
          *v12 = v13;
          ++v61;
          if (v58)
          {
            mlir::InFlightDiagnostic::report(&v58);
          }
        }
      }

      if ((v69 & 1) == 0)
      {
        return 0;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v67;
        v16 = __p;
        if (v67 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v67 = v14;
        operator delete(v16);
      }

      v17 = v64;
      if (!v64)
      {
        goto LABEL_77;
      }

      v18 = v65;
      v19 = v64;
      if (v65 == v64)
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

  v30 = mlir::DictionaryAttr::get(&v55, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v58, a4);
    if (v58)
    {
      LODWORD(v56) = 3;
      v57 = 59;
      if (v61 >= v62)
      {
        if (v60 > &v56 || v60 + 24 * v61 <= &v56)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v60 + 24 * v61;
      v37 = v56;
      *(v36 + 2) = v57;
      *v36 = v37;
      ++v61;
      if (v58)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, v31);
        if (v61 >= v62)
        {
          if (v60 > &v56 || v60 + 24 * v61 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v60 + 24 * v61;
        v39 = v56;
        *(v38 + 2) = v57;
        *v38 = v39;
        ++v61;
        if (v58)
        {
          mlir::InFlightDiagnostic::report(&v58);
        }
      }
    }

    if ((v69 & 1) == 0)
    {
      return 0;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v67;
      v42 = __p;
      if (v67 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v67 = v40;
      operator delete(v42);
    }

    v17 = v64;
    if (!v64)
    {
      goto LABEL_77;
    }

    v43 = v65;
    v19 = v64;
    if (v65 == v64)
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
    v19 = v64;
    goto LABEL_76;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v55, "explicit_padding", 0x10uLL);
  if (v32)
  {
    v33 = v32;
    if (!mlir::DenseIntElementsAttr::classof(v32))
    {
      a3(&v58, a4);
      if (v58)
      {
        LODWORD(v56) = 3;
        v57 = 61;
        if (v61 >= v62)
        {
          if (v60 > &v56 || v60 + 24 * v61 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v46 = v60 + 24 * v61;
        v47 = v56;
        *(v46 + 2) = v57;
        *v46 = v47;
        ++v61;
        if (v58)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, v33);
          if (v61 >= v62)
          {
            if (v60 > &v56 || v60 + 24 * v61 <= &v56)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v60 + 24 * v61;
          v49 = v56;
          *(v48 + 2) = v57;
          *v48 = v49;
          ++v61;
          if (v58)
          {
            mlir::InFlightDiagnostic::report(&v58);
          }
        }
      }

      if (v69 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v59);
      }

      return 0;
    }

    a1[2] = v33;
  }

  v34 = mlir::DictionaryAttr::get(&v55, "groups", 6uLL);
  *&v56 = v34;
  if (!v34)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v55, "padding_style", 0xDuLL);
    *&v56 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v58, a4);
        goto LABEL_99;
      }

      a1[4] = v50;
    }

    v51 = mlir::DictionaryAttr::get(&v55, "strides", 7uLL);
    *&v56 = v51;
    if (v51)
    {
      v52 = v51;
      if (!mlir::DenseIntElementsAttr::classof(v51))
      {
        a3(&v58, a4);
        goto LABEL_99;
      }

      a1[5] = v52;
    }

    v53 = mlir::DictionaryAttr::get(&v55, "weights_layout", 0xEuLL);
    *&v56 = v53;
    if (v53)
    {
      if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        a3(&v58, a4);
        goto LABEL_99;
      }

      a1[6] = v53;
    }

    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[3] = v34;
    goto LABEL_88;
  }

  a3(&v58, a4);
LABEL_99:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v35, &v56);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
  return 0;
}

uint64_t mlir::mps::Conv2DDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "data_layout", 0xB, *a2);
  if (v36 >= HIDWORD(v36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v35 + 16 * v36);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v34, "dilation_rates", 0xE, v7);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v35 + 16 * v36);
    *v10 = v8;
    v10[1] = v9;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v34, "explicit_padding", 0x10, v11);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v35 + 16 * v36);
    *v14 = v12;
    v14[1] = v13;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v34, "groups", 6, v15);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v35 + 16 * v36);
    *v18 = v16;
    v18[1] = v17;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v34, "padding_style", 0xD, v19);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v35 + 16 * v36);
    *v22 = v20;
    v22[1] = v21;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v34, "strides", 7, v23);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v35 + 16 * v36);
    *v26 = v24;
    v26[1] = v25;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v27 = a2[6];
  if (v27)
  {
    v28 = mlir::Builder::getNamedAttr(&v34, "weights_layout", 0xE, v27);
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v30 = (v35 + 16 * v36);
    *v30 = v28;
    v30[1] = v29;
    v6 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v31 = v35;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_25;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v6);
  v31 = v35;
  if (v35 != v37)
  {
LABEL_25:
    free(v31);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::Conv2DDataGradientOp::computePropertiesHash(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v16 = HIDWORD(a1[6]);
  v17 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v16);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
  memset(v26, 0, sizeof(v26));
  v27 = 0xFF51AFD7ED558CCDLL;
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v25, 0, v26, &v26[3] + 8, &v24, &v23, &v22, &v21, &v20, &v19);
}

uint64_t mlir::mps::Conv2DDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 12)
  {
    if (__n == 13)
    {
      if (!memcmp(__s1, "padding_style", 0xDuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 14)
    {
      if (!memcmp(__s1, "dilation_rates", 0xEuLL))
      {
        return a2[1];
      }

      if (!memcmp(__s1, "weights_layout", 0xEuLL))
      {
        return a2[6];
      }
    }

    else if (__n == 16 && !memcmp(__s1, "explicit_padding", 0x10uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 6)
  {
    if (!memcmp(__s1, "groups", 6uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 7)
  {
    if (!memcmp(__s1, "strides", 7uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 11)
  {
    return 0;
  }

  if (*__s1 != 0x79616C5F61746164 || *(__s1 + 3) != 0x74756F79616C5F61)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::Conv2DDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 12)
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
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[4] = v9;
          }

          else
          {
            v5[4] = 0;
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
                v12 = a4;
              }

              else
              {
                v12 = 0;
              }

              v5[6] = v12;
            }

            else
            {
              v5[6] = 0;
            }
          }
        }

        else if (a4)
        {
          result = mlir::DenseIntElementsAttr::classof(a4);
          if (result)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[1] = v14;
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
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }

            v5[2] = v7;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
    }
  }

  else if (a3 == 6)
  {
    result = memcmp(__s1, "groups", 6uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  else if (a3 == 7)
  {
    result = memcmp(__s1, "strides", 7uLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
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

  else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      *result = v13;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}