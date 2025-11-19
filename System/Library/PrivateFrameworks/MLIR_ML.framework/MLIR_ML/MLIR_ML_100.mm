uint64_t mlir::mps::PruningOp::getInherentAttr(int a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 8)
  {
    if (!memcmp(__s1, "sparsity", 8uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 17)
  {
    if (!memcmp(__s1, "pruning_structure", 0x11uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x5F676E696E757270 || *(__s1 + 6) != 0x63697274656D5F67)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::mps::PruningOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 8)
  {
    result = memcmp(__s1, "sparsity", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *(v5 + 16) = v8;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 17)
  {
    result = memcmp(__s1, "pruning_structure", 0x11uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 8) = v7;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 14 && *__s1 == 0x5F676E696E757270 && *(__s1 + 6) == 0x63697274656D5F67)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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

void mlir::mps::PruningOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "pruning_metric", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "pruning_structure", 0x11uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "sparsity", 8uLL, v6);
  }
}

BOOL mlir::mps::PruningOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v8, "pruning_metric", 14, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v9, "pruning_structure", 17, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "sparsity", 8, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::mps::PruningOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, (v3 + 16));
}

uint64_t mlir::mps::PruningOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::mps::PruningOp::setPruningMetric(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::PruningOp::setPruningStructure(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::PruningOp::setSparsity(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::PruningOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a4;
  result = mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a5)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a5;
  }

  if (a6)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *(v14 + 8) = a6;
  }

  if (a7)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 16) = a7;
  }

  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v16) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PruningOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  if (a4)
  {
    v10 = *(a2 + 256);
    if (!v10)
    {
      operator new();
    }

    *v10 = a4;
  }

  if (a5)
  {
    v11 = *(a2 + 256);
    if (!v11)
    {
      operator new();
    }

    *(v11 + 8) = a5;
  }

  if (a6)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *(v12 + 16) = a6;
  }

  __src = v23;
  v22 = 0x200000000;
  mlir::ValueRange::ValueRange(&v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v19, *(a2 + 224), *(a2 + 232));
  v24 = v20;
  if (v22 != 1)
  {
    if (!v22)
    {
      if (!HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v22) = 1;
  }

  v14 = mlir::ValueRange::dereference_iterator(&v24, 0);
  v15 = __src;
  *__src = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = v22;
  v17 = *(a2 + 72);
  if (v17 + v22 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v22)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v22);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v23)
  {
    free(__src);
  }
}

uint64_t mlir::mps::PruningOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

unint64_t mlir::mps::PruningOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a5;
  result = mlir::OperationState::addOperands(a2, &v21, 1uLL);
  if (a6)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a6;
  }

  if (a7)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 8) = a7;
  }

  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 16) = a8;
  }

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

uint64_t mlir::mps::PruningOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v30 = a4;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v11 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v31 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v32 = v11;
  v37 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38 = &v31;
  v36 = a5;
  v13 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v13);
  v33 = &v36;
  v34 = &v37;
  v35 = &v36;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v35, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v33);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = ParametricStorageTypeImpl;
  v17 = *a1;
  v18 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v31 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v32 = v17;
  v37 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38 = &v31;
  v36 = a6;
  v19 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v19);
  v34 = &v37;
  v35 = &v36;
  v33 = &v36;
  v22 = mlir::StorageUniquer::getParametricStorageTypeImpl(v18, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v35, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v33);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = v22;
  F32Type = mlir::Builder::getF32Type(a1, v21);
  result = mlir::Builder::getFloatAttr(a1, F32Type, a7);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 16) = result;
  v27 = *(a2 + 72);
  if (v27 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v27) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::PruningOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = a3;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v10 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v38 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  *(&v38 + 1) = v10;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v36 = &v38;
  v33 = a4;
  v12 = a4 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (((8 * a4) | 4) ^ v12);
  v34[0] = &v33;
  *&v39 = &v33;
  *(&v39 + 1) = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v34, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v39);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = ParametricStorageTypeImpl;
  v16 = *a1;
  v17 = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v38 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  *(&v38 + 1) = v16;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v36 = &v38;
  v33 = a5;
  v18 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v19 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v18);
  v34[0] = &v33;
  *&v39 = &v33;
  *(&v39 + 1) = &__src;
  v21 = mlir::StorageUniquer::getParametricStorageTypeImpl(v17, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 32) >> 15) ^ (-348639895 * (v18 ^ (v19 >> 47) ^ v19))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v34, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v39);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = v21;
  F32Type = mlir::Builder::getF32Type(a1, v20);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 16) = FloatAttr;
  __src = v37;
  v36 = 0x200000000;
  mlir::ValueRange::ValueRange(&v38, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(v34, *(a2 + 224), *(a2 + 232));
  v39 = v38;
  if (v36 != 1)
  {
    if (!v36)
    {
      if (!HIDWORD(v36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v36) = 1;
  }

  v27 = mlir::ValueRange::dereference_iterator(&v39, 0);
  v28 = __src;
  *__src = *(v27 + 8) & 0xFFFFFFFFFFFFFFF8;
  v29 = v36;
  v30 = *(a2 + 72);
  if (v30 + v36 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    memcpy((*(a2 + 64) + 8 * v30), v28, 8 * v36);
    LODWORD(v30) = *(a2 + 72);
  }

  *(a2 + 72) = v30 + v29;
  if (__src != v37)
  {
    free(__src);
  }
}

unint64_t mlir::mps::PruningOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8)
{
  v34 = a5;
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  v13 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  v35 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v36 = v13;
  v41 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v42 = &v35;
  v40 = a6;
  v15 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v16 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v15);
  v37 = &v40;
  v38 = &v41;
  v39 = &v40;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 32) >> 15) ^ (-348639895 * (v15 ^ (v16 >> 47) ^ v16))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v37);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = ParametricStorageTypeImpl;
  v19 = *a1;
  v20 = mlir::MLIRContext::getAttributeUniquer(*a1);
  v35 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v36 = v19;
  v41 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v42 = &v35;
  v40 = a7;
  v21 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v22 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v21);
  v38 = &v41;
  v39 = &v40;
  v37 = &v40;
  v24 = mlir::StorageUniquer::getParametricStorageTypeImpl(v20, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 32) >> 15) ^ (-348639895 * (v21 ^ (v22 >> 47) ^ v22))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v37);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 8) = v24;
  F32Type = mlir::Builder::getF32Type(a1, v23);
  result = mlir::Builder::getFloatAttr(a1, F32Type, a8);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 16) = result;
  v29 = *(a2 + 72);
  if (a4 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v30 = 0;
    v31 = *(a2 + 64) + 8 * v29;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v30);
      *(v31 + 8 * v30++) = result;
    }

    while (a4 != v30);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + a4;
  return result;
}

uint64_t mlir::mps::PruningOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::PruningOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  v26[0] = a3;
  v26[1] = a4;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(v26, 0);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

mlir::Float32Type *mlir::mps::PruningOp::populateDefaultProperties(uint64_t a1, mlir::Float32Type **a2)
{
  v16 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v16);
  v5 = result;
  v9 = result;
  if (*a2)
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v10 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
    v11 = v5;
    v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v17 = &v10;
    v15 = 0;
    v13 = &v16;
    v14 = &v15;
    v12 = &v15;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
    *a2 = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[2])
      {
        return result;
      }

LABEL_7:
      F32Type = mlir::Builder::getF32Type(&v9, v4);
      result = mlir::Builder::getFloatAttr(0.5, &v9, F32Type);
      a2[2] = result;
      return result;
    }
  }

  v7 = mlir::MLIRContext::getAttributeUniquer(v5);
  v10 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v11 = v5;
  v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v17 = &v10;
  v15 = 1;
  v12 = &v15;
  v13 = &v16;
  v14 = &v15;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, 0x17790227u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  a2[1] = result;
  if (!a2[2])
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mlir::mps::PruningOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v10 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v4, "pruning_metric", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v5, "pruning_structure", 17, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "sparsity", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
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

uint64_t mlir::mps::detail::QuantizeOpGenericAdaptorBase::QuantizeOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::detail::QuantizeOpGenericAdaptorBase::getAxis(mlir::mps::detail::QuantizeOpGenericAdaptorBase *this)
{
  v6 = *(this + 3);
  if (!v6)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v6, &v4);
  if (v5 > 0x40)
  {
    v3 = *v4;
    MEMORY[0x259C63150]();
    return v3 | 0x100000000;
  }

  else
  {
    if (v5)
    {
      v1 = (v4 << -v5) >> -v5;
    }

    else
    {
      LODWORD(v1) = 0;
    }

    return v1 | 0x100000000;
  }
}

uint64_t mlir::mps::QuantizeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v43, "axis", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v9 = v8;
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

  v30 = mlir::DictionaryAttr::get(&v43, "dtype", 5uLL);
  if (!v30)
  {
    return 1;
  }

  if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

uint64_t mlir::mps::QuantizeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "axis", 4, *a2);
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

  v11 = mlir::Builder::getNamedAttr(&v14, "dtype", 5, v7);
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

unint64_t mlir::mps::QuantizeOp::computePropertiesHash(void *a1)
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

unint64_t mlir::mps::QuantizeOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 5)
  {
    if (a4 == 4 && *a3 == 1936291937)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1887007844 || *(a3 + 4) != 101)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::mps::QuantizeOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 5)
  {
    if (*a2 == 1887007844 && *(a2 + 4) == 101)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

  else if (a3 == 4 && *a2 == 1936291937)
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

void mlir::mps::QuantizeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "axis", 4uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "dtype", 5uLL, v5);
  }
}

BOOL mlir::mps::QuantizeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v8, "axis", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v9, "dtype", 5, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::mps::QuantizeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::QuantizeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 24))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::mps::QuantizeOp::getAxis(mlir::mps::QuantizeOp *this)
{
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v6, &v4);
  if (v5 > 0x40)
  {
    v3 = *v4;
    MEMORY[0x259C63150]();
    return v3 | 0x100000000;
  }

  else
  {
    if (v5)
    {
      v1 = (v4 << -v5) >> -v5;
    }

    else
    {
      LODWORD(v1) = 0;
    }

    return v1 | 0x100000000;
  }
}

uint64_t mlir::mps::QuantizeOp::setDtype(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::QuantizeOp::setAxis(uint64_t result, uint64_t a2)
{
  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if ((a2 & 0x100000000) != 0)
  {
    v3 = a2;
    v4 = result;
    Context = mlir::Attribute::getContext((*result + 24));
    v6 = mlir::Attribute::getContext((*v4 + 24));
    IntegerType = mlir::Builder::getIntegerType(&v6, 32, 1);
    result = mlir::Builder::getIntegerAttr(&Context, IntegerType, v3);
    *(v2 + 64) = result;
  }

  else
  {
    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t mlir::mps::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  *(v13 + 8) = a7;
  if (a8)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a8;
  }

  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

{
  v17 = a5;
  v18 = a4;
  v16 = a6;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::TypeAttr::get(a7);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 8) = result;
  if (a8)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a8;
  }

  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::QuantizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v23 = a4;
  v24 = a3;
  v22 = a5;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 8) = a6;
  if (a7)
  {
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    *v12 = a7;
  }

  __src = v29;
  v28 = 0x200000000;
  v13 = *a1;
  mlir::ValueRange::ValueRange(v26, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v25, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::QuantizeOp::inferReturnTypes(v13, v17, v18, v26[0], v26[1], Dictionary, v16, v19, v25[0], v25[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = v28;
  v21 = *(a2 + 72);
  if (v21 + v28 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v28)
  {
    memcpy((*(a2 + 64) + 8 * v21), __src, 8 * v28);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v29)
  {
    free(__src);
  }
}

{
  v30[2] = *MEMORY[0x277D85DE8];
  v24 = a4;
  v25 = a3;
  v23 = a5;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v11 = mlir::TypeAttr::get(a6);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 8) = v11;
  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *v13 = a7;
  }

  __src = v30;
  v29 = 0x200000000;
  v14 = *a1;
  mlir::ValueRange::ValueRange(v27, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v17 = *(a2 + 256);
  mlir::RegionRange::RegionRange(v26, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::QuantizeOp::inferReturnTypes(v14, v18, v19, v27[0], v27[1], Dictionary, v17, v20, v26[0], v26[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v21 = v29;
  v22 = *(a2 + 72);
  if (v22 + v29 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v29)
  {
    memcpy((*(a2 + 64) + 8 * v22), __src, 8 * v29);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (__src != v30)
  {
    free(__src);
  }
}

unint64_t mlir::mps::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

  *(v14 + 8) = a8;
  if (a9)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a9;
  }

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

{
  v20 = a6;
  v21 = a5;
  v19 = a7;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  result = mlir::TypeAttr::get(a8);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 8) = result;
  if (a9)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *v15 = a9;
  }

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

uint64_t mlir::mps::QuantizeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::QuantizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::QuantizeOp::inferReturnTypes(v18, v22, v23, a3, a4, v20, v21, v24, v27[0], v27[1], &__src) & 1) == 0)
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

BOOL mlir::mps::QuantizeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v172 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v160 = v2;
    if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v4, "dtype", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v160) & 1) == 0)
    {
      return 0;
    }

    v160 = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v5, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v160) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v6 = *this;
    v7 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    if (*(*v7 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_88;
    }

    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = v8[1];
      v11 = *(v8 + 4);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = v8[1];
      v11 = *(v8 + 4);
      if (v11)
      {
LABEL_8:
        v12 = v10;
        v13 = v11;
        do
        {
          v14 = v13 >> 1;
          v15 = &v12[2 * (v13 >> 1)];
          v17 = *v15;
          v16 = v15 + 2;
          v13 += ~(v13 >> 1);
          if (v17 < v9)
          {
            v12 = v16;
          }

          else
          {
            v13 = v14;
          }
        }

        while (v13);
LABEL_36:
        if (v12 != &v10[2 * v11] && *v12 == v9)
        {
          v27 = v12[1];
          v160 = v7;
          v161 = v27;
          if (!mlir::ShapedType::hasRank(&v160))
          {
            goto LABEL_88;
          }
        }

        else
        {
          v160 = v7;
          v161 = 0;
          if (!mlir::ShapedType::hasRank(&v160))
          {
            goto LABEL_88;
          }
        }

        v28 = *v7;
        {
          v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v30 = v28[1];
          v31 = *(v28 + 4);
          if (v31)
          {
            goto LABEL_43;
          }
        }

        else
        {
          mlir::mps::ConstantOp::verify();
          v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v30 = v28[1];
          v31 = *(v28 + 4);
          if (v31)
          {
LABEL_43:
            v32 = v30;
            v33 = v31;
            do
            {
              v34 = v33 >> 1;
              v35 = &v32[2 * (v33 >> 1)];
              v37 = *v35;
              v36 = v35 + 2;
              v33 += ~(v33 >> 1);
              if (v37 < v29)
              {
                v32 = v36;
              }

              else
              {
                v33 = v34;
              }
            }

            while (v33);
LABEL_51:
            if (v32 != &v30[2 * v31] && *v32 == v29)
            {
              v38 = v32[1];
            }

            else
            {
              v38 = 0;
            }

            v152 = v7;
            v153 = v38;
            mlir::ShapedType::getShape(&v152);
            if (!v39)
            {
LABEL_71:
              v52 = *v7;
              {
                v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v54 = v52[1];
                v55 = *(v52 + 4);
                if (v55)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                mlir::mps::ConstantOp::verify();
                v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v54 = v52[1];
                v55 = *(v52 + 4);
                if (v55)
                {
LABEL_73:
                  v56 = v54;
                  v57 = v55;
                  do
                  {
                    v58 = v57 >> 1;
                    v59 = &v56[2 * (v57 >> 1)];
                    v61 = *v59;
                    v60 = v59 + 2;
                    v57 += ~(v57 >> 1);
                    if (v61 < v53)
                    {
                      v56 = v60;
                    }

                    else
                    {
                      v57 = v58;
                    }
                  }

                  while (v57);
LABEL_81:
                  if (v56 != &v54[2 * v55] && *v56 == v53)
                  {
                    v62 = v56[1];
                  }

                  else
                  {
                    v62 = 0;
                  }

                  v155 = v7;
                  v156 = v62;
                  ElementType = mlir::ShapedType::getElementType(&v155);
                  if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType))
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_88;
                }
              }

              v55 = 0;
              v56 = v54;
              goto LABEL_81;
            }

            v40 = *v7;
            {
              v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v42 = v40[1];
              v43 = *(v40 + 4);
              if (v43)
              {
                goto LABEL_58;
              }
            }

            else
            {
              mlir::mps::ConstantOp::verify();
              v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v42 = v40[1];
              v43 = *(v40 + 4);
              if (v43)
              {
LABEL_58:
                v44 = v42;
                v45 = v43;
                do
                {
                  v46 = v45 >> 1;
                  v47 = &v44[2 * (v45 >> 1)];
                  v49 = *v47;
                  v48 = v47 + 2;
                  v45 += ~(v45 >> 1);
                  if (v49 < v41)
                  {
                    v44 = v48;
                  }

                  else
                  {
                    v45 = v46;
                  }
                }

                while (v45);
LABEL_66:
                if (v44 != &v42[2 * v43] && *v44 == v41)
                {
                  v50 = v44[1];
                }

                else
                {
                  v50 = 0;
                }

                *&v158 = v7;
                *(&v158 + 1) = v50;
                mlir::ShapedType::getShape(&v158);
                if (v51 == 1)
                {
                  goto LABEL_71;
                }

LABEL_88:
                v154 = 261;
                v152 = "operand";
                v153 = 7;
                mlir::Operation::emitOpError(&v160, v6, &v152);
                if (v160)
                {
                  LODWORD(v158) = 3;
                  *(&v158 + 1) = " #";
                  v159 = 2;
                  if (v163 >= v164)
                  {
                    if (v162 > &v158 || v162 + 24 * v163 <= &v158)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v63 = v162 + 24 * v163;
                  v64 = v158;
                  *(v63 + 2) = v159;
                  *v63 = v64;
                  v65 = ++v163;
                  if (v160)
                  {
                    LODWORD(v158) = 5;
                    *(&v158 + 1) = 1;
                    if (v65 >= v164)
                    {
                      if (v162 > &v158 || v162 + 24 * v65 <= &v158)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v66 = v162 + 24 * v163;
                    v67 = v158;
                    *(v66 + 2) = v159;
                    *v66 = v67;
                    v68 = ++v163;
                    if (v160)
                    {
                      LODWORD(v158) = 3;
                      *(&v158 + 1) = " must be 0D/1D tensor of floating point values, but got ";
                      v159 = 56;
                      if (v68 >= v164)
                      {
                        if (v162 > &v158 || v162 + 24 * v68 <= &v158)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v69 = v162 + 24 * v163;
                      v70 = v158;
                      *(v69 + 2) = v159;
                      *v69 = v70;
                      ++v163;
                      if (v160)
                      {
                        mlir::DiagnosticArgument::DiagnosticArgument(&v158, v7);
                        if (v163 >= v164)
                        {
                          if (v162 > &v158 || v162 + 24 * v163 <= &v158)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v71 = v162 + 24 * v163;
                        v72 = v158;
                        *(v71 + 2) = v159;
                        *v71 = v72;
                        ++v163;
                      }
                    }
                  }
                }

                v73 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v160);
                if (v160)
                {
                  mlir::InFlightDiagnostic::report(&v160);
                }

                if (v171 == 1)
                {
                  if (v170 != &v171)
                  {
                    free(v170);
                  }

                  v74 = __p;
                  if (__p)
                  {
                    v75 = v169;
                    v76 = __p;
                    if (v169 != __p)
                    {
                      do
                      {
                        v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
                      }

                      while (v75 != v74);
                      v76 = __p;
                    }

                    v169 = v74;
                    operator delete(v76);
                  }

                  v77 = v166;
                  if (v166)
                  {
                    v78 = v167;
                    v79 = v166;
                    if (v167 != v166)
                    {
                      do
                      {
                        v81 = *--v78;
                        v80 = v81;
                        *v78 = 0;
                        if (v81)
                        {
                          MEMORY[0x259C63150](v80, 0x1000C8077774924);
                        }
                      }

                      while (v78 != v77);
                      v79 = v166;
                    }

                    v167 = v77;
                    operator delete(v79);
                  }

                  if (v162 != v165)
                  {
                    free(v162);
                  }
                }

                if (!v73)
                {
                  return 0;
                }

LABEL_118:
                v82 = *this;
                v83 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
                v84 = *v83;
                if (*(*v83 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                {
                  goto LABEL_204;
                }

                {
                  v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v86 = v84[1];
                  v87 = *(v84 + 4);
                  if (v87)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  mlir::mps::ConstantOp::verify();
                  v85 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v86 = v84[1];
                  v87 = *(v84 + 4);
                  if (v87)
                  {
LABEL_121:
                    v88 = v86;
                    v89 = v87;
                    do
                    {
                      v90 = v89 >> 1;
                      v91 = &v88[2 * (v89 >> 1)];
                      v93 = *v91;
                      v92 = v91 + 2;
                      v89 += ~(v89 >> 1);
                      if (v93 < v85)
                      {
                        v88 = v92;
                      }

                      else
                      {
                        v89 = v90;
                      }
                    }

                    while (v89);
LABEL_141:
                    if (v88 != &v86[2 * v87] && *v88 == v85)
                    {
                      v94 = v88[1];
                    }

                    else
                    {
                      v94 = 0;
                    }

                    v160 = v83;
                    v161 = v94;
                    if (!mlir::ShapedType::hasRank(&v160))
                    {
                      goto LABEL_204;
                    }

                    v95 = *v83;
                    {
                      v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                      v97 = v95[1];
                      v98 = *(v95 + 4);
                      if (v98)
                      {
                        goto LABEL_148;
                      }
                    }

                    else
                    {
                      mlir::mps::ConstantOp::verify();
                      v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                      v97 = v95[1];
                      v98 = *(v95 + 4);
                      if (v98)
                      {
LABEL_148:
                        v99 = v97;
                        v100 = v98;
                        do
                        {
                          v101 = v100 >> 1;
                          v102 = &v99[2 * (v100 >> 1)];
                          v104 = *v102;
                          v103 = v102 + 2;
                          v100 += ~(v100 >> 1);
                          if (v104 < v96)
                          {
                            v99 = v103;
                          }

                          else
                          {
                            v100 = v101;
                          }
                        }

                        while (v100);
LABEL_157:
                        if (v99 != &v97[2 * v98] && *v99 == v96)
                        {
                          v105 = v99[1];
                        }

                        else
                        {
                          v105 = 0;
                        }

                        v152 = v83;
                        v153 = v105;
                        mlir::ShapedType::getShape(&v152);
                        if (!v106)
                        {
LABEL_178:
                          v119 = *v83;
                          {
                            v120 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                            v121 = v119[1];
                            v122 = *(v119 + 4);
                            if (v122)
                            {
                              goto LABEL_180;
                            }
                          }

                          else
                          {
                            mlir::mps::ConstantOp::verify();
                            v120 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                            v121 = v119[1];
                            v122 = *(v119 + 4);
                            if (v122)
                            {
LABEL_180:
                              v123 = v121;
                              v124 = v122;
                              do
                              {
                                v125 = v124 >> 1;
                                v126 = &v123[2 * (v124 >> 1)];
                                v128 = *v126;
                                v127 = v126 + 2;
                                v124 += ~(v124 >> 1);
                                if (v128 < v120)
                                {
                                  v123 = v127;
                                }

                                else
                                {
                                  v124 = v125;
                                }
                              }

                              while (v124);
LABEL_188:
                              if (v123 != &v121[2 * v122] && *v123 == v120)
                              {
                                v129 = v123[1];
                              }

                              else
                              {
                                v129 = 0;
                              }

                              v155 = v83;
                              v156 = v129;
                              ElementType = mlir::ShapedType::getElementType(&v155);
                              if (mlir::Type::isSignedInteger(&ElementType, 2) || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 1) || mlir::Type::isUnsignedInteger(&ElementType, 2) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || *(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
                              {
LABEL_234:
                                if (*(*this + 9))
                                {
                                  v149 = *this - 16;
                                }

                                else
                                {
                                  v149 = 0;
                                }

                                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v149, 0);
                                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
                              }

                              goto LABEL_204;
                            }
                          }

                          v122 = 0;
                          v123 = v121;
                          goto LABEL_188;
                        }

                        v107 = *v83;
                        {
                          v108 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                          v109 = v107[1];
                          v110 = *(v107 + 4);
                          if (v110)
                          {
                            goto LABEL_164;
                          }
                        }

                        else
                        {
                          mlir::mps::ConstantOp::verify();
                          v108 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                          v109 = v107[1];
                          v110 = *(v107 + 4);
                          if (v110)
                          {
LABEL_164:
                            v111 = v109;
                            v112 = v110;
                            do
                            {
                              v113 = v112 >> 1;
                              v114 = &v111[2 * (v112 >> 1)];
                              v116 = *v114;
                              v115 = v114 + 2;
                              v112 += ~(v112 >> 1);
                              if (v116 < v108)
                              {
                                v111 = v115;
                              }

                              else
                              {
                                v112 = v113;
                              }
                            }

                            while (v112);
LABEL_173:
                            if (v111 != &v109[2 * v110] && *v111 == v108)
                            {
                              v117 = v111[1];
                            }

                            else
                            {
                              v117 = 0;
                            }

                            *&v158 = v83;
                            *(&v158 + 1) = v117;
                            mlir::ShapedType::getShape(&v158);
                            if (v118 == 1)
                            {
                              goto LABEL_178;
                            }

LABEL_204:
                            v154 = 261;
                            v152 = "operand";
                            v153 = 7;
                            mlir::Operation::emitOpError(&v160, v82, &v152);
                            if (v160)
                            {
                              LODWORD(v158) = 3;
                              *(&v158 + 1) = " #";
                              v159 = 2;
                              if (v163 >= v164)
                              {
                                if (v162 > &v158 || v162 + 24 * v163 <= &v158)
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                llvm::SmallVectorBase<unsigned int>::grow_pod();
                              }

                              v130 = v162 + 24 * v163;
                              v131 = v158;
                              *(v130 + 2) = v159;
                              *v130 = v131;
                              v132 = ++v163;
                              if (v160)
                              {
                                LODWORD(v158) = 5;
                                *(&v158 + 1) = 2;
                                if (v132 >= v164)
                                {
                                  if (v162 > &v158 || v162 + 24 * v132 <= &v158)
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                                }

                                v133 = v162 + 24 * v163;
                                v134 = v158;
                                *(v133 + 2) = v159;
                                *v133 = v134;
                                v135 = ++v163;
                                if (v160)
                                {
                                  LODWORD(v158) = 3;
                                  *(&v158 + 1) = " must be 0D/1D tensor of quantized values, but got ";
                                  v159 = 51;
                                  if (v135 >= v164)
                                  {
                                    if (v162 > &v158 || v162 + 24 * v135 <= &v158)
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                                    }

                                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                                  }

                                  v136 = v162 + 24 * v163;
                                  v137 = v158;
                                  *(v136 + 2) = v159;
                                  *v136 = v137;
                                  ++v163;
                                  if (v160)
                                  {
                                    mlir::DiagnosticArgument::DiagnosticArgument(&v158, v83);
                                    if (v163 >= v164)
                                    {
                                      if (v162 > &v158 || v162 + 24 * v163 <= &v158)
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                                      }

                                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                                    }

                                    v138 = v162 + 24 * v163;
                                    v139 = v158;
                                    *(v138 + 2) = v159;
                                    *v138 = v139;
                                    ++v163;
                                  }
                                }
                              }
                            }

                            v140 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v160);
                            if (v160)
                            {
                              mlir::InFlightDiagnostic::report(&v160);
                            }

                            if (v171 == 1)
                            {
                              if (v170 != &v171)
                              {
                                free(v170);
                              }

                              v141 = __p;
                              if (__p)
                              {
                                v142 = v169;
                                v143 = __p;
                                if (v169 != __p)
                                {
                                  do
                                  {
                                    v142 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v142 - 1);
                                  }

                                  while (v142 != v141);
                                  v143 = __p;
                                }

                                v169 = v141;
                                operator delete(v143);
                              }

                              v144 = v166;
                              if (v166)
                              {
                                v145 = v167;
                                v146 = v166;
                                if (v167 != v166)
                                {
                                  do
                                  {
                                    v148 = *--v145;
                                    v147 = v148;
                                    *v145 = 0;
                                    if (v148)
                                    {
                                      MEMORY[0x259C63150](v147, 0x1000C8077774924);
                                    }
                                  }

                                  while (v145 != v144);
                                  v146 = v166;
                                }

                                v167 = v144;
                                operator delete(v146);
                              }

                              if (v162 != v165)
                              {
                                free(v162);
                              }
                            }

                            if (v140)
                            {
                              goto LABEL_234;
                            }

                            return 0;
                          }
                        }

                        v110 = 0;
                        v111 = v109;
                        goto LABEL_173;
                      }
                    }

                    v98 = 0;
                    v99 = v97;
                    goto LABEL_157;
                  }
                }

                v87 = 0;
                v88 = v86;
                goto LABEL_141;
              }
            }

            v43 = 0;
            v44 = v42;
            goto LABEL_66;
          }
        }

        v31 = 0;
        v32 = v30;
        goto LABEL_51;
      }
    }

    v11 = 0;
    v12 = v10;
    goto LABEL_36;
  }

  v152 = "requires attribute 'dtype'";
  v154 = 259;
  mlir::OpState::emitOpError(this, &v152, &v160);
  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v160);
  if (v160)
  {
    mlir::InFlightDiagnostic::report(&v160);
  }

  if (v171 == 1)
  {
    if (v170 != &v171)
    {
      free(v170);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v169;
      v21 = __p;
      if (v169 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v169 = v19;
      operator delete(v21);
    }

    v22 = v166;
    if (v166)
    {
      v23 = v167;
      v24 = v166;
      if (v167 != v166)
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
        v24 = v166;
      }

      v167 = v22;
      operator delete(v24);
    }

    if (v162 != v165)
    {
      free(v162);
    }
  }

  return v18;
}

uint64_t mlir::mps::detail::RandomNormalOpGenericAdaptorBase::RandomNormalOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::RandomNormalOpAdaptor::verify(void *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v3 = a1[3];
    v4 = a1[6];
    v29[0] = a1[4];
    mlir::TypeAttr::getValue(v29);
    if (v3 && (v27[0] = v3, v29[0] = mlir::FloatAttr::getType(v27), !mlir::Type::isF32(v29)))
    {
      v27[0] = "'mps.random_normal' op attribute 'mean' failed to satisfy constraint: 32-bit float attribute";
      v28 = 259;
      mlir::emitError(a2, v27, v29);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v35;
          v16 = __p;
          if (v35 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v35 = v14;
          operator delete(v16);
        }

        v9 = v32;
        if (!v32)
        {
          goto LABEL_57;
        }

        v17 = v33;
        v11 = v32;
        if (v33 == v32)
        {
          goto LABEL_56;
        }

        do
        {
          v19 = *--v17;
          v18 = v19;
          *v17 = 0;
          if (v19)
          {
            MEMORY[0x259C63150](v18, 0x1000C8077774924);
          }
        }

        while (v17 != v9);
        goto LABEL_55;
      }
    }

    else
    {
      if (!v4)
      {
        return 1;
      }

      v27[0] = v4;
      v29[0] = mlir::FloatAttr::getType(v27);
      if (mlir::Type::isF32(v29))
      {
        return 1;
      }

      v27[0] = "'mps.random_normal' op attribute 'std_dev' failed to satisfy constraint: 32-bit float attribute";
      v28 = 259;
      mlir::emitError(a2, v27, v29);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v29[0])
      {
        mlir::InFlightDiagnostic::report(v29);
      }

      if (v37 == 1)
      {
        if (v36 != &v37)
        {
          free(v36);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v35;
          v22 = __p;
          if (v35 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v35 = v20;
          operator delete(v22);
        }

        v9 = v32;
        if (!v32)
        {
          goto LABEL_57;
        }

        v23 = v33;
        v11 = v32;
        if (v33 == v32)
        {
LABEL_56:
          v33 = v9;
          operator delete(v11);
LABEL_57:
          if (v30 != &v31)
          {
            free(v30);
          }

          return v5;
        }

        do
        {
          v25 = *--v23;
          v24 = v25;
          *v23 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v23 != v9);
LABEL_55:
        v11 = v32;
        goto LABEL_56;
      }
    }
  }

  else
  {
    v27[0] = "'mps.random_normal' op requires attribute 'result_element_type'";
    v28 = 259;
    mlir::emitError(a2, v27, v29);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v35;
        v8 = __p;
        if (v35 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v35 = v6;
        operator delete(v8);
      }

      v9 = v32;
      if (!v32)
      {
        goto LABEL_57;
      }

      v10 = v33;
      v11 = v32;
      if (v33 == v32)
      {
        goto LABEL_56;
      }

      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          MEMORY[0x259C63150](v12, 0x1000C8077774924);
        }
      }

      while (v10 != v9);
      goto LABEL_55;
    }
  }

  return v5;
}

uint64_t mlir::mps::RandomNormalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v51 = v6;
  if (!v6)
  {
    a3(&v54, a4);
    if (v54)
    {
      LODWORD(v52) = 3;
      *(&v52 + 1) = "expected DictionaryAttr to set properties";
      v53 = 41;
      if (v57 >= v58)
      {
        if (v56 > &v52 || v56 + 24 * v57 <= &v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v56 + 24 * v57;
      v23 = v52;
      *(v22 + 2) = v53;
      *v22 = v23;
      ++v57;
      if (v54)
      {
        mlir::InFlightDiagnostic::report(&v54);
      }
    }

    if (v65 != 1)
    {
      return 0;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v17 = v60;
    if (!v60)
    {
      goto LABEL_70;
    }

    v27 = v61;
    v19 = v60;
    if (v61 == v60)
    {
LABEL_69:
      v61 = v17;
      operator delete(v19);
LABEL_70:
      if (v56 != &v59)
      {
        free(v56);
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
    v19 = v60;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v51, "mean", 4uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v9 = v8;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 49;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v56 + 24 * v57;
        v11 = v52;
        *(v10 + 2) = v53;
        *v10 = v11;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v9);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v56 + 24 * v57;
          v13 = v52;
          *(v12 + 2) = v53;
          *v12 = v13;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v63;
        v16 = __p;
        if (v63 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v63 = v14;
        operator delete(v16);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v18 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v30 = mlir::DictionaryAttr::get(&v51, "result_element_type", 0x13uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v31 = v30;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 64;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v56 + 24 * v57;
        v33 = v52;
        *(v32 + 2) = v53;
        *v32 = v33;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v31);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v56 + 24 * v57;
          v35 = v52;
          *(v34 + 2) = v53;
          *v34 = v35;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if ((v65 & 1) == 0)
      {
        return 0;
      }

      if (v64 != &v65)
      {
        free(v64);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v63;
        v38 = __p;
        if (v63 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v63 = v36;
        operator delete(v38);
      }

      v17 = v60;
      if (!v60)
      {
        goto LABEL_70;
      }

      v39 = v61;
      v19 = v60;
      if (v61 == v60)
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

  v43 = mlir::DictionaryAttr::get(&v51, "sampling_method", 0xFuLL);
  if (v43)
  {
    if (*(*v43 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
    {
      v44 = v43;
      a3(&v54, a4);
      if (v54)
      {
        LODWORD(v52) = 3;
        v53 = 60;
        if (v57 >= v58)
        {
          if (v56 > &v52 || v56 + 24 * v57 <= &v52)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v56 + 24 * v57;
        v46 = v52;
        *(v45 + 2) = v53;
        *v45 = v46;
        ++v57;
        if (v54)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, v44);
          if (v57 >= v58)
          {
            if (v56 > &v52 || v56 + 24 * v57 <= &v52)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v56 + 24 * v57;
          v48 = v52;
          *(v47 + 2) = v53;
          *v47 = v48;
          ++v57;
          if (v54)
          {
            mlir::InFlightDiagnostic::report(&v54);
          }
        }
      }

      if (v65 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v55);
      }

      return 0;
    }

    a1[2] = v43;
  }

  v49 = mlir::DictionaryAttr::get(&v51, "std_dev", 7uLL);
  *&v52 = v49;
  if (!v49)
  {
    return 1;
  }

  if (*(*v49 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[3] = v49;
    return 1;
  }

  a3(&v54, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v50, &v52);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
  return 0;
}

uint64_t mlir::mps::RandomNormalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = v25;
  v24 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v22, "mean", 4, *a2);
  if (v24 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v23 + 16 * v24);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v24 + 1;
  LODWORD(v24) = v24 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v22, "result_element_type", 0x13, v7);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v23 + 16 * v24);
    *v10 = v8;
    v10[1] = v9;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v22, "sampling_method", 0xF, v11);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v23 + 16 * v24);
    *v14 = v12;
    v14[1] = v13;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v22, "std_dev", 7, v15);
    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v23 + 16 * v24);
    *v18 = v16;
    v18[1] = v17;
    v6 = v24 + 1;
    LODWORD(v24) = v24 + 1;
  }

  v19 = v23;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v23 == v25)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v22, v23, v6);
  v19 = v23;
  if (v23 != v25)
  {
LABEL_16:
    free(v19);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::RandomNormalOp::computePropertiesHash(void *a1)
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
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, v9);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::mps::RandomNormalOp::getInherentAttr(int a1, void *a2, _DWORD *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    if (__n == 15)
    {
      if (!memcmp(__s1, "sampling_method", 0xFuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "result_element_type", 0x13uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 4)
  {
    if (*__s1 == 1851876717)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 7 || memcmp(__s1, "std_dev", 7uLL))
  {
    return 0;
  }

  return a2[3];
}

uint64_t mlir::mps::RandomNormalOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      result = memcmp(__s1, "sampling_method", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          v5[2] = v8;
        }

        else
        {
          v5[2] = 0;
        }
      }
    }

    else if (a3 == 19)
    {
      result = memcmp(__s1, "result_element_type", 0x13uLL);
      if (!result)
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

          v5[1] = v6;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }
  }

  else if (a3 == 4)
  {
    if (*__s1 == 1851876717)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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

  else if (a3 == 7)
  {
    result = memcmp(__s1, "std_dev", 7uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[3] = v9;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::RandomNormalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "mean", 4uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "result_element_type", 0x13uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "sampling_method", 0xFuLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {

    mlir::NamedAttrList::append(a3, "std_dev", 7uLL, v7);
  }
}

BOOL mlir::mps::RandomNormalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "mean", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v9, "result_element_type", 19, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v10, "sampling_method", 15, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "std_dev", 7, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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
        *(&v21 + 1) = "' failed to satisfy constraint: valid NormalSamplingMethod";
        v22 = 58;
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

BOOL mlir::mps::RandomNormalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, *(a2 + 256)) && (v4 = mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1), (v4 & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(a1, v3 + 2)))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 3);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 56))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  if (!v27)
  {
    return 1;
  }

  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::NormalSamplingMethodAttr]";
  *(&v28 + 1) = 85;
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

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v17 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v17;
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v17;
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
      result = v17;
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
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
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
      result = v17;
    }

    if (v33 != &v36)
    {
      free(v33);
      return v17;
    }
  }

  return result;
}

uint64_t mlir::mps::RandomNormalOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::mps::RandomNormalOp::setResultElementType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::RandomNormalOp::setMean(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::RandomNormalOp::setStdDev(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::RandomNormalOp::setSamplingMethod(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::RandomNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a5;
  v21 = a4;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 8) = a6;
  if (a7)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *v16 = a7;
  }

  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 24) = a8;
  }

  if (a9)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 16) = a9;
  }

  v19 = *(a2 + 72);
  if (v19 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v19) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::RandomNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v26 = a4;
  v27 = a3;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 8) = a5;
  if (a6)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      operator new();
    }

    *v14 = a6;
  }

  if (a7)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 24) = a7;
  }

  if (a8)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 16) = a8;
  }

  __src = v32;
  v31 = 0x200000000;
  mlir::ValueRange::ValueRange(v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = *(a2 + 256);
  v20 = mlir::RegionRange::RegionRange(v28, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomNormalOp::inferReturnTypes(v20, v21, v22, v29[0], v29[1], Dictionary, v19, v23, v28[0], v28[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v24 = v31;
  v25 = *(a2 + 72);
  if (v25 + v31 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v31)
  {
    memcpy((*(a2 + 64) + 8 * v25), __src, 8 * v31);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + v24;
  if (__src != v32)
  {
    free(__src);
  }
}

unint64_t mlir::mps::RandomNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a6;
  v24 = a5;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a7;
  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *v17 = a8;
  }

  if (a9)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 24) = a9;
  }

  if (a10)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 16) = a10;
  }

  v20 = *(a2 + 72);
  if (a4 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v21 = 0;
    v22 = *(a2 + 64) + 8 * v20;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v21);
      *(v22 + 8 * v21++) = result;
    }

    while (a4 != v21);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + a4;
  return result;
}

uint64_t mlir::mps::RandomNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v32 = a5;
  v33 = a4;
  mlir::OperationState::addOperands(a2, &v33, 1uLL);
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  v16 = mlir::TypeAttr::get(a6);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = v16;
  F32Type = mlir::Builder::getF32Type(a1, v15);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a7);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = FloatAttr;
  v22 = mlir::Builder::getF32Type(a1, v19);
  v23 = mlir::Builder::getFloatAttr(a1, v22, a8);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 24) = v23;
  v25 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v25);
  v34[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v34[1] = v25;
  v38[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v38[1] = v34;
  v37 = a9;
  v27 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v28 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v27 >> 47) ^ v27);
  v35[0] = &v37;
  v35[1] = v38;
  v36 = &v37;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v36, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v35);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *(v30 + 16) = result;
  v31 = *(a2 + 72);
  if (v31 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v31) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::RandomNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = a4;
  v40 = a3;
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  v15 = mlir::TypeAttr::get(a5);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = v15;
  F32Type = mlir::Builder::getF32Type(a1, v14);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *v20 = FloatAttr;
  v21 = mlir::Builder::getF32Type(a1, v18);
  v22 = mlir::Builder::getFloatAttr(a1, v21, a7);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 24) = v22;
  v24 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v24);
  v46 = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v47 = v24;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v44 = &v46;
  v42 = a8;
  v26 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v27 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v26);
  v41 = &v42;
  v48 = &v42;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v26 ^ (v27 >> 47) ^ v27)) >> 32) >> 15) ^ (-348639895 * (v26 ^ (v27 >> 47) ^ v27))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v48);
  v29 = *(a2 + 256);
  if (!v29)
  {
    operator new();
  }

  *(v29 + 16) = ParametricStorageTypeImpl;
  __src = v45;
  v44 = 0x200000000;
  mlir::ValueRange::ValueRange(&v48, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v32 = *(a2 + 256);
  v33 = mlir::RegionRange::RegionRange(&v46, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomNormalOp::inferReturnTypes(v33, v34, v35, v48, p_src, Dictionary, v32, v36, v46, v47, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v37 = v44;
  v38 = *(a2 + 72);
  if (v38 + v44 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v44)
  {
    memcpy((*(a2 + 64) + 8 * v38), __src, 8 * v44);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + v37;
  if (__src != v45)
  {
    free(__src);
  }
}

unint64_t mlir::mps::RandomNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v35 = a6;
  v36 = a5;
  mlir::OperationState::addOperands(a2, &v36, 1uLL);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  v17 = mlir::TypeAttr::get(a7);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 8) = v17;
  F32Type = mlir::Builder::getF32Type(a1, v16);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a8);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = FloatAttr;
  v23 = mlir::Builder::getF32Type(a1, v20);
  v24 = mlir::Builder::getFloatAttr(a1, v23, a9);
  v25 = *(a2 + 256);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 24) = v24;
  v26 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v26);
  v37[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v37[1] = v26;
  v41[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v41[1] = v37;
  v40 = a10;
  v28 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v29 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v28 >> 47) ^ v28);
  v38[0] = &v40;
  v38[1] = v41;
  v39 = &v40;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v29 >> 47) ^ v29), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v38);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 16) = result;
  v32 = *(a2 + 72);
  if (a4 + v32 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v33 = 0;
    v34 = *(a2 + 64) + 8 * v32;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v33);
      *(v34 + 8 * v33++) = result;
    }

    while (a4 != v33);
    LODWORD(v32) = *(a2 + 72);
  }

  *(a2 + 72) = v32 + a4;
  return result;
}

uint64_t mlir::mps::RandomNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::RandomNormalOp::build(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::RandomNormalOp::inferReturnTypes(v20, v21, v22, a3, a4, v18, v19, v23, v26[0], v26[1], &__src) & 1) == 0)
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

mlir::MLIRContext *mlir::mps::RandomNormalOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v14[0] = *(a1 + 8);
  result = mlir::Attribute::getContext(v14);
  v9 = result;
  if (*a2)
  {
    if (a2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    F32Type = mlir::Builder::getF32Type(&v9, v4);
    result = mlir::Builder::getFloatAttr(0.0, &v9, F32Type);
    *a2 = result;
    if (a2[3])
    {
LABEL_3:
      if (a2[2])
      {
        return result;
      }

LABEL_7:
      v7 = v9;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v9);
      v10[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
      v10[1] = v7;
      v14[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v14[1] = v10;
      v13 = 0;
      v11[0] = &v13;
      v11[1] = v14;
      v12 = &v13;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
      a2[2] = result;
      return result;
    }
  }

  v6 = mlir::Builder::getF32Type(&v9, v4);
  result = mlir::Builder::getFloatAttr(1.0, &v9, v6);
  a2[3] = result;
  if (!a2[2])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::RandomNormalOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = *(v3 + 72);
  v5 = v3 + 64;
  if (v4)
  {
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v23[0] = v2;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v4, "result_element_type", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23) & 1) != 0 && (v23[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "mean", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (v23[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "std_dev", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (v23[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v7, "sampling_method", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v9 = *this - 16;
      }

      else
      {
        v9 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v21 = "requires attribute 'result_element_type'";
    v22 = 259;
    mlir::OpState::emitOpError(this, &v21, v23);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v29;
        v14 = __p;
        if (v29 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v29 = v12;
        operator delete(v14);
      }

      v15 = v26;
      if (v26)
      {
        v16 = v27;
        v17 = v26;
        if (v27 != v26)
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
          v17 = v26;
        }

        v27 = v15;
        operator delete(v17);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v11;
}

uint64_t mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::RandomTruncatedNormalOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
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
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::RandomTruncatedNormalOpAdaptor::verify(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a1[6])
  {
    v3 = a1[3];
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[8];
    Type = a1[6];
    mlir::TypeAttr::getValue(&Type);
    if (v4 && (v35[0] = v4, Type = mlir::FloatAttr::getType(v35), !mlir::Type::isF32(&Type)))
    {
      v35[0] = "'mps.random_truncated_normal' op attribute 'mean' failed to satisfy constraint: 32-bit float attribute";
      v36 = 259;
      mlir::emitError(a2, v35, &Type);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v16 = __p;
        if (__p)
        {
          v17 = v44;
          v18 = __p;
          if (v44 != __p)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v44 = v16;
          operator delete(v18);
        }

        v11 = v41;
        if (!v41)
        {
          goto LABEL_77;
        }

        v19 = v42;
        v13 = v41;
        if (v42 == v41)
        {
          goto LABEL_76;
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
        goto LABEL_75;
      }
    }

    else if (v6 && (v35[0] = v6, Type = mlir::FloatAttr::getType(v35), !mlir::Type::isF32(&Type)))
    {
      v35[0] = "'mps.random_truncated_normal' op attribute 'std_dev' failed to satisfy constraint: 32-bit float attribute";
      v36 = 259;
      mlir::emitError(a2, v35, &Type);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v44;
          v24 = __p;
          if (v44 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v44 = v22;
          operator delete(v24);
        }

        v11 = v41;
        if (!v41)
        {
          goto LABEL_77;
        }

        v25 = v42;
        v13 = v41;
        if (v42 == v41)
        {
          goto LABEL_76;
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
        goto LABEL_75;
      }
    }

    else
    {
      if (!v5 || (v35[0] = v5, Type = mlir::FloatAttr::getType(v35), mlir::Type::isF32(&Type)))
      {
        if (!v3)
        {
          return 1;
        }

        v35[0] = v3;
        Type = mlir::FloatAttr::getType(v35);
        if (mlir::Type::isF32(&Type))
        {
          return 1;
        }

        v35[0] = "'mps.random_truncated_normal' op attribute 'maximum' failed to satisfy constraint: 32-bit float attribute";
        v36 = 259;
        mlir::emitError(a2, v35, &Type);
        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
        if (Type)
        {
          mlir::InFlightDiagnostic::report(&Type);
        }

        if (v46 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v38);
        }

        return v7;
      }

      v35[0] = "'mps.random_truncated_normal' op attribute 'minimum' failed to satisfy constraint: 32-bit float attribute";
      v36 = 259;
      mlir::emitError(a2, v35, &Type);
      v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
      if (Type)
      {
        mlir::InFlightDiagnostic::report(&Type);
      }

      if (v46 == 1)
      {
        if (v45 != &v46)
        {
          free(v45);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v44;
          v30 = __p;
          if (v44 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v44 = v28;
          operator delete(v30);
        }

        v11 = v41;
        if (!v41)
        {
          goto LABEL_77;
        }

        v31 = v42;
        v13 = v41;
        if (v42 == v41)
        {
LABEL_76:
          v42 = v11;
          operator delete(v13);
LABEL_77:
          if (v39 != &v40)
          {
            free(v39);
          }

          return v7;
        }

        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v11);
LABEL_75:
        v13 = v41;
        goto LABEL_76;
      }
    }
  }

  else
  {
    v35[0] = "'mps.random_truncated_normal' op requires attribute 'result_element_type'";
    v36 = 259;
    mlir::emitError(a2, v35, &Type);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Type);
    if (Type)
    {
      mlir::InFlightDiagnostic::report(&Type);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v44;
        v10 = __p;
        if (v44 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v44 = v8;
        operator delete(v10);
      }

      v11 = v41;
      if (!v41)
      {
        goto LABEL_77;
      }

      v12 = v42;
      v13 = v41;
      if (v42 == v41)
      {
        goto LABEL_76;
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
      goto LABEL_75;
    }
  }

  return v7;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v53 = v6;
  if (!v6)
  {
    a3(&v56, a4);
    if (v56)
    {
      LODWORD(v54) = 3;
      *(&v54 + 1) = "expected DictionaryAttr to set properties";
      v55 = 41;
      if (v59 >= v60)
      {
        if (v58 > &v54 || v58 + 24 * v59 <= &v54)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v58 + 24 * v59;
      v23 = v54;
      *(v22 + 2) = v55;
      *v22 = v23;
      ++v59;
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }
    }

    if (v67 != 1)
    {
      return 0;
    }

    if (v66 != &v67)
    {
      free(v66);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v65;
      v26 = __p;
      if (v65 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v65 = v24;
      operator delete(v26);
    }

    v17 = v62;
    if (!v62)
    {
      goto LABEL_70;
    }

    v27 = v63;
    v19 = v62;
    if (v63 == v62)
    {
LABEL_69:
      v63 = v17;
      operator delete(v19);
LABEL_70:
      if (v58 != &v61)
      {
        free(v58);
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
    v19 = v62;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v53, "maximum", 7uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v9 = v8;
      a3(&v56, a4);
      if (v56)
      {
        LODWORD(v54) = 3;
        v55 = 52;
        if (v59 >= v60)
        {
          if (v58 > &v54 || v58 + 24 * v59 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v58 + 24 * v59;
        v11 = v54;
        *(v10 + 2) = v55;
        *v10 = v11;
        ++v59;
        if (v56)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, v9);
          if (v59 >= v60)
          {
            if (v58 > &v54 || v58 + 24 * v59 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v58 + 24 * v59;
          v13 = v54;
          *(v12 + 2) = v55;
          *v12 = v13;
          ++v59;
          if (v56)
          {
            mlir::InFlightDiagnostic::report(&v56);
          }
        }
      }

      if ((v67 & 1) == 0)
      {
        return 0;
      }

      if (v66 != &v67)
      {
        free(v66);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v65;
        v16 = __p;
        if (v65 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v65 = v14;
        operator delete(v16);
      }

      v17 = v62;
      if (!v62)
      {
        goto LABEL_70;
      }

      v18 = v63;
      v19 = v62;
      if (v63 == v62)
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

  v30 = mlir::DictionaryAttr::get(&v53, "mean", 4uLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v31 = v30;
      a3(&v56, a4);
      if (v56)
      {
        LODWORD(v54) = 3;
        v55 = 49;
        if (v59 >= v60)
        {
          if (v58 > &v54 || v58 + 24 * v59 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v58 + 24 * v59;
        v33 = v54;
        *(v32 + 2) = v55;
        *v32 = v33;
        ++v59;
        if (v56)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, v31);
          if (v59 >= v60)
          {
            if (v58 > &v54 || v58 + 24 * v59 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v58 + 24 * v59;
          v35 = v54;
          *(v34 + 2) = v55;
          *v34 = v35;
          ++v59;
          if (v56)
          {
            mlir::InFlightDiagnostic::report(&v56);
          }
        }
      }

      if ((v67 & 1) == 0)
      {
        return 0;
      }

      if (v66 != &v67)
      {
        free(v66);
      }

      v36 = __p;
      if (__p)
      {
        v37 = v65;
        v38 = __p;
        if (v65 != __p)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v65 = v36;
        operator delete(v38);
      }

      v17 = v62;
      if (!v62)
      {
        goto LABEL_70;
      }

      v39 = v63;
      v19 = v62;
      if (v63 == v62)
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

  v42 = mlir::DictionaryAttr::get(&v53, "minimum", 7uLL);
  if (v42)
  {
    if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v43 = v42;
      a3(&v56, a4);
      if (v56)
      {
        LODWORD(v54) = 3;
        v55 = 52;
        if (v59 >= v60)
        {
          if (v58 > &v54 || v58 + 24 * v59 <= &v54)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v58 + 24 * v59;
        v45 = v54;
        *(v44 + 2) = v55;
        *v44 = v45;
        ++v59;
        if (v56)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, v43);
          if (v59 >= v60)
          {
            if (v58 > &v54 || v58 + 24 * v59 <= &v54)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v46 = v58 + 24 * v59;
          v47 = v54;
          *(v46 + 2) = v55;
          *v46 = v47;
          ++v59;
          if (v56)
          {
            mlir::InFlightDiagnostic::report(&v56);
          }
        }
      }

      if (v67 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v57);
      }

      return 0;
    }

    a1[2] = v42;
  }

  v48 = mlir::DictionaryAttr::get(&v53, "result_element_type", 0x13uLL);
  *&v54 = v48;
  if (!v48)
  {
LABEL_88:
    v50 = mlir::DictionaryAttr::get(&v53, "sampling_method", 0xFuLL);
    *&v54 = v50;
    if (v50)
    {
      if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
      {
        a3(&v56, a4);
        goto LABEL_95;
      }

      a1[4] = v50;
    }

    v51 = mlir::DictionaryAttr::get(&v53, "std_dev", 7uLL);
    *&v54 = v51;
    if (v51)
    {
      if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        a3(&v56, a4);
        goto LABEL_95;
      }

      a1[5] = v51;
    }

    return 1;
  }

  if (*(*v48 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    a1[3] = v48;
    goto LABEL_88;
  }

  a3(&v56, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(v49, &v54);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
  return 0;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = v33;
  v32 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v30, "maximum", 7, *a2);
  if (v32 >= HIDWORD(v32))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (v31 + 16 * v32);
  *v5 = NamedAttr;
  v5[1] = v4;
  v6 = v32 + 1;
  LODWORD(v32) = v32 + 1;
  v7 = a2[1];
  if (v7)
  {
LABEL_6:
    v8 = mlir::Builder::getNamedAttr(&v30, "mean", 4, v7);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = (v31 + 16 * v32);
    *v10 = v8;
    v10[1] = v9;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

LABEL_8:
  v11 = a2[2];
  if (v11)
  {
    v12 = mlir::Builder::getNamedAttr(&v30, "minimum", 7, v11);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v31 + 16 * v32);
    *v14 = v12;
    v14[1] = v13;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v15 = a2[3];
  if (v15)
  {
    v16 = mlir::Builder::getNamedAttr(&v30, "result_element_type", 0x13, v15);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v31 + 16 * v32);
    *v18 = v16;
    v18[1] = v17;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v19 = a2[4];
  if (v19)
  {
    v20 = mlir::Builder::getNamedAttr(&v30, "sampling_method", 0xF, v19);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = (v31 + 16 * v32);
    *v22 = v20;
    v22[1] = v21;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v23 = a2[5];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v30, "std_dev", 7, v23);
    if (v32 >= HIDWORD(v32))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = (v31 + 16 * v32);
    *v26 = v24;
    v26[1] = v25;
    v6 = v32 + 1;
    LODWORD(v32) = v32 + 1;
  }

  v27 = v31;
  if (!v6)
  {
    DictionaryAttr = 0;
    if (v31 == v33)
    {
      return DictionaryAttr;
    }

    goto LABEL_22;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v30, v31, v6);
  v27 = v31;
  if (v31 != v33)
  {
LABEL_22:
    free(v27);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::RandomTruncatedNormalOp::computePropertiesHash(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = HIDWORD(*a1);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v2);
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = HIDWORD(v6);
  v10 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 47));
  v11 = a1[5];
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v14 = HIDWORD(v11);
  v15 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v23, 0, v23, v24, &v22, &v21, &v20, &v19, &v18, &v17);
}

uint64_t mlir::mps::RandomTruncatedNormalOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    if (__n == 15)
    {
      if (!memcmp(__s1, "sampling_method", 0xFuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "result_element_type", 0x13uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "mean", 4uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 7)
  {
    return 0;
  }

  if (*__s1 == 1769496941 && *(__s1 + 3) == 1836412265)
  {
    return *a2;
  }

  if (!memcmp(__s1, "minimum", 7uLL))
  {
    return a2[2];
  }

  if (memcmp(__s1, "std_dev", 7uLL))
  {
    return 0;
  }

  return a2[5];
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      result = memcmp(__s1, "sampling_method", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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

    else if (a3 == 19)
    {
      result = memcmp(__s1, "result_element_type", 0x13uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[3] = v12;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 4)
  {
    result = memcmp(__s1, "mean", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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
  }

  else if (a3 == 7)
  {
    if (*__s1 == 1769496941 && *(__s1 + 3) == 1836412265)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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
      result = memcmp(__s1, "minimum", 7uLL);
      if (result)
      {
        result = memcmp(__s1, "std_dev", 7uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[5] = v8;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }

        v5[2] = v13;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::RandomTruncatedNormalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "maximum", 7uLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "mean", 4uLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "minimum", 7uLL, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "result_element_type", 0x13uLL, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "sampling_method", 0xFuLL, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "std_dev", 7uLL, v9);
  }
}

BOOL mlir::mps::RandomTruncatedNormalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "maximum", 7, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v9, "mean", 4, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "minimum", 7, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v11, "result_element_type", 19, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v12, "sampling_method", 15, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v13, "std_dev", 7, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::RandomTruncatedNormalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, *(a2 + 256)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 5);
}

uint64_t mlir::mps::RandomTruncatedNormalOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[10]);
  (*(*a2 + 16))(a2, v3[11]);
  (*(*a2 + 24))(a2, v3[12]);
  v4 = v3[13];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setResultElementType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88) = result;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setMean(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) = result;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setStdDev(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setMinimum(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setMaximum(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v7 = mlir::Attribute::getContext((*a1 + 24));
  F32Type = mlir::Builder::getF32Type(&v7, v4);
  result = mlir::Builder::getFloatAttr(&Context, F32Type, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setSamplingMethod(uint64_t a1, unsigned int a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = a2;
  v6 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v6);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a5;
  v25 = a4;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = a6;
  if (a7)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 8) = a7;
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

    *(v20 + 16) = a9;
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

  if (a11)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *(v22 + 32) = a11;
  }

  v23 = *(a2 + 72);
  if (v23 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v23) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::RandomTruncatedNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v30 = a4;
  v31 = a3;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = a5;
  if (a6)
  {
    v16 = *(a2 + 256);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 8) = a6;
  }

  if (a7)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 40) = a7;
  }

  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 16) = a8;
  }

  if (a9)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *v19 = a9;
  }

  if (a10)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 32) = a10;
  }

  __src = v36;
  v35 = 0x200000000;
  mlir::ValueRange::ValueRange(v33, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v23 = *(a2 + 256);
  v24 = mlir::RegionRange::RegionRange(v32, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomTruncatedNormalOp::inferReturnTypes(v24, v25, v26, v33[0], v33[1], Dictionary, v23, v27, v32[0], v32[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v28 = v35;
  v29 = *(a2 + 72);
  if (v29 + v35 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v35)
  {
    memcpy((*(a2 + 64) + 8 * v29), __src, 8 * v35);
    LODWORD(v29) = *(a2 + 72);
  }

  *(a2 + 72) = v29 + v28;
  if (__src != v36)
  {
    free(__src);
  }
}

unint64_t mlir::mps::RandomTruncatedNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a6;
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 24) = a7;
  if (a8)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 8) = a8;
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

    *(v21 + 16) = a10;
  }

  if (a11)
  {
    v22 = *(a2 + 256);
    if (!v22)
    {
      operator new();
    }

    *v22 = a11;
  }

  if (a12)
  {
    v23 = *(a2 + 256);
    if (!v23)
    {
      operator new();
    }

    *(v23 + 32) = a12;
  }

  v24 = *(a2 + 72);
  if (a4 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v25 = 0;
    v26 = *(a2 + 64) + 8 * v24;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v25);
      *(v26 + 8 * v25++) = result;
    }

    while (a4 != v25);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + a4;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v42 = a5;
  v43 = a4;
  mlir::OperationState::addOperands(a2, &v43, 1uLL);
  mlir::OperationState::addOperands(a2, &v42, 1uLL);
  v18 = mlir::TypeAttr::get(a6);
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = v18;
  F32Type = mlir::Builder::getF32Type(a1, v17);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a7);
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = FloatAttr;
  v24 = mlir::Builder::getF32Type(a1, v21);
  v26 = mlir::Builder::getFloatAttr(a1, v24, a8);
  v27 = *(a2 + 256);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 40) = v26;
  v28 = mlir::Builder::getF32Type(a1, v25);
  v30 = mlir::Builder::getFloatAttr(a1, v28, a9);
  v31 = *(a2 + 256);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 16) = v30;
  v32 = mlir::Builder::getF32Type(a1, v29);
  v33 = mlir::Builder::getFloatAttr(a1, v32, a10);
  v34 = *(a2 + 256);
  if (!v34)
  {
    operator new();
  }

  *v34 = v33;
  v35 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v35);
  v44[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v44[1] = v35;
  v48[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v48[1] = v44;
  v47 = a11;
  v37 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v38 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v37 >> 47) ^ v37);
  v45[0] = &v47;
  v45[1] = v48;
  v46 = &v47;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v38 >> 47) ^ v38), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v46, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v45);
  v40 = *(a2 + 256);
  if (!v40)
  {
    operator new();
  }

  *(v40 + 32) = result;
  v41 = *(a2 + 72);
  if (v41 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v41) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::RandomTruncatedNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v60 = *MEMORY[0x277D85DE8];
  v49 = a4;
  v50 = a3;
  mlir::OperationState::addOperands(a2, &v50, 1uLL);
  mlir::OperationState::addOperands(a2, &v49, 1uLL);
  v17 = mlir::TypeAttr::get(a5);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 24) = v17;
  F32Type = mlir::Builder::getF32Type(a1, v16);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = FloatAttr;
  v23 = mlir::Builder::getF32Type(a1, v20);
  v25 = mlir::Builder::getFloatAttr(a1, v23, a7);
  v26 = *(a2 + 256);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 40) = v25;
  v27 = mlir::Builder::getF32Type(a1, v24);
  v29 = mlir::Builder::getFloatAttr(a1, v27, a8);
  v30 = *(a2 + 256);
  if (!v30)
  {
    operator new();
  }

  *(v30 + 16) = v29;
  v31 = mlir::Builder::getF32Type(a1, v28);
  v32 = mlir::Builder::getFloatAttr(a1, v31, a9);
  v33 = *(a2 + 256);
  if (!v33)
  {
    operator new();
  }

  *v33 = v32;
  v34 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v34);
  v56 = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v57 = v34;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v54 = &v56;
  v52 = a10;
  v36 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v37 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v36 >> 47) ^ v36);
  v51 = &v52;
  v58 = &v52;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v37 >> 47) ^ v37), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v51, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v58);
  v39 = *(a2 + 256);
  if (!v39)
  {
    operator new();
  }

  *(v39 + 32) = ParametricStorageTypeImpl;
  __src = v55;
  v54 = 0x200000000;
  mlir::ValueRange::ValueRange(&v58, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v42 = *(a2 + 256);
  v43 = mlir::RegionRange::RegionRange(&v56, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomTruncatedNormalOp::inferReturnTypes(v43, v44, v45, v58, p_src, Dictionary, v42, v46, v56, v57, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v47 = v54;
  v48 = *(a2 + 72);
  if (v48 + v54 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v54)
  {
    memcpy((*(a2 + 64) + 8 * v48), __src, 8 * v54);
    LODWORD(v48) = *(a2 + 72);
  }

  *(a2 + 72) = v48 + v47;
  if (__src != v55)
  {
    free(__src);
  }
}

unint64_t mlir::mps::RandomTruncatedNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v45 = a6;
  v46 = a5;
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  v19 = mlir::TypeAttr::get(a7);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 24) = v19;
  F32Type = mlir::Builder::getF32Type(a1, v18);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a8);
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 8) = FloatAttr;
  v25 = mlir::Builder::getF32Type(a1, v22);
  v27 = mlir::Builder::getFloatAttr(a1, v25, a9);
  v28 = *(a2 + 256);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 40) = v27;
  v29 = mlir::Builder::getF32Type(a1, v26);
  v31 = mlir::Builder::getFloatAttr(a1, v29, a10);
  v32 = *(a2 + 256);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 16) = v31;
  v33 = mlir::Builder::getF32Type(a1, v30);
  v34 = mlir::Builder::getFloatAttr(a1, v33, a11);
  v35 = *(a2 + 256);
  if (!v35)
  {
    operator new();
  }

  *v35 = v34;
  v36 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v36);
  v47[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v47[1] = v36;
  v51[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v51[1] = v47;
  v50 = a12;
  v38 = 0x9DDFEA08EB382D69 * (((8 * a12) | 4) ^ a12 ^ 0xFF51AFD7ED558CCDLL);
  v39 = 0x9DDFEA08EB382D69 * (a12 ^ 0xFF51AFD7ED558CCDLL ^ (v38 >> 47) ^ v38);
  v48[0] = &v50;
  v48[1] = v51;
  v49 = &v50;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v39 >> 47) ^ v39), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v49, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v48);
  v41 = *(a2 + 256);
  if (!v41)
  {
    operator new();
  }

  *(v41 + 32) = result;
  v42 = *(a2 + 72);
  if (a4 + v42 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v43 = 0;
    v44 = *(a2 + 64) + 8 * v42;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v43);
      *(v44 + 8 * v43++) = result;
    }

    while (a4 != v43);
    LODWORD(v42) = *(a2 + 72);
  }

  *(a2 + 72) = v42 + a4;
  return result;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::RandomTruncatedNormalOp::build(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::RandomTruncatedNormalOp::inferReturnTypes(v20, v21, v22, a3, a4, v18, v19, v23, v26[0], v26[1], &__src) & 1) == 0)
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

mlir::MLIRContext *mlir::mps::RandomTruncatedNormalOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v16[0] = *(a1 + 8);
  result = mlir::Attribute::getContext(v16);
  v11 = result;
  if (a2[1])
  {
    if (a2[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    F32Type = mlir::Builder::getF32Type(&v11, v4);
    result = mlir::Builder::getFloatAttr(0.0, &v11, F32Type);
    a2[1] = result;
    if (a2[5])
    {
LABEL_3:
      if (a2[2])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v6 = mlir::Builder::getF32Type(&v11, v4);
  result = mlir::Builder::getFloatAttr(1.0, &v11, v6);
  a2[5] = result;
  if (a2[2])
  {
LABEL_4:
    if (*a2)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = mlir::Builder::getF32Type(&v11, v4);
  result = mlir::Builder::getFloatAttr(-2.0, &v11, v7);
  a2[2] = result;
  if (*a2)
  {
LABEL_5:
    if (a2[4])
    {
      return result;
    }

LABEL_11:
    v9 = v11;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v11);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
    v12[1] = v9;
    v16[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v16[1] = v12;
    v15 = 0;
    v13[0] = &v15;
    v13[1] = v16;
    v14 = &v15;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
    a2[4] = result;
    return result;
  }

LABEL_10:
  v8 = mlir::Builder::getF32Type(&v11, v4);
  result = mlir::Builder::getFloatAttr(2.0, &v11, v8);
  *a2 = result;
  if (!a2[4])
  {
    goto LABEL_11;
  }

  return result;
}

BOOL mlir::mps::RandomTruncatedNormalOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = (v3 + 64);
  v5 = v6;
  v7 = v4[3];
  if (v7)
  {
    v9 = v4[1];
    v8 = v4[2];
    v10 = v4[4];
    v11 = v4[5];
    v26[0] = v2;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v7, "result_element_type", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) & 1) != 0 && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v9, "mean", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "std_dev", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "minimum", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v5, "maximum", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v10, "sampling_method", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
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

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = "requires attribute 'result_element_type'";
    v25 = 259;
    mlir::OpState::emitOpError(this, &v24, v26);
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v32;
        v17 = __p;
        if (v32 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v32 = v15;
        operator delete(v17);
      }

      v18 = v29;
      if (v29)
      {
        v19 = v30;
        v20 = v29;
        if (v30 != v29)
        {
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
          v20 = v29;
        }

        v30 = v18;
        operator delete(v20);
      }

      if (v27 != &v28)
      {
        free(v27);
      }
    }
  }

  return v14;
}

uint64_t mlir::mps::detail::RandomUniformOpGenericAdaptorBase::RandomUniformOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t mlir::mps::RandomUniformOpAdaptor::verify(uint64_t a1, uint64_t a2)
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
    v12 = "'mps.random_uniform' op requires attribute 'result_element_type'";
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

uint64_t mlir::mps::RandomUniformOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v8 = mlir::DictionaryAttr::get(&v31, "result_element_type", 0x13uLL);
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
    v33 = 64;
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

uint64_t mlir::mps::RandomUniformOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v10, "result_element_type", 0x13, *a2);
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

unint64_t mlir::mps::RandomUniformOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::mps::RandomUniformOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 19 && (*a3 == 0x655F746C75736572 ? (v4 = a3[1] == 0x745F746E656D656CLL) : (v4 = 0), v4 ? (v5 = *(a3 + 11) == 0x657079745F746E65) : (v5 = 0), v5))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::mps::RandomUniformOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 19)
  {
    v4 = *a2 == 0x655F746C75736572 && a2[1] == 0x745F746E656D656CLL;
    if (v4 && *(a2 + 11) == 0x657079745F746E65)
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

uint64_t mlir::mps::RandomUniformOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    return mlir::NamedAttrList::append(a3, "result_element_type", 0x13uLL, *a2);
  }

  return result;
}

uint64_t mlir::mps::RandomUniformOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v2) & 1;
}

uint64_t mlir::mps::RandomUniformOp::setResultElementType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::mps::RandomUniformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

{
  v16 = a5;
  v17 = a4;
  v14 = a7;
  v15 = a6;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  result = mlir::TypeAttr::get(a8);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = result;
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::RandomUniformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  v19 = a6;
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v9 = *(a2 + 256);
  if (!v9)
  {
    operator new();
  }

  *v9 = a7;
  __src = v27;
  v26 = 0x200000000;
  mlir::ValueRange::ValueRange(v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = *(a2 + 256);
  v13 = mlir::RegionRange::RegionRange(v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomUniformOp::inferReturnTypes(v13, v14, v15, v24[0], v24[1], Dictionary, v12, v16, v23[0], v23[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = v26;
  v18 = *(a2 + 72);
  if (v18 + v26 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v26)
  {
    memcpy((*(a2 + 64) + 8 * v18), __src, 8 * v26);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v27)
  {
    free(__src);
  }
}

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
  v9 = mlir::TypeAttr::get(a7);
  v10 = *(a2 + 256);
  if (!v10)
  {
    operator new();
  }

  *v10 = v9;
  __src = v28;
  v27 = 0x200000000;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  v14 = mlir::RegionRange::RegionRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomUniformOp::inferReturnTypes(v14, v15, v16, v25[0], v25[1], Dictionary, v13, v17, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v18 = v27;
  v19 = *(a2 + 72);
  if (v19 + v27 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy((*(a2 + 64) + 8 * v19), __src, 8 * v27);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v28)
  {
    free(__src);
  }
}

unint64_t mlir::mps::RandomUniformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

{
  v19 = a6;
  v20 = a5;
  v17 = a8;
  v18 = a7;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::TypeAttr::get(a9);
  v13 = *(a2 + 256);
  if (!v13)
  {
    operator new();
  }

  *v13 = result;
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

uint64_t mlir::mps::RandomUniformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::RandomUniformOp::build(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if ((mlir::mps::RandomUniformOp::inferReturnTypes(v20, v21, v22, a3, a4, v18, v19, v23, v26[0], v26[1], &__src) & 1) == 0)
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

BOOL mlir::mps::RandomUniformOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v3, "result_element_type", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
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
    v16 = "requires attribute 'result_element_type'";
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

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v130 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = v10[1];
    v24 = *(v10 + 4);
    if (!v24)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v76 = v10;
    mlir::TensorType::operator mlir::ShapedType();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = v76[1];
    v24 = *(v76 + 4);
    if (!v24)
    {
      goto LABEL_105;
    }
  }

  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
LABEL_105:
    v117 = a2;
    v118 = 0;
    hasRank = mlir::ShapedType::hasRank(&v117);
    v10 = *a2;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_108;
  }

  v78 = v25[1];
  v117 = a2;
  v118 = v78;
  v79 = mlir::ShapedType::hasRank(&v117);
  v10 = *a2;
  if (!v79)
  {
    goto LABEL_2;
  }

LABEL_108:
  {
    v80 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v81 = v10[1];
    v82 = *(v10 + 4);
    if (!v82)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v107 = v10;
    mlir::mps::ConstantOp::verify();
    v80 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v81 = v107[1];
    v82 = *(v107 + 4);
    if (!v82)
    {
      goto LABEL_131;
    }
  }

  v83 = v81;
  v84 = v82;
  do
  {
    v85 = v84 >> 1;
    v86 = &v83[2 * (v84 >> 1)];
    v88 = *v86;
    v87 = v86 + 2;
    v84 += ~(v84 >> 1);
    if (v88 < v80)
    {
      v83 = v87;
    }

    else
    {
      v84 = v85;
    }
  }

  while (v84);
  if (v83 != &v81[2 * v82] && *v83 == v80)
  {
    v91 = v83[1];
    v108 = a2;
    v109 = v91;
    mlir::ShapedType::getShape(&v108);
    v10 = *a2;
    if (!v92)
    {
      goto LABEL_134;
    }

LABEL_2:
    v11 = v10[17];
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

LABEL_131:
  v108 = a2;
  v109 = 0;
  mlir::ShapedType::getShape(&v108);
  v10 = *a2;
  if (v90)
  {
    goto LABEL_2;
  }

LABEL_134:
  {
    v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v94 = v10[1];
    v95 = *(v10 + 4);
    if (!v95)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v102 = v10;
    mlir::mps::ConstantOp::verify();
    v93 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v94 = v102[1];
    v95 = *(v102 + 4);
    if (!v95)
    {
      goto LABEL_147;
    }
  }

  v96 = v94;
  v97 = v95;
  do
  {
    v98 = v97 >> 1;
    v99 = &v96[2 * (v97 >> 1)];
    v101 = *v99;
    v100 = v99 + 2;
    v97 += ~(v97 >> 1);
    if (v101 < v93)
    {
      v96 = v100;
    }

    else
    {
      v97 = v98;
    }
  }

  while (v97);
  if (v96 != &v94[2 * v95] && *v96 == v93)
  {
    v103 = v96[1];
    goto LABEL_149;
  }

LABEL_147:
  v103 = 0;
LABEL_149:
  *&v115 = a2;
  *(&v115 + 1) = v103;
  ElementType = mlir::ShapedType::getElementType(&v115);
  if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType) || mlir::Type::isBF16(&ElementType) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64))
  {
    return 1;
  }

  v10 = *a2;
  v105 = *(*a2 + 17);
  if (v105 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v105 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_51;
  }

LABEL_7:
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = v10[1];
    v15 = *(v10 + 4);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = v10;
    mlir::mps::ConstantOp::verify();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = v31[1];
    v15 = *(v31 + 4);
    if (!v15)
    {
      goto LABEL_28;
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
    v32 = v16[1];
    goto LABEL_30;
  }

LABEL_28:
  v32 = 0;
LABEL_30:
  v113[0] = a2;
  v113[1] = v32;
  ElementType = mlir::ShapedType::getElementType(v113);
  if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType) && !mlir::Type::isBF16(&ElementType) && !mlir::Type::isSignedInteger(&ElementType, 32) && !mlir::Type::isSignedInteger(&ElementType, 64))
  {
    goto LABEL_51;
  }

  v33 = *a2;
  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = v33[1];
    v36 = *(v33 + 4);
    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v43 = v33;
    mlir::mps::ConstantOp::verify();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = v43[1];
    v36 = *(v43 + 4);
    if (!v36)
    {
      goto LABEL_47;
    }
  }

  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 != &v35[2 * v36] && *v37 == v34)
  {
    v44 = v37[1];
    goto LABEL_49;
  }

LABEL_47:
  v44 = 0;
LABEL_49:
  v112[0] = a2;
  v112[1] = v44;
  Shape = mlir::ShapedType::getShape(v112);
  v129 = 1;
  if (v46 == 1 && *Shape == v129)
  {
    return 1;
  }

LABEL_51:
  v47 = *a2;
  if (*(*a2 + 17) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v68 = v47[1];
      v69 = *(v47 + 4);
      if (!v69)
      {
        goto LABEL_120;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v68 = v47[1];
      v69 = *(v47 + 4);
      if (!v69)
      {
        goto LABEL_120;
      }
    }

    v70 = v68;
    v71 = v69;
    do
    {
      v72 = v71 >> 1;
      v73 = &v70[2 * (v71 >> 1)];
      v75 = *v73;
      v74 = v73 + 2;
      v71 += ~(v71 >> 1);
      if (v75 < v67)
      {
        v70 = v74;
      }

      else
      {
        v71 = v72;
      }
    }

    while (v71);
    if (v70 != &v68[2 * v69] && *v70 == v67)
    {
      v89 = v70[1];
      goto LABEL_122;
    }

LABEL_120:
    v89 = 0;
LABEL_122:
    v111[0] = a2;
    v111[1] = v89;
    ElementType = mlir::ShapedType::getElementType(v111);
    if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType) && !mlir::Type::isBF16(&ElementType) && !mlir::Type::isSignedInteger(&ElementType, 32) && !mlir::Type::isSignedInteger(&ElementType, 64))
    {
      goto LABEL_52;
    }

    return 1;
  }

LABEL_52:
  v110 = 261;
  v108 = a3;
  v109 = a4;
  mlir::Operation::emitOpError(&v117, a1, &v108);
  if (v117)
  {
    LODWORD(v115) = 3;
    *(&v115 + 1) = " #";
    v116 = 2;
    if (v120 >= v121)
    {
      if (v119 > &v115 || v119 + 24 * v120 <= &v115)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v48 = v119 + 24 * v120;
    v49 = v115;
    *(v48 + 2) = v116;
    *v48 = v49;
    v50 = ++v120;
    if (v117)
    {
      LODWORD(v115) = 5;
      *(&v115 + 1) = a5;
      if (v50 >= v121)
      {
        if (v119 > &v115 || v119 + 24 * v50 <= &v115)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v51 = v119 + 24 * v120;
      v52 = v115;
      *(v51 + 2) = v116;
      *v51 = v52;
      v53 = ++v120;
      if (v117)
      {
        LODWORD(v115) = 3;
        *(&v115 + 1) = " must be 0D tensor of floating point or 32/64-bit signed integer values or static-shape defined tensor with shape equal to [1] or unranked tensor of floating point or 32/64-bit signed integer values, but got ";
        v116 = 208;
        if (v53 >= v121)
        {
          if (v119 > &v115 || v119 + 24 * v53 <= &v115)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v54 = v119 + 24 * v120;
        v55 = v115;
        *(v54 + 2) = v116;
        *v54 = v55;
        ++v120;
        if (v117)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v115, a2);
          if (v120 >= v121)
          {
            if (v119 > &v115 || v119 + 24 * v120 <= &v115)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v56 = v119 + 24 * v120;
          v57 = v115;
          *(v56 + 2) = v116;
          *v56 = v57;
          ++v120;
        }
      }
    }
  }

  v58 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v117);
  if (v117)
  {
    mlir::InFlightDiagnostic::report(&v117);
  }

  if (v128 == 1)
  {
    if (v127 != &v128)
    {
      free(v127);
    }

    v59 = __p;
    if (__p)
    {
      v60 = v126;
      v61 = __p;
      if (v126 != __p)
      {
        do
        {
          v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
        }

        while (v60 != v59);
        v61 = __p;
      }

      v126 = v59;
      operator delete(v61);
    }

    v62 = v123;
    if (v123)
    {
      v63 = v124;
      v64 = v123;
      if (v124 != v123)
      {
        do
        {
          v66 = *--v63;
          v65 = v66;
          *v63 = 0;
          if (v66)
          {
            MEMORY[0x259C63150](v65, 0x1000C8077774924);
          }
        }

        while (v63 != v62);
        v64 = v123;
      }

      v124 = v62;
      operator delete(v64);
    }

    if (v119 != &v122)
    {
      free(v119);
    }
  }

  return v58;
}

uint64_t mlir::mps::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void mlir::mps::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (!mlir::mps::RankOp::inferReturnTypes(v6, v4, 1, v16[0], v16[1], v7, v8, v9, v12, v13, &__src))
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

unint64_t mlir::mps::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t mlir::mps::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::mps::RankOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
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
  if (!mlir::mps::RankOp::inferReturnTypes(v14, v12, 1, a3, a4, v15, v16, v17, v20, v21, &__src))
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

uint64_t mlir::mps::RankOp::verifyInvariantsImpl(mlir::Operation **this)
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

uint64_t mlir::mps::RankOp::verifyInvariants(mlir::Operation **this)
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

uint64_t mlir::mps::detail::ReadDataFromFileOpGenericAdaptorBase::ReadDataFromFileOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

uint64_t *mlir::mps::detail::ReadDataFromFileOpGenericAdaptorBase::getOffset(mlir::mps::detail::ReadDataFromFileOpGenericAdaptorBase *this)
{
  v5 = *(this + 5);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::mps::detail::ReadDataFromFileOpGenericAdaptorBase::getFileSymbol@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 32);
  if (v4)
  {
    this = mlir::StringAttr::getValue(&v4);
    *a2 = this;
    *(a2 + 8) = v3;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return this;
}

uint64_t mlir::mps::ReadDataFromFileOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 40))
    {
      v25[0] = *(a1 + 40);
      v27[0] = mlir::IntegerAttr::getType(v25);
      if (mlir::Type::isUnsignedInteger(v27, 64))
      {
        return 1;
      }

      v25[0] = "'mps.read_data_from_file' op attribute 'offset' failed to satisfy constraint: 64-bit unsigned integer attribute";
      v26 = 259;
      mlir::emitError(a2, v25, v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

        v7 = v30;
        if (!v30)
        {
          goto LABEL_55;
        }

        v21 = v31;
        v9 = v30;
        if (v31 == v30)
        {
LABEL_54:
          v31 = v7;
          operator delete(v9);
LABEL_55:
          if (v28 != &v29)
          {
            free(v28);
          }

          return v3;
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

        while (v21 != v7);
LABEL_53:
        v9 = v30;
        goto LABEL_54;
      }
    }

    else
    {
      v25[0] = "'mps.read_data_from_file' op requires attribute 'offset'";
      v26 = 259;
      mlir::emitError(a2, v25, v27);
      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

        v7 = v30;
        if (!v30)
        {
          goto LABEL_55;
        }

        v15 = v31;
        v9 = v30;
        if (v31 == v30)
        {
          goto LABEL_54;
        }

        do
        {
          v17 = *--v15;
          v16 = v17;
          *v15 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v15 != v7);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v25[0] = "'mps.read_data_from_file' op requires attribute 'file_path'";
    v26 = 259;
    mlir::emitError(a2, v25, v27);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

      v4 = __p;
      if (__p)
      {
        v5 = v33;
        v6 = __p;
        if (v33 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v33 = v4;
        operator delete(v6);
      }

      v7 = v30;
      if (!v30)
      {
        goto LABEL_55;
      }

      v8 = v31;
      v9 = v30;
      if (v31 == v30)
      {
        goto LABEL_54;
      }

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
      goto LABEL_53;
    }
  }

  return v3;
}

uint64_t mlir::mps::ReadDataFromFileOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
LABEL_69:
      v59 = v17;
      operator delete(v19);
LABEL_70:
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
LABEL_68:
    v19 = v58;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v49, "file_path", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(&v52, a4);
      if (v52)
      {
        LODWORD(v50) = 3;
        v51 = 54;
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
        goto LABEL_70;
      }

      v18 = v59;
      v19 = v58;
      if (v59 == v58)
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

  v30 = mlir::DictionaryAttr::get(&v49, "file_symbol", 0xBuLL);
  if (v30)
  {
    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v31 = v30;
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

  v43 = mlir::DictionaryAttr::get(&v49, "offset", 6uLL);
  if (!v43)
  {
    return 1;
  }

  if (*(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    a1[2] = v43;
    return 1;
  }

  v44 = v43;
  a3(&v52, a4);
  if (v52)
  {
    LODWORD(v50) = 3;
    v51 = 51;
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
      mlir::DiagnosticArgument::DiagnosticArgument(&v50, v44);
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