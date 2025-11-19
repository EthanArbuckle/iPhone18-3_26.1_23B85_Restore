uint64_t mlir::mps::SampleGridOp::setLayout(uint64_t a1, unsigned int a2)
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
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::SampleGridOp::setNearestRoundingMode(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 44);
  if ((a2 & 0x100000000) != 0)
  {
    v5 = a2;
    Context = mlir::Attribute::getContext((v2 + 24));
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id;
    v10[1] = Context;
    v14[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30NearestRoundingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23NearestRoundingModeAttrEJNS2_19NearestRoundingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v14[1] = v10;
    v13 = v5;
    v8 = v5 ^ 0xFF51AFD7ED558CCDLL;
    v9 = 0x9DDFEA08EB382D69 * (((8 * v5) | 4) ^ v8);
    v11[0] = &v13;
    v11[1] = v14;
    v12 = &v13;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  }

  else
  {
    result = 0;
  }

  *(v2 + 16 * ((v3 >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::SampleGridOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a5;
  v28 = a4;
  v26 = a6;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
  if (a7)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 24) = a7;
  }

  if (a8)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 40) = a8;
  }

  if (a9)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *v20 = a9;
  }

  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 32) = a10;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 48) = a11;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a12;
  if (a13)
  {
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 16) = a13;
    v24 = *(a2 + 72);
    if (v24 >= *(a2 + 76))
    {
LABEL_18:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v24 = *(a2 + 72);
    if (v24 >= *(a2 + 76))
    {
      goto LABEL_18;
    }
  }

  *(*(a2 + 64) + 8 * v24) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::SampleGridOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v33 = a4;
  v34 = a3;
  v32 = a5;
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  if (a6)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 24) = a6;
  }

  if (a7)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 40) = a7;
  }

  if (a8)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *v19 = a8;
  }

  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 32) = a9;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 48) = a10;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a11;
  if (a12)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 16) = a12;
  }

  __src = v39;
  v38 = 0x200000000;
  v24 = *a1;
  v25 = *a2;
  mlir::ValueRange::ValueRange(v36, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v28 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v35, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::SampleGridOp::inferReturnTypes(v24, v25, 1, v36[0], v36[1], Dictionary, v28, v29, v35[0], v35[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v30 = v38;
  v31 = *(a2 + 72);
  if (v31 + v38 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v38)
  {
    memcpy((*(a2 + 64) + 8 * v31), __src, 8 * v38);
    LODWORD(v31) = *(a2 + 72);
  }

  *(a2 + 72) = v31 + v30;
  if (__src != v39)
  {
    free(__src);
  }
}

unint64_t mlir::mps::SampleGridOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v30 = a6;
  v31 = a5;
  v29 = a7;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v29, 1uLL);
  if (a8)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 24) = a8;
  }

  if (a9)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 40) = a9;
  }

  if (a10)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *v21 = a10;
  }

  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 32) = a11;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 48) = a12;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = a13;
  if (a14)
  {
    v28 = *(a2 + 256);
    if (!v28)
    {
      operator new();
    }

    *(v28 + 16) = a14;
    v25 = *(a2 + 72);
    if (a4 + v25 > *(a2 + 76))
    {
LABEL_18:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v25 = *(a2 + 72);
    if (a4 + v25 > *(a2 + 76))
    {
      goto LABEL_18;
    }
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v26);
      *(v27 + 8 * v26++) = result;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
  return result;
}

uint64_t mlir::mps::SampleGridOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13)
{
  v48 = a6;
  v49 = a5;
  v50 = a4;
  mlir::OperationState::addOperands(a2, &v50, 1uLL);
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  mlir::OperationState::addOperands(a2, &v48, 1uLL);
  if (a7)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v17);
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 24) = UnitAttr;
    v18 = a10;
    v19 = a9;
    if (!a8)
    {
LABEL_3:
      v20 = a11;
      if (!v19)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = a10;
    v19 = a9;
    if (!a8)
    {
      goto LABEL_3;
    }
  }

  v23 = mlir::Builder::getUnitAttr(a1, v17);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 40) = v23;
  v20 = a11;
  if (v19)
  {
LABEL_13:
    v25 = mlir::Builder::getUnitAttr(a1, v17);
    v26 = *(a2 + 256);
    if (!v26)
    {
      operator new();
    }

    *v26 = v25;
  }

LABEL_16:
  v27 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v51 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v52 = v27;
  v57 = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v58 = &v51;
  v56 = v18;
  v29 = 0x9DDFEA08EB382D69 * (((8 * v18) | 4) ^ v18 ^ 0xFF51AFD7ED558CCDLL);
  v30 = 0x9DDFEA08EB382D69 * (v18 ^ 0xFF51AFD7ED558CCDLL ^ (v29 >> 47) ^ v29);
  v53 = &v56;
  v54 = &v57;
  v55 = &v56;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((v30 >> 47) ^ v30), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v55, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v53);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 32) = ParametricStorageTypeImpl;
  v33 = *a1;
  v34 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v51 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v52 = v33;
  v57 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v58 = &v51;
  v56 = v20;
  v35 = 0x9DDFEA08EB382D69 * (((8 * v20) | 4) ^ v20 ^ 0xFF51AFD7ED558CCDLL);
  v36 = 0x9DDFEA08EB382D69 * (v20 ^ 0xFF51AFD7ED558CCDLL ^ (v35 >> 47) ^ v35);
  v54 = &v57;
  v55 = &v56;
  v53 = &v56;
  v37 = mlir::StorageUniquer::getParametricStorageTypeImpl(v34, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v36 >> 47) ^ v36), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v55, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v53);
  v38 = *(a2 + 256);
  if (!v38)
  {
    operator new();
  }

  *(v38 + 48) = v37;
  v39 = *a1;
  v40 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v51 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v52 = v39;
  v57 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v58 = &v51;
  v56 = a12;
  v41 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v42 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v41 >> 47) ^ v41);
  v53 = &v56;
  v54 = &v57;
  v55 = &v56;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v40, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v42 >> 47) ^ v42), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v55, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v53);
  v44 = *(a2 + 256);
  if (!v44)
  {
    operator new();
  }

  *(v44 + 8) = result;
  if (a13)
  {
    v45 = *(a2 + 256);
    if (!v45)
    {
      operator new();
    }

    *(v45 + 16) = a13;
  }

  v46 = *(a2 + 72);
  if (v46 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v46) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::SampleGridOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9, unsigned int a10, unsigned int a11, uint64_t a12)
{
  v65 = *MEMORY[0x277D85DE8];
  v54 = a4;
  v55 = a3;
  v53 = a5;
  mlir::OperationState::addOperands(a2, &v55, 1uLL);
  mlir::OperationState::addOperands(a2, &v54, 1uLL);
  mlir::OperationState::addOperands(a2, &v53, 1uLL);
  if (a6)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v17);
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 24) = UnitAttr;
    v18 = a9;
    if (!a7)
    {
LABEL_3:
      v19 = a10;
      if (!a8)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = a9;
    if (!a7)
    {
      goto LABEL_3;
    }
  }

  v22 = mlir::Builder::getUnitAttr(a1, v17);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 40) = v22;
  v19 = a10;
  if (a8)
  {
LABEL_13:
    v24 = mlir::Builder::getUnitAttr(a1, v17);
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *v25 = v24;
  }

LABEL_16:
  v26 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v61 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v62 = v26;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v59 = &v61;
  v57 = v18;
  v28 = 0x9DDFEA08EB382D69 * (((8 * v18) | 4) ^ v18 ^ 0xFF51AFD7ED558CCDLL);
  v29 = 0x9DDFEA08EB382D69 * (v18 ^ 0xFF51AFD7ED558CCDLL ^ (v28 >> 47) ^ v28);
  v56 = &v57;
  v63 = &v57;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((v29 >> 47) ^ v29), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v56, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 32) = ParametricStorageTypeImpl;
  v32 = *a1;
  v33 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v61 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v62 = v32;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v59 = &v61;
  v57 = v19;
  v34 = 0x9DDFEA08EB382D69 * (((8 * v19) | 4) ^ v19 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (v19 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v56 = &v57;
  v63 = &v57;
  p_src = &__src;
  v36 = mlir::StorageUniquer::getParametricStorageTypeImpl(v33, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v56, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 48) = v36;
  v38 = *a1;
  v39 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v61 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v62 = v38;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v59 = &v61;
  v57 = a11;
  v40 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v41 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v40 >> 47) ^ v40);
  v56 = &v57;
  v63 = &v57;
  p_src = &__src;
  v42 = mlir::StorageUniquer::getParametricStorageTypeImpl(v39, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v41 >> 47) ^ v41), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v56, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v63);
  v43 = *(a2 + 256);
  if (!v43)
  {
    operator new();
  }

  *(v43 + 8) = v42;
  if (a12)
  {
    v44 = *(a2 + 256);
    if (!v44)
    {
      operator new();
    }

    *(v44 + 16) = a12;
  }

  __src = v60;
  v59 = 0x200000000;
  v45 = *a1;
  v46 = *a2;
  mlir::ValueRange::ValueRange(&v63, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v49 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v61, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::SampleGridOp::inferReturnTypes(v45, v46, 1, v63, p_src, Dictionary, v49, v50, v61, v62, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v51 = v59;
  v52 = *(a2 + 72);
  if (v52 + v59 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v59)
  {
    memcpy((*(a2 + 64) + 8 * v52), __src, 8 * v59);
    LODWORD(v52) = *(a2 + 72);
  }

  *(a2 + 72) = v52 + v51;
  if (__src != v60)
  {
    free(__src);
  }
}

unint64_t mlir::mps::SampleGridOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, unsigned __int8 a10, unsigned int a11, unsigned int a12, unsigned int a13, uint64_t a14)
{
  v52 = a6;
  v53 = a5;
  v51 = a7;
  mlir::OperationState::addOperands(a2, &v53, 1uLL);
  mlir::OperationState::addOperands(a2, &v52, 1uLL);
  mlir::OperationState::addOperands(a2, &v51, 1uLL);
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v19);
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 24) = UnitAttr;
    v20 = a11;
    v21 = a10;
    if (!a9)
    {
LABEL_3:
      v50 = a12;
      if (!v21)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v20 = a11;
    v21 = a10;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  v24 = mlir::Builder::getUnitAttr(a1, v19);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 40) = v24;
  v50 = a12;
  if (v21)
  {
LABEL_13:
    v26 = mlir::Builder::getUnitAttr(a1, v19);
    v27 = *(a2 + 256);
    if (!v27)
    {
      operator new();
    }

    *v27 = v26;
  }

LABEL_16:
  v28 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v54 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v55 = v28;
  v60 = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v61 = &v54;
  v59 = v20;
  v30 = 0x9DDFEA08EB382D69 * (((8 * v20) | 4) ^ v20 ^ 0xFF51AFD7ED558CCDLL);
  v31 = 0x9DDFEA08EB382D69 * (v20 ^ 0xFF51AFD7ED558CCDLL ^ (v30 >> 47) ^ v30);
  v56 = &v59;
  v57 = &v60;
  v58 = &v59;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((v31 >> 47) ^ v31), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v58, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v56);
  v33 = *(a2 + 256);
  if (!v33)
  {
    operator new();
  }

  *(v33 + 32) = ParametricStorageTypeImpl;
  v34 = *a1;
  v35 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v54 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v55 = v34;
  v60 = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v61 = &v54;
  v59 = v50;
  v36 = 0x9DDFEA08EB382D69 * (((8 * v50) | 4) ^ v50 ^ 0xFF51AFD7ED558CCDLL);
  v37 = 0x9DDFEA08EB382D69 * (v50 ^ 0xFF51AFD7ED558CCDLL ^ (v36 >> 47) ^ v36);
  v57 = &v60;
  v58 = &v59;
  v56 = &v59;
  v38 = mlir::StorageUniquer::getParametricStorageTypeImpl(v35, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v37 >> 47) ^ v37), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v58, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v56);
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 48) = v38;
  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(v40);
  v54 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v55 = v40;
  v60 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v61 = &v54;
  v59 = a13;
  v42 = 0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL);
  v43 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ (v42 >> 47) ^ v42);
  v56 = &v59;
  v57 = &v60;
  v58 = &v59;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v43 >> 47) ^ v43), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v58, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v56);
  v45 = *(a2 + 256);
  if (!v45)
  {
    operator new();
  }

  *(v45 + 8) = result;
  if (a14)
  {
    v46 = *(a2 + 256);
    if (!v46)
    {
      operator new();
    }

    *(v46 + 16) = a14;
  }

  v47 = *(a2 + 72);
  if (a4 + v47 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v48 = 0;
    v49 = *(a2 + 64) + 8 * v47;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v48);
      *(v49 + 8 * v48++) = result;
    }

    while (a4 != v48);
    LODWORD(v47) = *(a2 + 72);
  }

  *(a2 + 72) = v47 + a4;
  return result;
}

uint64_t mlir::mps::SampleGridOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SampleGridOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if (!mlir::mps::SampleGridOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src))
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

BOOL mlir::mps::SampleGridOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v5 = *(v2 + 64);
  v4 = *(v2 + 72);
  v3 = (v2 + 64);
  if (v4)
  {
    v6 = v3[4];
    if (v6)
    {
      v7 = v3[6];
      if (v7)
      {
        v10 = v3[2];
        v9 = v3[3];
        v11 = v3[5];
        v38[0] = v1;
        if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "normalize_coordinates", 21, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) & 1) == 0)
        {
          return 0;
        }

        v38[0] = *this;
        if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v11, "relative_coordinates", 20, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) & 1) == 0)
        {
          return 0;
        }

        v38[0] = *this;
        if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v5, "align_corners", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) & 1) == 0)
        {
          return 0;
        }

        v38[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(v6, "padding_mode", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps34(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) & 1) == 0)
        {
          return 0;
        }

        v38[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(v7, "sampling_mode", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) & 1) == 0)
        {
          return 0;
        }

        v38[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v4, "layout", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) & 1) == 0)
        {
          return 0;
        }

        v38[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(v10, "nearest_rounding_mode", 21, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps41(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v38) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v12 = *this - 16;
        }

        else
        {
          v12 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
      }

      v36[0] = "requires attribute 'sampling_mode'";
      v37 = 259;
      mlir::OpState::emitOpError(this, v36, v38);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      if (v38[0])
      {
        mlir::InFlightDiagnostic::report(v38);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v44;
          v31 = __p;
          if (v44 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v44 = v29;
          operator delete(v31);
        }

        v18 = v41;
        if (!v41)
        {
          goto LABEL_69;
        }

        v32 = v42;
        v20 = v41;
        if (v42 == v41)
        {
LABEL_68:
          v42 = v18;
          operator delete(v20);
LABEL_69:
          if (v39 != &v40)
          {
            free(v39);
          }

          return v14;
        }

        do
        {
          v34 = *--v32;
          v33 = v34;
          *v32 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v32 != v18);
LABEL_67:
        v20 = v41;
        goto LABEL_68;
      }
    }

    else
    {
      v36[0] = "requires attribute 'padding_mode'";
      v37 = 259;
      mlir::OpState::emitOpError(this, v36, v38);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      if (v38[0])
      {
        mlir::InFlightDiagnostic::report(v38);
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

        v18 = v41;
        if (!v41)
        {
          goto LABEL_69;
        }

        v26 = v42;
        v20 = v41;
        if (v42 == v41)
        {
          goto LABEL_68;
        }

        do
        {
          v28 = *--v26;
          v27 = v28;
          *v26 = 0;
          if (v28)
          {
            MEMORY[0x259C63150](v27, 0x1000C8077774924);
          }
        }

        while (v26 != v18);
        goto LABEL_67;
      }
    }
  }

  else
  {
    v36[0] = "requires attribute 'layout'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
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
        goto LABEL_69;
      }

      v19 = v42;
      v20 = v41;
      if (v42 == v41)
      {
        goto LABEL_68;
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
      goto LABEL_67;
    }
  }

  return v14;
}

uint64_t mlir::mps::detail::ScatterAlongAxisOpGenericAdaptorBase::ScatterAlongAxisOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::ScatterAlongAxisOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.scatter_along_axis' op requires attribute 'mode'";
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

uint64_t mlir::mps::ScatterAlongAxisOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "mode", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
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

uint64_t mlir::mps::ScatterAlongAxisOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "mode", 4, *a2);
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

unint64_t mlir::mps::ScatterAlongAxisOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::mps::ScatterAlongAxisOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701080941)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::mps::ScatterAlongAxisOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701080941)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
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

uint64_t mlir::mps::ScatterAlongAxisOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "mode", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid ScatterMode";
        v22 = 49;
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

uint64_t mlir::mps::ScatterAlongAxisOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(a1, v2) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::ScatterModeAttr]";
  *(&v28 + 1) = 76;
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

uint64_t mlir::mps::ScatterAlongAxisOp::setMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::ScatterAlongAxisOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a5;
  v17 = a4;
  v14 = a7;
  v15 = a6;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a8;
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ScatterAlongAxisOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v22 = a4;
  v23 = a3;
  v20 = a6;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a7;
  v26 = v28;
  v27 = 0x200000000;
  v10 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterAlongAxisOp::inferReturnTypes(v12, v10, 1, v25[0], v25[1], v13, v14, v15, v18, v19, &v26) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = v27;
  v17 = *(a2 + 72);
  if (v17 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v17), v26, 8 * v27);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (v26 != v28)
  {
    free(v26);
  }
}

unint64_t mlir::mps::ScatterAlongAxisOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = a6;
  v20 = a5;
  v17 = a8;
  v18 = a7;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a9;
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

uint64_t mlir::mps::ScatterAlongAxisOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v21 = a5;
  v22 = a4;
  v19 = a7;
  v20 = a6;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v12);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v23[1] = v12;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v27[1] = v23;
  v26 = a8;
  v14 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v14);
  v24[0] = &v26;
  v24[1] = v27;
  v25 = &v26;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = result;
  v18 = *(a2 + 72);
  if (v18 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ScatterAlongAxisOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v10 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v10);
  v35[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v35[1] = v10;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v33 = v35;
  v31 = a7;
  v12 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v12);
  v30 = &v31;
  v36 = &v31;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v36);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = ParametricStorageTypeImpl;
  __src = v34;
  v33 = 0x200000000;
  v16 = *a2;
  mlir::ValueRange::ValueRange(&v36, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = mlir::RegionRange::RegionRange(v35, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterAlongAxisOp::inferReturnTypes(v18, v16, 1, v36, p_src, v19, v20, v21, v24, v25, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = v33;
  v23 = *(a2 + 72);
  if (v23 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v23), __src, 8 * v33);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ScatterAlongAxisOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v24 = a6;
  v25 = a5;
  v22 = a8;
  v23 = a7;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v13 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v13);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v26[1] = v13;
  v30[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v30[1] = v26;
  v29 = a9;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v16 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v15 >> 47) ^ v15);
  v27[0] = &v29;
  v27[1] = v30;
  v28 = &v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = result;
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

uint64_t mlir::mps::ScatterAlongAxisOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ScatterAlongAxisOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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

  __src = v30;
  v29 = 0x200000000;
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  v19 = mlir::RegionRange::RegionRange(&v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterAlongAxisOp::inferReturnTypes(v19, v17, 1, a3, a4, v20, v21, v22, v25, v26, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v29;
  v24 = *(a2 + 72);
  if (v24 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v24), __src, 8 * v29);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::ScatterAlongAxisOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(v3, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
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

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'mode'";
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

uint64_t mlir::mps::detail::ScatterNDOpGenericAdaptorBase::ScatterNDOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::ScatterNDOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "batch_dims", 0xAuLL);
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

  v30 = mlir::DictionaryAttr::get(&v43, "mode", 4uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    a1[1] = v30;
    return 1;
  }

  v31 = v30;
  a3(v46, a4);
  if (v46[0])
  {
    LODWORD(v44) = 3;
    v45 = 49;
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

uint64_t mlir::mps::ScatterNDOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "batch_dims", 0xA, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "mode", 4, v7);
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

unint64_t mlir::mps::ScatterNDOp::computePropertiesHash(void *a1)
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

unint64_t mlir::mps::ScatterNDOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 4)
  {
    if (a4 == 10 && *a3 == 0x69645F6863746162 && *(a3 + 8) == 29549)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1701080941)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::mps::ScatterNDOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4)
  {
    if (*a2 == 1701080941)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
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

  else if (a3 == 10 && *a2 == 0x69645F6863746162 && *(a2 + 8) == 29549)
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

      *result = v6;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::ScatterNDOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "batch_dims", 0xAuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "mode", 4uLL, v5);
  }
}

BOOL mlir::mps::ScatterNDOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v8, "batch_dims", 10, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(v9, "mode", 4, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::mps::ScatterNDOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::ScatterNDOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::ScatterNDOp::setBatchDims(mlir::mps::ScatterNDOp *this, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::Attribute::getContext((*this + 24));
  IntegerType = mlir::Builder::getIntegerType(&v6, 32, 0);
  result = mlir::Builder::getIntegerAttr(&Context, IntegerType, a2);
  *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::ScatterNDOp::setMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::ScatterNDOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a5;
  v18 = a4;
  v16 = a6;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a7;
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = a8;
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ScatterNDOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v22 = a4;
  v23 = a3;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a6;
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = a7;
  __src = v28;
  v27 = 0x200000000;
  v13 = *a1;
  v14 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterNDOp::inferReturnTypes(v13, v14, 1, v25[0], v25[1], Dictionary, v17, v18, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v27;
  v20 = *(a2 + 72);
  if (v20 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v27);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v28)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ScatterNDOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a6;
  v21 = a5;
  v19 = a7;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a8;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = a9;
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

uint64_t mlir::mps::ScatterNDOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v24 = a5;
  v25 = a4;
  v23 = a6;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = IntegerAttr;
  v16 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v16);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v26[1] = v16;
  v30[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v30[1] = v26;
  v29 = a8;
  v18 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v19 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v18);
  v27[0] = &v29;
  v27[1] = v30;
  v28 = &v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 32) >> 15) ^ (-348639895 * (v18 ^ (v19 >> 47) ^ v19))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = result;
  v22 = *(a2 + 72);
  if (v22 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v22) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ScatterNDOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v29 = a4;
  v30 = a3;
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a6);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = IntegerAttr;
  v14 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v36 = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v37 = v14;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v34 = &v36;
  v32 = a7;
  v16 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v16);
  v31 = &v32;
  v38 = &v32;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 32) >> 15) ^ (-348639895 * (v16 ^ (v17 >> 47) ^ v17))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v38);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = ParametricStorageTypeImpl;
  __src = v35;
  v34 = 0x200000000;
  v20 = *a1;
  v21 = *a2;
  mlir::ValueRange::ValueRange(&v38, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v24 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v36, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterNDOp::inferReturnTypes(v20, v21, 1, v38, p_src, Dictionary, v24, v25, v36, v37, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = v34;
  v27 = *(a2 + 72);
  if (v27 + v34 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v34)
  {
    memcpy((*(a2 + 64) + 8 * v27), __src, 8 * v34);
    LODWORD(v27) = *(a2 + 72);
  }

  *(a2 + 72) = v27 + v26;
  if (__src != v35)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ScatterNDOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  v27 = a6;
  v28 = a5;
  v26 = a7;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = IntegerAttr;
  v17 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v17);
  v29[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v29[1] = v17;
  v33[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v33[1] = v29;
  v32 = a9;
  v19 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v20 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v19 >> 47) ^ v19);
  v30[0] = &v32;
  v30[1] = v33;
  v31 = &v32;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((v20 >> 47) ^ v20), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v31, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v30);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = result;
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

uint64_t mlir::mps::ScatterNDOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ScatterNDOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::ScatterNDOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
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

BOOL mlir::mps::ScatterNDOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v27[0] = *this;
      if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(v2, "batch_dims", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27) & 1) == 0)
      {
        return 0;
      }

      v27[0] = *this;
      if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(v5, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
      {
        return 0;
      }

      if (*(*this + 9))
      {
        v7 = *this - 16;
      }

      else
      {
        v7 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    v25[0] = "requires attribute 'mode'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v33;
        v20 = __p;
        if (v33 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v33 = v18;
        operator delete(v20);
      }

      v13 = v30;
      if (!v30)
      {
        goto LABEL_47;
      }

      v21 = v31;
      v15 = v30;
      if (v31 == v30)
      {
LABEL_46:
        v31 = v13;
        operator delete(v15);
LABEL_47:
        if (v28 != &v29)
        {
          free(v28);
        }

        return v9;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x259C63150](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v13);
LABEL_45:
      v15 = v30;
      goto LABEL_46;
    }
  }

  else
  {
    v25[0] = "requires attribute 'batch_dims'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v33;
        v12 = __p;
        if (v33 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v33 = v10;
        operator delete(v12);
      }

      v13 = v30;
      if (!v30)
      {
        goto LABEL_47;
      }

      v14 = v31;
      v15 = v30;
      if (v31 == v30)
      {
        goto LABEL_46;
      }

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
      goto LABEL_45;
    }
  }

  return v9;
}

uint64_t mlir::mps::detail::ScatterOpGenericAdaptorBase::ScatterOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::ScatterOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'mps.scatter' op requires attribute 'mode'";
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

uint64_t mlir::mps::ScatterOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "mode", 4uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
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

uint64_t mlir::mps::ScatterOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "mode", 4, *a2);
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

unint64_t mlir::mps::ScatterOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::mps::ScatterOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1701080941)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::mps::ScatterOp::setInherentAttr(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1701080941)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
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

uint64_t mlir::mps::ScatterOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "mode", 4uLL, *a2);
  }

  return result;
}

uint64_t mlir::mps::ScatterOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::mps::ScatterModeAttr>(a1, v2) & 1;
}

uint64_t mlir::mps::ScatterOp::setMode(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a5;
  v17 = a4;
  v14 = a7;
  v15 = a6;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v14, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a8;
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v22 = a4;
  v23 = a3;
  v20 = a6;
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a7;
  v26 = v28;
  v27 = 0x200000000;
  v10 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = mlir::RegionRange::RegionRange(&v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterOp::inferReturnTypes(v12, v10, 1, v25[0], v25[1], v13, v14, v15, v18, v19, &v26) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = v27;
  v17 = *(a2 + 72);
  if (v17 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v17), v26, 8 * v27);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (v26 != v28)
  {
    free(v26);
  }
}

unint64_t mlir::mps::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = a6;
  v20 = a5;
  v17 = a8;
  v18 = a7;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = a9;
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

uint64_t mlir::mps::ScatterOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v21 = a5;
  v22 = a4;
  v19 = a7;
  v20 = a6;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v12);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v23[1] = v12;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v27[1] = v23;
  v26 = a8;
  v14 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v14);
  v24[0] = &v26;
  v24[1] = v27;
  v25 = &v26;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = result;
  v18 = *(a2 + 72);
  if (v18 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v18) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::ScatterOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = a4;
  v29 = a3;
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v10 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v10);
  v35[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v35[1] = v10;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v33 = v35;
  v31 = a7;
  v12 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v12);
  v30 = &v31;
  v36 = &v31;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v36);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = ParametricStorageTypeImpl;
  __src = v34;
  v33 = 0x200000000;
  v16 = *a2;
  mlir::ValueRange::ValueRange(&v36, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = mlir::RegionRange::RegionRange(v35, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterOp::inferReturnTypes(v18, v16, 1, v36, p_src, v19, v20, v21, v24, v25, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = v33;
  v23 = *(a2 + 72);
  if (v23 + v33 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v23), __src, 8 * v33);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v34)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ScatterOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v24 = a6;
  v25 = a5;
  v22 = a8;
  v23 = a7;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v13 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v13);
  v26[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v26[1] = v13;
  v30[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v30[1] = v26;
  v29 = a9;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v16 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v15 >> 47) ^ v15);
  v27[0] = &v29;
  v27[1] = v30;
  v28 = &v29;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v28, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v27);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = result;
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

uint64_t mlir::mps::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ScatterOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v30[2] = *MEMORY[0x277D85DE8];
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

  __src = v30;
  v29 = 0x200000000;
  v17 = *a2;
  v18 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v18);
  v19 = mlir::RegionRange::RegionRange(&v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ScatterOp::inferReturnTypes(v19, v17, 1, a3, a4, v20, v21, v22, v25, v26, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = v29;
  v24 = *(a2 + 72);
  if (v24 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v24), __src, 8 * v29);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v30)
  {
    free(__src);
  }
}

BOOL mlir::mps::ScatterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(v3, "mode", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps42(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
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

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'mode'";
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

uint64_t mlir::mps::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

void mlir::mps::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  v21 = v23;
  v22 = 0x200000000;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v8 = mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SelectOp::inferReturnTypes(v8, v6, 1, v20[0], v20[1], v9, v10, v11, v14, v15, &v21) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = v22;
  v13 = *(a2 + 72);
  if (v13 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v13), v21, 8 * v22);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (v21 != v23)
  {
    free(v21);
  }
}

unint64_t mlir::mps::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

unint64_t mlir::mps::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SelectOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src) & 1) == 0)
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

BOOL mlir::mps::SelectOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 56));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)))
  {
    v5 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 88));
    v6 = *(*this + 9) ? *this - 16 : 0;
    v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    if (v5 == mlir::getElementTypeOrSelf(v7))
    {
      v8 = *(*this + 9) ? *this - 16 : 0;
      v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      v10 = mlir::getElementTypeOrSelf(v9);
      if (v10 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
      {
        return 1;
      }
    }
  }

  v21 = "failed to verify that all of {true_value, false_value, result} have same element type";
  v22 = 259;
  mlir::OpState::emitOpError(this, &v21, v23);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  v12 = result;
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
    result = v12;
  }

  if (v31 == 1)
  {
    if (v30 != &v31)
    {
      free(v30);
      result = v12;
    }

    v13 = __p;
    if (__p)
    {
      v14 = v29;
      v15 = __p;
      if (v29 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v29 = v13;
      operator delete(v15);
      result = v12;
    }

    v16 = v26;
    if (v26)
    {
      v17 = v27;
      v18 = v26;
      if (v27 != v26)
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
        v18 = v26;
      }

      v27 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v24 != &v25)
    {
      free(v24);
      return v12;
    }
  }

  return result;
}

uint64_t mlir::mps::ShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::ShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  __src = v19;
  v18 = 0x200000000;
  v4 = *a2;
  mlir::ValueRange::ValueRange(v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v6 = mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ShapeOp::inferReturnTypes(v6, v4, 1, v16[0], v16[1], v7, v8, v9, v12, v13, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v10 = v18;
  v11 = *(a2 + 72);
  if (v11 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v11), __src, 8 * v18);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v19)
  {
    free(__src);
  }
}

unint64_t mlir::mps::ShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::ShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::ShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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
  __src = v25;
  v24 = 0x200000000;
  v12 = *a2;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::ShapeOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src) & 1) == 0)
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

uint64_t mlir::mps::ShapeOp::verifyInvariantsImpl(mlir::Operation **this)
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::ShapeOp::verifyInvariants(mlir::Operation **this)
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
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::mps::SigmoidGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::SigmoidGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::mps::SigmoidGradientOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::SigmoidGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::SigmoidGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SigmoidGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::SigmoidGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::SigmoidGradientWithSigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::SigmoidGradientWithSigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (!HIDWORD(v15))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::mps::SigmoidGradientWithSigmoidOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::SigmoidGradientWithSigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::SigmoidGradientWithSigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SigmoidGradientWithSigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::SigmoidGradientWithSigmoidOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::SigmoidHardOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

void mlir::mps::SigmoidHardOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::SigmoidHardOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

unint64_t mlir::mps::SigmoidHardOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SigmoidHardOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::SigmoidHardOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::SigmoidOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SigmoidOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::SigmoidOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::SigmoidOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::SignOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::SignOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::SignOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::SignOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::SignOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SignOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::SignOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::SignOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::SignbitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::SignbitOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::SignbitOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::SignbitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::SignbitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SignbitOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::SignbitOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::SignbitOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t mlir::mps::SinOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SinOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

uint64_t mlir::mps::SinOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::SinOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::SingleGateRNNGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

unint64_t mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 40);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 56);
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

  v10 = (this + 4 * v3 + 40);
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

uint64_t mlir::mps::SingleGateRNNGradientOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "gradient_output_sequence", 24);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  a2(a3, v9, "gradient_recurrent_weight", 25);
  v10 = *a1;
  v11 = *(*a1 + 36);
  v12 = v10 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 2);
  if (v11 != 2)
  {
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return (a2)(a3, v15, "gradient_input_state", 20);
  }

  return result;
}

unint64_t mlir::mps::SingleGateRNNGradientOp::getODSOperandIndexAndLength(mlir::mps::SingleGateRNNGradientOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 80);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 96);
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

  v12 = (16 * v2 + 4 * v5 + *this + 80);
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

unint64_t mlir::mps::SingleGateRNNGradientOp::getODSResultIndexAndLength(mlir::mps::SingleGateRNNGradientOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v4 = a2;
  if (a2 < 4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v7 = 0uLL;
    v8 = "0MPSDialectE";
    v9 = 0uLL;
    v5 = a2 & 0xFFFFFFE0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v8[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v8);
      v21 = vmovl_high_u8(*v8->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v9 = vaddw_high_u16(v9, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v8 += 4;
      v10 -= 32;
    }

    while (v10);
    a4 = vaddq_s32(vaddq_s32(v14, v9), vaddq_s32(v16, v12));
    v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
    if (v5 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v27 = &dword_257374322 + v5;
      v28 = a2 - v5;
      do
      {
        v29 = *v27++;
        v6 += v29;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = v5;
  v5 = a2 & 0xFFFFFFFC;
  v23 = v6;
  v24 = (&dword_257374322 + v22);
  v25 = v22 - v5;
  do
  {
    v26 = *v24++;
    a4.i32[0] = v26;
    a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
    v23 = vaddw_u16(v23, *a4.i8);
    v25 += 4;
  }

  while (v25);
  v6 = vaddvq_s32(v23);
  if (v5 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v30 = *(*this + 36);
  v31 = 0x100000000;
  if (*(&dword_257374322 + v4))
  {
    v31 = (v30 - 2) << 32;
  }

  return v31 | (a2 + (v30 - 3) * v6);
}

uint64_t mlir::mps::SingleGateRNNGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "activation", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
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
LABEL_70:
        if (v47 != &v50)
        {
          free(v47);
        }

        return 0;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
LABEL_69:
        v52 = v17;
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
      v19 = v51;
      goto LABEL_69;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v43, "gradient_for_input_state", 0x18uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v31 = v30;
      a3(v46, a4);
      if (v46[0])
      {
        LODWORD(v44) = 3;
        v45 = 69;
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

      if ((v56 & 1) == 0)
      {
        return 0;
      }

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

  if (mlir::DictionaryAttr::get(&v43, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v43, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::mps::SingleGateRNNGradientOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v10, "activation", 0xA, *a2);
    if (v12 >= HIDWORD(v12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v11 + 16 * v12);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v12) = v12 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v10, "gradient_for_input_state", 0x18, v6);
    if (v12 >= HIDWORD(v12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v11 + 16 * v12);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v12) = v12 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::mps::SingleGateRNNGradientOp::computePropertiesHash(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = 0xB492B66FBE98F273 * a1[2];
  v8 = a1[3];
  v9 = 0x9AE16A3B2F90404FLL * *(a1 + 28);
  v10 = __ROR8__(v7 - v8, 43) - 0x3C5A37A36834CED9 * *(a1 + 20) + __ROR8__(v9 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = v7 + __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v9 + 20;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v15[0] = v3;
  v15[1] = v6;
  v14 = 0;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v15, &v14, v16, v17, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v15, v14, v12, v17);
}

uint64_t mlir::mps::SingleGateRNNGradientOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 20)
  {
    if (__n == 21)
    {
      if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
      {
        goto LABEL_18;
      }
    }

    else if (__n == 24 && !memcmp(__s1, "gradient_for_input_state", 0x18uLL))
    {
      return a2[1];
    }
  }

  else if (__n == 10)
  {
    if (*__s1 == 0x6974617669746361 && *(__s1 + 4) == 28271)
    {
      return *a2;
    }
  }

  else if (__n == 19 && !memcmp(__s1, "operandSegmentSizes", 0x13uLL))
  {
LABEL_18:
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  return 0;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 20)
  {
    if (a3 == 21)
    {
      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }

      goto LABEL_25;
    }

    if (a3 == 24)
    {
      result = memcmp(__s1, "gradient_for_input_state", 0x18uLL);
      if (!result)
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

          *(v5 + 8) = v6;
        }

        else
        {
          *(v5 + 8) = 0;
        }
      }
    }
  }

  else
  {
    if (a3 != 10)
    {
      if (a3 != 19)
      {
        return result;
      }

      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }

LABEL_25:
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::classof();
      }

      return result;
    }

    if (*__s1 == 0x6974617669746361 && *(__s1 + 4) == 28271)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *result = v8;
      }

      else
      {
        *result = 0;
      }
    }
  }

  return result;
}

void mlir::mps::SingleGateRNNGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "activation", 0xAuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "gradient_for_input_state", 0x18uLL, v5);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::mps::SingleGateRNNGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "activation", 10, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "gradient_for_input_state", 24, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8)))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 16), 5uLL))
      {
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 6)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5 = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(&v8, a1, &v5);
        if (v8)
        {
          mlir::InFlightDiagnostic::report(&v8);
        }

        if (v9[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v9);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::mps::RNNActivationAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::RNNActivationAttr]";
  *(&v28 + 1) = 78;
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

uint64_t mlir::mps::SingleGateRNNGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 5);
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::setActivation(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::setGradientForInputState(uint64_t this, int a2)
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

uint64_t mlir::mps::SingleGateRNNGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a6;
  v27 = a11;
  v28 = a8;
  v26 = a12;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v28, 1uLL);
  if (a11)
  {
    result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
  }

  if (a12)
  {
    result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
    v17 = v26 != 0;
    v18 = v27 != 0;
    v19 = *(a2 + 256);
    if (!v19)
    {
LABEL_7:
      operator new();
    }
  }

  else
  {
    v17 = 0;
    v18 = v27 != 0;
    v19 = *(a2 + 256);
    if (!v19)
    {
      goto LABEL_7;
    }
  }

  *(v19 + 16) = 0x100000001;
  *(v19 + 24) = 1;
  *(v19 + 28) = v18;
  *(v19 + 32) = v17;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = a9;
  if (a10)
  {
    v21 = *(a2 + 256);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 8) = a10;
  }

  v22 = *(a2 + 72);
  if (v22 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v22) = a3;
  v23 = *(a2 + 76);
  v24 = *(a2 + 72) + 1;
  *(a2 + 72) = v24;
  if (v24 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v24) = a4;
  v25 = *(a2 + 72) + 1;
  *(a2 + 72) = v25;
  if (a5)
  {
    if (v25 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v25) = a5;
    ++*(a2 + 72);
  }

  return result;
}

void mlir::mps::SingleGateRNNGradientOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v30 = a4;
  v31 = a3;
  v28 = a8;
  v29 = a5;
  v27 = a9;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  if (a8)
  {
    mlir::OperationState::addOperands(a2, &v28, 1uLL);
  }

  if (a9)
  {
    mlir::OperationState::addOperands(a2, &v27, 1uLL);
    v14 = v27 != 0;
    v15 = v28 != 0;
    v16 = *(a2 + 256);
    if (!v16)
    {
LABEL_7:
      operator new();
    }
  }

  else
  {
    v14 = 0;
    v15 = v28 != 0;
    v16 = *(a2 + 256);
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 16) = 0x100000001;
  *(v16 + 24) = 1;
  *(v16 + 28) = v15;
  *(v16 + 32) = v14;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = a6;
  if (a7)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 8) = a7;
  }

  __src = v36;
  v35 = 0x200000000;
  v19 = *a1;
  v20 = *a2;
  mlir::ValueRange::ValueRange(v33, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v23 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v32, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SingleGateRNNGradientOp::inferReturnTypes(v19, v20, 1, v33[0], v33[1], Dictionary, v23, v24, v32[0], v32[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v25 = v35;
  v26 = *(a2 + 72);
  if (v26 + v35 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v35)
  {
    memcpy((*(a2 + 64) + 8 * v26), __src, 8 * v35);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v36)
  {
    free(__src);
  }
}

unint64_t mlir::mps::SingleGateRNNGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a6;
  v28 = a5;
  v25 = a10;
  v26 = a7;
  v24 = a11;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v26, 1uLL);
  if (a10)
  {
    result = mlir::OperationState::addOperands(a2, &v25, 1uLL);
  }

  if (a11)
  {
    result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
    v16 = v24 != 0;
    v17 = v25 != 0;
    v18 = *(a2 + 256);
    if (!v18)
    {
LABEL_7:
      operator new();
    }
  }

  else
  {
    v16 = 0;
    v17 = v25 != 0;
    v18 = *(a2 + 256);
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  *(v18 + 16) = 0x100000001;
  *(v18 + 24) = 1;
  *(v18 + 28) = v17;
  *(v18 + 32) = v16;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = a8;
  if (a9)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 8) = a9;
  }

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

uint64_t mlir::mps::SingleGateRNNGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10, uint64_t a11, _BOOL8 a12)
{
  v17 = a12;
  v35 = a7;
  v36 = a6;
  v33 = a11;
  v34 = a8;
  v32 = a12;
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  if (a11)
  {
    mlir::OperationState::addOperands(a2, &v33, 1uLL);
  }

  if (a12)
  {
    mlir::OperationState::addOperands(a2, &v32, 1uLL);
    v17 = v32;
  }

  v18 = v33 != 0;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = 0x100000001;
  *(v19 + 24) = 1;
  *(v19 + 28) = v18;
  *(v19 + 32) = v17;
  v20 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v37[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v37[1] = v20;
  v41[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v41[1] = v37;
  v40 = a9;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v23 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v22 >> 47) ^ v22);
  v38[0] = &v40;
  v38[1] = v41;
  v39 = &v40;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v23 >> 47) ^ v23), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v38);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *v26 = result;
  if (a10)
  {
    result = mlir::Builder::getUnitAttr(a1, v25);
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 8) = result;
    v27 = *(a2 + 72);
    if (v27 >= *(a2 + 76))
    {
LABEL_10:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v27 = *(a2 + 72);
    if (v27 >= *(a2 + 76))
    {
      goto LABEL_10;
    }
  }

  *(*(a2 + 64) + 8 * v27) = a3;
  v28 = *(a2 + 76);
  v29 = *(a2 + 72) + 1;
  *(a2 + 72) = v29;
  if (v29 >= v28)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v29) = a4;
  v30 = *(a2 + 72) + 1;
  *(a2 + 72) = v30;
  if (a5)
  {
    if (v30 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v30) = a5;
    ++*(a2 + 72);
  }

  return result;
}

void mlir::mps::SingleGateRNNGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9)
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = a4;
  v38 = a3;
  v35 = a8;
  v36 = a5;
  v34 = a9;
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  if (a8)
  {
    mlir::OperationState::addOperands(a2, &v35, 1uLL);
  }

  if (a9)
  {
    mlir::OperationState::addOperands(a2, &v34, 1uLL);
    v14 = v34 != 0;
    v15 = v35 != 0;
    v16 = *(a2 + 256);
    if (!v16)
    {
LABEL_7:
      operator new();
    }
  }

  else
  {
    v14 = 0;
    v15 = v35 != 0;
    v16 = *(a2 + 256);
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 16) = 0x100000001;
  *(v16 + 24) = 1;
  *(v16 + 28) = v15;
  *(v16 + 32) = v14;
  v17 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v44 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v45 = v17;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v42 = &v44;
  v40 = a6;
  v19 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v19);
  v39 = &v40;
  v46 = &v40;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v46);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *v23 = ParametricStorageTypeImpl;
  if (a7)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v22);
    v25 = *(a2 + 256);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 8) = UnitAttr;
  }

  __src = v43;
  v42 = 0x200000000;
  v26 = *a1;
  v27 = *a2;
  mlir::ValueRange::ValueRange(&v46, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v30 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v44, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::SingleGateRNNGradientOp::inferReturnTypes(v26, v27, 1, v46, p_src, Dictionary, v30, v31, v44, v45, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v32 = v42;
  v33 = *(a2 + 72);
  if (v33 + v42 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v42)
  {
    memcpy((*(a2 + 64) + 8 * v33), __src, 8 * v42);
    LODWORD(v33) = *(a2 + 72);
  }

  *(a2 + 72) = v33 + v32;
  if (__src != v43)
  {
    free(__src);
  }
}

unint64_t mlir::mps::SingleGateRNNGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, char a9, uint64_t a10, _BOOL8 a11)
{
  v16 = a11;
  v33 = a6;
  v34 = a5;
  v31 = a10;
  v32 = a7;
  v30 = a11;
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  if (a10)
  {
    mlir::OperationState::addOperands(a2, &v31, 1uLL);
  }

  if (a11)
  {
    mlir::OperationState::addOperands(a2, &v30, 1uLL);
    v16 = v30;
  }

  v17 = v31 != 0;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = 0x100000001;
  *(v18 + 24) = 1;
  *(v18 + 28) = v17;
  *(v18 + 32) = v16;
  v19 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v35[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v35[1] = v19;
  v39[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v39[1] = v35;
  v38 = a8;
  v21 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v21);
  v36[0] = &v38;
  v36[1] = v39;
  v37 = &v38;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v37, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v36);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *v25 = result;
  if (!a9)
  {
    v26 = *(a2 + 72);
    if (a4 + v26 <= *(a2 + 76))
    {
      goto LABEL_10;
    }

LABEL_17:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(a1, v24);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 8) = result;
  v26 = *(a2 + 72);
  if (a4 + v26 > *(a2 + 76))
  {
    goto LABEL_17;
  }

LABEL_10:
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

uint64_t mlir::mps::SingleGateRNNGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::SingleGateRNNGradientOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::SingleGateRNNGradientOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src) & 1) == 0)
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

BOOL mlir::mps::SingleGateRNNGradientOp::verifyInvariantsImpl(mlir::mps::SingleGateRNNGradientOp *this)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    v79[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "activation", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v79))
    {
      v79[0] = *this;
      if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "gradient_for_input_state", 24, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v79))
      {
        v76 = 0;
        v8 = *this;
        v9 = *(*this + 44);
        v10 = (v9 >> 23) & 1;
        v11 = *(*this + 16 * v10 + 80);
        if ((v9 & 0x800000) != 0)
        {
          v12 = *(v8 + 72);
          if (v11)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v12 = 0;
          if (v11)
          {
LABEL_6:
            v13 = 0;
            v14 = v12 + 24;
            while (1)
            {
              v15 = *this;
              v16 = *(*v14 + 8);
              v76 = v13 + 1;
              if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, v16 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) == 0)
              {
                return 0;
              }

              ++v13;
              v14 += 32;
              if (v11 == v13)
              {
                v8 = *this;
                v9 = *(*this + 44);
                v10 = (v9 >> 23) & 1;
                goto LABEL_32;
              }
            }
          }
        }

        LODWORD(v13) = 0;
LABEL_32:
        v26 = v9 & 0x800000;
        v27 = v8 + 16 * v10;
        v28 = *(v27 + 84);
        if (v26)
        {
          v29 = *(v8 + 72);
          if (v28)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v29 = 0;
          if (v28)
          {
LABEL_34:
            v30 = *(v27 + 80);
            v31 = (v28 + v30) - v30;
            v32 = v29 + 32 * v30 + 24;
            while (1)
            {
              v33 = v13;
              v34 = *this;
              v35 = *(*v32 + 8);
              LODWORD(v13) = v13 + 1;
              v76 = v13;
              if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v34, v35 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v33) & 1) == 0)
              {
                return 0;
              }

              v32 += 32;
              if (!--v31)
              {
                v8 = *this;
                v36 = *(*this + 44);
                v10 = (v36 >> 23) & 1;
                v26 = v36 & 0x800000;
                break;
              }
            }
          }
        }

        v37 = (v8 + 16 * v10);
        v38 = v37[22];
        if (v26)
        {
          v39 = *(v8 + 72);
          if (v38)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v39 = 0;
          if (v38)
          {
LABEL_40:
            v40 = (v37[21] + v37[20]);
            v41 = (v38 + v40) - v40;
            v42 = v39 + 32 * v40 + 24;
            while (1)
            {
              v43 = *this;
              v44 = *(*v42 + 8);
              v45 = v13 + 1;
              v76 = v13 + 1;
              if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v43, v44 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) == 0)
              {
                return 0;
              }

              v42 += 32;
              LODWORD(v13) = v13 + 1;
              if (!--v41)
              {
                goto LABEL_48;
              }
            }
          }
        }

        v45 = v13;
LABEL_48:
        ODSOperands = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 3u);
        v48 = v47;
        if (v47 >= 2)
        {
          goto LABEL_49;
        }

        if (!v47 || (v53 = *(ODSOperands + 24), v54 = *this, v55 = *(v53 + 8), v76 = v45 + 1, (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v54, v55 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v45) & 1) != 0))
        {
          v57 = mlir::mps::SingleGateRNNGradientOp::getODSOperands(this, 4u);
          v48 = v58;
          if (v58 >= 2)
          {
LABEL_49:
            v49 = "operand group starting at #";
LABEL_50:
            v77[0] = v49;
            v78 = 259;
            mlir::OpState::emitOpError(this, v77, v79);
            mlir::InFlightDiagnostic::operator<<<unsigned int &>(v79, &v76);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v50, " requires 0 or 1 element, but found ");
            v75 = v48;
            mlir::InFlightDiagnostic::operator<<<unsigned long &>(v51, &v75);
            v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v79);
            return v17;
          }

          if (!v58 || (v59 = *(v57 + 24), v60 = *this, v61 = *(v59 + 8), v62 = v76, ++v76, (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v60, v61 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v62) & 1) != 0))
          {
            v63 = *(*this + 36) ? *this - 16 : 0;
            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v63, 0);
            if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
            {
              v65 = *(*this + 36) ? *this - 16 : 0;
              v66 = mlir::detail::OpResultImpl::getNextResultAtOffset(v65, 1);
              v67 = mlir::detail::OpResultImpl::getNextResultAtOffset(v66, 0);
              v68 = *this;
              v69 = *(v67 + 8);
              v76 = 2;
              if (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v68, v69 & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u))
              {
                ODSResults = mlir::mps::LSTMOp::getODSResults(this, 2u, v70, v71);
                v48 = v73;
                if (v73 < 2)
                {
                  if (!v73)
                  {
                    return 1;
                  }

                  v74 = mlir::detail::OpResultImpl::getNextResultAtOffset(ODSResults, 0);
                  return (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v74 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 2u) & 1) != 0;
                }

                v49 = "result group starting at #";
                goto LABEL_50;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  v77[0] = "requires attribute 'activation'";
  v78 = 259;
  mlir::OpState::emitOpError(this, v77, v79);
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
  if (v79[0])
  {
    mlir::InFlightDiagnostic::report(v79);
  }

  if (v87 == 1)
  {
    if (v86 != &v87)
    {
      free(v86);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v85;
      v20 = __p;
      if (v85 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v85 = v18;
      operator delete(v20);
    }

    v21 = v82;
    if (v82)
    {
      v22 = v83;
      v23 = v82;
      if (v83 != v82)
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
        v23 = v82;
      }

      v83 = v21;
      operator delete(v23);
    }

    if (v80 != &v81)
    {
      free(v80);
    }
  }

  return v17;
}

uint64_t mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::SingleGateRNNOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  *(a1 + 40) = v3[1];
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 56), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 56), 0, 0);
  }

  return a1;
}

unint64_t mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 40);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 56);
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

  v10 = (this + 4 * v3 + 40);
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

uint64_t mlir::mps::SingleGateRNNOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "result", 6);
  v7 = *a1;
  v8 = *(*a1 + 36);
  v9 = v7 - 16;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 1);
  if (v8 != 1)
  {
    v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(result, 0);

    return (a2)(a3, v12, "training_state", 14);
  }

  return result;
}

unint64_t mlir::mps::SingleGateRNNOp::getODSOperandIndexAndLength(mlir::mps::SingleGateRNNOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 80);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 96);
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

  v12 = (16 * v2 + 4 * v5 + *this + 80);
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

unint64_t mlir::mps::SingleGateRNNOp::getODSResultIndexAndLength(mlir::mps::SingleGateRNNOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (!a2)
  {
    v4 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v4 = a2;
  if (a2 < 4)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v7 = 0uLL;
    v8 = "SDialectE";
    v9 = 0uLL;
    v5 = a2 & 0xFFFFFFE0;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    do
    {
      v17 = *v8[-2].i8;
      v18 = vmovl_u8(*v17.i8);
      v19 = vmovl_high_u8(v17);
      v20 = vmovl_u8(*v8);
      v21 = vmovl_high_u8(*v8->i8);
      v12 = vaddw_high_u16(v12, v19);
      v11 = vaddw_u16(v11, *v19.i8);
      v9 = vaddw_high_u16(v9, v18);
      v7 = vaddw_u16(v7, *v18.i8);
      v16 = vaddw_high_u16(v16, v21);
      v15 = vaddw_u16(v15, *v21.i8);
      v14 = vaddw_high_u16(v14, v20);
      v13 = vaddw_u16(v13, *v20.i8);
      v8 += 4;
      v10 -= 32;
    }

    while (v10);
    a4 = vaddq_s32(vaddq_s32(v14, v9), vaddq_s32(v16, v12));
    v6 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v13, v7), vaddq_s32(v15, v11)), a4));
    if (v5 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v27 = &dword_257374322 + v5 + 3;
      v28 = a2 - v5;
      do
      {
        v29 = *v27++;
        v6 += v29;
        --v28;
      }

      while (v28);
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v22 = v5;
  v5 = a2 & 0xFFFFFFFC;
  v23 = v6;
  v24 = (&dword_257374322 + v22 + 3);
  v25 = v22 - v5;
  do
  {
    v26 = *v24++;
    a4.i32[0] = v26;
    a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
    v23 = vaddw_u16(v23, *a4.i8);
    v25 += 4;
  }

  while (v25);
  v6 = vaddvq_s32(v23);
  if (v5 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v30 = *(*this + 36);
  v31 = 0x100000000;
  if (*(&dword_257374322 + v4 + 3))
  {
    v31 = (v30 - 1) << 32;
  }

  return v31 | (a2 + (v30 - 2) * v6);
}

uint64_t mlir::mps::SingleGateRNNOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "activation", 0xAuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
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
LABEL_70:
        if (v47 != &v50)
        {
          free(v47);
        }

        return 0;
      }

      v18 = v52;
      v19 = v51;
      if (v52 == v51)
      {
LABEL_69:
        v52 = v17;
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
      v19 = v51;
      goto LABEL_69;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v43, "training", 8uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
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

      if ((v56 & 1) == 0)
      {
        return 0;
      }

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

  if (mlir::DictionaryAttr::get(&v43, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v43, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}