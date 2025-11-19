unint64_t mlir::mps::LSTMGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = a16;
  v49 = a5;
  v47 = a7;
  v48 = a6;
  v45 = a15;
  v46 = a8;
  v43 = a17;
  v44 = a16;
  v41 = a19;
  v42 = a18;
  v40 = a20;
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  mlir::OperationState::addOperands(a2, &v48, 1uLL);
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v46, 1uLL);
  if (a15)
  {
    result = mlir::OperationState::addOperands(a2, &v45, 1uLL);
    v23 = v44;
  }

  if (v23)
  {
    result = mlir::OperationState::addOperands(a2, &v44, 1uLL);
  }

  if (v43)
  {
    result = mlir::OperationState::addOperands(a2, &v43, 1uLL);
  }

  if (v42)
  {
    result = mlir::OperationState::addOperands(a2, &v42, 1uLL);
  }

  if (v41)
  {
    result = mlir::OperationState::addOperands(a2, &v41, 1uLL);
  }

  if (v40)
  {
    result = mlir::OperationState::addOperands(a2, &v40, 1uLL);
    v25 = v40 != 0;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = v43;
  v26.i64[1] = v42;
  v27.i64[0] = v45;
  v27.i64[1] = v44;
  v28 = v41 != 0;
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  v30.i64[0] = 0x100000001;
  v30.i64[1] = 0x100000001;
  v29[3] = v30;
  v29[4] = vbicq_s8(v30, vuzp1q_s32(vceqzq_s64(v27), vceqzq_s64(v26)));
  v29[5].i32[0] = v28;
  v29[5].i32[1] = v25;
  if (a9)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = a9;
  }

  if (a10)
  {
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *(v32 + 8) = a10;
  }

  if (a11)
  {
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 40) = a11;
  }

  if (a12)
  {
    v34 = *(a2 + 256);
    if (!v34)
    {
      operator new();
    }

    *(v34 + 32) = a12;
  }

  if (a13)
  {
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *v35 = a13;
  }

  if (a14)
  {
    v36 = *(a2 + 256);
    if (!v36)
    {
      operator new();
    }

    *(v36 + 16) = a14;
  }

  v37 = *(a2 + 72);
  if (a4 + v37 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v38 = 0;
    v39 = *(a2 + 64) + 8 * v37;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v38);
      *(v39 + 8 * v38++) = result;
    }

    while (a4 != v38);
    LODWORD(v37) = *(a2 + 72);
  }

  *(a2 + 72) = v37 + a4;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, unsigned int a14, unsigned int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = a19;
  v86 = a8;
  v84 = a10;
  v85 = a9;
  v82 = a18;
  v83 = a11;
  v80 = a20;
  v81 = a19;
  v78 = a22;
  v79 = a21;
  v77 = a23;
  mlir::OperationState::addOperands(a2, &v86, 1uLL);
  mlir::OperationState::addOperands(a2, &v85, 1uLL);
  mlir::OperationState::addOperands(a2, &v84, 1uLL);
  mlir::OperationState::addOperands(a2, &v83, 1uLL);
  if (a18)
  {
    mlir::OperationState::addOperands(a2, &v82, 1uLL);
    v25 = v81;
  }

  if (v25)
  {
    mlir::OperationState::addOperands(a2, &v81, 1uLL);
  }

  if (v80)
  {
    mlir::OperationState::addOperands(a2, &v80, 1uLL);
  }

  if (v79)
  {
    mlir::OperationState::addOperands(a2, &v79, 1uLL);
  }

  if (v78)
  {
    mlir::OperationState::addOperands(a2, &v78, 1uLL);
  }

  if (v77)
  {
    mlir::OperationState::addOperands(a2, &v77, 1uLL);
    v26 = v77 != 0;
  }

  else
  {
    v26 = 0;
  }

  v27.i64[0] = v80;
  v27.i64[1] = v79;
  v28.i64[0] = v82;
  v28.i64[1] = v81;
  v29 = v78 != 0;
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  v31.i64[0] = 0x100000001;
  v31.i64[1] = 0x100000001;
  v30[3] = v31;
  v30[4] = vbicq_s8(v31, vuzp1q_s32(vceqzq_s64(v28), vceqzq_s64(v27)));
  v30[5].i32[0] = v29;
  v30[5].i32[1] = v26;
  v32 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v87 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v88 = v32;
  v93 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v94 = &v87;
  v92 = a12;
  v34 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v35 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v34 >> 47) ^ v34);
  v89 = &v92;
  v90 = &v93;
  v91 = &v92;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v91, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v89);
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 24) = ParametricStorageTypeImpl;
  v38 = *a1;
  v39 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v87 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v88 = v38;
  v93 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v94 = &v87;
  v92 = a13;
  v40 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL)));
  v90 = &v93;
  v91 = &v92;
  v89 = &v92;
  v41 = mlir::StorageUniquer::getParametricStorageTypeImpl(v39, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v40 >> 47) ^ v40), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v91, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v89);
  v42 = *(a2 + 256);
  if (!v42)
  {
    operator new();
  }

  *(v42 + 8) = v41;
  v43 = *a1;
  v44 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v87 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v88 = v43;
  v93 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v94 = &v87;
  v92 = a14;
  v45 = 0x9DDFEA08EB382D69 * (a14 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a14) | 4) ^ a14 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a14) | 4) ^ a14 ^ 0xFF51AFD7ED558CCDLL)));
  v89 = &v92;
  v90 = &v93;
  v91 = &v92;
  v46 = mlir::StorageUniquer::getParametricStorageTypeImpl(v44, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v45 >> 47) ^ v45), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v91, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v89);
  v47 = *(a2 + 256);
  if (!v47)
  {
    operator new();
  }

  *(v47 + 40) = v46;
  v48 = *a1;
  v49 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v87 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v88 = v48;
  v93 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v94 = &v87;
  v92 = a15;
  v50 = 0x9DDFEA08EB382D69 * (a15 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a15) | 4) ^ a15 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a15) | 4) ^ a15 ^ 0xFF51AFD7ED558CCDLL)));
  v90 = &v93;
  v91 = &v92;
  v89 = &v92;
  v51 = mlir::StorageUniquer::getParametricStorageTypeImpl(v49, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v50 >> 47) ^ v50), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v91, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v89);
  v52 = *(a2 + 256);
  if (!v52)
  {
    operator new();
  }

  *(v52 + 32) = v51;
  v53 = *a1;
  v54 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v87 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v88 = v53;
  v93 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v94 = &v87;
  v92 = a16;
  v55 = 0x9DDFEA08EB382D69 * (a16 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a16) | 4) ^ a16 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a16) | 4) ^ a16 ^ 0xFF51AFD7ED558CCDLL)));
  v89 = &v92;
  v90 = &v93;
  v91 = &v92;
  v56 = mlir::StorageUniquer::getParametricStorageTypeImpl(v54, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v55 >> 47) ^ v55), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v91, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v89);
  v57 = *(a2 + 256);
  if (!v57)
  {
    operator new();
  }

  *v57 = v56;
  v58 = *a1;
  v59 = mlir::MLIRContext::getAttributeUniquer(v58);
  v87 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v88 = v58;
  v93 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v94 = &v87;
  v92 = a17;
  v60 = 0x9DDFEA08EB382D69 * (((8 * a17) | 4) ^ a17 ^ 0xFF51AFD7ED558CCDLL);
  v61 = 0x9DDFEA08EB382D69 * (a17 ^ 0xFF51AFD7ED558CCDLL ^ (v60 >> 47) ^ v60);
  v90 = &v93;
  v91 = &v92;
  v89 = &v92;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v59, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v61 >> 47) ^ v61), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v91, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v89);
  v63 = *(a2 + 256);
  if (!v63)
  {
    operator new();
  }

  *(v63 + 16) = result;
  v64 = *(a2 + 72);
  if (v64 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v64) = a3;
  v65 = *(a2 + 76);
  v66 = *(a2 + 72) + 1;
  *(a2 + 72) = v66;
  if (v66 >= v65)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v66) = a4;
  v67 = *(a2 + 76);
  v68 = *(a2 + 72) + 1;
  *(a2 + 72) = v68;
  if (v68 >= v67)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v68) = a5;
  v69 = *(a2 + 76);
  v70 = *(a2 + 72) + 1;
  *(a2 + 72) = v70;
  if (v70 >= v69)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v70) = a6;
  v71 = *(a2 + 72) + 1;
  *(a2 + 72) = v71;
  if (a7)
  {
    if (v71 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v71) = a7;
    ++*(a2 + 72);
  }

  return result;
}

void mlir::mps::LSTMGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a14;
  v87 = *MEMORY[0x277D85DE8];
  v76 = a4;
  v77 = a3;
  v74 = a6;
  v75 = a5;
  v72 = a14;
  v73 = a13;
  v70 = a16;
  v71 = a15;
  v68 = a18;
  v69 = a17;
  mlir::OperationState::addOperands(a2, &v77, 1uLL);
  mlir::OperationState::addOperands(a2, &v76, 1uLL);
  mlir::OperationState::addOperands(a2, &v75, 1uLL);
  mlir::OperationState::addOperands(a2, &v74, 1uLL);
  if (a13)
  {
    mlir::OperationState::addOperands(a2, &v73, 1uLL);
    v20 = v72;
  }

  if (v20)
  {
    mlir::OperationState::addOperands(a2, &v72, 1uLL);
  }

  if (v71)
  {
    mlir::OperationState::addOperands(a2, &v71, 1uLL);
  }

  if (v70)
  {
    mlir::OperationState::addOperands(a2, &v70, 1uLL);
  }

  if (v69)
  {
    mlir::OperationState::addOperands(a2, &v69, 1uLL);
  }

  if (v68)
  {
    mlir::OperationState::addOperands(a2, &v68, 1uLL);
    v21 = v68 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22.i64[0] = v71;
  v22.i64[1] = v70;
  v23.i64[0] = v73;
  v23.i64[1] = v72;
  v24 = v69 != 0;
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  v26.i64[0] = 0x100000001;
  v26.i64[1] = 0x100000001;
  v25[3] = v26;
  v25[4] = vbicq_s8(v26, vuzp1q_s32(vceqzq_s64(v23), vceqzq_s64(v22)));
  v25[5].i32[0] = v24;
  v25[5].i32[1] = v21;
  v27 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v27;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a7;
  v29 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v30 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v29);
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 24) = ParametricStorageTypeImpl;
  v33 = *a1;
  v34 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v33;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a8;
  v35 = 0x9DDFEA08EB382D69 * (a8 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v36 = mlir::StorageUniquer::getParametricStorageTypeImpl(v34, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v35 >> 47) ^ v35), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v37 = *(a2 + 256);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 8) = v36;
  v38 = *a1;
  v39 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v38;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a9;
  v40 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v41 = mlir::StorageUniquer::getParametricStorageTypeImpl(v39, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v40 >> 47) ^ v40), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v42 = *(a2 + 256);
  if (!v42)
  {
    operator new();
  }

  *(v42 + 40) = v41;
  v43 = *a1;
  v44 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v43;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a10;
  v45 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v46 = mlir::StorageUniquer::getParametricStorageTypeImpl(v44, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v45 >> 47) ^ v45), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v47 = *(a2 + 256);
  if (!v47)
  {
    operator new();
  }

  *(v47 + 32) = v46;
  v48 = *a1;
  v49 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v48;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a11;
  v50 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v51 = mlir::StorageUniquer::getParametricStorageTypeImpl(v49, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v50 >> 47) ^ v50), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v52 = *(a2 + 256);
  if (!v52)
  {
    operator new();
  }

  *v52 = v51;
  v53 = *a1;
  v54 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v84 = v53;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a12;
  v55 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v56 = mlir::StorageUniquer::getParametricStorageTypeImpl(v54, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v55 >> 47) ^ v55), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v57 = *(a2 + 256);
  if (!v57)
  {
    operator new();
  }

  *(v57 + 16) = v56;
  v80 = v82;
  v81 = 0x200000000;
  v58 = *a2;
  mlir::ValueRange::ValueRange(&v85, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v61 = *(a2 + 256);
  v62 = mlir::RegionRange::RegionRange(&v83, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::LSTMGradientOp::inferReturnTypes(v62, v58, 1, v85, v86, Dictionary, v61, v63, v83, v84, &v80))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v64 = v81;
  v65 = *(a2 + 72);
  if (v65 + v81 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v81)
  {
    memcpy((*(a2 + 64) + 8 * v65), v80, 8 * v81);
    LODWORD(v65) = *(a2 + 72);
  }

  *(a2 + 72) = v65 + v64;
  if (v80 != v82)
  {
    free(v80);
  }
}

unint64_t mlir::mps::LSTMGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = a16;
  v73 = a6;
  v74 = a5;
  v71 = a8;
  v72 = a7;
  v69 = a16;
  v70 = a15;
  v67 = a18;
  v68 = a17;
  v65 = a20;
  v66 = a19;
  mlir::OperationState::addOperands(a2, &v74, 1uLL);
  mlir::OperationState::addOperands(a2, &v73, 1uLL);
  mlir::OperationState::addOperands(a2, &v72, 1uLL);
  mlir::OperationState::addOperands(a2, &v71, 1uLL);
  if (a15)
  {
    mlir::OperationState::addOperands(a2, &v70, 1uLL);
    v23 = v69;
  }

  if (v23)
  {
    mlir::OperationState::addOperands(a2, &v69, 1uLL);
  }

  if (v68)
  {
    mlir::OperationState::addOperands(a2, &v68, 1uLL);
  }

  if (v67)
  {
    mlir::OperationState::addOperands(a2, &v67, 1uLL);
  }

  if (v66)
  {
    mlir::OperationState::addOperands(a2, &v66, 1uLL);
  }

  if (v65)
  {
    mlir::OperationState::addOperands(a2, &v65, 1uLL);
    v24 = v65 != 0;
  }

  else
  {
    v24 = 0;
  }

  v25.i64[0] = v68;
  v25.i64[1] = v67;
  v26.i64[0] = v70;
  v26.i64[1] = v69;
  v27 = v66 != 0;
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  v29.i64[0] = 0x100000001;
  v29.i64[1] = 0x100000001;
  v28[3] = v29;
  v28[4] = vbicq_s8(v29, vuzp1q_s32(vceqzq_s64(v26), vceqzq_s64(v25)));
  v28[5].i32[0] = v27;
  v28[5].i32[1] = v24;
  v30 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v30;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a9;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v33 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v32 >> 47) ^ v32);
  v77 = &v80;
  v78 = &v81;
  v79 = &v80;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v35 = *(a2 + 256);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 24) = ParametricStorageTypeImpl;
  v36 = *a1;
  v37 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v36;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a10;
  v38 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v81;
  v79 = &v80;
  v77 = &v80;
  v39 = mlir::StorageUniquer::getParametricStorageTypeImpl(v37, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v38 >> 47) ^ v38), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v40 = *(a2 + 256);
  if (!v40)
  {
    operator new();
  }

  *(v40 + 8) = v39;
  v41 = *a1;
  v42 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v41;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a11;
  v43 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)));
  v77 = &v80;
  v78 = &v81;
  v79 = &v80;
  v44 = mlir::StorageUniquer::getParametricStorageTypeImpl(v42, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v43 >> 47) ^ v43), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v45 = *(a2 + 256);
  if (!v45)
  {
    operator new();
  }

  *(v45 + 40) = v44;
  v46 = *a1;
  v47 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v46;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a12;
  v48 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v81;
  v79 = &v80;
  v77 = &v80;
  v49 = mlir::StorageUniquer::getParametricStorageTypeImpl(v47, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v48 >> 47) ^ v48), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v50 = *(a2 + 256);
  if (!v50)
  {
    operator new();
  }

  *(v50 + 32) = v49;
  v51 = *a1;
  v52 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v51;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a13;
  v53 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL)));
  v77 = &v80;
  v78 = &v81;
  v79 = &v80;
  v54 = mlir::StorageUniquer::getParametricStorageTypeImpl(v52, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v53 >> 47) ^ v53), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v55 = *(a2 + 256);
  if (!v55)
  {
    operator new();
  }

  *v55 = v54;
  v56 = *a1;
  v57 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v76 = v56;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a14;
  v58 = 0x9DDFEA08EB382D69 * (a14 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a14) | 4) ^ a14 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a14) | 4) ^ a14 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v81;
  v79 = &v80;
  v77 = &v80;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v57, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v58 >> 47) ^ v58), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v60 = *(a2 + 256);
  if (!v60)
  {
    operator new();
  }

  *(v60 + 16) = result;
  v61 = *(a2 + 72);
  if (a4 + v61 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v62 = 0;
    v63 = *(a2 + 64) + 8 * v61;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v62);
      *(v63 + 8 * v62++) = result;
    }

    while (a4 != v62);
    LODWORD(v61) = *(a2 + 72);
  }

  *(a2 + 72) = v61 + a4;
  return result;
}

uint64_t mlir::mps::LSTMGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LSTMGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if (!mlir::mps::LSTMGradientOp::inferReturnTypes(v21, v17, 1, a3, a4, v19, v20, v22, v25[0], v25[1], &__src))
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

mlir::MLIRContext *mlir::mps::LSTMGradientOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v4 = result;
  if (a2[3])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 3;
    v14 = &v17;
    v15 = &v16;
    v13 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[3] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[5])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v6 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v6, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[1] = result;
  if (a2[5])
  {
LABEL_4:
    if (a2[4])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[5] = result;
  if (a2[4])
  {
LABEL_5:
    if (*a2)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v8, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[4] = result;
  if (*a2)
  {
LABEL_6:
    if (a2[2])
    {
      return result;
    }

LABEL_13:
    v10 = mlir::MLIRContext::getAttributeUniquer(v4);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 0;
    v13 = &v16;
    v14 = &v17;
    v15 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v10, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[2] = result;
    return result;
  }

LABEL_12:
  v9 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v9, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  *a2 = result;
  if (!a2[2])
  {
    goto LABEL_13;
  }

  return result;
}

BOOL mlir::mps::LSTMGradientOp::verifyInvariantsImpl(mlir::mps::LSTMGradientOp *this)
{
  v133[26] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];
  v9 = v3[13];
  v133[0] = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v6, "igate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v5, "fgate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "zgate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "ogate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "cell_activation", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v133[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v7, "gate_layout", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v133) & 1) == 0)
  {
    return 0;
  }

  v132 = 0;
  v10 = *(*this + 44);
  v11 = *(*this + 16 * ((v10 >> 23) & 1) + 112);
  if ((v10 & 0x800000) != 0)
  {
    v12 = *(*this + 72);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_9:
      v13 = v12 + 24;
      do
      {
        v14 = *this;
        v15 = *(*v13 + 8);
        v16 = v132++;
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v14, v15 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v16) & 1) == 0)
        {
          return 0;
        }

        v13 += 32;
      }

      while (--v11);
    }
  }

  ODSOperands = mlir::mps::GRUGradientOp::getODSOperands(this, 1u);
  if (v18)
  {
    v19 = v18;
    v20 = ODSOperands + 24;
    do
    {
      v21 = *this;
      v22 = *(*v20 + 8);
      v23 = v132++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v21, v22 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v23) & 1) == 0)
      {
        return 0;
      }

      v20 += 32;
    }

    while (--v19);
  }

  v24 = mlir::mps::GRUGradientOp::getODSOperands(this, 2u);
  if (v25)
  {
    v26 = v25;
    v27 = v24 + 24;
    do
    {
      v28 = *this;
      v29 = *(*v27 + 8);
      v30 = v132++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v28, v29 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v30) & 1) == 0)
      {
        return 0;
      }

      v27 += 32;
    }

    while (--v26);
  }

  v31 = mlir::mps::GRUGradientOp::getODSOperands(this, 3u);
  if (v32)
  {
    v33 = v32;
    v34 = v31 + 24;
    do
    {
      v35 = *this;
      v36 = *(*v34 + 8);
      v37 = v132++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v35, v36 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) == 0)
      {
        return 0;
      }

      v34 += 32;
    }

    while (--v33);
  }

  v38 = mlir::mps::GRUGradientOp::getODSOperands(this, 4u);
  v40 = v39;
  if (v39 >= 2)
  {
    goto LABEL_25;
  }

  if (v39)
  {
    v47 = *(v38 + 24);
    v48 = *this;
    v49 = *(v47 + 8);
    v50 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v48, v49 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v50) & 1) == 0)
    {
      return 0;
    }
  }

  v51 = mlir::mps::GRUGradientOp::getODSOperands(this, 5u);
  v40 = v52;
  if (v52 >= 2)
  {
    goto LABEL_25;
  }

  if (v52)
  {
    v53 = *(v51 + 24);
    v54 = *this;
    v55 = *(v53 + 8);
    v56 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v54, v55 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v56) & 1) == 0)
    {
      return 0;
    }
  }

  v57 = mlir::mps::GRUGradientOp::getODSOperands(this, 6u);
  v40 = v58;
  if (v58 >= 2)
  {
    goto LABEL_25;
  }

  if (v58)
  {
    v59 = *(v57 + 24);
    v60 = *this;
    v61 = *(v59 + 8);
    v62 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v60, v61 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v62) & 1) == 0)
    {
      return 0;
    }
  }

  v63 = mlir::mps::GRUGradientOp::getODSOperands(this, 7u);
  v40 = v64;
  if (v64 >= 2)
  {
    goto LABEL_25;
  }

  if (v64)
  {
    v65 = *(v63 + 24);
    v66 = *this;
    v67 = *(v65 + 8);
    v68 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v66, v67 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v68) & 1) == 0)
    {
      return 0;
    }
  }

  v69 = mlir::mps::GRUGradientOp::getODSOperands(this, 8u);
  v40 = v70;
  if (v70 >= 2)
  {
    goto LABEL_25;
  }

  if (v70)
  {
    v71 = *(v69 + 24);
    v72 = *this;
    v73 = *(v71 + 8);
    v74 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps32(v72, (v73 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v74) & 1) == 0)
    {
      return 0;
    }
  }

  v75 = mlir::mps::GRUGradientOp::getODSOperands(this, 9u);
  v40 = v76;
  if (v76 >= 2)
  {
LABEL_25:
    v41 = "operand group starting at #";
LABEL_26:
    v130 = v41;
    v131 = 259;
    mlir::OpState::emitOpError(this, &v130, v133);
    mlir::InFlightDiagnostic::operator<<<unsigned int &>(v133, &v132);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v42, " requires 0 or 1 element, but found ");
    v129 = v40;
    mlir::InFlightDiagnostic::operator<<<unsigned long &>(v43, &v129);
    v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v133);
    return v45;
  }

  if (v76)
  {
    v79 = *(v75 + 24);
    v80 = *this;
    v81 = *(v79 + 8);
    v82 = v132++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v80, v81 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v82) & 1) == 0)
    {
      return 0;
    }
  }

  v132 = 0;
  ODSResults = mlir::mps::LSTMGradientOp::getODSResults(this, 0, v77, v78);
  if (v84)
  {
    v87 = ODSResults;
    v88 = v84;
    v89 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v87, v89);
      v91 = *this;
      v92 = *(NextResultAtOffset + 8);
      v132 = v89 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v91, v92 & 0xFFFFFFFFFFFFFFF8, "result", 6, v89) & 1) == 0)
      {
        return 0;
      }

      if (v88 == ++v89)
      {
        goto LABEL_53;
      }
    }
  }

  LODWORD(v89) = 0;
LABEL_53:
  v93 = mlir::mps::LSTMGradientOp::getODSResults(this, 1u, v85, v86);
  if (v94)
  {
    v97 = v93;
    v98 = v94;
    v99 = 0;
    while (1)
    {
      v100 = mlir::detail::OpResultImpl::getNextResultAtOffset(v97, v99);
      v101 = *this;
      v102 = *(v100 + 8);
      v103 = v89 + 1;
      v132 = v89 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v101, v102 & 0xFFFFFFFFFFFFFFF8, "result", 6, v89) & 1) == 0)
      {
        return 0;
      }

      ++v99;
      LODWORD(v89) = v89 + 1;
      if (v98 == v99)
      {
        goto LABEL_59;
      }
    }
  }

  v103 = v89;
LABEL_59:
  v104 = mlir::mps::LSTMGradientOp::getODSResults(this, 2u, v95, v96);
  if (v105)
  {
    v108 = v104;
    v109 = v105;
    v110 = 0;
    while (1)
    {
      v111 = mlir::detail::OpResultImpl::getNextResultAtOffset(v108, v110);
      v112 = *this;
      v113 = *(v111 + 8);
      v114 = v103 + 1;
      v132 = v103 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v112, v113 & 0xFFFFFFFFFFFFFFF8, "result", 6, v103) & 1) == 0)
      {
        return 0;
      }

      ++v110;
      ++v103;
      if (v109 == v110)
      {
        goto LABEL_65;
      }
    }
  }

  v114 = v103;
LABEL_65:
  v115 = mlir::mps::LSTMGradientOp::getODSResults(this, 3u, v106, v107);
  if (v116)
  {
    v119 = v115;
    v120 = v116;
    v121 = 0;
    while (1)
    {
      v122 = mlir::detail::OpResultImpl::getNextResultAtOffset(v119, v121);
      v123 = *this;
      v124 = *(v122 + 8);
      v125 = v114 + 1;
      v132 = v114 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v123, v124 & 0xFFFFFFFFFFFFFFF8, "result", 6, v114) & 1) == 0)
      {
        return 0;
      }

      ++v121;
      ++v114;
      if (v120 == v121)
      {
        goto LABEL_71;
      }
    }
  }

  v125 = v114;
LABEL_71:
  v126 = mlir::mps::LSTMGradientOp::getODSResults(this, 4u, v117, v118);
  v40 = v127;
  if (v127 >= 2)
  {
    v41 = "result group starting at #";
    goto LABEL_26;
  }

  if (v127)
  {
    v128 = mlir::detail::OpResultImpl::getNextResultAtOffset(v126, 0);
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v128 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v125) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps32(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v101 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v31 = v10[1];
    v32 = *(v10 + 4);
    if (!v32)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v40 = v10;
    mlir::TensorType::operator mlir::ShapedType();
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
    v41 = v33[1];
    v89 = a2;
    v90 = v41;
    if (!mlir::ShapedType::hasRank(&v89))
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  if (!mlir::ShapedType::hasRank(&v89))
  {
    goto LABEL_2;
  }

LABEL_59:
  v42 = *a2;
  {
    v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v44 = v42[1];
    v45 = *(v42 + 4);
    if (!v45)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v80 = v42;
    mlir::mps::ConstantOp::verify();
    v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v44 = v80[1];
    v45 = *(v80 + 4);
    if (!v45)
    {
      goto LABEL_71;
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
    v82 = a2;
    v83 = v53;
    mlir::ShapedType::getShape(&v82);
    if (!v54)
    {
      goto LABEL_90;
    }

    goto LABEL_74;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  if (!v52)
  {
    goto LABEL_90;
  }

LABEL_74:
  v55 = *a2;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = v55[1];
    v58 = *(v55 + 4);
    if (!v58)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v81 = v55;
    mlir::mps::ConstantOp::verify();
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = v81[1];
    v58 = *(v81 + 4);
    if (!v58)
    {
      goto LABEL_87;
    }
  }

  v59 = v57;
  v60 = v58;
  do
  {
    v61 = v60 >> 1;
    v62 = &v59[2 * (v60 >> 1)];
    v64 = *v62;
    v63 = v62 + 2;
    v60 += ~(v60 >> 1);
    if (v64 < v56)
    {
      v59 = v63;
    }

    else
    {
      v60 = v61;
    }
  }

  while (v60);
  if (v59 != &v57[2 * v58] && *v59 == v56)
  {
    v66 = v59[1];
    *&v87 = a2;
    *(&v87 + 1) = v66;
    mlir::ShapedType::getShape(&v87);
    if (v67 != 1)
    {
      goto LABEL_2;
    }

    goto LABEL_90;
  }

LABEL_87:
  v87 = a2;
  mlir::ShapedType::getShape(&v87);
  if (v65 != 1)
  {
    goto LABEL_2;
  }

LABEL_90:
  v68 = *a2;
  {
    v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v70 = v68[1];
    v71 = *(v68 + 4);
    if (!v71)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v78 = v68;
    mlir::mps::ConstantOp::verify();
    v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v70 = v78[1];
    v71 = *(v78 + 4);
    if (!v71)
    {
      goto LABEL_102;
    }
  }

  v72 = v70;
  v73 = v71;
  do
  {
    v74 = v73 >> 1;
    v75 = &v72[2 * (v73 >> 1)];
    v77 = *v75;
    v76 = v75 + 2;
    v73 += ~(v73 >> 1);
    if (v77 < v69)
    {
      v72 = v76;
    }

    else
    {
      v73 = v74;
    }
  }

  while (v73);
  if (v72 != &v70[2 * v71] && *v72 == v69)
  {
    v79 = v72[1];
    goto LABEL_104;
  }

LABEL_102:
  v79 = 0;
LABEL_104:
  v85[0] = a2;
  v85[1] = v79;
  ElementType = mlir::ShapedType::getElementType(v85);
  if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v87) = 3;
    *(&v87 + 1) = " #";
    v88 = 2;
    if (v92 >= v93)
    {
      if (v91 > &v87 || v91 + 24 * v92 <= &v87)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v91 + 24 * v92;
    v12 = v87;
    *(v11 + 2) = v88;
    *v11 = v12;
    v13 = ++v92;
    if (v89)
    {
      LODWORD(v87) = 5;
      *(&v87 + 1) = a5;
      if (v13 >= v93)
      {
        if (v91 > &v87 || v91 + 24 * v13 <= &v87)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = v91 + 24 * v92;
      v15 = v87;
      *(v14 + 2) = v88;
      *v14 = v15;
      v16 = ++v92;
      if (v89)
      {
        LODWORD(v87) = 3;
        *(&v87 + 1) = " must be 0D/1D tensor of floating point or int values, but got ";
        v88 = 63;
        if (v16 >= v93)
        {
          if (v91 > &v87 || v91 + 24 * v16 <= &v87)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = v91 + 24 * v92;
        v18 = v87;
        *(v17 + 2) = v88;
        *v17 = v18;
        ++v92;
        if (v89)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          if (v92 >= v93)
          {
            if (v91 > &v87 || v91 + 24 * v92 <= &v87)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v91 + 24 * v92;
          v20 = v87;
          *(v19 + 2) = v88;
          *v19 = v20;
          ++v92;
        }
      }
    }
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v98;
      v24 = __p;
      if (v98 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v98 = v22;
      operator delete(v24);
    }

    v25 = v95;
    if (v95)
    {
      v26 = v96;
      v27 = v95;
      if (v96 != v95)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            MEMORY[0x259C63150](v28, 0x1000C8077774924);
          }
        }

        while (v26 != v25);
        v27 = v95;
      }

      v96 = v25;
      operator delete(v27);
    }

    if (v91 != &v94)
    {
      free(v91);
    }
  }

  return v21;
}

uint64_t mlir::mps::detail::LSTMOpGenericAdaptorBase::LSTMOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  *(a1 + 104) = *(v3 + 80);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = *(a2 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 112), ((a2 + 64 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v8 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 112), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  *(a1 + 104) = *(v3 + 80);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = *(a2 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 112), ((a2 + 64 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v8 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 112), 0, 0);
  }

  return a1;
}

unint64_t mlir::mps::detail::LSTMOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::detail::LSTMOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 80);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 96);
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

  v10 = (this + 4 * v3 + 80);
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

uint64_t mlir::mps::LSTMOp::getAsmResultNames(uint64_t *a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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
  a2(a3, v9, "output_cell", 11);
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

    return (a2)(a3, v15, "training_state", 14);
  }

  return result;
}

uint64_t mlir::mps::LSTMOp::getODSResults(mlir::mps::LSTMOp *this, unsigned int a2, double a3, int32x4_t a4)
{
  if (a2)
  {
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
LABEL_14:
      v26 = a2 - v4;
      v27 = &dword_257374322 + v4;
      do
      {
        v28 = *v27++;
        v5 += v28;
        --v26;
      }

      while (v26);
      goto LABEL_16;
    }

    if (a2 >= 0x20)
    {
      v6 = 0uLL;
      v7 = "0MPSDialectE";
      v8 = 0uLL;
      v4 = a2 & 0xFFFFFFE0;
      v9 = v4;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      do
      {
        v16 = *v7[-2].i8;
        v17 = vmovl_u8(*v16.i8);
        v18 = vmovl_high_u8(v16);
        v19 = vmovl_u8(*v7);
        v20 = vmovl_high_u8(*v7->i8);
        v11 = vaddw_high_u16(v11, v18);
        v10 = vaddw_u16(v10, *v18.i8);
        v8 = vaddw_high_u16(v8, v17);
        v6 = vaddw_u16(v6, *v17.i8);
        v15 = vaddw_high_u16(v15, v20);
        v14 = vaddw_u16(v14, *v20.i8);
        v13 = vaddw_high_u16(v13, v19);
        v12 = vaddw_u16(v12, *v19.i8);
        v7 += 4;
        v9 -= 32;
      }

      while (v9);
      a4 = vaddq_s32(vaddq_s32(v13, v8), vaddq_s32(v15, v11));
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v6), vaddq_s32(v14, v10)), a4));
      if (v4 == a2)
      {
        goto LABEL_16;
      }

      if ((a2 & 0x1C) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v21 = v4;
    v4 = a2 & 0xFFFFFFFC;
    v22 = v5;
    v23 = (&dword_257374322 + v21);
    v24 = v21 - v4;
    do
    {
      v25 = *v23++;
      a4.i32[0] = v25;
      a4.i64[0] = vmovl_u8(*a4.i8).u64[0];
      v22 = vaddw_u16(v22, *a4.i8);
      v24 += 4;
    }

    while (v24);
    v5 = vaddvq_s32(v22);
    if (v4 == a2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v5 = 0;
LABEL_16:
  v29 = *(*this + 36);
  if (v29)
  {
    result = *this - 16;
  }

  else
  {
    result = 0;
  }

  if (a2 + (v29 - 3) * v5)
  {
    return mlir::detail::OpResultImpl::getNextResultAtOffset(result, a2 + (v29 - 3) * v5);
  }

  return result;
}

unint64_t mlir::mps::LSTMOp::getODSOperandIndexAndLength(mlir::mps::LSTMOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 120);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 136);
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

  v12 = (16 * v2 + 4 * v5 + *this + 120);
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

unint64_t mlir::mps::LSTMOp::getODSResultIndexAndLength(mlir::mps::LSTMOp *this, unsigned int a2, double a3, int32x4_t a4)
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

uint64_t mlir::mps::LSTMOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_70;
    }

    v27 = v65;
    v19 = v64;
    if (v65 == v64)
    {
LABEL_69:
      v65 = v17;
      operator delete(v19);
LABEL_70:
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
LABEL_68:
    v19 = v64;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v55, "cell_activation", 0xFuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v9 = v8;
      a3(&v58, a4);
      if (v58)
      {
        LODWORD(v56) = 3;
        v57 = 60;
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
        goto LABEL_70;
      }

      v18 = v65;
      v19 = v64;
      if (v65 == v64)
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

  v30 = mlir::DictionaryAttr::get(&v55, "fgate_activation", 0x10uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v31 = v30;
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

        v32 = v60 + 24 * v61;
        v33 = v56;
        *(v32 + 2) = v57;
        *v32 = v33;
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

          v34 = v60 + 24 * v61;
          v35 = v56;
          *(v34 + 2) = v57;
          *v34 = v35;
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

      v36 = __p;
      if (__p)
      {
        v37 = v67;
        v38 = __p;
        if (v67 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v67 = v36;
        operator delete(v38);
      }

      v17 = v64;
      if (!v64)
      {
        goto LABEL_70;
      }

      v39 = v65;
      v19 = v64;
      if (v65 == v64)
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

  v42 = mlir::DictionaryAttr::get(&v55, "gate_layout", 0xBuLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
    {
      v43 = v42;
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

        v44 = v60 + 24 * v61;
        v45 = v56;
        *(v44 + 2) = v57;
        *v44 = v45;
        ++v61;
        if (v58)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, v43);
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

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v55, "igate_activation", 0x10uLL);
  *&v56 = v48;
  if (v48)
  {
    if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v58, a4);
LABEL_99:
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v58, v49);
      goto LABEL_100;
    }

    a1[3] = v48;
  }

  v50 = mlir::DictionaryAttr::get(&v55, "ogate_activation", 0x10uLL);
  *&v56 = v50;
  if (v50)
  {
    if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v58, a4);
      goto LABEL_99;
    }

    a1[4] = v50;
  }

  v51 = mlir::DictionaryAttr::get(&v55, "training", 8uLL);
  *&v56 = v51;
  if (v51)
  {
    if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      a3(&v58, a4);
LABEL_100:
      mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v52, &v56);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v58);
      return 0;
    }

    a1[5] = v51;
  }

  v53 = mlir::DictionaryAttr::get(&v55, "zgate_activation", 0x10uLL);
  *&v56 = v53;
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      a3(&v58, a4);
      goto LABEL_99;
    }

    a1[6] = v53;
  }

  if (mlir::DictionaryAttr::get(&v55, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v55, "operand_segment_sizes", 0x15uLL))
  {
    mlir::convertFromAttribute();
  }

  return 1;
}

void mlir::mps::LSTMOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = v33;
  v32 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v30, "cell_activation", 0xF, *a2);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v31 + 16 * v32);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v32) = v32 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v30, "fgate_activation", 0x10, v6);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v31 + 16 * v32);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v32) = v32 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v30, "gate_layout", 0xB, v10);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v31 + 16 * v32);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v32) = v32 + 1;
  }

  v14 = a2[3];
  if (v14)
  {
    v15 = mlir::Builder::getNamedAttr(&v30, "igate_activation", 0x10, v14);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v17 = (v31 + 16 * v32);
    *v17 = v15;
    v17[1] = v16;
    LODWORD(v32) = v32 + 1;
  }

  v18 = a2[4];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v30, "ogate_activation", 0x10, v18);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v21 = (v31 + 16 * v32);
    *v21 = v19;
    v21[1] = v20;
    LODWORD(v32) = v32 + 1;
  }

  v22 = a2[5];
  if (v22)
  {
    v23 = mlir::Builder::getNamedAttr(&v30, "training", 8, v22);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v25 = (v31 + 16 * v32);
    *v25 = v23;
    v25[1] = v24;
    LODWORD(v32) = v32 + 1;
  }

  v26 = a2[6];
  if (v26)
  {
    v27 = mlir::Builder::getNamedAttr(&v30, "zgate_activation", 0x10, v26);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v29 = (v31 + 16 * v32);
    *v29 = v27;
    v29[1] = v28;
    LODWORD(v32) = v32 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::mps::LSTMOp::computePropertiesHash(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = (0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v31 = v9;
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v29 = v14;
  v17 = a1[7];
  v18 = HIDWORD(a1[6]);
  v19 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v18);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v20 = 0xB492B66FBE98F273 * v17;
  v21 = a1[8];
  v22 = 0x9AE16A3B2F90404FLL * *(a1 + 76);
  v23 = __ROR8__(v20 - v21, 43) - 0x3C5A37A36834CED9 * *(a1 + 68) + __ROR8__(v22 ^ 0xFF51AFD7ED558CCDLL, 30);
  v24 = v20 + __ROR8__(v21 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v22 + 28;
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) ^ ((0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v24)))) >> 47));
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  v35 = 0;
  v36 = 0xFF51AFD7ED558CCDLL;
  v32[0] = v3;
  v32[1] = 0x9DDFEA08EB382D69 * v6;
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v32, 0, v33, v34, &v31, &v30, &v29, &v28, &v27, &v26);
}

uint64_t mlir::mps::LSTMOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n <= 15)
  {
    if (__n == 8)
    {
      if (!memcmp(__s1, "training", 8uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 11)
    {
      if (!memcmp(__s1, "gate_layout", 0xBuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 16)
  {
    if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        goto LABEL_30;
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
LABEL_30:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  if (!memcmp(__s1, "fgate_activation", 0x10uLL))
  {
    return a2[1];
  }

  if (!memcmp(__s1, "igate_activation", 0x10uLL))
  {
    return a2[3];
  }

  if (*__s1 != 0x63615F657461676FLL || *(__s1 + 1) != 0x6E6F697461766974)
  {
    if (!memcmp(__s1, "zgate_activation", 0x10uLL))
    {
      return a2[6];
    }

    return 0;
  }

  return a2[4];
}

uint64_t mlir::mps::LSTMOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 15)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "fgate_activation", 0x10uLL);
      if (result)
      {
        result = memcmp(__s1, "igate_activation", 0x10uLL);
        if (result)
        {
          if (*__s1 == 0x63615F657461676FLL && *(__s1 + 1) == 0x6E6F697461766974)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
              {
                v15 = a4;
              }

              else
              {
                v15 = 0;
              }

              v5[4] = v15;
            }

            else
            {
              v5[4] = 0;
            }
          }

          else
          {
            result = memcmp(__s1, "zgate_activation", 0x10uLL);
            if (!result)
            {
              if (a4)
              {
                if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
                {
                  v10 = a4;
                }

                else
                {
                  v10 = 0;
                }

                v5[6] = v10;
              }

              else
              {
                v5[6] = 0;
              }
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
          {
            v14 = a4;
          }

          else
          {
            v14 = 0;
          }

          v5[3] = v14;
        }

        else
        {
          v5[3] = 0;
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        v5[1] = v12;
      }

      else
      {
        v5[1] = 0;
      }
    }

    else
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (a3 != 21)
        {
          return result;
        }

        result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
        if (result)
        {
          return result;
        }
      }

      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::classof();
      }
    }
  }

  else if (a3 == 8)
  {
    result = memcmp(__s1, "training", 8uLL);
    if (!result)
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

        v5[5] = v7;
      }

      else
      {
        v5[5] = 0;
      }
    }
  }

  else if (a3 == 11)
  {
    result = memcmp(__s1, "gate_layout", 0xBuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
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

  else if (a3 == 15 && *__s1 == 0x7463615F6C6C6563 && *(__s1 + 7) == 0x6E6F697461766974)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
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

void mlir::mps::LSTMOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "cell_activation", 0xFuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "fgate_activation", 0x10uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "gate_layout", 0xBuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "igate_activation", 0x10uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "ogate_activation", 0x10uLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "training", 8uLL, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "zgate_activation", 0x10uLL, v10);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::mps::LSTMOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v8, "cell_activation", 15, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "fgate_activation", 16, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v10, "gate_layout", 11, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v11, "igate_activation", 16, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v12, "ogate_activation", 16, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v13, "training", 8, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v14, "zgate_activation", 16, a3, a4) & 1) != 0)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::LSTMOp::readProperties(uint64_t a1, uint64_t a2)
{
  v8[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::LSTMGateLayoutAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 4))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::RNNActivationAttr>(a1, v3 + 6))
      {
        v5[0] = a1;
        v5[1] = (v3 + 7);
        return mlir::mps::GRUGradientOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v5) & 1;
      }
    }

    else
    {
      v7 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v7) < 8)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v5[0] = "size mismatch for operand/result_segment_size";
        v6 = 259;
        (*(*a1 + 16))(v8, a1, v5);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
      }
    }
  }

  return 0;
}

uint64_t mlir::mps::LSTMOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 24))(a2, *(v5 + 16));
  (*(*a2 + 24))(a2, *(v5 + 24));
  (*(*a2 + 24))(a2, *(v5 + 32));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  (*(*a2 + 24))(a2, *(v5 + 40));
  (*(*a2 + 24))(a2, *(v5 + 48));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 56), 7);
  }

  return result;
}

uint64_t mlir::mps::LSTMOp::setIgateActivation(uint64_t a1, unsigned int a2)
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
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::LSTMOp::setFgateActivation(uint64_t a1, unsigned int a2)
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
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::LSTMOp::setZgateActivation(uint64_t a1, unsigned int a2)
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
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 112) = result;
  return result;
}

uint64_t mlir::mps::LSTMOp::setOgateActivation(uint64_t a1, unsigned int a2)
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
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::LSTMOp::setCellActivation(uint64_t a1, unsigned int a2)
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

uint64_t mlir::mps::LSTMOp::setGateLayout(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::LSTMOp::setTraining(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 104) = this;
  }

  else
  {
    *(v2 + 104) = 0;
  }

  return this;
}

uint64_t mlir::mps::LSTMOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = a16;
  v48 = a7;
  v49 = a6;
  v46 = a16;
  v47 = a15;
  v44 = a18;
  v45 = a17;
  v43 = a19;
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v48, 1uLL);
  if (a15)
  {
    result = mlir::OperationState::addOperands(a2, &v47, 1uLL);
    v24 = v46;
  }

  if (v24)
  {
    result = mlir::OperationState::addOperands(a2, &v46, 1uLL);
  }

  if (v45)
  {
    result = mlir::OperationState::addOperands(a2, &v45, 1uLL);
  }

  if (v44)
  {
    result = mlir::OperationState::addOperands(a2, &v44, 1uLL);
  }

  if (v43)
  {
    result = mlir::OperationState::addOperands(a2, &v43, 1uLL);
    v26 = v43 != 0;
  }

  else
  {
    v26 = 0;
  }

  v27.i64[0] = v45;
  v27.i64[1] = v44;
  v28.i64[0] = v47;
  v28.i64[1] = v46;
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  v29[3].i64[1] = 0x100000001;
  v30 = vuzp1q_s32(vceqzq_s64(v28), vceqzq_s64(v27));
  v31.i64[0] = 0x100000001;
  v31.i64[1] = 0x100000001;
  v29[4] = vbicq_s8(v31, v30);
  v29[5].i32[0] = v26;
  if (a8)
  {
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *(v32 + 24) = a8;
  }

  if (a9)
  {
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 8) = a9;
  }

  if (a10)
  {
    v34 = *(a2 + 256);
    if (!v34)
    {
      operator new();
    }

    *(v34 + 48) = a10;
  }

  if (a11)
  {
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *(v35 + 32) = a11;
  }

  if (a12)
  {
    v36 = *(a2 + 256);
    if (!v36)
    {
      operator new();
    }

    *v36 = a12;
  }

  if (a13)
  {
    v37 = *(a2 + 256);
    if (!v37)
    {
      operator new();
    }

    *(v37 + 16) = a13;
  }

  if (a14)
  {
    v38 = *(a2 + 256);
    if (!v38)
    {
      operator new();
    }

    *(v38 + 40) = a14;
  }

  v39 = *(a2 + 72);
  if (v39 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v39) = a3;
  v40 = *(a2 + 76);
  v41 = *(a2 + 72) + 1;
  *(a2 + 72) = v41;
  if (v41 >= v40)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v41) = a4;
  v42 = *(a2 + 72) + 1;
  *(a2 + 72) = v42;
  if (a5)
  {
    if (v42 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v42) = a5;
    ++*(a2 + 72);
  }

  return result;
}

void mlir::mps::LSTMOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = a13;
  v55[2] = *MEMORY[0x277D85DE8];
  v49 = a4;
  v50 = a3;
  v47 = a13;
  v48 = a12;
  v45 = a15;
  v46 = a14;
  v44 = a16;
  mlir::OperationState::addOperands(a2, &v50, 1uLL);
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  if (a12)
  {
    mlir::OperationState::addOperands(a2, &v48, 1uLL);
    v22 = v47;
  }

  if (v22)
  {
    mlir::OperationState::addOperands(a2, &v47, 1uLL);
  }

  if (v46)
  {
    mlir::OperationState::addOperands(a2, &v46, 1uLL);
  }

  if (v45)
  {
    mlir::OperationState::addOperands(a2, &v45, 1uLL);
  }

  if (v44)
  {
    mlir::OperationState::addOperands(a2, &v44, 1uLL);
    v23 = v44 != 0;
  }

  else
  {
    v23 = 0;
  }

  v24.i64[0] = v46;
  v24.i64[1] = v45;
  v25.i64[0] = v48;
  v25.i64[1] = v47;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  v26[3].i64[1] = 0x100000001;
  v27 = vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v24));
  v28.i64[0] = 0x100000001;
  v28.i64[1] = 0x100000001;
  v26[4] = vbicq_s8(v28, v27);
  v26[5].i32[0] = v23;
  if (a5)
  {
    v29 = *(a2 + 256);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 24) = a5;
  }

  if (a6)
  {
    v30 = *(a2 + 256);
    if (!v30)
    {
      operator new();
    }

    *(v30 + 8) = a6;
  }

  if (a7)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 48) = a7;
  }

  if (a8)
  {
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *(v32 + 32) = a8;
  }

  if (a9)
  {
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *v33 = a9;
  }

  if (a10)
  {
    v34 = *(a2 + 256);
    if (!v34)
    {
      operator new();
    }

    *(v34 + 16) = a10;
  }

  if (a11)
  {
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *(v35 + 40) = a11;
  }

  v53 = v55;
  v54 = 0x200000000;
  v36 = *a1;
  v37 = *a2;
  mlir::ValueRange::ValueRange(v52, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v40 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v51, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::LSTMOp::inferReturnTypes(v36, v37, 1, v52[0], v52[1], Dictionary, v40, v41, v51[0], v51[1], &v53))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v42 = v54;
  v43 = *(a2 + 72);
  if (v43 + v54 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v54)
  {
    memcpy((*(a2 + 64) + 8 * v43), v53, 8 * v54);
    LODWORD(v43) = *(a2 + 72);
  }

  *(a2 + 72) = v43 + v42;
  if (v53 != v55)
  {
    free(v53);
  }
}

unint64_t mlir::mps::LSTMOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = a15;
  v46 = a6;
  v47 = a5;
  v44 = a15;
  v45 = a14;
  v42 = a17;
  v43 = a16;
  v41 = a18;
  mlir::OperationState::addOperands(a2, &v47, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v46, 1uLL);
  if (a14)
  {
    result = mlir::OperationState::addOperands(a2, &v45, 1uLL);
    v23 = v44;
  }

  if (v23)
  {
    result = mlir::OperationState::addOperands(a2, &v44, 1uLL);
  }

  if (v43)
  {
    result = mlir::OperationState::addOperands(a2, &v43, 1uLL);
  }

  if (v42)
  {
    result = mlir::OperationState::addOperands(a2, &v42, 1uLL);
  }

  if (v41)
  {
    result = mlir::OperationState::addOperands(a2, &v41, 1uLL);
    v25 = v41 != 0;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = v43;
  v26.i64[1] = v42;
  v27.i64[0] = v45;
  v27.i64[1] = v44;
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  v28[3].i64[1] = 0x100000001;
  v29 = vuzp1q_s32(vceqzq_s64(v27), vceqzq_s64(v26));
  v30.i64[0] = 0x100000001;
  v30.i64[1] = 0x100000001;
  v28[4] = vbicq_s8(v30, v29);
  v28[5].i32[0] = v25;
  if (a7)
  {
    v31 = *(a2 + 256);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 24) = a7;
  }

  if (a8)
  {
    v32 = *(a2 + 256);
    if (!v32)
    {
      operator new();
    }

    *(v32 + 8) = a8;
  }

  if (a9)
  {
    v33 = *(a2 + 256);
    if (!v33)
    {
      operator new();
    }

    *(v33 + 48) = a9;
  }

  if (a10)
  {
    v34 = *(a2 + 256);
    if (!v34)
    {
      operator new();
    }

    *(v34 + 32) = a10;
  }

  if (a11)
  {
    v35 = *(a2 + 256);
    if (!v35)
    {
      operator new();
    }

    *v35 = a11;
  }

  if (a12)
  {
    v36 = *(a2 + 256);
    if (!v36)
    {
      operator new();
    }

    *(v36 + 16) = a12;
  }

  if (a13)
  {
    v37 = *(a2 + 256);
    if (!v37)
    {
      operator new();
    }

    *(v37 + 40) = a13;
  }

  v38 = *(a2 + 72);
  if (a4 + v38 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v39 = 0;
    v40 = *(a2 + 64) + 8 * v38;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v39);
      *(v40 + 8 * v39++) = result;
    }

    while (a4 != v39);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + a4;
  return result;
}

uint64_t mlir::mps::LSTMOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = a16;
  v74 = a7;
  v75 = a6;
  v72 = a16;
  v73 = a15;
  v70 = a18;
  v71 = a17;
  v69 = a19;
  mlir::OperationState::addOperands(a2, &v75, 1uLL);
  mlir::OperationState::addOperands(a2, &v74, 1uLL);
  if (a15)
  {
    mlir::OperationState::addOperands(a2, &v73, 1uLL);
    v22 = v72;
  }

  if (v22)
  {
    mlir::OperationState::addOperands(a2, &v72, 1uLL);
  }

  if (v71)
  {
    mlir::OperationState::addOperands(a2, &v71, 1uLL);
  }

  if (v70)
  {
    mlir::OperationState::addOperands(a2, &v70, 1uLL);
  }

  if (v69)
  {
    mlir::OperationState::addOperands(a2, &v69, 1uLL);
    v23 = v69 != 0;
  }

  else
  {
    v23 = 0;
  }

  v24.i64[0] = v71;
  v24.i64[1] = v70;
  v25.i64[0] = v73;
  v25.i64[1] = v72;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  v26[3].i64[1] = 0x100000001;
  v27 = vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v24));
  v28.i64[0] = 0x100000001;
  v28.i64[1] = 0x100000001;
  v26[4] = vbicq_s8(v28, v27);
  v26[5].i32[0] = v23;
  v29 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v77 = v29;
  v82 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v83 = &v76;
  v81 = a8;
  v31 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v31);
  v78 = &v81;
  v79 = &v82;
  v80 = &v81;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 32) >> 15) ^ (-348639895 * (v31 ^ (v32 >> 47) ^ v32))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 24) = ParametricStorageTypeImpl;
  v35 = *a1;
  v36 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v77 = v35;
  v82 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v83 = &v76;
  v81 = a9;
  v37 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)));
  v79 = &v82;
  v80 = &v81;
  v78 = &v81;
  v38 = mlir::StorageUniquer::getParametricStorageTypeImpl(v36, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v37 >> 47) ^ v37), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 8) = v38;
  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v77 = v40;
  v82 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v83 = &v76;
  v81 = a10;
  v42 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v81;
  v79 = &v82;
  v80 = &v81;
  v43 = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v42 >> 47) ^ v42), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v44 = *(a2 + 256);
  if (!v44)
  {
    operator new();
  }

  *(v44 + 48) = v43;
  v45 = *a1;
  v46 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v77 = v45;
  v82 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v83 = &v76;
  v81 = a11;
  v47 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)));
  v79 = &v82;
  v80 = &v81;
  v78 = &v81;
  v48 = mlir::StorageUniquer::getParametricStorageTypeImpl(v46, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v47 >> 47) ^ v47), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v49 = *(a2 + 256);
  if (!v49)
  {
    operator new();
  }

  *(v49 + 32) = v48;
  v50 = *a1;
  v51 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v77 = v50;
  v82 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v83 = &v76;
  v81 = a12;
  v52 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)));
  v79 = &v82;
  v80 = &v81;
  v78 = &v81;
  v53 = mlir::StorageUniquer::getParametricStorageTypeImpl(v51, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v52 >> 47) ^ v52), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v54 = *(a2 + 256);
  if (!v54)
  {
    operator new();
  }

  *v54 = v53;
  v55 = *a1;
  v56 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v76 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v77 = v55;
  v82 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v83 = &v76;
  v81 = a13;
  v57 = 0x9DDFEA08EB382D69 * (a13 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a13) | 4) ^ a13 ^ 0xFF51AFD7ED558CCDLL)));
  v79 = &v82;
  v80 = &v81;
  v78 = &v81;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v56, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v57 >> 47) ^ v57), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v80, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v78);
  v60 = *(a2 + 256);
  if (!v60)
  {
    operator new();
  }

  *(v60 + 16) = result;
  if (a14)
  {
    result = mlir::Builder::getUnitAttr(a1, v59);
    v65 = *(a2 + 256);
    if (!v65)
    {
      operator new();
    }

    *(v65 + 40) = result;
    v61 = *(a2 + 72);
    if (v61 >= *(a2 + 76))
    {
LABEL_27:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  else
  {
    v61 = *(a2 + 72);
    if (v61 >= *(a2 + 76))
    {
      goto LABEL_27;
    }
  }

  *(*(a2 + 64) + 8 * v61) = a3;
  v62 = *(a2 + 76);
  v63 = *(a2 + 72) + 1;
  *(a2 + 72) = v63;
  if (v63 >= v62)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v63) = a4;
  v64 = *(a2 + 72) + 1;
  *(a2 + 72) = v64;
  if (a5)
  {
    if (v64 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v64) = a5;
    ++*(a2 + 72);
  }

  return result;
}

void mlir::mps::LSTMOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = a13;
  v87 = *MEMORY[0x277D85DE8];
  v76 = a4;
  v77 = a3;
  v74 = a13;
  v75 = a12;
  v72 = a15;
  v73 = a14;
  v71 = a16;
  mlir::OperationState::addOperands(a2, &v77, 1uLL);
  mlir::OperationState::addOperands(a2, &v76, 1uLL);
  if (a12)
  {
    mlir::OperationState::addOperands(a2, &v75, 1uLL);
    v19 = v74;
  }

  if (v19)
  {
    mlir::OperationState::addOperands(a2, &v74, 1uLL);
  }

  if (v73)
  {
    mlir::OperationState::addOperands(a2, &v73, 1uLL);
  }

  if (v72)
  {
    mlir::OperationState::addOperands(a2, &v72, 1uLL);
  }

  if (v71)
  {
    mlir::OperationState::addOperands(a2, &v71, 1uLL);
    v20 = v71 != 0;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = v73;
  v21.i64[1] = v72;
  v22.i64[0] = v75;
  v22.i64[1] = v74;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  v23[3].i64[1] = 0x100000001;
  v24 = vuzp1q_s32(vceqzq_s64(v22), vceqzq_s64(v21));
  v25.i64[0] = 0x100000001;
  v25.i64[1] = 0x100000001;
  v23[4] = vbicq_s8(v25, v24);
  v23[5].i32[0] = v20;
  v26 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v26;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a5;
  v28 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v29 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v28);
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 32) >> 15) ^ (-348639895 * (v28 ^ (v29 >> 47) ^ v29))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 24) = ParametricStorageTypeImpl;
  v32 = *a1;
  v33 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v32;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a6;
  v34 = 0x9DDFEA08EB382D69 * (a6 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ a6 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ a6 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v35 = mlir::StorageUniquer::getParametricStorageTypeImpl(v33, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v34 >> 47) ^ v34), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v36 = *(a2 + 256);
  if (!v36)
  {
    operator new();
  }

  *(v36 + 8) = v35;
  v37 = *a1;
  v38 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v37;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a7;
  v39 = 0x9DDFEA08EB382D69 * (a7 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ a7 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ a7 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v40 = mlir::StorageUniquer::getParametricStorageTypeImpl(v38, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v39 >> 47) ^ v39), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v41 = *(a2 + 256);
  if (!v41)
  {
    operator new();
  }

  *(v41 + 48) = v40;
  v42 = *a1;
  v43 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v42;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a8;
  v44 = 0x9DDFEA08EB382D69 * (a8 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v45 = mlir::StorageUniquer::getParametricStorageTypeImpl(v43, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v44 >> 47) ^ v44), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v46 = *(a2 + 256);
  if (!v46)
  {
    operator new();
  }

  *(v46 + 32) = v45;
  v47 = *a1;
  v48 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v84 = v47;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a9;
  v49 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v50 = mlir::StorageUniquer::getParametricStorageTypeImpl(v48, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v49 >> 47) ^ v49), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v51 = *(a2 + 256);
  if (!v51)
  {
    operator new();
  }

  *v51 = v50;
  v52 = *a1;
  v53 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v83 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v84 = v52;
  v80 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v81 = &v83;
  v79 = a10;
  v54 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v79;
  v85 = &v79;
  v86 = &v80;
  v55 = mlir::StorageUniquer::getParametricStorageTypeImpl(v53, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v54 >> 47) ^ v54), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v85);
  v57 = *(a2 + 256);
  if (!v57)
  {
    operator new();
  }

  *(v57 + 16) = v55;
  if (a11)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v56);
    v59 = *(a2 + 256);
    if (!v59)
    {
      operator new();
    }

    *(v59 + 40) = UnitAttr;
  }

  v80 = v82;
  v81 = 0x200000000;
  v60 = *a1;
  v61 = *a2;
  mlir::ValueRange::ValueRange(&v85, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v64 = *(a2 + 256);
  mlir::RegionRange::RegionRange(&v83, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::LSTMOp::inferReturnTypes(v60, v61, 1, v85, v86, Dictionary, v64, v65, v83, v84, &v80))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v66 = v81;
  v67 = *(a2 + 72);
  if (v67 + v81 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v81)
  {
    memcpy((*(a2 + 64) + 8 * v67), v80, 8 * v81);
    LODWORD(v67) = *(a2 + 72);
  }

  *(a2 + 72) = v67 + v66;
  if (v80 != v82)
  {
    free(v80);
  }
}

unint64_t mlir::mps::LSTMOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = a15;
  v73 = a6;
  v74 = a5;
  v71 = a15;
  v72 = a14;
  v69 = a17;
  v70 = a16;
  v68 = a18;
  mlir::OperationState::addOperands(a2, &v74, 1uLL);
  mlir::OperationState::addOperands(a2, &v73, 1uLL);
  if (a14)
  {
    mlir::OperationState::addOperands(a2, &v72, 1uLL);
    v22 = v71;
  }

  if (v22)
  {
    mlir::OperationState::addOperands(a2, &v71, 1uLL);
  }

  if (v70)
  {
    mlir::OperationState::addOperands(a2, &v70, 1uLL);
  }

  if (v69)
  {
    mlir::OperationState::addOperands(a2, &v69, 1uLL);
  }

  if (v68)
  {
    mlir::OperationState::addOperands(a2, &v68, 1uLL);
    v23 = v68 != 0;
  }

  else
  {
    v23 = 0;
  }

  v24.i64[0] = v70;
  v24.i64[1] = v69;
  v25.i64[0] = v72;
  v25.i64[1] = v71;
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  v26[3].i64[1] = 0x100000001;
  v27 = vuzp1q_s32(vceqzq_s64(v25), vceqzq_s64(v24));
  v28.i64[0] = 0x100000001;
  v28.i64[1] = 0x100000001;
  v26[4] = vbicq_s8(v28, v27);
  v26[5].i32[0] = v23;
  v29 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v29;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a7;
  v31 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v32 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v31);
  v77 = &v80;
  v78 = &v81;
  v79 = &v80;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 32) >> 15) ^ (-348639895 * (v31 ^ (v32 >> 47) ^ v32))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 24) = ParametricStorageTypeImpl;
  v35 = *a1;
  v36 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v35;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a8;
  v37 = 0x9DDFEA08EB382D69 * (a8 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ a8 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v81;
  v79 = &v80;
  v77 = &v80;
  v38 = mlir::StorageUniquer::getParametricStorageTypeImpl(v36, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v37 >> 47) ^ v37), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 8) = v38;
  v40 = *a1;
  v41 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v40;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a9;
  v42 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL)));
  v77 = &v80;
  v78 = &v81;
  v79 = &v80;
  v43 = mlir::StorageUniquer::getParametricStorageTypeImpl(v41, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v42 >> 47) ^ v42), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v44 = *(a2 + 256);
  v67 = a1;
  if (!v44)
  {
    operator new();
  }

  *(v44 + 48) = v43;
  v45 = *a1;
  v46 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v45;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a10;
  v47 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL)));
  v78 = &v81;
  v79 = &v80;
  v77 = &v80;
  v48 = mlir::StorageUniquer::getParametricStorageTypeImpl(v46, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v47 >> 47) ^ v47), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v49 = *(a2 + 256);
  if (!v49)
  {
    operator new();
  }

  *(v49 + 32) = v48;
  v50 = *a1;
  v51 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v76 = v50;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a11;
  v52 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL)));
  v77 = &v80;
  v78 = &v81;
  v79 = &v80;
  v53 = mlir::StorageUniquer::getParametricStorageTypeImpl(v51, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v52 >> 47) ^ v52), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v54 = *(a2 + 256);
  if (!v54)
  {
    operator new();
  }

  *v54 = v53;
  v55 = *a1;
  v56 = mlir::MLIRContext::getAttributeUniquer(v55);
  v75 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v76 = v55;
  v81 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v82 = &v75;
  v80 = a12;
  v57 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ ((0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL)));
  v77 = &v80;
  v78 = &v81;
  v79 = &v80;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v56, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v57 >> 47) ^ v57), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v79, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v77);
  v60 = *(a2 + 256);
  if (!v60)
  {
    operator new();
  }

  *(v60 + 16) = result;
  if (!a13)
  {
    v61 = *(a2 + 72);
    if (a4 + v61 <= *(a2 + 76))
    {
      goto LABEL_27;
    }

LABEL_34:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  result = mlir::Builder::getUnitAttr(v67, v59);
  v62 = *(a2 + 256);
  if (!v62)
  {
    operator new();
  }

  *(v62 + 40) = result;
  v61 = *(a2 + 72);
  if (a4 + v61 > *(a2 + 76))
  {
    goto LABEL_34;
  }

LABEL_27:
  if (a4)
  {
    v63 = 0;
    v64 = *(a2 + 64) + 8 * v61;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v63);
      *(v64 + 8 * v63++) = result;
    }

    while (a4 != v63);
    LODWORD(v61) = *(a2 + 72);
  }

  *(a2 + 72) = v61 + a4;
  return result;
}

uint64_t mlir::mps::LSTMOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LSTMOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if (!mlir::mps::LSTMOp::inferReturnTypes(v18, v19, 1, a3, a4, v21, v22, v23, v26[0], v26[1], &__src))
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

mlir::MLIRContext *mlir::mps::LSTMOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v17 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v17);
  v4 = result;
  if (a2[3])
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 3;
    v14 = &v17;
    v15 = &v16;
    v13 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[3] = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[6])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v6 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v6, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[1] = result;
  if (a2[6])
  {
LABEL_4:
    if (a2[4])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[6] = result;
  if (a2[4])
  {
LABEL_5:
    if (*a2)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 3;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v8, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0xA8FF7EA0, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  a2[4] = result;
  if (*a2)
  {
LABEL_6:
    if (a2[2])
    {
      return result;
    }

LABEL_13:
    v10 = mlir::MLIRContext::getAttributeUniquer(v4);
    v11 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
    v12 = v4;
    v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v18 = &v11;
    v16 = 0;
    v13 = &v16;
    v14 = &v17;
    v15 = &v16;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(v10, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
    a2[2] = result;
    return result;
  }

LABEL_12:
  v9 = mlir::MLIRContext::getAttributeUniquer(v4);
  v11 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v12 = v4;
  v17 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v18 = &v11;
  v16 = 2;
  v13 = &v16;
  v14 = &v17;
  v15 = &v16;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v9, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, 0x55823EA1u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  *a2 = result;
  if (!a2[2])
  {
    goto LABEL_13;
  }

  return result;
}

BOOL mlir::mps::LSTMOp::verifyInvariantsImpl(mlir::mps::LSTMOp *this)
{
  v92[26] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v7 = v3[10];
  v6 = v3[11];
  v9 = v3[12];
  v8 = v3[13];
  v10 = v3[14];
  v92[0] = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v6, "igate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v5, "fgate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v10, "zgate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v9, "ogate_activation", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(v4, "cell_activation", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps29(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(v7, "gate_layout", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps31(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v92[0] = *this;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v8, "training", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v92) & 1) == 0)
  {
    return 0;
  }

  v91 = 0;
  v11 = *(*this + 44);
  v12 = *(*this + 16 * ((v11 >> 23) & 1) + 120);
  if ((v11 & 0x800000) != 0)
  {
    v13 = *(*this + 72);
    if (v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    if (v12)
    {
LABEL_10:
      v14 = v13 + 24;
      do
      {
        v15 = *this;
        v16 = *(*v14 + 8);
        v17 = v91++;
        if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v15, v16 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v17) & 1) == 0)
        {
          return 0;
        }

        v14 += 32;
      }

      while (--v12);
    }
  }

  ODSOperands = mlir::mps::GRUOp::getODSOperands(this, 1u);
  if (v19)
  {
    v20 = v19;
    v21 = ODSOperands + 24;
    do
    {
      v22 = *this;
      v23 = *(*v21 + 8);
      v24 = v91++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v22, v23 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v24) & 1) == 0)
      {
        return 0;
      }

      v21 += 32;
    }

    while (--v20);
  }

  v25 = mlir::mps::GRUOp::getODSOperands(this, 2u);
  v27 = v26;
  if (v26 >= 2)
  {
    goto LABEL_18;
  }

  if (v26)
  {
    v34 = *(v25 + 24);
    v35 = *this;
    v36 = *(v34 + 8);
    v37 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v35, v36 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v37) & 1) == 0)
    {
      return 0;
    }
  }

  v38 = mlir::mps::GRUOp::getODSOperands(this, 3u);
  v27 = v39;
  if (v39 >= 2)
  {
    goto LABEL_18;
  }

  if (v39)
  {
    v40 = *(v38 + 24);
    v41 = *this;
    v42 = *(v40 + 8);
    v43 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v41, v42 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v43) & 1) == 0)
    {
      return 0;
    }
  }

  v44 = mlir::mps::GRUOp::getODSOperands(this, 4u);
  v27 = v45;
  if (v45 >= 2)
  {
    goto LABEL_18;
  }

  if (v45)
  {
    v46 = *(v44 + 24);
    v47 = *this;
    v48 = *(v46 + 8);
    v49 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v47, v48 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v49) & 1) == 0)
    {
      return 0;
    }
  }

  v50 = mlir::mps::GRUOp::getODSOperands(this, 5u);
  v27 = v51;
  if (v51 >= 2)
  {
    goto LABEL_18;
  }

  if (v51)
  {
    v52 = *(v50 + 24);
    v53 = *this;
    v54 = *(v52 + 8);
    v55 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v53, v54 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v55) & 1) == 0)
    {
      return 0;
    }
  }

  v56 = mlir::mps::GRUOp::getODSOperands(this, 6u);
  v27 = v57;
  if (v57 >= 2)
  {
LABEL_18:
    v28 = "operand group starting at #";
LABEL_19:
    v89 = v28;
    v90 = 259;
    mlir::OpState::emitOpError(this, &v89, v92);
    mlir::InFlightDiagnostic::operator<<<unsigned int &>(v92, &v91);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v29, " requires 0 or 1 element, but found ");
    v88 = v27;
    mlir::InFlightDiagnostic::operator<<<unsigned long &>(v30, &v88);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
    return v32;
  }

  if (v57)
  {
    v60 = *(v56 + 24);
    v61 = *this;
    v62 = *(v60 + 8);
    v63 = v91++;
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps32(v61, (v62 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v63) & 1) == 0)
    {
      return 0;
    }
  }

  v91 = 0;
  ODSResults = mlir::mps::LSTMOp::getODSResults(this, 0, v58, v59);
  if (v65)
  {
    v68 = ODSResults;
    v69 = v65;
    v70 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v68, v70);
      v72 = *this;
      v73 = *(NextResultAtOffset + 8);
      v91 = v70 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v72, v73 & 0xFFFFFFFFFFFFFFF8, "result", 6, v70) & 1) == 0)
      {
        return 0;
      }

      if (v69 == ++v70)
      {
        goto LABEL_43;
      }
    }
  }

  LODWORD(v70) = 0;
LABEL_43:
  v74 = mlir::mps::LSTMOp::getODSResults(this, 1u, v66, v67);
  if (v75)
  {
    v78 = v74;
    v79 = v75;
    v80 = 0;
    while (1)
    {
      v81 = mlir::detail::OpResultImpl::getNextResultAtOffset(v78, v80);
      v82 = *this;
      v83 = *(v81 + 8);
      v84 = v70 + 1;
      v91 = v70 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v82, v83 & 0xFFFFFFFFFFFFFFF8, "result", 6, v70) & 1) == 0)
      {
        return 0;
      }

      ++v80;
      LODWORD(v70) = v70 + 1;
      if (v79 == v80)
      {
        goto LABEL_49;
      }
    }
  }

  v84 = v70;
LABEL_49:
  v85 = mlir::mps::LSTMOp::getODSResults(this, 2u, v76, v77);
  v27 = v86;
  if (v86 >= 2)
  {
    v28 = "result group starting at #";
    goto LABEL_19;
  }

  if (v86)
  {
    v87 = mlir::detail::OpResultImpl::getNextResultAtOffset(v85, 0);
    if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v87 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, v84) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::mps::LeakyReluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::LeakyReluOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v12, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v8 = v15;
  v9 = *(a2 + 72);
  if (v9 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v15)
  {
    memcpy((*(a2 + 64) + 8 * v9), __src, 8 * v15);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LeakyReluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::LeakyReluOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LeakyReluOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
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
  __src = v20;
  v19 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::LeakyReluOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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

uint64_t mlir::mps::LessThanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::LessThanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v15;
  v14 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v12, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v11, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v7 = v14;
  v8 = *(a2 + 72);
  if (v8 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v8), __src, 8 * v14);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v15)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LessThanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::LessThanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LessThanOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

BOOL mlir::mps::LessThanOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::mps::LessThanOrEqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void mlir::mps::LessThanOrEqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a3;
  mlir::OperationState::addOperands(a2, &v10, 1uLL);
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  __src = v15;
  v14 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v12, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v11, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v7 = v14;
  v8 = *(a2 + 72);
  if (v8 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v8), __src, 8 * v14);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + v7;
  if (__src != v15)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LessThanOrEqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

unint64_t mlir::mps::LessThanOrEqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LessThanOrEqualToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

BOOL mlir::mps::LessThanOrEqualToOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
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
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps26(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
}

uint64_t mlir::mps::detail::LocalConvolutionDataGradientOpGenericAdaptorBase::LocalConvolutionDataGradientOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOpAdaptor::verify(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v69 = "'mps.local_convolution_data_gradient' op requires attribute 'data_layout'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v81;
        v17 = __p;
        if (v81 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v81 = v15;
        operator delete(v17);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v19 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v68 = a1[4];
  if (!v68)
  {
    v69 = "'mps.local_convolution_data_gradient' op requires attribute 'dilation_rates'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v81;
        v25 = __p;
        if (v81 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v81 = v23;
        operator delete(v25);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v26 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = *v3;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
      }
    }

    else
    {
      mlir::mps::ConstantOp::getAsAttribute();
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
      }
    }

    v8 = v6;
    v9 = v7;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[2 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 2;
      v9 += ~(v9 >> 1);
      if (v13 < v5)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    if (v8 != &v6[2 * v7] && *v8 == v5)
    {
      v36 = v8[1];
      v69 = v3;
      v70 = v36;
      Type = mlir::ElementsAttr::getType(&v69);
      if (!Type)
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    }

LABEL_64:
    v69 = v3;
    v70 = 0;
    Type = mlir::ElementsAttr::getType(&v69);
    if (!Type)
    {
      goto LABEL_79;
    }

LABEL_67:
    v37 = *Type;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v47 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v47;
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v41 = v39;
    v42 = v40;
    do
    {
      v43 = v42 >> 1;
      v44 = &v41[2 * (v42 >> 1)];
      v46 = *v44;
      v45 = v44 + 2;
      v42 += ~(v42 >> 1);
      if (v46 < v38)
      {
        v41 = v45;
      }

      else
      {
        v42 = v43;
      }
    }

    while (v42);
    if (v41 != &v39[2 * v40] && *v41 == v38)
    {
      v48 = v41[1];
      goto LABEL_80;
    }

LABEL_79:
    v48 = 0;
LABEL_80:
    v74 = Type;
    v75 = v48;
    Shape = mlir::ShapedType::getShape(&v74);
    v73 = 2;
    if (v50 == 1 && *Shape == v73)
    {
      v65 = v3;
      v66 = mlir::DenseElementsAttr::getType(&v65);
      v67 = v51;
      ElementType = mlir::ShapedType::getElementType(&v66);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        if (!v68)
        {
          return 1;
        }

        v69 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v68);
        v70 = v52;
        v73 = mlir::ElementsAttr::getType(&v69);
        v74 = mlir::TensorType::operator mlir::ShapedType(&v73);
        v75 = v53;
        v54 = mlir::ShapedType::getShape(&v74);
        ElementType = 2;
        if (v55 == 1 && *v54 == ElementType)
        {
          v64 = v68;
          v66 = mlir::DenseElementsAttr::getType(&v64);
          v67 = v56;
          v65 = mlir::ShapedType::getElementType(&v66);
          if (mlir::Type::isUnsignedInteger(&v65, 64))
          {
            return 1;
          }
        }

        v69 = "'mps.local_convolution_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {2}";
        v71 = 259;
        mlir::emitError(a2, &v69, &v74);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
        if (v74)
        {
          mlir::InFlightDiagnostic::report(&v74);
        }

        if (v83 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v75);
        }

        return v14;
      }
    }

    v69 = "'mps.local_convolution_data_gradient' op attribute 'kernel_sizes' failed to satisfy constraint: ui64 elements attribute of shape {2}";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v81;
        v59 = __p;
        if (v81 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v81 = v57;
        operator delete(v59);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v60 = v79;
      v20 = v78;
      if (v79 == v78)
      {
LABEL_105:
        v79 = v18;
        operator delete(v20);
LABEL_106:
        if (v76 != &v77)
        {
          free(v76);
        }

        return v14;
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

      while (v60 != v18);
LABEL_104:
      v20 = v78;
      goto LABEL_105;
    }

    return v14;
  }

  v69 = "'mps.local_convolution_data_gradient' op requires attribute 'kernel_sizes'";
  v71 = 259;
  mlir::emitError(a2, &v69, &v74);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
  if (v74)
  {
    mlir::InFlightDiagnostic::report(&v74);
  }

  if (v83 == 1)
  {
    if (v82 != &v83)
    {
      free(v82);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v81;
      v31 = __p;
      if (v81 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v81 = v29;
      operator delete(v31);
    }

    v18 = v78;
    if (!v78)
    {
      goto LABEL_106;
    }

    v32 = v79;
    v20 = v78;
    if (v79 == v78)
    {
      goto LABEL_105;
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
    goto LABEL_104;
  }

  return v14;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_74;
    }

    v27 = v59;
    v19 = v58;
    if (v59 == v58)
    {
LABEL_73:
      v59 = v17;
      operator delete(v19);
LABEL_74:
      if (v54 != &v57)
      {
        free(v54);
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
    goto LABEL_72;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 56;
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
        goto LABEL_74;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
      {
        goto LABEL_73;
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
      goto LABEL_72;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v49, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      v51 = 59;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = v54 + 24 * v55;
      v36 = v50;
      *(v35 + 2) = v51;
      *v35 = v36;
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

        v37 = v54 + 24 * v55;
        v38 = v50;
        *(v37 + 2) = v51;
        *v37 = v38;
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

    v39 = __p;
    if (__p)
    {
      v40 = v61;
      v41 = __p;
      if (v61 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v61 = v39;
      operator delete(v41);
    }

    v17 = v58;
    if (!v58)
    {
      goto LABEL_74;
    }

    v42 = v59;
    v19 = v58;
    if (v59 == v58)
    {
      goto LABEL_73;
    }

    do
    {
      v44 = *--v42;
      v43 = v44;
      *v42 = 0;
      if (v44)
      {
        MEMORY[0x259C63150](v43, 0x1000C8077774924);
      }
    }

    while (v42 != v17);
LABEL_72:
    v19 = v58;
    goto LABEL_73;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v49, "kernel_sizes", 0xCuLL);
  if (!v32)
  {
    return 1;
  }

  v33 = v32;
  if (mlir::DenseIntElementsAttr::classof(v32))
  {
    a1[2] = v33;
    return 1;
  }

  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 57;
    if (v55 >= v56)
    {
      if (v54 > &v50 || v54 + 24 * v55 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v45 = v54 + 24 * v55;
    v46 = v50;
    *(v45 + 2) = v51;
    *v45 = v46;
    ++v55;
    if (v52)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v50, v33);
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = v54 + 24 * v55;
      v48 = v50;
      *(v47 + 2) = v51;
      *v47 = v48;
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

uint64_t mlir::mps::LocalConvolutionDataGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "data_layout", 0xB, *a2);
  if (v20 >= HIDWORD(v20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v19 + 16 * v20);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v20 + 1;
  LODWORD(v20) = v20 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v18, "dilation_rates", 0xE, v7);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v19 + 16 * v20);
    *v10 = v8;
    v10[1] = v9;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v18, "kernel_sizes", 0xC, v11);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v19 + 16 * v20);
    *v14 = v12;
    v14[1] = v13;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

  v15 = v19;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v19 == v21)
    {
      return DictionaryAttr;
    }

    goto LABEL_13;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v18, v19, v6);
  v15 = v19;
  if (v19 != v21)
  {
LABEL_13:
    free(v15);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::LocalConvolutionDataGradientOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "kernel_sizes", 0xCuLL))
    {
      return a2[2];
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

uint64_t mlir::mps::LocalConvolutionDataGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 14)
  {
    result = memcmp(__s1, "dilation_rates", 0xEuLL);
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

        *(v5 + 8) = v8;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "kernel_sizes", 0xCuLL);
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

        *(v5 + 16) = v7;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::LocalConvolutionDataGradientOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
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

    mlir::NamedAttrList::append(a3, "kernel_sizes", 0xCuLL, v6);
  }
}

BOOL mlir::mps::LocalConvolutionDataGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v10, "kernel_sizes", 12, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5)
{
  v72 = *MEMORY[0x277D85DE8];
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
      v51 = v10;
      mlir::mps::ConstantOp::getAsAttribute();
      v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v12 = *(v51 + 8);
      v13 = *(v51 + 16);
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
      *&v56 = a1;
      *(&v56 + 1) = v21;
      Type = mlir::ElementsAttr::getType(&v56);
      if (!Type)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_15:
    v56 = a1;
    Type = mlir::ElementsAttr::getType(&v56);
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
      v50 = v22;
      v52 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v52;
      v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v24 = *(v50 + 8);
      v25 = *(v50 + 16);
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
    v59 = Type;
    v60 = v32;
    Shape = mlir::ShapedType::getShape(&v59);
    v71 = 2;
    if (v34 == 1 && *Shape == v71)
    {
      v53 = a1;
      v54[0] = mlir::DenseElementsAttr::getType(&v53);
      v54[1] = v35;
      ElementType = mlir::ShapedType::getElementType(v54);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }
    }
  }

  a4(&v59, a5);
  if (v59)
  {
    LODWORD(v56) = 3;
    *(&v56 + 1) = "attribute '";
    v57 = 11;
    if (v62 >= v63)
    {
      if (v61 > &v56 || v61 + 24 * v62 <= &v56)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v37 = v61 + 24 * v62;
    v38 = v56;
    *(v37 + 2) = v57;
    *v37 = v38;
    ++v62;
    if (v59)
    {
      v58 = 261;
      *&v56 = a2;
      *(&v56 + 1) = a3;
      mlir::Diagnostic::operator<<(&v60, &v56);
      if (v59)
      {
        LODWORD(v56) = 3;
        *(&v56 + 1) = "' failed to satisfy constraint: ui64 elements attribute of shape {2}";
        v57 = 68;
        if (v62 >= v63)
        {
          if (v61 > &v56 || v61 + 24 * v62 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v39 = v61 + 24 * v62;
        v40 = v56;
        *(v39 + 2) = v57;
        *v39 = v40;
        ++v62;
      }
    }
  }

  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v70 == 1)
  {
    if (v69 != &v70)
    {
      free(v69);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v68;
      v43 = __p;
      if (v68 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v68 = v41;
      operator delete(v43);
    }

    v44 = v65;
    if (v65)
    {
      v45 = v66;
      v46 = v65;
      if (v66 != v65)
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
        v46 = v65;
      }

      v66 = v44;
      operator delete(v46);
    }

    if (v61 != &v64)
    {
      free(v61);
    }
  }

  return v36;
}

BOOL mlir::mps::LocalConvolutionDataGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, (v3 + 16));
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::setDataLayout(uint64_t a1, unsigned int a2)
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

uint64_t mlir::mps::LocalConvolutionDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a5;
  v19 = a4;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a6;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 16) = a7;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a8;
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::LocalConvolutionDataGradientOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 16) = a6;
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = a7;
  __src = v25;
  v24 = 0x200000000;
  v15 = *a1;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = v24;
  v18 = *(a2 + 72);
  if (v18 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v18), __src, 8 * v24);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LocalConvolutionDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a7;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a8;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a9;
  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v23 = a5;
  v24 = a4;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v14 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v14);
  v25[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v25[1] = v14;
  v29[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v29[1] = v25;
  v28 = a6;
  v16 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v16);
  v26[0] = &v28;
  v26[1] = v29;
  v27 = &v28;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 32) >> 15) ^ (-348639895 * (v16 ^ (v17 >> 47) ^ v17))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v26);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = result;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a7;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a8;
  v22 = *(a2 + 72);
  if (v22 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v22) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::LocalConvolutionDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = a4;
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v31[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v31[1] = v12;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v29 = v31;
  v27 = a5;
  v14 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v14);
  v26 = &v27;
  v32 = &v27;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v32);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = ParametricStorageTypeImpl;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a7;
  __src = v30;
  v29 = 0x200000000;
  v20 = *a1;
  mlir::ValueRange::ValueRange(&v32, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v31, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = v29;
  v23 = *(a2 + 72);
  if (v23 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v23), __src, 8 * v29);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v30)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LocalConvolutionDataGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v15 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v15);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v28[1] = v15;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v32[1] = v28;
  v31 = a7;
  v17 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v18 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v17);
  v29[0] = &v31;
  v29[1] = v32;
  v30 = &v31;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 32) >> 15) ^ (-348639895 * (v17 ^ (v18 >> 47) ^ v18))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = result;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a8;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a9;
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

uint64_t mlir::mps::LocalConvolutionDataGradientOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LocalConvolutionDataGradientOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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

  __src = v25;
  v24 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), __src, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

BOOL mlir::mps::LocalConvolutionDataGradientOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = *(v3 + 16);
      if (v6)
      {
        v34[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v2, "data_layout", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v6, "kernel_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34) & 1) == 0)
        {
          return 0;
        }

        v34[0] = *this;
        if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v5, "dilation_rates", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v8 = *this - 16;
        }

        else
        {
          v8 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
        return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
      }

      v32[0] = "requires attribute 'kernel_sizes'";
      v33 = 259;
      mlir::OpState::emitOpError(this, v32, v34);
      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v40;
          v27 = __p;
          if (v40 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v40 = v25;
          operator delete(v27);
        }

        v14 = v37;
        if (!v37)
        {
          goto LABEL_64;
        }

        v28 = v38;
        v16 = v37;
        if (v38 == v37)
        {
LABEL_63:
          v38 = v14;
          operator delete(v16);
LABEL_64:
          if (v35 != &v36)
          {
            free(v35);
          }

          return v10;
        }

        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v28 != v14);
LABEL_62:
        v16 = v37;
        goto LABEL_63;
      }
    }

    else
    {
      v32[0] = "requires attribute 'dilation_rates'";
      v33 = 259;
      mlir::OpState::emitOpError(this, v32, v34);
      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 == 1)
      {
        if (v41 != &v42)
        {
          free(v41);
        }

        v19 = __p;
        if (__p)
        {
          v20 = v40;
          v21 = __p;
          if (v40 != __p)
          {
            do
            {
              v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
            }

            while (v20 != v19);
            v21 = __p;
          }

          v40 = v19;
          operator delete(v21);
        }

        v14 = v37;
        if (!v37)
        {
          goto LABEL_64;
        }

        v22 = v38;
        v16 = v37;
        if (v38 == v37)
        {
          goto LABEL_63;
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
        goto LABEL_62;
      }
    }
  }

  else
  {
    v32[0] = "requires attribute 'data_layout'";
    v33 = 259;
    mlir::OpState::emitOpError(this, v32, v34);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v42 == 1)
    {
      if (v41 != &v42)
      {
        free(v41);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v40;
        v13 = __p;
        if (v40 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v40 = v11;
        operator delete(v13);
      }

      v14 = v37;
      if (!v37)
      {
        goto LABEL_64;
      }

      v15 = v38;
      v16 = v37;
      if (v38 == v37)
      {
        goto LABEL_63;
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
      goto LABEL_62;
    }
  }

  return v10;
}

uint64_t mlir::mps::detail::LocalConvolutionOpGenericAdaptorBase::LocalConvolutionOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  *(a1 + 40) = *(v3 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 44);
  if ((v5 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 48), ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v5 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 48), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::LocalConvolutionOpAdaptor::verify(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  if (!a1[3])
  {
    v69 = "'mps.local_convolution' op requires attribute 'data_layout'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v81;
        v17 = __p;
        if (v81 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v81 = v15;
        operator delete(v17);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v19 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v68 = a1[4];
  if (!v68)
  {
    v69 = "'mps.local_convolution' op requires attribute 'dilation_rates'";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v81;
        v25 = __p;
        if (v81 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v81 = v23;
        operator delete(v25);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v26 = v79;
      v20 = v78;
      if (v79 == v78)
      {
        goto LABEL_105;
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
      goto LABEL_104;
    }

    return v14;
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = *v3;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
      }
    }

    else
    {
      mlir::mps::ConstantOp::getAsAttribute();
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_64;
      }
    }

    v8 = v6;
    v9 = v7;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[2 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 2;
      v9 += ~(v9 >> 1);
      if (v13 < v5)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    if (v8 != &v6[2 * v7] && *v8 == v5)
    {
      v36 = v8[1];
      v69 = v3;
      v70 = v36;
      Type = mlir::ElementsAttr::getType(&v69);
      if (!Type)
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    }

LABEL_64:
    v69 = v3;
    v70 = 0;
    Type = mlir::ElementsAttr::getType(&v69);
    if (!Type)
    {
      goto LABEL_79;
    }

LABEL_67:
    v37 = *Type;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v47 = Type;
      mlir::mps::ConstantOp::verify();
      Type = v47;
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_79;
      }
    }

    v41 = v39;
    v42 = v40;
    do
    {
      v43 = v42 >> 1;
      v44 = &v41[2 * (v42 >> 1)];
      v46 = *v44;
      v45 = v44 + 2;
      v42 += ~(v42 >> 1);
      if (v46 < v38)
      {
        v41 = v45;
      }

      else
      {
        v42 = v43;
      }
    }

    while (v42);
    if (v41 != &v39[2 * v40] && *v41 == v38)
    {
      v48 = v41[1];
      goto LABEL_80;
    }

LABEL_79:
    v48 = 0;
LABEL_80:
    v74 = Type;
    v75 = v48;
    Shape = mlir::ShapedType::getShape(&v74);
    v73 = 2;
    if (v50 == 1 && *Shape == v73)
    {
      v65 = v3;
      v66 = mlir::DenseElementsAttr::getType(&v65);
      v67 = v51;
      ElementType = mlir::ShapedType::getElementType(&v66);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        if (!v68)
        {
          return 1;
        }

        v69 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v68);
        v70 = v52;
        v73 = mlir::ElementsAttr::getType(&v69);
        v74 = mlir::TensorType::operator mlir::ShapedType(&v73);
        v75 = v53;
        v54 = mlir::ShapedType::getShape(&v74);
        ElementType = 2;
        if (v55 == 1 && *v54 == ElementType)
        {
          v64 = v68;
          v66 = mlir::DenseElementsAttr::getType(&v64);
          v67 = v56;
          v65 = mlir::ShapedType::getElementType(&v66);
          if (mlir::Type::isUnsignedInteger(&v65, 64))
          {
            return 1;
          }
        }

        v69 = "'mps.local_convolution' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {2}";
        v71 = 259;
        mlir::emitError(a2, &v69, &v74);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
        if (v74)
        {
          mlir::InFlightDiagnostic::report(&v74);
        }

        if (v83 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v75);
        }

        return v14;
      }
    }

    v69 = "'mps.local_convolution' op attribute 'kernel_sizes' failed to satisfy constraint: ui64 elements attribute of shape {2}";
    v71 = 259;
    mlir::emitError(a2, &v69, &v74);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v81;
        v59 = __p;
        if (v81 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v81 = v57;
        operator delete(v59);
      }

      v18 = v78;
      if (!v78)
      {
        goto LABEL_106;
      }

      v60 = v79;
      v20 = v78;
      if (v79 == v78)
      {
LABEL_105:
        v79 = v18;
        operator delete(v20);
LABEL_106:
        if (v76 != &v77)
        {
          free(v76);
        }

        return v14;
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

      while (v60 != v18);
LABEL_104:
      v20 = v78;
      goto LABEL_105;
    }

    return v14;
  }

  v69 = "'mps.local_convolution' op requires attribute 'kernel_sizes'";
  v71 = 259;
  mlir::emitError(a2, &v69, &v74);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
  if (v74)
  {
    mlir::InFlightDiagnostic::report(&v74);
  }

  if (v83 == 1)
  {
    if (v82 != &v83)
    {
      free(v82);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v81;
      v31 = __p;
      if (v81 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v81 = v29;
      operator delete(v31);
    }

    v18 = v78;
    if (!v78)
    {
      goto LABEL_106;
    }

    v32 = v79;
    v20 = v78;
    if (v79 == v78)
    {
      goto LABEL_105;
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
    goto LABEL_104;
  }

  return v14;
}

uint64_t mlir::mps::LocalConvolutionOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      goto LABEL_74;
    }

    v27 = v59;
    v19 = v58;
    if (v59 == v58)
    {
LABEL_73:
      v59 = v17;
      operator delete(v19);
LABEL_74:
      if (v54 != &v57)
      {
        free(v54);
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
    goto LABEL_72;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "data_layout", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 56;
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
        goto LABEL_74;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
      {
        goto LABEL_73;
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
      goto LABEL_72;
    }

    *a1 = v8;
  }

  v30 = mlir::DictionaryAttr::get(&v49, "dilation_rates", 0xEuLL);
  if (v30)
  {
    v31 = v30;
    if (mlir::DenseIntElementsAttr::classof(v30))
    {
      a1[1] = v31;
      goto LABEL_49;
    }

    a3(&v52, a4);
    if (v52)
    {
      LODWORD(v50) = 3;
      v51 = 59;
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = v54 + 24 * v55;
      v36 = v50;
      *(v35 + 2) = v51;
      *v35 = v36;
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

        v37 = v54 + 24 * v55;
        v38 = v50;
        *(v37 + 2) = v51;
        *v37 = v38;
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

    v39 = __p;
    if (__p)
    {
      v40 = v61;
      v41 = __p;
      if (v61 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v61 = v39;
      operator delete(v41);
    }

    v17 = v58;
    if (!v58)
    {
      goto LABEL_74;
    }

    v42 = v59;
    v19 = v58;
    if (v59 == v58)
    {
      goto LABEL_73;
    }

    do
    {
      v44 = *--v42;
      v43 = v44;
      *v42 = 0;
      if (v44)
      {
        MEMORY[0x259C63150](v43, 0x1000C8077774924);
      }
    }

    while (v42 != v17);
LABEL_72:
    v19 = v58;
    goto LABEL_73;
  }

LABEL_49:
  v32 = mlir::DictionaryAttr::get(&v49, "kernel_sizes", 0xCuLL);
  if (!v32)
  {
    return 1;
  }

  v33 = v32;
  if (mlir::DenseIntElementsAttr::classof(v32))
  {
    a1[2] = v33;
    return 1;
  }

  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 57;
    if (v55 >= v56)
    {
      if (v54 > &v50 || v54 + 24 * v55 <= &v50)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v45 = v54 + 24 * v55;
    v46 = v50;
    *(v45 + 2) = v51;
    *v45 = v46;
    ++v55;
    if (v52)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v50, v33);
      if (v55 >= v56)
      {
        if (v54 > &v50 || v54 + 24 * v55 <= &v50)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v47 = v54 + 24 * v55;
      v48 = v50;
      *(v47 + 2) = v51;
      *v47 = v48;
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

uint64_t mlir::mps::LocalConvolutionOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v19 = v21;
  v20 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v18, "data_layout", 0xB, *a2);
  if (v20 >= HIDWORD(v20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v19 + 16 * v20);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v20 + 1;
  LODWORD(v20) = v20 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v18, "dilation_rates", 0xE, v7);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v19 + 16 * v20);
    *v10 = v8;
    v10[1] = v9;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v18, "kernel_sizes", 0xC, v11);
    if (v20 >= HIDWORD(v20))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v19 + 16 * v20);
    *v14 = v12;
    v14[1] = v13;
    v6 = v20 + 1;
    LODWORD(v20) = v20 + 1;
  }

  v15 = v19;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v19 == v21)
    {
      return DictionaryAttr;
    }

    goto LABEL_13;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v18, v19, v6);
  v15 = v19;
  if (v19 != v21)
  {
LABEL_13:
    free(v15);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::LocalConvolutionOp::computePropertiesHash(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v12[0] = v3;
  v12[1] = v6;
  v11 = 0;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v12, &v11, v13, v14, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v12, v11, v9, v14);
}

uint64_t mlir::mps::LocalConvolutionOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 14)
  {
    if (!memcmp(__s1, "dilation_rates", 0xEuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "kernel_sizes", 0xCuLL))
    {
      return a2[2];
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

uint64_t mlir::mps::LocalConvolutionOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 14)
  {
    result = memcmp(__s1, "dilation_rates", 0xEuLL);
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

        *(v5 + 8) = v8;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "kernel_sizes", 0xCuLL);
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

        *(v5 + 16) = v7;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 11 && *__s1 == 0x79616C5F61746164 && *(__s1 + 3) == 0x74756F79616C5F61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::mps::LocalConvolutionOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
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

    mlir::NamedAttrList::append(a3, "kernel_sizes", 0xCuLL, v6);
  }
}

BOOL mlir::mps::LocalConvolutionOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps12(v8, "data_layout", 11, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v9, "dilation_rates", 14, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps32(v10, "kernel_sizes", 12, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::mps::LocalConvolutionOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256)) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, (v3 + 16));
}

uint64_t mlir::mps::LocalConvolutionOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::LocalConvolutionOp::setDataLayout(uint64_t a1, unsigned int a2)
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

uint64_t mlir::mps::LocalConvolutionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a5;
  v19 = a4;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v18, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a6;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 16) = a7;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a8;
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::LocalConvolutionOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v19 = a4;
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a5;
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 16) = a6;
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = a7;
  __src = v25;
  v24 = 0x200000000;
  v15 = *a1;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v21, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = v24;
  v18 = *(a2 + 72);
  if (v18 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v18), __src, 8 * v24);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LocalConvolutionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a7;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 16) = a8;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a9;
  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

uint64_t mlir::mps::LocalConvolutionOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v23 = a5;
  v24 = a4;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v14 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v14);
  v25[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v25[1] = v14;
  v29[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v29[1] = v25;
  v28 = a6;
  v16 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v16);
  v26[0] = &v28;
  v26[1] = v29;
  v27 = &v28;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 32) >> 15) ^ (-348639895 * (v16 ^ (v17 >> 47) ^ v17))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v26);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = result;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 16) = a7;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 8) = a8;
  v22 = *(a2 + 72);
  if (v22 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v22) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::LocalConvolutionOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = a4;
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v12 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v31[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v31[1] = v12;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v29 = v31;
  v27 = a5;
  v14 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v14);
  v26 = &v27;
  v32 = &v27;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v32);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *v17 = ParametricStorageTypeImpl;
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 16) = a6;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 8) = a7;
  __src = v30;
  v29 = 0x200000000;
  v20 = *a1;
  mlir::ValueRange::ValueRange(&v32, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v31, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = v29;
  v23 = *(a2 + 72);
  if (v23 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v23), __src, 8 * v29);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v22;
  if (__src != v30)
  {
    free(__src);
  }
}

unint64_t mlir::mps::LocalConvolutionOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v26 = a6;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v15 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v15);
  v28[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v28[1] = v15;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v32[1] = v28;
  v31 = a7;
  v17 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v18 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v17);
  v29[0] = &v31;
  v29[1] = v32;
  v30 = &v31;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 32) >> 15) ^ (-348639895 * (v17 ^ (v18 >> 47) ^ v18))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v30, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = result;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a8;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a9;
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

uint64_t mlir::mps::LocalConvolutionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::LocalConvolutionOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v25[2] = *MEMORY[0x277D85DE8];
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

  __src = v25;
  v24 = 0x200000000;
  v18 = *a1;
  v19 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v19);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), __src, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}