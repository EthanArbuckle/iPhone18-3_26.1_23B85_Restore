BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[3] == v2[2])
  {
    return a2[4] == v2[3];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SparseElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::SparseElementsAttrStorage,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &>(llvm::function_ref<void ()(mlir::detail::SparseElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DenseIntElementsAttr &,mlir::DenseElementsAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  a2[10] += 40;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 40;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v12 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 40, 40, 3);
    *Slow = 0;
    *(Slow + 8) = v12;
    *(Slow + 24) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 24) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 1), Slow);
  }

  return Slow;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long,llvm::ArrayRef<long long>>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long,llvm::ArrayRef<long long> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::StridedLayoutAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::StridedLayoutAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *a1;
  if (!v3)
  {
    Slow = 0;
    goto LABEL_17;
  }

  v5 = a2[1];
  v6 = 8 * v3;
  a1[10] += 8 * v3;
  Slow = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = Slow + 8 * v3;
  if (v4)
  {
    v9 = v8 > a1[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v19 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v3, 8 * v3, 3);
    a1 = v19;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v8;
    v10 = v6 - 8;
    if ((v6 - 8) >= 0x18)
    {
LABEL_7:
      v11 = Slow;
      v12 = v5;
      if (Slow - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (Slow + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (Slow + 16);
        v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = *v15;
          *(v16 - 1) = *(v15 - 1);
          *v16 = v18;
          v15 += 2;
          v16 += 2;
          v17 -= 4;
        }

        while (v17);
        if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v11 = Slow;
  v12 = v5;
  do
  {
LABEL_15:
    v20 = *v12++;
    *v11++ = v20;
  }

  while (v12 != (v5 + 8 * v3));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 32;
  v21 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 + 4;
  if (v4)
  {
    v23 = v22 > a1[1];
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v21 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v22;
  }

  *v21 = 0;
  v21[1] = v2;
  v21[2] = Slow;
  v21[3] = v3;
  return v21;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long &,llvm::ArrayRef<long long> &>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long &,llvm::ArrayRef<long long> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) == **a1 && (v3 = *(a2 + 24), v3 == v2[2]))
  {
    return memcmp(*(a2 + 16), v2[1], 8 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StridedLayoutAttrStorage * mlir::StorageUniquer::get<mlir::detail::StridedLayoutAttrStorage,long long &,llvm::ArrayRef<long long> &>(llvm::function_ref<void ()(mlir::detail::StridedLayoutAttrStorage *)>,mlir::TypeID,long long &,llvm::ArrayRef<long long> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::StridedLayoutAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::SymbolRefAttrStorage * mlir::StorageUniquer::get<mlir::detail::SymbolRefAttrStorage,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &>(llvm::function_ref<void ()(mlir::detail::SymbolRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::silc::detail::ShardingAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TypeAttrStorage * mlir::StorageUniquer::get<mlir::detail::TypeAttrStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::TypeAttrStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = Slow + 2;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    *Slow = 0;
    Slow[1] = v2;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(v6[1], Slow);
  }

  return Slow;
}

void mlir::Dialect::addAttribute<mlir::AffineMapAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::AffineMapAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::ArrayAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::ArrayAttr,mlir::Attribute,mlir::detail::ArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v21 = "builtin.array";
  v22 = 13;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::DenseArrayAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::DenseArrayAttr,mlir::Attribute,mlir::detail::DenseArrayAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v21 = "builtin.dense_array";
  v22 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::DenseIntOrFPElementsAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::DenseStringElementsAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::DenseResourceElementsAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::DictionaryAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::DictionaryAttr,mlir::Attribute,mlir::detail::DictionaryAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSB_21DictionaryAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSA_21DictionaryAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
  v21 = "builtin.dictionary";
  v22 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::FloatAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::FloatAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::IntegerAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::IntegerAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::IntegerSetAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::IntegerSetAttr,mlir::Attribute,mlir::detail::IntegerSetAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSB_21IntegerSetAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSA_21IntegerSetAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v21 = "builtin.integer_set";
  v22 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::OpaqueAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::OpaqueAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::SparseElementsAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::SparseElementsAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::StridedLayoutAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::StringAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::StringAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, v8);
  v2 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v3 = v12;
      }

      else
      {
        v3 = v12[0];
      }

      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != &v11)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::SymbolRefAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::SymbolRefAttr,mlir::Attribute,mlir::detail::SymbolRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id;
  v21 = "builtin.symbol_ref";
  v22 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addAttribute<mlir::TypeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::TypeAttr,mlir::Attribute,mlir::detail::TypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
  v21 = "builtin.type";
  v22 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, &v10);
  v2 = v15;
  if (v15 >= 8)
  {
    if ((v15 & 4) != 0)
    {
      if ((v15 & 2) != 0)
      {
        v3 = v14;
      }

      else
      {
        v3 = v14[0];
      }

      (*((v15 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v14[0], v14[1]);
    }
  }

  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }

  mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t mlir::Dialect::addAttribute<mlir::UnitAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::UnitAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = v11;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v24 = "builtin.unit";
  v25 = 12;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_8UnitAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::AbstractAttribute::get<mlir::AffineMapAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::AffineMapAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSB_20AffineMapAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSA_20AffineMapAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  *(a2 + 144) = "builtin.affine_map";
  *(a2 + 152) = 18;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::MemRefLayoutAttrInterface::Trait<mlir::AffineMapAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::getAffineMap;
  v2[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::isIdentity;
  v2[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::AffineMapAttr>::verifyLayout;
  {
    v5 = v2;
    llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::AffineMapAttr,mlir::Attribute,mlir::detail::AffineMapAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefLayoutAttrInterface::Trait<Empty>]";
  v6 = 95;
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13AffineMapAttrES2_NSA_20AffineMapAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  Context = mlir::AffineMap::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail20AffineMapAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_13AffineMapAttrEJRNS1_9AffineMapEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapAttrStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapAttrStorage,mlir::AffineMap &>(llvm::function_ref<void ()(mlir::detail::AffineMapAttrStorage *)>,mlir::TypeID,mlir::AffineMap &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSB_16ArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v11, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9ArrayAttrES2_NSA_16ArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v12 = a2;
  if (a4 >= *(a2 + 16))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a4;
  }

  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir6detail16ArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9ArrayAttrEJNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::ArrayAttrStorage,llvm::ArrayRef<mlir::Attribute>>(llvm::function_ref<void ()(mlir::detail::ArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSB_21DenseArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DenseArrayAttrES2_NSA_21DenseArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseArrayAttr>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseArrayAttr>(uint64_t a1, int64x2_t *a2, int64x2_t *a3)
{
  v37[5] = *MEMORY[0x277D85DE8];
  v21 = a1;
  v3 = *(a1 + 24);
  v20[0] = *(a1 + 8);
  v20[1] = v3;
  v4 = *a2;
  v19[0] = *a3;
  v19[1] = v4;
  mlir::AttrTypeSubElementHandler<std::tuple<mlir::Type,long long,llvm::ArrayRef<char>>,void>::replace(v20, v19, &v33);
  mlir::Attribute::getContext(&v21);
  v5 = v33;
  v6 = v34;
  v28 = v33;
  v29 = v34;
  v30 = v32;
  v31 = xmmword_2573695B0;
  v7 = v36;
  if (v36)
  {
    if (v36 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    memcpy(v32, v35, v36);
    *&v31 = v7;
    v5 = v28;
    v6 = v29;
    v8 = v30;
  }

  else
  {
    v8 = v32;
  }

  v9 = *v6;
  v22 = v5;
  Context = mlir::Type::getContext(&v22);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id;
  v23[1] = Context;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeERjRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v27[1] = v23;
  v26[0] = v22;
  v26[1] = v9;
  v26[2] = v8;
  v26[3] = v7;
  v12 = (v22 >> 4) ^ (v22 >> 9);
  v13 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v8, v8 + v7);
  v14 = __ROR8__(v9 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - 0x4B6D499041670D8DLL * v12 - 0x9AE16A3B2F90404FLL * v13 + 24;
  v15 = (__ROR8__(0xB492B66FBE98F273 * v12 - v9, 43) - 0x3C5A37A36834CED9 * v9 + __ROR8__((0x9AE16A3B2F90404FLL * v13) ^ 0xFF51AFD7ED558CCDLL, 30)) ^ v14;
  v16 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
  v24[0] = v26;
  v24[1] = v27;
  v25 = v26;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned int &,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
  if (v30 != v32)
  {
    free(v30);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  return ParametricStorageTypeImpl;
}

void mlir::AttrTypeSubElementHandler<std::tuple<mlir::Type,long long,llvm::ArrayRef<char>>,void>::replace(uint64_t a1@<X0>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v4 = a1 + 8;
  if (*a1)
  {
    v5 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_25736B7B0);
    v6 = *v5.i64[0];
  }

  else
  {
    v6 = 0;
  }

  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<char>,void>::replace(*(a1 + 16), *(a1 + 24), &__src);
  *(a3 + 16) = a3 + 40;
  *a3 = v6;
  *(a3 + 8) = v4;
  *(a3 + 24) = xmmword_2573695B0;
  v7 = __src;
  if ((a3 + 16) != &__src)
  {
    v8 = __n;
    if (__n)
    {
      if (__src != v12)
      {
        *(a3 + 16) = __src;
        *(a3 + 24) = v8;
        *(a3 + 32) = v11;
        return;
      }

      if (__n >= 0x29)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      memcpy((a3 + 40), __src, __n);
      v7 = __src;
      *(a3 + 24) = v8;
      __n = 0;
    }
  }

  if (v7 != v12)
  {
    free(v7);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<char>,void>::replace(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v3 = xmmword_2573695B0;
  v13 = xmmword_2573695B0;
  if (a2)
  {
    do
    {
      while (v13 < *(&v13 + 1))
      {
        v4 = *a1++;
        *(v12 + v13) = v4;
        *&v13 = v13 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v5 = a1;
      v6 = a2;
      v7 = a3;
      v11 = v3;
      llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(&v12, a1);
      v3 = v11;
      a3 = v7;
      a1 = v5 + 1;
      a2 = v6 - 1;
    }

    while (v6 != 1);
LABEL_6:
    v8 = v12;
    v9 = v13;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v9 && &v12 != a3)
    {
      if (v8 != v14)
      {
        *a3 = v8;
        *(a3 + 8) = v9;
        *(a3 + 16) = *(&v13 + 1);
        return;
      }

      if (v9 >= 0x29)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v10 = a3;
      memcpy(*a3, v8, v9);
      v8 = v12;
      *(v10 + 8) = v9;
      *&v13 = 0;
    }

    if (v8 != v14)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_2573695B0;
  }
}

uint64_t llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(uint64_t *a1, _BYTE *a2)
{
  v2 = a1[1];
  if (v2 + 1 > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*a1 + v2) = *a2;
  v3 = *a1;
  v4 = a1[1] + 1;
  a1[1] = v4;
  return v3 + v4 - 1;
}

void mlir::AbstractAttribute::get<mlir::DenseIntOrFPElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseIntOrFPElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseIntOrFPElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::DenseIntOrFPElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSB_31DenseIntOrFPElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_24DenseIntOrFPElementsAttrENS1_17DenseElementsAttrENSA_31DenseIntOrFPElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_int_or_fp_elements";
  *(a2 + 152) = 32;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseIntOrFPElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseIntOrFPElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseIntOrFPElementsAttr>::getValuesImpl(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(&v8, a2, v9);
  if (v11 == 1)
  {
    v5 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v5 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return;
    }

    v6 = v10;
    v10 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<unsigned int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<signed char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<signed char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

uint64_t mlir::DenseElementsAttr::tryGetValues<long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  *&v14 = mlir::ShapedType::getElementType(&v14);
  result = mlir::detail::getDenseElementBitWidth(v14);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v14);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v14;
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v15 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v15) || (result = mlir::IntegerType::getSignedness(&v15), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v14 = *(v5 + 8);
    v8 = v14;
    *(&v14 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v14);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<unsigned long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = long]";
  v6 = 54;
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<unsigned long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned long]";
  v6 = 63;
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

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned short>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned char>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned char>]";
  v6 = 77;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned char>,unsigned char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned short>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned short>]";
  v6 = 78;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned short>,unsigned short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<unsigned long long>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 16 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned int>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned int>]";
  v6 = 76;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned int>,unsigned int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<signed char>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 2 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<unsigned long long>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<unsigned long long>]";
  v6 = 82;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<unsigned long long>,unsigned long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result != 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<short>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<signed char>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<signed char>]";
  v6 = 75;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<signed char>,signed char,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 8)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<int>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<short>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<short>]";
  v6 = 69;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<short>,short,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 16)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<long long>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 16 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<int>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<int>]";
  v6 = 67;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<int>,int,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 32)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<float,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 4 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<long long>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<long long>]";
  v6 = 73;
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

uint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<long long>,long long,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v15);
  *&v15 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v15);
  if (result != 64)
  {
    goto LABEL_9;
  }

  result = mlir::Type::isIndex(&v15);
  if (result)
  {
    goto LABEL_3;
  }

  v13 = v15;
  if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v13 = 0;
  }

  v16 = v13;
  if (v13 && (!mlir::IntegerType::getSignedness(&v16) || (result = mlir::IntegerType::getSignedness(&v16), result == 1)))
  {
LABEL_3:
    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(v5 + 24);
    v9 = *(v5 + 16);
    *&v15 = *(v5 + 8);
    v8 = v15;
    *(&v15 + 1) = v9;
    Shape = mlir::ShapedType::getShape(&v15);
    result = mlir::ShapedType::getNumElements(Shape, v11);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = result;
    v12 = 1;
    *(a2 + 48) = v8;
    *(a2 + 56) = v9;
  }

  else
  {
LABEL_9:
    v12 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v12;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<double,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<double,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

unint64_t mlir::DenseElementsAttr::tryGetValues<float,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v31);
  result = mlir::detail::getDenseElementBitWidth(ElementType);
  if (result == 32 && ((v6 = *(*ElementType + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), !v20 ? (v21 = v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), v22))
  {
    v23 = *a1;
    v24 = *(*a1 + 32);
    v25 = *(v23 + 24);
    v27 = *(v23 + 16);
    *&v31 = *(v23 + 8);
    v26 = v31;
    *(&v31 + 1) = v27;
    Shape = mlir::ShapedType::getShape(&v31);
    result = mlir::ShapedType::getNumElements(Shape, v29);
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = 0;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    *(a2 + 40) = result;
    v30 = 1;
    *(a2 + 48) = v26;
    *(a2 + 56) = v27;
  }

  else
  {
    v30 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v30;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
      return;
    }
  }

  else
  {
    v12 = a3;
    v3 = a1;
    v4 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a1 = v3;
    a3 = v12;
    if (mlir::detail::TypeIDResolver<std::complex<float>,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_3;
    }
  }

  v5 = a3;
  v6 = a1;
  v13 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v13);
  if (mlir::ShapedType::getNumElements(Shape, v8))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>(v6, &v13);
    if (v15)
    {
      v9 = *(*v6 + 24);
      if (BYTE8(v13))
      {
        v10 = 0;
      }

      else
      {
        v10 = v14;
      }

      v11 = v13 + 8 * v10;
      *v5 = 1;
      *(v5 + 1) = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = 1;
    }

    else
    {
      *v5 = 0;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    *v5 = 1;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }
}

const char *llvm::getTypeName<double>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = double]";
  v6 = 56;
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

unint64_t mlir::DenseElementsAttr::tryGetValues<double,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v31);
  result = mlir::detail::getDenseElementBitWidth(ElementType);
  if (result == 64 && ((v6 = *(*ElementType + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), !v20 ? (v21 = v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id) : (v21 = 1), !v21 ? (v22 = v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id) : (v22 = 1), v22))
  {
    v23 = *a1;
    v24 = *(*a1 + 32);
    v25 = *(v23 + 24);
    v27 = *(v23 + 16);
    *&v31 = *(v23 + 8);
    v26 = v31;
    *(&v31 + 1) = v27;
    Shape = mlir::ShapedType::getShape(&v31);
    result = mlir::ShapedType::getNumElements(Shape, v29);
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = 0;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    *(a2 + 40) = result;
    v30 = 1;
    *(a2 + 48) = v26;
    *(a2 + 56) = v27;
  }

  else
  {
    v30 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v30;
  return result;
}

void _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }
  }

  else
  {
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIdEEJENS5_17integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    if (mlir::detail::TypeIDResolver<std::complex<double>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v11 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v11);
  if (mlir::ShapedType::getNumElements(Shape, v6))
  {
    mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>(a1, &v11);
    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }

    v7 = *(*a1 + 24);
    if (BYTE8(v11))
    {
      v8 = 0;
    }

    else
    {
      v8 = v12;
    }

    v9 = v11 + 16 * v8;
    *a3 = 1;
    *(a3 + 1) = v7;
    *(a3 + 8) = v9;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }
}

const char *llvm::getTypeName<std::complex<float>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<float>]";
  v6 = 69;
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

unint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<float>,float,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v30);
  v4 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v4);
  if (result == 32 && ((v6 = *(*v4 + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    v21 = *a1;
    v22 = *(*a1 + 32);
    v23 = *(v21 + 24);
    v25 = *(v21 + 16);
    *&v30 = *(v21 + 8);
    v24 = v30;
    *(&v30 + 1) = v25;
    Shape = mlir::ShapedType::getShape(&v30);
    result = mlir::ShapedType::getNumElements(Shape, v27);
    *a2 = v22;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = result;
    v28 = 1;
    *(a2 + 48) = v24;
    *(a2 + 56) = v25;
  }

  else
  {
    v28 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v28;
  return result;
}

const char *llvm::getTypeName<std::complex<double>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<double>]";
  v6 = 70;
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

unint64_t mlir::DenseElementsAttr::tryGetValues<std::complex<double>,double,void>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(*a1 + 8);
  ElementType = mlir::ShapedType::getElementType(&v30);
  v4 = mlir::ComplexType::getElementType(&ElementType);
  result = mlir::detail::getDenseElementBitWidth(v4);
  if (result == 64 && ((v6 = *(*v4 + 136), v6 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v7 = 1), !v7 ? (v8 = v6 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v9 = 1), !v9 ? (v10 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v10 = 1), !v10 ? (v11 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v11 = 1), !v11 ? (v12 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v12 = 1), !v12 ? (v13 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v13 = 1), !v13 ? (v14 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v14 = 1), !v14 ? (v15 = v6 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v15 = 1), !v15 ? (v16 = v6 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v16 = 1), !v16 ? (v17 = v6 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v17 = 1), !v17 ? (v18 = v6 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v18 = 1), !v18 ? (v19 = v6 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v19 = 1), !v19 ? (v20 = v6 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v20 = 1), v20 || v6 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    v21 = *a1;
    v22 = *(*a1 + 32);
    v23 = *(v21 + 24);
    v25 = *(v21 + 16);
    *&v30 = *(v21 + 8);
    v24 = v30;
    *(&v30 + 1) = v25;
    Shape = mlir::ShapedType::getShape(&v30);
    result = mlir::ShapedType::getNumElements(Shape, v27);
    *a2 = v22;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0;
    *(a2 + 24) = v22;
    *(a2 + 32) = v23;
    *(a2 + 40) = result;
    v28 = 1;
    *(a2 + 48) = v24;
    *(a2 + 56) = v25;
  }

  else
  {
    v28 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v28;
  return result;
}

mlir::DenseElementsAttr *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<mlir::Attribute,llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v9 = *(*a1 + 8);
    Shape = mlir::ShapedType::getShape(&v9);
    mlir::ShapedType::getNumElements(Shape, v5);
    operator new();
  }

  v7 = a2;
  v8 = a3;
  v6 = a1;
  mlir::ElementsAttr::try_value_begin<mlir::Attribute>();
  a1 = v6;
  a2 = v7;
  a3 = v8;
  if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id == v7)
  {
    goto LABEL_7;
  }

LABEL_3:

  return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(a1, a2, a3);
}

mlir::DenseElementsAttr *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  {
    v9 = a3;
    v4 = a1;
    v5 = a2;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>();
    a2 = v5;
    a1 = v4;
    a3 = v9;
    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id != v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = a3;
    result = mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(a1, &v11);
    if (v13)
    {
      v14[0] = v12[0];
      *(v14 + 15) = *(v12 + 15);
      operator new();
    }

    *v6 = 0;
    v6[16] = 0;
    return result;
  }

  if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(a1, a2, a3);
    }
  }

  else
  {
    v10 = a3;
    v7 = a1;
    v8 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v8;
    a1 = v7;
    a3 = v10;
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != v8)
    {
      goto LABEL_5;
    }
  }

  return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<BOOL>(a1, a3);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::AttributeElementIterator,mlir::Attribute>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) + a2;
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v4);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::IntElementIterator,llvm::APInt>::at@<X0>(void *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = result[1];
  v4 = result[4];
  if (result[2])
  {
    v5 = 0;
  }

  else
  {
    v5 = result[3] + a2;
  }

  if (v4 == 1)
  {
    v6 = (*(v3 + (v5 >> 3)) >> (v5 & 7)) & 1;
    *(a3 + 2) = 1;
    *a3 = v6;
  }

  else
  {
    *(a3 + 2) = v4;
    if (v4 >= 0x41)
    {
      llvm::APInt::initSlowCase(a3);
    }

    *a3 = 0;
    if (v4)
    {
      v7 = ((v4 - (v4 != 0)) >> 3) + 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {

      return memmove(a3, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v5) >> 3)), v7);
    }
  }

  return result;
}

BOOL mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::buildValueResult<BOOL>@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = *(*a1 + 8);
  *&v7 = mlir::ShapedType::getElementType(&v7);
  result = mlir::Type::isInteger(&v7, 1);
  if (result)
  {
    v7 = *(*a1 + 8);
    Shape = mlir::ShapedType::getShape(&v7);
    mlir::ShapedType::getNumElements(Shape, v6);
    operator new();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

mlir::DenseElementsAttr *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  {
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>(a1, a2, a3);
    }
  }

  else
  {
    v7 = a3;
    v4 = a1;
    v5 = a2;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v5;
    a1 = v4;
    a3 = v7;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APInt>,void>::resolveTypeID(void)::id != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  result = mlir::DenseElementsAttr::tryGetComplexIntValues(a1, &v8);
  if (v10)
  {
    v11[0] = v9[0];
    *(v11 + 15) = *(v9 + 15);
    operator new();
  }

  *v6 = 0;
  v6[16] = 0;
  return result;
}

const char *llvm::getTypeName<BOOL>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = BOOL]";
  v6 = 54;
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

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::BoolElementIterator,BOOL>::at(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 24) + a2;
  }

  return (*(*(a1 + 8) + (v2 >> 3)) >> (v2 & 7)) & 1;
}

mlir::DenseElementsAttr *mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  {
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
    }
  }

  else
  {
    v7 = a3;
    v4 = a1;
    v5 = a2;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>();
    a2 = v5;
    a1 = v4;
    a3 = v7;
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != v5)
    {
      goto LABEL_3;
    }
  }

  v6 = a3;
  result = mlir::DenseElementsAttr::tryGetFloatValues(a1, &v8);
  if (v11)
  {
    v12 = v9;
    *v13 = v10[0];
    *&v13[15] = *(v10 + 15);
    operator new();
  }

  *v6 = 0;
  v6[16] = 0;
  return result;
}

const char *llvm::getTypeName<std::complex<llvm::APInt>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<llvm::APInt>]";
  v6 = 75;
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

uint64_t *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexIntElementIterator,std::complex<llvm::APInt>>::at@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 32);
  v6 = *(a1 + 24) + a2;
  v7 = v3;
  return mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, a3);
}

mlir::DenseElementsAttr *_ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1_@<X0>(mlir::DenseElementsAttr *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  {
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = result;
    _ZNK4mlir6detail17ElementsAttrTraitINS_24DenseIntOrFPElementsAttrEE12getValueImplINSt3__17complexIN4llvm7APFloatEEEJENS5_17integral_constantIbLb0EEEEEDaNS_6TypeIDET1__cold_1();
    result = v5;
    if (mlir::detail::TypeIDResolver<std::complex<llvm::APFloat>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_6;
    }
  }

  result = mlir::DenseElementsAttr::tryGetComplexFloatValues(result, &v6);
  if (v9)
  {
    v10 = v7;
    *v11 = v8[0];
    *&v11[15] = *(v8 + 15);
    operator new();
  }

LABEL_6:
  *a3 = 0;
  a3[16] = 0;
  return result;
}

llvm::detail::IEEEFloat *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::FloatElementIterator,llvm::APFloat>::at@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v3 + a2;
  return llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v5, a3);
}

const char *llvm::getTypeName<std::complex<llvm::APFloat>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = std::complex<llvm::APFloat>]";
  v6 = 77;
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

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::DenseElementsAttr::ComplexFloatElementIterator,std::complex<llvm::APFloat>>::at(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v4 + a2;
  mlir::DenseElementsAttr::ComplexIntElementIterator::operator*(&v5, &v8);
  mlir::DenseElementsAttr::ComplexFloatElementIterator::mapElement(&v8, &v5, a3);
  if (v11 >= 0x41 && v10)
  {
    MEMORY[0x259C63150](v10, 0x1000C8000313F17);
  }

  if (v9 >= 0x41)
  {
    if (v8)
    {
      MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }
}

void mlir::AbstractAttribute::get<mlir::DenseStringElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseStringElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseStringElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::DenseStringElementsAttr,mlir::DenseElementsAttr,mlir::detail::DenseStringElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_23DenseStringElementsAttrENS1_17DenseElementsAttrENSB_30DenseStringElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_23DenseStringElementsAttrENS1_17DenseElementsAttrENSA_30DenseStringElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_string_elements";
  *(a2 + 152) = 29;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseStringElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseStringElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseStringElementsAttr>::getValuesImpl(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(&v8, a2, v9);
  if (v11 == 1)
  {
    v5 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v5 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return;
    }

    v6 = v10;
    v10 = 0;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplINS_9AttributeEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      v7 = v10;
      v10 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }
}

void _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }
  }

  else
  {
    _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplIN4llvm9StringRefEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    if (mlir::detail::TypeIDResolver<llvm::StringRef,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v12 = *(*a1 + 8);
  Shape = mlir::ShapedType::getShape(&v12);
  if (mlir::ShapedType::getNumElements(Shape, v7))
  {
    v8 = *(*a1 + 32);
    v12 = *(*a1 + 8);
    v9 = mlir::ShapedType::getShape(&v12);
    mlir::ShapedType::getNumElements(v9, v10);
    v11 = *(*a1 + 24);
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  *a3 = 1;
  *(a3 + 1) = v11;
  *(a3 + 8) = v8;
  *(a3 + 16) = 1;
}

const char *llvm::getTypeName<llvm::StringRef>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = llvm::StringRef]";
  v6 = 65;
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

uint64_t _ZNK4mlir6detail17ElementsAttrTraitINS_23DenseStringElementsAttrEE12getValueImplINS_9AttributeEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = result;
    mlir::ElementsAttr::try_value_begin<mlir::Attribute>();
    result = v7;
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = *(*result + 8);
    Shape = mlir::ShapedType::getShape(&v8);
    mlir::ShapedType::getNumElements(Shape, v5);
    operator new();
  }

  if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a3 = 0;
  a3[16] = 0;
  return result;
}

void mlir::AbstractAttribute::get<mlir::DenseResourceElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseResourceElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseResourceElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::DenseResourceElementsAttr,mlir::Attribute,mlir::detail::DenseResourceElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSB_32DenseResourceElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSA_32DenseResourceElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  *(a2 + 144) = "builtin.dense_resource_elements";
  *(a2 + 152) = 31;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::DenseResourceElementsAttr>,mlir::ElementsAttr::Trait<mlir::DenseResourceElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::DenseResourceElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (v6)
      {
LABEL_4:
        v7 = v5;
        v8 = v6;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[2 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 2;
          v8 += ~(v8 >> 1);
          if (v12 < v4)
          {
            v7 = v11;
          }

          else
          {
            v8 = v9;
          }
        }

        while (v8);
        if (v7 != &v5[2 * v6])
        {
          if (*v7 == v4)
          {
            v13 = v7[1];
          }

          else
          {
            v13 = 0;
          }

          return mlir::ElementsAttr::getNumElements(v2, v13);
        }
      }
    }

    else
    {
      v15 = v3;
      v16 = v2;
      llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
      v2 = v16;
      v4 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v5 = *(v15 + 8);
      v6 = *(v15 + 16);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;

    return mlir::ElementsAttr::getNumElements(v2, v13);
  }

  v13 = 0;

  return mlir::ElementsAttr::getNumElements(v2, v13);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSB_32DenseResourceElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_25DenseResourceElementsAttrES2_NSA_32DenseResourceElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  v7.i64[0] = a5;
  v7.i64[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseResourceElementsAttr>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::DenseResourceElementsAttr>(uint64_t a1, __int128 *a2, int64x2_t *a3)
{
  v18 = a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v5 = *a2;
  v16 = *a3;
  v17 = v5;
  v6 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v3, v4, &v17, &v16);
  v8 = v7;
  mlir::Attribute::getContext(&v18);
  *&v21 = v6;
  *(&v21 + 1) = v8;
  Context = mlir::Type::getContext(&v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id;
  v22[1] = Context;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v27[1] = v22;
  v25[0] = v21;
  v25[1] = v19;
  v26 = v20;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v19 - 0xAE502812AA7333) ^ DWORD1(v19));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (LODWORD(v25[0]) >> 4) ^ (LODWORD(v25[0]) >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v24 = v25;
  v23[0] = v25;
  v23[1] = v27;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14)))) ^ v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

void *mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(void *result, uint64_t a2, uint64_t a3, int64x2_t *a4)
{
  if (result)
  {
    v4 = *a4;
    *a4 = vaddq_s64(*a4, xmmword_25736B7B0);
    result = *v4.i64[0];
    if (*v4.i64[0])
    {
      v5 = *result;
      {
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        if (!v8)
        {
          return result;
        }
      }

      else
      {
        v15 = v5;
        v16 = result;
        mlir::scf::__mlir_ods_local_type_constraint_SCFOps5();
        result = v16;
        v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v7 = *(v15 + 8);
        v8 = *(v15 + 16);
        if (!v8)
        {
          return result;
        }
      }

      v9 = v7;
      v10 = v8;
      do
      {
        v11 = v10 >> 1;
        v12 = &v9[2 * (v10 >> 1)];
        v14 = *v12;
        v13 = v12 + 2;
        v10 += ~(v10 >> 1);
        if (v14 < v6)
        {
          v9 = v13;
        }

        else
        {
          v10 = v11;
        }
      }

      while (v10);
    }
  }

  return result;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSB_21DictionaryAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  if (v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = *v7++;
      v12 = v9;
      Name = mlir::NamedAttribute::getName(&v12);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, Name);
      mlir::AttrTypeImmediateSubElementWalker::walk(v11, *(&v12 + 1));
      v8 -= 16;
    }

    while (v8);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14DictionaryAttrES2_NSA_21DictionaryAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5.i64[0] = a3;
  v5.i64[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::DictionaryAttr>(a2, &v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::DictionaryAttr>(uint64_t a1, int64x2_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v2 = *(a1 + 8);
  v9 = *a2;
  v10 = v2;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::NamedAttribute>>,void>::replace(&v10, &v9, &v15);
  Context = mlir::Attribute::getContext(&v11);
  v12 = v14;
  v13 = 0x300000000;
  v4 = v16;
  if (v16)
  {
    v5 = Context;
    if (v16 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v14, v15, 16 * v16);
    LODWORD(v13) = v4;
    v6 = mlir::DictionaryAttr::get(v5, v12, v4);
    v7 = v12;
    if (v12 != v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = mlir::DictionaryAttr::get(Context, v14, 0);
    v7 = v12;
    if (v12 != v14)
    {
LABEL_7:
      free(v7);
    }
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v6;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<mlir::NamedAttribute>>,void>::replace(uint64_t a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::NamedAttribute>,void>::replace(*(a1 + 8), a2, &__src);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x300000000;
  v4 = v9;
  v5 = __src;
  if (v9)
  {
    v6 = &__src == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (__src == v11)
    {
      if (v9 >= 4)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a3 + 16), __src, 16 * v9);
      v5 = __src;
      *(a3 + 8) = v4;
    }

    else
    {
      *a3 = __src;
      v7 = v10;
      *(a3 + 8) = v4;
      *(a3 + 12) = v7;
      __src = v11;
      v10 = 0;
      v5 = v11;
    }

    v9 = 0;
  }

  if (v5 != v11)
  {
    free(v5);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::NamedAttribute>,void>::replace(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  __src = v13;
  v12 = 0x300000000;
  if (a1)
  {
    v5 = 16 * a1;
    do
    {
      while (1)
      {
        v6 = *a2;
        *a2 = vaddq_s64(*a2, xmmword_2573934C0);
        mlir::NamedAttribute::NamedAttribute(&v10, *v6.i64[0], *(v6.i64[0] + 8));
        if (v12 >= HIDWORD(v12))
        {
          break;
        }

        *(__src + v12) = v10;
        LODWORD(v12) = v12 + 1;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(&__src, &v10);
      v5 -= 16;
    }

    while (v5);
LABEL_7:
    v7 = v12;
    v8 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
    if (v7 && &__src != a3)
    {
      if (v8 == v13)
      {
        if (v7 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a3, v8, 16 * v7);
        v8 = __src;
        *(a3 + 8) = v7;
      }

      else
      {
        *a3 = v8;
        v9 = HIDWORD(v12);
        *(a3 + 8) = v7;
        *(a3 + 12) = v9;
        __src = v13;
        HIDWORD(v12) = 0;
        v8 = v13;
      }

      LODWORD(v12) = 0;
    }

    if (v8 != v13)
    {
      free(v8);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x300000000;
  }
}

void mlir::AbstractAttribute::get<mlir::FloatAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::FloatAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSB_16FloatAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSA_16FloatAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  *(a2 + 144) = "builtin.float";
  *(a2 + 152) = 13;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void mlir::detail::walkImmediateSubElementsImpl<mlir::FloatAttr>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v9 = (a1 + 3);
  v10 = a1[3];
  v13 = a1[1];
  v11 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v9);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v14, v9);
  }

  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  mlir::AttrTypeImmediateSubElementWalker::walk(v12, v13);
  if (v11 == v14[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v14);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9FloatAttrES2_NSA_16FloatAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FloatAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FloatAttr>(void *a1, uint64_t a2, uint64_t **a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v4 = (a1 + 3);
  v5 = a1[3];
  v15 = a1[1];
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v4);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v17, v4);
    if (v15)
    {
LABEL_3:
      v7 = **a3;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  mlir::Attribute::getContext(&v12);
  v13 = v7;
  Context = mlir::Type::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  v14[1] = Context;
  v10 = mlir::StorageUniquer::get<mlir::detail::FloatAttrStorage,mlir::Type &,llvm::APFloat const&>(AttributeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail16FloatAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9FloatAttrEJRNS1_4TypeERKNS_7APFloatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_, v14, &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id, &v13, &v16);
  if (v6 == v17[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
  }

  return v10;
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::FloatAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(llvm::APFloatBase *a1, uint64_t a2)
{
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v3)
  {

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
  }

  else
  {

    llvm::detail::IEEEFloat::~IEEEFloat(v2);
  }
}

void mlir::AbstractAttribute::get<mlir::IntegerAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::IntegerAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSB_18IntegerAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSA_18IntegerAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  *(a2 + 144) = "builtin.integer";
  *(a2 + 152) = 15;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::IntegerAttr,mlir::Attribute,mlir::detail::IntegerAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSB_18IntegerAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a2 + 8);
  v9[4] = v7;
  v11 = *(a2 + 24);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, (a2 + 16));
  }

  v10 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerAttrES2_NSA_18IntegerAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = a2;
  v5 = *(a2 + 8);
  v10 = *(a2 + 24);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, (a2 + 16));
  }

  v9 = *(a2 + 16);
  if (v5)
  {
    v6 = *a5;
  }

  else
  {
    v6 = 0;
  }

  mlir::Attribute::getContext(&v11);
  result = mlir::IntegerAttr::get(v6, &v9);
  if (v10 >= 0x41)
  {
    if (v9)
    {
      v8 = result;
      MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      return v8;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::detail::IntegerAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) >= 0x41u)
  {
    result = *(a2 + 16);
    if (result)
    {
      JUMPOUT(0x259C63150);
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14IntegerSetAttrES2_NSA_21IntegerSetAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  mlir::Attribute::getContext(&v10);
  v11 = v2;
  Context = mlir::IntegerSet::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir6detail21IntegerSetAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14IntegerSetAttrEJRNS1_10IntegerSetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v16[1] = v12;
  v15 = v11;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v11 - 0xAE502812AA7333) ^ HIDWORD(v11));
  v6 = (0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v11) ^ (v5 >> 47) ^ v5)) >> 47);
  v7 = ((0x9DDFEA08EB382D69 * v6) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (((0x759C16B48 * v6) & 0x7FFFFFFF8) + 8));
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetAttrStorage,mlir::IntegerSet &>(llvm::function_ref<void ()(mlir::detail::IntegerSetAttrStorage *)>,mlir::TypeID,mlir::IntegerSet &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void mlir::AbstractAttribute::get<mlir::OpaqueAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::OpaqueAttr>::getType;
  {
    v10 = v4;
    mlir::Builder::getZeroAttr();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSB_17OpaqueAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSA_17OpaqueAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  *(a2 + 144) = "builtin.opaque";
  *(a2 + 152) = 14;
  v6 = v14;
  if (v15)
  {
    v7 = 16 * v15;
    v8 = (v14 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v14;
  }

  if (v6 != v16)
  {
    free(v6);
  }
}

BOOL mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::FloatAttr,mlir::Attribute,mlir::detail::FloatAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueAttrES2_NSB_17OpaqueAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getReplaceImmediateSubElementsFn(void)::{lambda(mlir::OpaqueAttr,llvm::ArrayRef<mlir::Attribute>,llvm::ArrayRef<mlir::Type>)#1}::operator()<mlir::Attribute>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v20 = a2;
  v5 = a2[4];
  if (!a2[1])
  {
    v6 = 0;
    v7 = a2[2];
    v8 = a2[3];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = *a3;
  v7 = a2[2];
  v8 = a2[3];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = *a5;
LABEL_6:
  mlir::Attribute::getContext(&v20);
  v21 = v6;
  Context = mlir::Attribute::getContext(&v21);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id;
  v22[1] = Context;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10OpaqueAttrEJRNS1_10StringAttrERNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
  v26[1] = v22;
  v25[0] = v21;
  v25[1] = v7;
  v25[2] = v8;
  v25[3] = v9;
  v12 = (v21 >> 4) ^ (v21 >> 9);
  v13 = llvm::hash_value(v7, v8);
  v14 = 0x9AE16A3B2F90404FLL * ((v9 >> 4) ^ (v9 >> 9));
  v15 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * v13;
  v16 = 0xB492B66FBE98F273 * v12 - v14 + __ROR8__(v13 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 + 24;
  v17 = (v15 + __ROR8__(0xB492B66FBE98F273 * v12 - v13, 43)) ^ v16;
  v18 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * v17) >> 47) ^ (0x9DDFEA08EB382D69 * v17));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueAttrStorage,mlir::StringAttr &,llvm::StringRef &,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::OpaqueAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

void mlir::AbstractAttribute::get<mlir::SparseElementsAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::SparseElementsAttr>,mlir::ElementsAttr::Trait<mlir::SparseElementsAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSB_25SparseElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSA_25SparseElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id;
  *(a2 + 144) = "builtin.sparse_elements";
  *(a2 + 152) = 23;
  v4 = v11;
  if (v12)
  {
    v5 = 16 * v12;
    v6 = (v11 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v11;
  }

  if (v4 != v13)
  {
    free(v4);
  }
}

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::SparseElementsAttr>,mlir::ElementsAttr::Trait<mlir::SparseElementsAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getType;
  {
    v4 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getShapedType;
  v2[3] = 0;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v2;
    mlir::Builder::getZeroAttr();
    v3 = v14;
    v4 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v5 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v3[3] = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  v3[3] = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

void mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::SparseElementsAttr>::getValuesImpl(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = a1;
  {
    v3 = a2;
    v4 = a3;
    mlir::ElementsAttr::try_value_begin<mlir::Attribute>();
    a2 = v3;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<mlir::Attribute>(&v5);
  }

  if (mlir::detail::TypeIDResolver<mlir::Attribute,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<llvm::APInt,BOOL,unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(&v5, a2, a3);
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<llvm::APInt,BOOL,unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APInt>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APInt,BOOL,std::complex<llvm::APInt>,llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<BOOL,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<BOOL>(a1, a3);
}

void mlir::SparseElementsAttr::try_value_begin_impl<mlir::Attribute>(mlir::SparseElementsAttr *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mlir::SparseElementsAttr::getZeroAttr(a1);
  v6 = *(*(*a1 + 32) + 8);
  Shape = mlir::ShapedType::getShape(&v6);
  mlir::ShapedType::getNumElements(Shape, v3);
  mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
  if (v5 != __p)
  {
    if (((v5 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  operator new();
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEED1Ev(void *result)
{
  *result = &unk_28689AC38;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEED0Ev(void *a1)
{
  *a1 = &unk_28689AC38;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE7__cloneEPNS0_6__baseIST_EE(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_28689AC38;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  v3 = a1->n128_u64[1];
  v2 = a1[1].n128_u64[0];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEEclEOl(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return a1[6];
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return a1[6];
    }
  }

  v8 = a1[5] - v4;
  v9[0] = a1[4];
  v9[1] = v8;
  return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v9);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implINS2_9AttributeEEEN4llvm9FailureOrINS6_15mapped_iteratorINS6_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS5_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257393B5FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257393B5FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257393B5FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257393B5FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689ACC8;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689ACC8;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<mlir::Attribute ()(long)>,mlir::Attribute>,mlir::Attribute>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APInt>(v4, v5);
}

void *mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<llvm::APInt>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<llvm::APInt>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void *mlir::SparseElementsAttr::try_value_begin_impl<llvm::APInt>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *&v11[0] = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(a1);
  Width = mlir::IntegerType::getWidth(v11);
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v7);
  }

  v7 = 0;
  v9[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(v9, v11);
  if (v12)
  {
    v10[0] = *(v11 + 1);
    *(v10 + 15) = v11[1];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    Width = 0;
    v9[3] = 0;
    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  if (Width >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(uint64_t a1)
{
  *a1 = &unk_28689AD10;
  if (*(a1 + 72) >= 0x41u)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
    }
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(uint64_t a1)
{
  *a1 = &unk_28689AD10;
  if (*(a1 + 72) >= 0x41u)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
    }
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_28689AD10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = *(result + 48);
  *(a2 + 32) = *(result + 32);
  *(a2 + 48) = v4;
  v5 = *(result + 72);
  *(a2 + 72) = v5;
  if (v5 > 0x40)
  {

    llvm::APInt::initSlowCase((a2 + 64), (result + 64));
  }

  *(a2 + 64) = *(result + 64);
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(uint64_t a1)
{
  if (*(a1 + 72) >= 0x41u)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = a1;
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
      a1 = v3;
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;

    operator delete(v4);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 18) >= 0x41u)
  {
    v2 = __p[8];
    if (v2)
    {
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
    }
  }

  v3 = __p[1];
  if (v3)
  {
    __p[2] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257393F04)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257393F04 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257393F04))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257393F04 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

char *_ZZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm5APIntEEENS2_9FailureOrINS2_15mapped_iteratorINS2_6detail15SafeIntIteratorIlLb0EEENSt3__18functionIFT_lEEEDTclclsr3stdE7declvalISD_EEdeclL_ZNS9_7declvalB8nn200100IS8_EEDTclsr3stdE9__declvalISB_ELi0EEEvEEEEEEEENS_6detail17ElementsAttrTraitIS0_E13OverloadTokenISB_EEENKUllE_clEl@<X0>(char *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = *result;
  v4 = (*(result + 1) - *result) >> 3;
  if (!v4)
  {
LABEL_5:
    v7 = *(result + 16);
    *(a3 + 2) = v7;
    if (v7 > 0x40)
    {

      llvm::APInt::initSlowCase(a3, (result + 56));
    }

    v8 = *(result + 7);
    goto LABEL_15;
  }

  v5 = 0;
  while (1)
  {
    v6 = *v3++;
    if (v6 == a2)
    {
      break;
    }

    --v5;
    LODWORD(v4) = v4 - 1;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v9 = *(result + 3);
  v10 = *(result + 6);
  if (result[32])
  {
    v11 = 0;
  }

  else
  {
    v11 = *(result + 5) - v5;
  }

  if (v10 == 1)
  {
    v8 = (*(v9 + (v11 >> 3)) >> (v11 & 7)) & 1;
    *(a3 + 2) = 1;
LABEL_15:
    *a3 = v8;
    return result;
  }

  *(a3 + 2) = v10;
  if (v10 >= 0x41)
  {
    llvm::APInt::initSlowCase(a3);
  }

  *a3 = 0;
  if (v10)
  {
    v12 = ((v10 - (v10 != 0)) >> 3) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {

    return memmove(a3, (v9 + ((((v10 - (v10 != 0) + 8 * (v10 != 0)) & 0xFFFFFFFFFFFFFFF8) * v11) >> 3)), v12);
  }

  return result;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689ADA0;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689ADA0;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::APInt ()(long)>,llvm::APInt>,llvm::APInt>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<BOOL>(v4, v5);
}

BOOL mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<BOOL>@<W0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<BOOL>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned char>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(a1, a3);
}

BOOL mlir::SparseElementsAttr::try_value_begin_impl<BOOL>@<W0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 32);
  v10[0] = *(v4 + 8);
  *&v10[0] = mlir::ShapedType::getElementType(v10);
  result = mlir::Type::isInteger(v10, 1);
  if (result)
  {
    v10[0] = *(v4 + 8);
    Shape = mlir::ShapedType::getShape(v10);
    mlir::ShapedType::getNumElements(Shape, v7);
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v9 != __p)
    {
      if (((v9 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEED1Ev(void *result)
{
  *result = &unk_28689ADE8;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEED0Ev(void *a1)
{
  *a1 = &unk_28689ADE8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689ADE8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56) & 1;
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56) & 1;
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return (*(*(a1 + 32) + (v8 >> 3)) >> (v8 & 7)) & 1;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIbEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFblEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025739428BLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025739428BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025739428BLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025739428BLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689AE78;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689AE78;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<BOOL ()(long)>,BOOL>,BOOL>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned char>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned char>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<unsigned char>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<unsigned char>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<unsigned char,void>(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEED1Ev(void *result)
{
  *result = &unk_28689AEC0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEED0Ev(void *a1)
{
  *a1 = &unk_28689AEC0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689AEC0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIhEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFhlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573945FALL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573945FALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573945FALL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573945FALL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689AF50;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689AF50;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned char ()(long)>,unsigned char>,unsigned char>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned short>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<unsigned short>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long long>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<unsigned short>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<unsigned short,void>(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEED1Ev(void *result)
{
  *result = &unk_28689AFB0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEED0Ev(void *a1)
{
  *a1 = &unk_28689AFB0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689AFB0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 42) = *(a1 + 42);
  *(a2 + 32) = result;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 2 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implItEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFtlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002573949BDLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002573949BDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002573949BDLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002573949BDLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B040;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B040;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned short ()(long)>,unsigned short>,unsigned short>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned int>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<unsigned int>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<unsigned int>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<unsigned int,void>(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEED1Ev(void *result)
{
  *result = &unk_28689B0A0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEED0Ev(void *a1)
{
  *a1 = &unk_28689B0A0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B0A0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 32) = result;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 4 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIjEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFjlEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257394D80)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257394D80 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257394D80))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257394D80 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B130;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B130;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned int ()(long)>,unsigned int>,unsigned int>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long long>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<unsigned long long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<unsigned long long>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<signed char,short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<signed char>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<short,int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<unsigned long long>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<unsigned long long,void>(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEED1Ev(void *result)
{
  *result = &unk_28689B190;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEED0Ev(void *a1)
{
  *a1 = &unk_28689B190;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B190;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + 8 * v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIyEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFylEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257395143)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257395143 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257395143))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257395143 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B220;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B220;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<unsigned long long ()(long)>,unsigned long long>,unsigned long long>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<signed char>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<signed char>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<signed char>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<signed char>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<signed char,void>(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEED1Ev(void *result)
{
  *result = &unk_28689B280;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEED0Ev(void *a1)
{
  *a1 = &unk_28689B280;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x259C63180);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE7__cloneEPNS0_6__baseISS_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689B280;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  result = *(a1 + 32);
  *(a2 + 41) = *(a1 + 41);
  *(a2 + 32) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE18destroy_deallocateEv(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return *(a1 + 56);
  }

  v4 = 0;
  v5 = -(v3 >> 3);
  while (1)
  {
    v6 = *v2++;
    if (v6 == *a2)
    {
      break;
    }

    if (v5 == --v4)
    {
      return *(a1 + 56);
    }
  }

  v8 = *(a1 + 48) - v4;
  if (*(a1 + 40))
  {
    v8 = 0;
  }

  return *(*(a1 + 32) + v8);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIaEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFalEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x8000000257395506)
  {
    return a1 + 8;
  }

  if (((v2 & 0x8000000257395506 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000257395506))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000257395506 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::~OpaqueIterator(uint64_t result)
{
  *result = &unk_28689B310;
  if (*(result + 48) == 1)
  {
    v1 = *(result + 40);
    if (v1 == result + 16)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 40));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 40));
    }

    return v2;
  }

  return result;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_28689B310;
  if (*(a1 + 48) == 1)
  {
    v1 = *(a1 + 40);
    if (v1 == a1 + 16)
    {
      (*(*v1 + 32))(*(a1 + 40));
    }

    else if (v1)
    {
      (*(*v1 + 40))(*(a1 + 40));
    }
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<signed char ()(long)>,signed char>,signed char>::at(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8) + a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>(v4, v5);
}

uint64_t mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<short>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = mlir::SparseElementsAttr::try_value_begin_impl<short>(a1, v7);
  if (v7[48] == 1)
  {
    v5 = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(a1) == 1;
    mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short> &>(v5, v7, &v6);
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

void mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(mlir::SparseElementsAttr *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    v7 = a1;
    v3 = a2;
    v5 = a3;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<int,long long,short,unsigned short,int,unsigned int,long,unsigned long,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,float,double,std::complex<float>,std::complex<double>,std::integral_constant<BOOL,true>>();
    a2 = v3;
    a3 = v5;
    a1 = v7;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v3)
    {
      goto LABEL_3;
    }

LABEL_9:

    mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<int>(a1, a3);
    return;
  }

  if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id == a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  {
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_5:

      mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::getValueImpl<short,unsigned short,int,unsigned int,long,unsigned long,std::complex<llvm::APInt>,std::complex<unsigned char>,std::complex<unsigned short>,std::complex<unsigned int>,std::complex<unsigned long long>,std::complex<signed char>,std::complex<short>,std::complex<int>,std::complex<long long>,llvm::APFloat,float,double,std::complex<llvm::APFloat>,std::complex<float>,std::complex<double>,llvm::StringRef,std::integral_constant<BOOL,false>>(a1, a2, a3);
      return;
    }
  }

  else
  {
    v8 = a1;
    v4 = a2;
    v6 = a3;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v4;
    a3 = v6;
    a1 = v8;
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != v4)
    {
      goto LABEL_5;
    }
  }

  mlir::detail::ElementsAttrTrait<mlir::SparseElementsAttr>::buildValueResult<long long>(a1, a3);
}

uint64_t mlir::SparseElementsAttr::try_value_begin_impl<short>@<X0>(mlir::SparseElementsAttr *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = *(*a1 + 32);
  result = mlir::DenseElementsAttr::tryGetValues<short,void>(v7, v9);
  if (v10)
  {
    v8[0] = *(v9 + 1);
    *(v8 + 15) = v9[2];
    mlir::SparseElementsAttr::getFlattenedSparseIndices(a1, &__p);
    if (v6 != __p)
    {
      if (((v6 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    operator new();
  }

  *a2 = 0;
  a2[48] = 0;
  return result;
}

void mlir::detail::ElementsAttrIndexer::nonContiguous<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<short ()(long)>,short> &>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = a1;
  v4[0] = 0;
  v6 = 0;
  if (*(a2 + 40) == 1)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      if (v3 == a2 + 8)
      {
        v5 = v4;
        (*(*v3 + 24))(v3, v4);
      }

      else
      {
        v5 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 1;
  }

  operator new();
}

void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIsEEN4llvm9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISE_EEdeclL_ZNS_7declvalB8nn200100ISA_EEDTclsr3stdE9__declvalISC_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISC_EEEUllE_NS_9allocatorISP_EEFslEED1Ev(void *result)
{
  *result = &unk_28689B370;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}