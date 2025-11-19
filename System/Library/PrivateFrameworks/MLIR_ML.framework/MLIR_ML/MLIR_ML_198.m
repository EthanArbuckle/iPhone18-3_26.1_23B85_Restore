uint64_t mlir::BaseMemRefType::getMemorySpace(mlir::BaseMemRefType *this)
{
  v1 = 16;
  if (*(**this + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v1 = 48;
  }

  return *(*this + v1);
}

uint64_t mlir::BaseMemRefType::clone(uint64_t *a1, uint64_t *a2, mlir::AffineMap *a3, uint64_t a4)
{
  v4 = *a1;
  if (*(**a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    return mlir::MemRefType::get(a2, a3, a4, 0, 0, *(v4 + 16));
  }

  else
  {
    return mlir::MemRefType::get(a2, a3, a4, *(v4 + 32), *(v4 + 40), *(v4 + 48));
  }
}

uint64_t mlir::BaseMemRefType::clone(uint64_t *a1, uint64_t *a2, mlir::AffineMap *a3)
{
  v3 = *a1;
  v4 = *(**a1 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    return mlir::MemRefType::get(a2, a3, *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    return mlir::MemRefType::get(a2, a3, *(v3 + 8), 0, 0, *(v3 + 16));
  }

  return mlir::MemRefType::get(a2, a3, 0, *(v3 + 32), *(v3 + 40), *(v3 + 48));
}

uint64_t mlir::BaseMemRefType::getMemorySpaceAsInt(mlir::BaseMemRefType *this)
{
  v1 = *this;
  if (*(**this + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(v1 + 16);
    if (v2)
    {
LABEL_3:
      v4 = v2;
      return mlir::IntegerAttr::getInt(&v4);
    }
  }

  return 0;
}

uint64_t mlir::MemRefType::getMemorySpaceAsInt(mlir::MemRefType *this)
{
  if (!*(*this + 48))
  {
    return 0;
  }

  v2 = *(*this + 48);
  return mlir::IntegerAttr::getInt(&v2);
}

uint64_t mlir::UnrankedMemRefType::getMemorySpaceAsInt(mlir::UnrankedMemRefType *this)
{
  if (!*(*this + 16))
  {
    return 0;
  }

  v2 = *(*this + 16);
  return mlir::IntegerAttr::getInt(&v2);
}

unsigned int *mlir::computeRankReductionMask@<X0>(unsigned int *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 1;
  *&v25 = -1;
  *(&v25 + 1) = -1;
  v22 = 0;
  if (a2)
  {
    v10 = result;
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
    if (a5)
    {
      while (1)
      {
        while (1)
        {
          v14 = *&v10[2 * v12];
          v15 = a4 <= v13 || v14 == 1;
          if (v15 || (*(a3 + 8 * v13) != 0x8000000000000000 ? (v16 = v14 == 0x8000000000000000) : (v16 = 1), !v16))
          {
            if (a4 <= v13 || v14 != *(a3 + 8 * v13))
            {
              break;
            }
          }

          ++v13;
          v11 = (v11 + 1);
          v22 = v11;
          v12 = v11;
          if (a2 <= v11)
          {
            goto LABEL_23;
          }
        }

        result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v24, &v22, v23);
        if (v14 != 1)
        {
          goto LABEL_27;
        }

        LODWORD(v11) = ++v22;
        v12 = v22;
        if (a2 <= v22)
        {
          goto LABEL_23;
        }
      }
    }

    do
    {
      while (1)
      {
        v17 = *&v10[2 * v12];
        if (a4 <= v13 || v17 != *(a3 + 8 * v13))
        {
          break;
        }

        ++v13;
        v11 = (v11 + 1);
        v22 = v11;
        v12 = v11;
        if (a2 <= v11)
        {
          goto LABEL_23;
        }
      }

      result = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v24, &v22, v23);
      if (v17 != 1)
      {
        goto LABEL_27;
      }

      LODWORD(v11) = ++v22;
      v12 = v22;
    }

    while (a2 > v22);
LABEL_23:
    if (a4 != v13)
    {
LABEL_27:
      *a6 = 0;
      *(a6 + 24) = 0;
      if ((v24 & 1) == 0)
      {
        goto LABEL_28;
      }

      return result;
    }
  }

  else if (a4)
  {
    goto LABEL_27;
  }

  *(a6 + 16) = -1;
  v18 = v24;
  v19 = HIDWORD(v24);
  v20 = v24 & 1;
  *a6 = v24 | 1;
  *(a6 + 4) = v19;
  v24 = v20;
  if (v18)
  {
    *(a6 + 8) = v25;
    *&v25 = -1;
    v21 = HIDWORD(v25);
    *(a6 + 16) = DWORD2(v25);
    DWORD2(v25) = -1;
    if (v21 != -1)
    {
      *(a6 + 20) = v21;
      HIDWORD(v25) = -1;
    }
  }

  else
  {
    *(a6 + 8) = v25;
    LODWORD(v24) = 1;
    *&v25 = -1;
    *(&v25 + 1) = -1;
    *a6 = v18;
  }

  *(a6 + 24) = 1;
  if ((v24 & 1) == 0)
  {
LABEL_28:
    llvm::deallocate_buffer(v25, (4 * DWORD2(v25)));
  }

  return result;
}

uint64_t mlir::isRankReducedType(void *a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a1 == a3)
  {
    return 0;
  }

  if (a1)
  {
    v4 = *a1;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v34 = v4;
      v35 = a3;
      v33 = a1;
      mlir::tensor::ExpandShapeOp::fold();
      a1 = v33;
      a3 = v35;
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v34 + 8);
      v7 = *(v34 + 16);
      if (!v7)
      {
        goto LABEL_16;
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
      v24 = v8[1];
      v38 = a1;
      v39 = v24;
      if (!a3)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  v38 = a1;
  v39 = 0;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_17:
  v14 = *a3;
  {
    v36 = a3;
    v25 = v14;
    mlir::tensor::ExpandShapeOp::fold();
    a3 = v36;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v16 = *(v25 + 8);
    v17 = *(v25 + 16);
    if (v17)
    {
      goto LABEL_19;
    }

LABEL_31:
    v26 = 0;
    goto LABEL_32;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if (!v17)
  {
    goto LABEL_31;
  }

LABEL_19:
  v18 = v16;
  v19 = v17;
  do
  {
    v20 = v19 >> 1;
    v21 = &v18[2 * (v19 >> 1)];
    v23 = *v21;
    v22 = v21 + 2;
    v19 += ~(v19 >> 1);
    if (v23 < v15)
    {
      v18 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  while (v19);
  if (v18 == &v16[2 * v17] || *v18 != v15)
  {
    goto LABEL_31;
  }

  v26 = v18[1];
LABEL_32:
  v37[0] = a3;
  v37[1] = v26;
  Shape = mlir::ShapedType::getShape(&v38);
  v29 = v28;
  v30 = mlir::ShapedType::getShape(v37);
  if (v31 > v29)
  {
    return 1;
  }

  mlir::computeRankReductionMask(Shape, v29, v30, v31, 0, v40);
  if (v43 != 1)
  {
    return 2;
  }

  ElementType = mlir::ShapedType::getElementType(&v38);
  if (ElementType == mlir::ShapedType::getElementType(v37))
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

  if ((v40[0] & 1) == 0)
  {
    llvm::deallocate_buffer(v41, (4 * v42));
  }

  return result;
}

BOOL mlir::detail::isSupportedMemorySpace(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 1;
  }

  return v1 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id || *(**a1 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id;
}

uint64_t mlir::detail::getMemorySpaceAsInt(uint64_t result)
{
  if (result)
  {
    v1 = result;
    return mlir::IntegerAttr::getInt(&v1);
  }

  return result;
}

uint64_t mlir::MemRefType::get(uint64_t *a1, mlir::AffineMap *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v39 = a3;
  if (a4)
  {
    v10 = a4;
    if (!a6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  Context = mlir::Type::getContext(&v39);
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a2, Context, v12);
  v14 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
  v10 = v14;
  if (v14)
  {
    v15 = *v14;
    {
      v16 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (v18)
      {
LABEL_7:
        v19 = v17;
        v20 = v18;
        do
        {
          v21 = v20 >> 1;
          v22 = &v19[2 * (v20 >> 1)];
          v24 = *v22;
          v23 = v22 + 2;
          v20 += ~(v20 >> 1);
          if (v24 < v16)
          {
            v19 = v23;
          }

          else
          {
            v20 = v21;
          }
        }

        while (v20);
        if (v19 != &v17[2 * v18] && *v19 == v16)
        {
          a5 = v19[1];
          if (!v6)
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      mlir::MemRefType::get();
      v16 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (v18)
      {
        goto LABEL_7;
      }
    }
  }

  a5 = 0;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_18:
  v25 = *(*v6 + 136);
  v26 = v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  if (v25 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v27 = v6;
  }

  else
  {
    v27 = 0;
  }

  v50[0] = v27;
  if (v26)
  {
    mlir::IntegerAttr::getValue(v50, &v44);
    v37 = v45;
    if (v45 >= 0x41)
    {
      if (v37 - llvm::APInt::countLeadingZerosSlowCase(&v44) >= 0x41)
      {
        if (v44)
        {
          MEMORY[0x259C63150](v44, 0x1000C8000313F17);
        }

        goto LABEL_22;
      }

      v38 = *v44;
      MEMORY[0x259C63150]();
      if (v38)
      {
        goto LABEL_22;
      }
    }

    else if (v44)
    {
      goto LABEL_22;
    }

    v6 = 0;
  }

LABEL_22:
  v41 = mlir::Type::getContext(&v39);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v41);
  v40[0] = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v40[1] = &v41;
  v50[0] = _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_;
  v50[1] = v40;
  v44 = a1;
  v45 = a2;
  v29 = v39;
  v46 = v39;
  v47 = v10;
  v48 = a5;
  v49 = v6;
  v30 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a1, &a1[a2]);
  v31 = (v29 >> 4) ^ (v29 >> 9);
  v32 = 0x9AE16A3B2F90404FLL * ((v6 >> 4) ^ (v6 >> 9));
  v33 = __ROR8__(0xB492B66FBE98F273 * v30 - v31, 43) + __ROR8__(v32 ^ 0xFF51AFD7ED558CCDLL, 30);
  v34 = __ROR8__(v31 ^ 0xC949D7C7509E6557, 20) - v32 + 0xB492B66FBE98F273 * v30 - 0xAE502812AA7333 + 32;
  v35 = 0x9DDFEA08EB382D69 * ((v33 - 0x3C5A37A36834CED9 * ((v10 >> 4) ^ (v10 >> 9))) ^ v34);
  v42[0] = &v44;
  v42[1] = v50;
  v43 = &v44;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v34 ^ (v35 >> 47) ^ v35)) >> 32) >> 15) ^ (-348639895 * (v34 ^ (v35 >> 47) ^ v35))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v43, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v42);
}

uint64_t mlir::MemRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, void *a3, mlir::AffineMap *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v36 = a5;
  if (a6)
  {
    v14 = a6;
    if (!a8)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  Context = mlir::Type::getContext(&v36);
  MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a4, Context, v16);
  v18 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
  v14 = v18;
  if (v18)
  {
    v19 = *v18;
    {
      v20 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      if (v22)
      {
LABEL_7:
        v23 = v21;
        v24 = v22;
        do
        {
          v25 = v24 >> 1;
          v26 = &v23[2 * (v24 >> 1)];
          v28 = *v26;
          v27 = v26 + 2;
          v24 += ~(v24 >> 1);
          if (v28 < v20)
          {
            v23 = v27;
          }

          else
          {
            v24 = v25;
          }
        }

        while (v24);
        if (v23 != &v21[2 * v22] && *v23 == v20)
        {
          a7 = v23[1];
          if (!v8)
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      mlir::MemRefType::get();
      v20 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      if (v22)
      {
        goto LABEL_7;
      }
    }
  }

  a7 = 0;
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29 = *(*v8 + 136);
  v30 = v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  if (v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v31 = v8;
  }

  else
  {
    v31 = 0;
  }

  v39 = v31;
  if (v30)
  {
    mlir::IntegerAttr::getValue(&v39, &v37);
    v34 = v38;
    if (v38 >= 0x41)
    {
      if (v34 - llvm::APInt::countLeadingZerosSlowCase(&v37) >= 0x41)
      {
        if (v37)
        {
          MEMORY[0x259C63150](v37, 0x1000C8000313F17);
        }

        goto LABEL_22;
      }

      v35 = *v37;
      MEMORY[0x259C63150]();
      if (v35)
      {
        goto LABEL_22;
      }
    }

    else if (v37)
    {
      goto LABEL_22;
    }

    v8 = 0;
  }

LABEL_22:
  v32 = mlir::Type::getContext(&v36);
  return mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(a1, a2, v32, a3, a4, v36, v14, a7, v8);
}

uint64_t mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((mlir::MemRefType::verify(a1, a2, a4, a5, a6, a7, a8, a9) & 1) == 0)
  {
    return 0;
  }

  v24 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v23[1] = &v24;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_;
  v28[1] = v23;
  v27[0] = a4;
  v27[1] = a5;
  v27[2] = a6;
  v27[3] = a7;
  v27[4] = a8;
  v27[5] = a9;
  v16 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(a4, &a4[a5]);
  v17 = (a6 >> 4) ^ (a6 >> 9);
  v18 = 0x9AE16A3B2F90404FLL * ((a9 >> 4) ^ (a9 >> 9));
  v19 = __ROR8__(0xB492B66FBE98F273 * v16 - v17, 43) + __ROR8__(v18 ^ 0xFF51AFD7ED558CCDLL, 30);
  v20 = __ROR8__(v17 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v18 - 0x4B6D499041670D8DLL * v16 + 32;
  v21 = 0x9DDFEA08EB382D69 * ((v19 - 0x3C5A37A36834CED9 * ((a7 >> 4) ^ (a7 >> 9))) ^ v20);
  v25[0] = v27;
  v25[1] = v28;
  v26 = v27;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 32) >> 15) ^ (-348639895 * (v20 ^ (v21 >> 47) ^ v21))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v26, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v25);
}

uint64_t mlir::MemRefType::get(uint64_t a1, mlir::AffineMap *a2, uint64_t a3, unint64_t MultiDimIdentityMap, uint64_t a5)
{
  v5 = a5;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v20 = a5;
  v21 = a3;
  if (!MultiDimIdentityMap)
  {
    Context = mlir::Type::getContext(&v21);
    MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a2, Context, v8);
  }

  v19 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
  if (v5)
  {
    v9 = *(*v5 + 136);
    v10 = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v11 = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? v5 : 0;
    v25 = v11;
    if (v10)
    {
      mlir::IntegerAttr::getValue(&v25, &v23);
      v14 = v24;
      if (v24 >= 0x41)
      {
        if (v14 - llvm::APInt::countLeadingZerosSlowCase(&v23) >= 0x41)
        {
          if (v23)
          {
            MEMORY[0x259C63150](v23, 0x1000C8000313F17);
          }

          goto LABEL_8;
        }

        v18 = *v23;
        MEMORY[0x259C63150](v23, 0x1000C8000313F17, v15, v16, v17);
        if (v18)
        {
          goto LABEL_8;
        }
      }

      else if (v23)
      {
        goto LABEL_8;
      }

      v5 = 0;
    }
  }

LABEL_8:
  v20 = v5;
  v25 = mlir::Type::getContext(&v21);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v25);
  v23 = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v24 = &v25;
  return mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(TypeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_13AffineMapAttrERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_, &v23, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, &v22, &v21, &v19, &v20);
}

uint64_t mlir::MemRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, mlir::AffineMap *a4, uint64_t *a5, unint64_t MultiDimIdentityMap, uint64_t a7)
{
  v22 = a5;
  if (!MultiDimIdentityMap)
  {
    Context = mlir::Type::getContext(&v22);
    MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a4, Context, v13);
  }

  v14 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
  if (a7)
  {
    v15 = *(*a7 + 136);
    v16 = v15 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v17 = v15 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? a7 : 0;
    v25 = v17;
    if (v16)
    {
      mlir::IntegerAttr::getValue(&v25, &v23);
      v20 = v24;
      if (v24 >= 0x41)
      {
        if (v20 - llvm::APInt::countLeadingZerosSlowCase(&v23) >= 0x41)
        {
          if (v23)
          {
            MEMORY[0x259C63150](v23, 0x1000C8000313F17);
          }

          goto LABEL_8;
        }

        v21 = *v23;
        MEMORY[0x259C63150](v23);
        if (v21)
        {
          goto LABEL_8;
        }
      }

      else if (v23)
      {
        goto LABEL_8;
      }

      a7 = 0;
    }
  }

LABEL_8:
  v18 = mlir::Type::getContext(&v22);
  return mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::AffineMapAttr,mlir::Attribute>(a1, a2, v18, a3, a4, v22, v14, a7);
}

uint64_t mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::AffineMapAttr,mlir::Attribute>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8)
{
  v8 = a7;
  *&v32 = a4;
  *(&v32 + 1) = a5;
  v31 = a6;
  v29 = a8;
  v30 = a7;
  if (!a7)
  {
    goto LABEL_16;
  }

  v10 = *a7;
  {
    v27 = a5;
    v28 = a7;
    v23 = a4;
    v24 = a6;
    v25 = v10;
    v26 = a2;
    v22 = a1;
    mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::AffineMapAttr,mlir::Attribute>();
    a2 = v26;
    a1 = v22;
    a4 = v23;
    a5 = v27;
    v8 = v28;
    a6 = v24;
    v11 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v12 = *(v25 + 8);
    v13 = *(v25 + 16);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    a7 = 0;
    goto LABEL_16;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
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
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_14;
  }

  a7 = v14[1];
LABEL_16:
  if ((mlir::MemRefType::verify(a1, a2, a4, a5, a6, v8, a7, v29) & 1) == 0)
  {
    return 0;
  }

  v34 = a3;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(a3);
  v33[0] = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v33[1] = &v34;
  return mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(TypeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_13AffineMapAttrERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_, v33, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, &v32, &v31, &v30, &v29);
}

uint64_t mlir::MemRefType::get(uint64_t a1, mlir::AffineMap *a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v17 = a3;
  if (!a4)
  {
    Context = mlir::Type::getContext(&v17);
    MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a2, Context, v11);
    v16 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
    v6 = mlir::Type::getContext(&v17);
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v16 = mlir::AffineMapAttr::get(a4);
  v6 = mlir::Type::getContext(&v17);
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = mlir::IntegerType::get(v6, 64, 0);
  v8 = mlir::IntegerAttr::get(v7, a5);
LABEL_6:
  v15 = v8;
  v20 = mlir::Type::getContext(&v17);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v20);
  v19[0] = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  v19[1] = &v20;
  return mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(TypeUniquer, _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_13AffineMapAttrERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_, v19, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, &v18, &v17, &v16, &v15);
}

uint64_t mlir::MemRefType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, mlir::AffineMap *a4, uint64_t *a5, unint64_t a6, unsigned int a7)
{
  v21 = a5;
  if (!a6)
  {
    Context = mlir::Type::getContext(&v21);
    MultiDimIdentityMap = mlir::AffineMap::getMultiDimIdentityMap(a4, Context, v17);
    v12 = mlir::AffineMapAttr::get(MultiDimIdentityMap);
    v13 = mlir::Type::getContext(&v21);
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v12 = mlir::AffineMapAttr::get(a6);
  v13 = mlir::Type::getContext(&v21);
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = mlir::IntegerType::get(v13, 64, 0);
  v15 = mlir::IntegerAttr::get(v14, a7);
LABEL_6:
  v19 = mlir::Type::getContext(&v21);
  return mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::AffineMapAttr,mlir::Attribute>(a1, a2, v19, a3, a4, v21, v12, v15);
}

uint64_t mlir::getStridesAndOffset(uint64_t a1, uint64_t a2, void *a3)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v52 = v6;
  if (v6)
  {
    Strides = mlir::StridedLayoutAttr::getStrides(&v52);
    llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a2, *a2 + 8 * *(a2 + 8), Strides, &Strides[8 * v8]);
    *a3 = mlir::StridedLayoutAttr::getOffset(&v52);
    return 1;
  }

  v48 = 0;
  v49[0] = v5;
  v51 = a1;
  v52 = v54;
  v53 = 0x400000000;
  v49[1] = *(a1 + 40);
  AffineMap = mlir::MemRefLayoutAttrInterface::getAffineMap(v49);
  if (mlir::AffineMap::getNumResults(&AffineMap) != 1 && !mlir::AffineMap::isIdentity(&AffineMap))
  {
    result = 0;
    v41 = v52;
    if (v52 == v54)
    {
      return result;
    }

    goto LABEL_36;
  }

  Context = mlir::Type::getContext(&v51);
  AffineConstantExpr = mlir::getAffineConstantExpr(0, Context, v11);
  v13 = mlir::Type::getContext(&v51);
  v15 = mlir::getAffineConstantExpr(1, v13, v14);
  v48 = AffineConstantExpr;
  v16 = *(v51 + 16);
  if (v16 > HIDWORD(v53))
  {
    LODWORD(v53) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v52;
  v18 = v53;
  if (v53 >= v16)
  {
    v19 = *(v51 + 16);
  }

  else
  {
    v19 = v53;
  }

  if (v19)
  {
    if (v19 < 4)
    {
      v20 = v52;
      v21 = v19;
      do
      {
LABEL_19:
        *v20++ = AffineConstantExpr;
        --v21;
      }

      while (v21);
      goto LABEL_20;
    }

    v20 = (v52 + 8 * (v19 & 0xFFFFFFFC));
    v21 = v19 & 3;
    v22 = vdupq_n_s64(AffineConstantExpr);
    v23 = (v52 + 16);
    v24 = v19 & 0xFFFFFFFC;
    do
    {
      v23[-1] = v22;
      *v23 = v22;
      v23 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v19 != (v19 & 0xFFFFFFFC))
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  v25 = v16 - v18;
  if (v16 <= v18)
  {
    goto LABEL_27;
  }

  v26 = &v17[8 * v18];
  if (v25 < 4)
  {
    v27 = &v17[8 * v18];
    v28 = v16 - v18;
    do
    {
LABEL_26:
      *v27++ = AffineConstantExpr;
      --v28;
    }

    while (v28);
    goto LABEL_27;
  }

  v27 = v26 + (v25 & 0xFFFFFFFFFFFFFFFCLL);
  v28 = v25 & 3;
  v29 = vdupq_n_s64(AffineConstantExpr);
  v30 = v26 + 1;
  v31 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v30[-1] = v29;
    *v30 = v29;
    v30 += 2;
    v31 -= 4;
  }

  while (v31);
  if (v25 != (v25 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_26;
  }

LABEL_27:
  LODWORD(v53) = v16;
  if (!mlir::AffineMap::isIdentity(&AffineMap) || (v32 = *(v51 + 16)) != 0 && (v33 = *(v51 + 8), v34 = mlir::Type::getContext(&v51), CanonicalStridedLayoutExpr = mlir::makeCanonicalStridedLayoutExpr(v33, v32, v34), (extractStrides(CanonicalStridedLayoutExpr, v15, v52, v53, &v48) & 1) == 0))
  {
    v36 = mlir::AffineMap::getResult(&AffineMap, 0);
    NumDims = mlir::AffineMap::getNumDims(&AffineMap);
    NumSymbols = mlir::AffineMap::getNumSymbols(&AffineMap);
    mlir::simplifyAffineExpr(v36, NumDims, NumSymbols);
  }

  v39 = v48;
  v49[0] = v48;
  if (mlir::AffineExpr::getKind(v49) == 5)
  {
    mlir::AffineConstantExpr::AffineConstantExpr(v49, v39);
    if (v49[0])
    {
      goto LABEL_33;
    }

LABEL_39:
    *a3 = 0x8000000000000000;
    v40 = v53;
    if (!v53)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  mlir::AffineConstantExpr::AffineConstantExpr(v49, 0);
  if (!v49[0])
  {
    goto LABEL_39;
  }

LABEL_33:
  *a3 = mlir::AffineConstantExpr::getValue(v49);
  v40 = v53;
  if (v53)
  {
LABEL_40:
    v43 = v52;
    for (i = 8 * v40; i; i -= 8)
    {
      v45 = *v43;
      v49[0] = *v43;
      if (mlir::AffineExpr::getKind(v49) == 5)
      {
        mlir::AffineConstantExpr::AffineConstantExpr(v49, v45);
        if (!v49[0])
        {
          goto LABEL_47;
        }
      }

      else
      {
        mlir::AffineConstantExpr::AffineConstantExpr(v49, 0);
        if (!v49[0])
        {
LABEL_47:
          v47 = *(a2 + 8);
          Value = 0x8000000000000000;
          if (v47 >= *(a2 + 12))
          {
LABEL_48:
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          goto LABEL_44;
        }
      }

      Value = mlir::AffineConstantExpr::getValue(v49);
      v47 = *(a2 + 8);
      if (v47 >= *(a2 + 12))
      {
        goto LABEL_48;
      }

LABEL_44:
      *(*a2 + 8 * v47) = Value;
      ++*(a2 + 8);
      ++v43;
    }
  }

LABEL_49:
  result = 1;
  v41 = v52;
  if (v52 == v54)
  {
    return result;
  }

LABEL_36:
  v42 = result;
  free(v41);
  return v42;
}

void mlir::getStridesAndOffset(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = 0;
  __src = v8;
  v7 = 0x600000000;
  mlir::getStridesAndOffset(a1, &__src, &v5);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (&__src != a2)
  {
    v3 = v7;
    if (v7)
    {
      if (v7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a2 + 16), __src, 8 * v7);
      *(a2 + 8) = v3;
    }
  }

  v4 = __src;
  *(a2 + 64) = v5;
  if (v4 != v8)
  {
    free(v4);
  }
}

uint64_t mlir::TupleType::getFlattenedTypes(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 8);
  if (v2)
  {
    v4 = 8 * v2;
    v5 = *result + 16;
    do
    {
      while (1)
      {
        v6 = *v5;
        v7 = *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id ? *v5 : 0;
        v9 = v7;
        if (!v7)
        {
          break;
        }

        result = mlir::TupleType::getFlattenedTypes(&v9, a2);
        v5 += 8;
        v4 -= 8;
        if (!v4)
        {
          return result;
        }
      }

      v8 = *(a2 + 8);
      if (v8 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a2 + 8 * v8) = v6;
      ++*(a2 + 8);
      v5 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

uint64_t mlir::canonicalizeStridedLayout(uint64_t a1)
{
  v1 = a1;
  v14 = a1;
  v12 = *(a1 + 32);
  AffineMap = mlir::MemRefLayoutAttrInterface::getAffineMap(&v12);
  if ((mlir::AffineMap::isIdentity(&AffineMap) & 1) == 0 && mlir::AffineMap::getNumResults(&AffineMap) <= 1)
  {
    if (mlir::AffineMap::getNumDims(&AffineMap) || mlir::AffineMap::getNumSymbols(&AffineMap))
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = *(v1 + 8);
        Context = mlir::Type::getContext(&v14);
        mlir::makeCanonicalStridedLayoutExpr(v3, v2, Context);
        v5 = mlir::AffineMap::getResult(&AffineMap, 0);
        NumDims = mlir::AffineMap::getNumDims(&AffineMap);
        NumSymbols = mlir::AffineMap::getNumSymbols(&AffineMap);
        mlir::simplifyAffineExpr(v5, NumDims, NumSymbols);
      }
    }

    else
    {
      v8 = mlir::AffineMap::getResult(&AffineMap, 0);
      *&v12 = v8;
      if (mlir::AffineExpr::getKind(&v12) == 5)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      mlir::AffineConstantExpr::AffineConstantExpr(&v12, v9);
      v11 = v12;
      if (v12 && !mlir::AffineConstantExpr::getValue(&v11))
      {
        return mlir::MemRefType::get(*(v1 + 8), *(v1 + 16), *(v1 + 24), 0, 0, *(v1 + 48));
      }
    }
  }

  return v1;
}

uint64_t mlir::makeCanonicalStridedLayoutExpr(uint64_t a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (a2 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v6 = 0;
    do
    {
      AffineDimExpr = mlir::getAffineDimExpr(v6, a3, a3);
      if (v10 >= 4uLL)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11[v10] = AffineDimExpr;
      v8 = ++v10;
      v6 = (v6 + 1);
    }

    while (a2 != v6);
  }

  else
  {
    v8 = 0;
  }

  return mlir::makeCanonicalStridedLayoutExpr(a1, a2, v11, v8, a3);
}

uint64_t mlir::makeCanonicalStridedLayoutExpr(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3, uint64_t a4, mlir::MLIRContext *a5)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v27 = a3;
  v28 = a4;
  if (a2)
  {
    mlir::AffineMap::inferFromExprList(&v27, 1uLL, a5, v29);
    NumDims = mlir::AffineMap::getNumDims(v29[0]);
    NumSymbols = mlir::AffineMap::getNumSymbols(v29[0]);
    v26 = 0;
    if (!v28)
    {
      v18 = 0;
LABEL_19:
      mlir::simplifyAffineExpr(v18, NumDims, NumSymbols);
    }

    v10 = 0;
    v11 = v27;
    v12 = 8 * a2 - 8;
    v13 = 8 * v28 - 8;
    v14 = 1;
    while (1)
    {
      v15 = *(a1 + v12);
      v25 = *(v11 + v13);
      if (v10)
      {
        break;
      }

      AffineConstantExpr = mlir::getAffineConstantExpr(v14, a5, v8);
      v20 = v26;
      v18 = mlir::AffineExpr::operator*(&v25, AffineConstantExpr);
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_9:
      v26 = v18;
      if (v15 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v15;
      }

      if (v13)
      {
        v14 *= v21;
        v10 |= v15 < 1;
        v22 = v12;
        v12 -= 8;
        v13 -= 8;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    AffineSymbolExpr = mlir::getAffineSymbolExpr(NumSymbols, a5, v8);
    NumSymbols = (NumSymbols + 1);
    v17 = v26;
    v18 = mlir::AffineExpr::operator*(&v25, AffineSymbolExpr);
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = mlir::AffineExpr::operator+(&v26, v18);
    goto LABEL_9;
  }

  return mlir::getAffineConstantExpr(0, a5, a3);
}

uint64_t mlir::isStrided(uint64_t a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = v5;
  v4[1] = 0x400000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, v4, &v3);
  if (v4[0] != v5)
  {
    free(v4[0]);
  }

  return StridesAndOffset & 1;
}

BOOL mlir::isLastMemrefDimUnitStride(uint64_t a1)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = 0x600000000;
  if (mlir::getStridesAndOffset(a1, &v5, &v4))
  {
    v1 = v5;
    if (v6)
    {
      v2 = *(v5 + v6 - 1) == 1;
      if (v5 == v7)
      {
        return v2;
      }
    }

    else
    {
      v2 = 1;
      if (v5 == v7)
      {
        return v2;
      }
    }

    goto LABEL_6;
  }

  v2 = 0;
  v1 = v5;
  if (v5 != v7)
  {
LABEL_6:
    free(v1);
  }

  return v2;
}

uint64_t mlir::trailingNDimsContiguous(uint64_t a1, unint64_t a2)
{
  v31[7] = *MEMORY[0x277D85DE8];
  v30[0] = v31;
  v30[1] = 0x600000000;
  if ((mlir::getStridesAndOffset(a1, v30, &v27) & 1) == 0)
  {
    v5 = 0;
    v4 = v30[0];
    if (v30[0] == v31)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = v30[0];
  if (LODWORD(v30[1]))
  {
    v5 = *(v30[0] + LODWORD(v30[1]) - 1) == 1;
    if (v30[0] == v31)
    {
      goto LABEL_7;
    }

LABEL_6:
    free(v4);
    goto LABEL_7;
  }

  v5 = 1;
  if (v30[0] != v31)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = 8 * (v6 - a2);
  if (v6 <= a2)
  {
    v7 = 0;
  }

  v8 = v7 + *(a1 + 8);
  if (v6 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (v9)
  {
    v10 = 8 * v9;
    v11 = (v7 + *(a1 + 8));
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  *v30 = *(a1 + 32);
  if (mlir::MemRefLayoutAttrInterface::isIdentity(v30))
  {
    return 1;
  }

  v26 = 0;
  v30[0] = v31;
  v30[1] = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, v30, &v26);
  v14 = v30[0];
  if (StridesAndOffset)
  {
    if (LODWORD(v30[1]) >= a2)
    {
      v15 = LODWORD(v30[1]) - a2;
    }

    else
    {
      v15 = 0;
    }

    if (LODWORD(v30[1]) >= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = LODWORD(v30[1]);
    }

    if (v16)
    {
      v27 = v29;
      v28 = 0x600000000;
      v17 = 8 * v9 - 8;
      if (v17)
      {
        LODWORD(v21) = 0;
        v22 = 1;
        do
        {
          if (v21 >= HIDWORD(v28))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v22 *= *(v8 + v17);
          *&v27[8 * v21] = v22;
          v21 = (v28 + 1);
          LODWORD(v28) = v28 + 1;
          v17 -= 8;
        }

        while (v17);
        v18 = v27;
        v19 = v16 - 1;
        if (v16 - 1 != v21)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v18 = v29;
        v19 = v16 - 1;
        if (v16 != 1)
        {
          goto LABEL_47;
        }
      }

      if (!v19)
      {
        v25 = v18;
LABEL_54:
        v20 = v25 == v18;
        if (v18 == v29)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v23 = &v14[8 * v15];
      v24 = 8 * v16 - 8;
      while (v24 && *v23 == *&v18[v24 - 8])
      {
        v23 += 8;
        v24 -= 8;
        if (!v24)
        {
          v25 = v18;
          goto LABEL_54;
        }
      }

LABEL_47:
      v20 = 0;
      if (v18 == v29)
      {
LABEL_49:
        v14 = v30[0];
        goto LABEL_50;
      }

LABEL_48:
      free(v18);
      goto LABEL_49;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

LABEL_50:
  if (v14 != v31)
  {
    free(v14);
  }

  return v20;
}

uint64_t extractStrides(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v26 = a2;
  RHS = a1;
  if (mlir::AffineExpr::getKind(&RHS) >= 5)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&RHS, 0);
    v25 = RHS;
    if (RHS)
    {
      goto LABEL_3;
    }

LABEL_8:
    v27 = a1;
    RHS = a1;
    if (mlir::AffineExpr::getKind(&RHS) == 6)
    {
      mlir::AffineDimExpr::AffineDimExpr(&RHS, a1);
      if (RHS)
      {
LABEL_10:
        Position = mlir::AffineDimExpr::getPosition(&RHS);
        v12 = mlir::AffineExpr::operator+((a3 + 8 * Position), a2);
        v13 = &RHS;
LABEL_11:
        *(a3 + 8 * mlir::AffineDimExpr::getPosition(v13)) = v12;
        return 1;
      }
    }

    else
    {
      mlir::AffineDimExpr::AffineDimExpr(&RHS, 0);
      if (RHS)
      {
        goto LABEL_10;
      }
    }

    v14 = mlir::AffineExpr::operator*(&v27, a2);
    *a5 = mlir::AffineExpr::operator+(a5, v14);
    return 1;
  }

  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&RHS, a1);
  v25 = RHS;
  if (!RHS)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (mlir::AffineExpr::getKind(&v25) == 4 || mlir::AffineExpr::getKind(&v25) == 3 || mlir::AffineExpr::getKind(&v25) == 2)
  {
    return 0;
  }

  if (mlir::AffineExpr::getKind(&v25) == 1)
  {
    LHS = mlir::AffineBinaryOpExpr::getLHS(&v25);
    RHS = LHS;
    if (mlir::AffineExpr::getKind(&RHS) == 6)
    {
      v16 = LHS;
    }

    else
    {
      v16 = 0;
    }

    mlir::AffineDimExpr::AffineDimExpr(&RHS, v16);
    v27 = RHS;
    if (RHS)
    {
      v20 = (a3 + 8 * mlir::AffineDimExpr::getPosition(&v27));
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v25);
      v21 = mlir::AffineExpr::operator*(&RHS, a2);
      v12 = mlir::AffineExpr::operator+(v20, v21);
      v13 = &v27;
      goto LABEL_11;
    }

    RHS = mlir::AffineBinaryOpExpr::getLHS(&v25);
    if (mlir::AffineExpr::isSymbolicOrConstant(&RHS))
    {
      v22 = mlir::AffineBinaryOpExpr::getRHS(&v25);
      v23 = mlir::AffineBinaryOpExpr::getLHS(&v25);
    }

    else
    {
      v22 = mlir::AffineBinaryOpExpr::getLHS(&v25);
      v23 = mlir::AffineBinaryOpExpr::getRHS(&v25);
    }

    v24 = mlir::AffineExpr::operator*(&v26, v23);
    return extractStrides(v22, v24, a3, a4, a5);
  }

  else
  {
    mlir::AffineExpr::getKind(&v25);
    v17 = mlir::AffineBinaryOpExpr::getLHS(&v25);
    Strides = extractStrides(v17, a2, a3, a4, a5);
    v19 = mlir::AffineBinaryOpExpr::getRHS(&v25);
    return Strides & extractStrides(v19, a2, a3, a4, a5) & 1;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18ComplexTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11ComplexTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = *MEMORY[0x277D85DE8];
  if (a2 != a4)
  {
    v71 = mlir::TypeRange::dereference_iterator(a1, a2);
    v73 = a4;
    v74 = (v71 >> 4) ^ (v71 >> 9);
    v94 = v74;
    if (a2 + 1 == a4)
    {
      v12 = 8;
      v50 = a4;
    }

    else
    {
      v80 = mlir::TypeRange::dereference_iterator(a1, a2 + 1);
      v73 = a4;
      v4 = (v80 >> 4) ^ (v80 >> 9);
      v95 = v4;
      if (a2 + 2 == a4)
      {
        v12 = 16;
        v50 = a4;
      }

      else
      {
        v81 = mlir::TypeRange::dereference_iterator(a1, a2 + 2);
        v73 = a4;
        v9 = (v81 >> 4) ^ (v81 >> 9);
        v96 = v9;
        if (a2 + 3 == a4)
        {
          v12 = 24;
          v50 = a4;
        }

        else
        {
          v82 = mlir::TypeRange::dereference_iterator(a1, a2 + 3);
          v73 = a4;
          v6 = (v82 >> 4) ^ (v82 >> 9);
          v97 = v6;
          if (a2 + 4 == a4)
          {
            v12 = 32;
            v50 = a4;
          }

          else
          {
            v83 = mlir::TypeRange::dereference_iterator(a1, a2 + 4);
            v73 = a4;
            v7 = (v83 >> 4) ^ (v83 >> 9);
            v98 = v7;
            if (a2 + 5 == a4)
            {
              v12 = 40;
              v50 = a4;
            }

            else
            {
              v84 = mlir::TypeRange::dereference_iterator(a1, a2 + 5);
              v73 = a4;
              v72 = (v84 >> 4) ^ (v84 >> 9);
              v99 = v72;
              if (a2 + 6 == a4)
              {
                v12 = 48;
                v50 = a4;
              }

              else
              {
                v85 = (v84 >> 4) ^ (v84 >> 9);
                v86 = mlir::TypeRange::dereference_iterator(a1, a2 + 6);
                v73 = a4;
                v8 = (v86 >> 4) ^ (v86 >> 9);
                v100 = v8;
                if (a2 + 7 == a4)
                {
                  v12 = 56;
                  v50 = a4;
                }

                else
                {
                  v87 = mlir::TypeRange::dereference_iterator(a1, a2 + 7);
                  v73 = a4;
                  v5 = (v87 >> 4) ^ (v87 >> 9);
                  v101 = v5;
                  v50 = a2 + 8;
                  if (v50 == a4)
                  {
                    v12 = 64;
                    v50 = a4;
                  }

                  else
                  {
                    mlir::TypeRange::dereference_iterator(a1, v50);
                    v73 = a4;
                    v12 = 64;
                  }
                }

                v72 = v85;
              }
            }
          }
        }
      }
    }

    v88 = v74 + 0x298DF016A9F64655;
    v89 = v7 + 0x4BF62CB950C3753ALL;
    if (v50 == v73)
    {
      return llvm::hashing::detail::hash_short(&v94, v12, 0xFF51AFD7ED558CCDLL);
    }

    v13 = (0xB492B66FBE98F273 * __ROR8__(v4 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v14 = v72 - 0x4B6D499041670D8DLL * __ROR8__(v8 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v15 = __ROR8__(v88 + v4 + v9, 44) + v88 + __ROR8__(v13 + v88 + v6 - 0xAE502812AB8D92, 21);
    v16 = v88 + v4 + v9 + v6;
    v17 = v72 + v8 + v89;
    v18 = __ROR8__(v17, 44) + v89 + __ROR8__(v14 + v9 + v89 + v5, 21);
    v19 = v17 + v5;
    v90 = ~&v94;
    v20 = 0x544962662A7EE1A4;
    v21 = 64;
    while (1)
    {
      v91 = v13;
      v92 = v18;
      v22 = mlir::TypeRange::dereference_iterator(a1, v50);
      v23 = a4;
      v94 = (v22 >> 4) ^ (v22 >> 9);
      if (v50 + 1 == a4)
      {
        v24 = 1;
        v25 = 56;
        v26 = 8;
        goto LABEL_29;
      }

      v27 = mlir::TypeRange::dereference_iterator(a1, v50 + 1);
      v23 = a4;
      v95 = (v27 >> 4) ^ (v27 >> 9);
      if (v50 + 2 == a4)
      {
        v24 = 2;
        v25 = 48;
        v26 = 16;
        goto LABEL_29;
      }

      v28 = mlir::TypeRange::dereference_iterator(a1, v50 + 2);
      v23 = a4;
      v96 = (v28 >> 4) ^ (v28 >> 9);
      if (v50 + 3 == a4)
      {
        v24 = 3;
        v25 = 40;
        v26 = 24;
        do
        {
LABEL_29:
          v39 = v26;
          v26 = v25;
          v25 = v39 % v25;
        }

        while (v25);
        v40 = (&v94 + v26);
        do
        {
          v42 = *(v40 - 1);
          v40 = (v40 - 1);
          v41 = v42;
          v43 = &v40[v24];
          v44 = v40;
          do
          {
            v45 = v44;
            v44 = v43;
            *v45 = *v43;
            v46 = (&v102 - v43);
            v47 = __OFSUB__(v24 * 8, v46);
            v49 = v24 * 8 - v46;
            v48 = (v49 < 0) ^ v47;
            v43 = (&v94 + v49);
            if (v48)
            {
              v43 = &v44[v24];
            }
          }

          while (v43 != v40);
          *v44 = v41;
        }

        while (v40 != &v94);
        goto LABEL_36;
      }

      v29 = mlir::TypeRange::dereference_iterator(a1, v50 + 3);
      v23 = a4;
      v97 = (v29 >> 4) ^ (v29 >> 9);
      if (v50 + 4 != a4)
      {
        v30 = mlir::TypeRange::dereference_iterator(a1, v50 + 4);
        v23 = a4;
        v98 = (v30 >> 4) ^ (v30 >> 9);
        if (v50 + 5 == a4)
        {
          v24 = 5;
          v25 = 24;
          v26 = 40;
        }

        else
        {
          v31 = mlir::TypeRange::dereference_iterator(a1, v50 + 5);
          v23 = a4;
          v99 = (v31 >> 4) ^ (v31 >> 9);
          if (v50 + 6 == a4)
          {
            v24 = 6;
            v25 = 16;
            v26 = 48;
          }

          else
          {
            v32 = mlir::TypeRange::dereference_iterator(a1, v50 + 6);
            v23 = a4;
            v100 = (v32 >> 4) ^ (v32 >> 9);
            if (v50 + 7 != a4)
            {
              v70 = mlir::TypeRange::dereference_iterator(a1, v50 + 7);
              v23 = a4;
              v101 = (v70 >> 4) ^ (v70 >> 9);
              v50 += 8;
              if (v50 == a4)
              {
                v50 = a4;
              }

              else
              {
                mlir::TypeRange::dereference_iterator(a1, v50);
                v23 = a4;
              }

              v24 = 8;
              goto LABEL_37;
            }

            v24 = 7;
            v25 = 8;
            v26 = 56;
          }
        }

        goto LABEL_29;
      }

      v24 = 4;
      v33 = 31;
      if (&v98 + v90 < 0x1F)
      {
        v33 = &v98 + v90;
      }

      v34 = &v94;
      if (v33 < 3 || &v94 < (&v98 + v33 + 1) && &v98 < (&v94 + v33 + 1))
      {
        break;
      }

      v56 = v33 + 1;
      if (v33 >= 0xF)
      {
        v57 = v56 & 0x70;
        v58 = v94;
        v59 = v95;
        v94 = v98;
        v95 = v99;
        v98 = v58;
        v99 = v59;
        if (v57 != 16)
        {
          v60 = v96;
          v61 = v97;
          v96 = v100;
          v97 = v101;
          v100 = v60;
          v101 = v61;
          if (v57 != 32)
          {
            v62 = v98;
            v63 = v99;
            v98 = v102;
            v99 = v103;
            v102 = v62;
            v103 = v63;
            if (v57 != 48)
            {
              v64 = v100;
              v65 = v101;
              v100 = v104;
              v101 = v105;
              v104 = v64;
              v105 = v65;
            }
          }
        }

        if (v56 == v57)
        {
          goto LABEL_36;
        }

        if ((v56 & 0xC) == 0)
        {
          v34 = &v94 + v57;
          v35 = v57 + 32;
LABEL_24:
          v36 = (v34 + 1);
          do
          {
            v37 = *(v36 - 1);
            *(v36 - 1) = *(&v94 + v35);
            *(&v94 + v35) = v37;
            if (v36 == &v98)
            {
              break;
            }

            v36 = (v36 + 1);
          }

          while (v35++ != 63);
          goto LABEL_36;
        }
      }

      else
      {
        v57 = 0;
      }

      v35 = (v56 & 0x7C) + 32;
      v34 = &v94 + (v56 & 0x7C);
      v66 = (&v98 + v57);
      v67 = (&v94 + v57);
      v68 = v57 - (v56 & 0x7C);
      do
      {
        v69 = *v67;
        *v67++ = *v66;
        *v66++ = v69;
        v68 += 4;
      }

      while (v68);
      if (v56 != (v56 & 0x7C))
      {
        goto LABEL_24;
      }

LABEL_36:
      v50 = v23;
LABEL_37:
      v51 = v14 + v16 + v20 + v95;
      v14 = v99 + v16 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v15 + v100, 42);
      v52 = v94 - 0x4B6D499041670D8DLL * v15;
      v53 = (0xB492B66FBE98F273 * __ROR8__(v51, 37)) ^ v92;
      v54 = __ROR8__(v91 + v19, 33);
      v15 = __ROR8__(v52 + v95 + v96, 44) + v52 + __ROR8__(v53 + v19 + v52 + v97, 21);
      v20 = 0xB492B66FBE98F273 * v54;
      v16 = v52 + v95 + v96 + v97;
      v55 = 0xB492B66FBE98F273 * v54 + v92 + v98;
      v18 = __ROR8__(v14 + v96 + v55 + v101, 21) + v55 + __ROR8__(v99 + v100 + v55, 44);
      v19 = v99 + v100 + v55 + v101;
      v21 += v24 * 8;
      v13 = v53;
      if (v50 == v23)
      {
        v75 = 0x9DDFEA08EB382D69 * (v19 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v19)));
        v76 = v53 - 0x4B6D499041670D8DLL * (v14 ^ (v14 >> 47)) - 0x622015F714C7D297 * (v75 ^ (v75 >> 47));
        v77 = 0x9DDFEA08EB382D69 * (v18 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v18)));
        v78 = 0x9DDFEA08EB382D69 * (v77 ^ (v77 >> 47)) - 0x4B6D499041670D8DLL * ((v21 ^ (v21 >> 47)) + v54);
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ v76)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ v76)))) ^ ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ v76)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ v76)))) >> 47));
      }
    }

    v35 = 32;
    goto LABEL_24;
  }

  v12 = 0;
  return llvm::hashing::detail::hash_short(&v94, v12, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if ((*a1)[1] != v3)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = 0;
  if (v3)
  {
    v7 = *v2;
    v8 = 8 * v3 - 8;
    v9 = *(a2 + 16);
    while (*v9 == mlir::TypeRange::dereference_iterator(v7, v6))
    {
      ++v6;
      ++v9;
      if (!v8)
      {
        goto LABEL_10;
      }

      v8 -= 8;
    }

    return 0;
  }

  v9 = *(a2 + 16);
LABEL_10:
  result = 0;
  if (v6 == v3 && v9 == (v5 + 8 * v3))
  {
    v11 = a2;
    v12 = *(a2 + 12);
    if (v2[3] != v12)
    {
      return 0;
    }

    v13 = *(v11 + 16);
    v14 = *(v11 + 8);
    v15 = v13 + 8 * v14;
    v16 = 0;
    if (v12)
    {
      v17 = v2[2];
      v18 = 8 * v12 - 8;
      v19 = (v13 + 8 * v14);
      while (*v19 == mlir::TypeRange::dereference_iterator(v17, v16))
      {
        ++v16;
        ++v19;
        if (!v18)
        {
          return v16 == v12 && v19 == (v15 + 8 * v12);
        }

        v18 -= 8;
      }

      return 0;
    }

    v19 = (v13 + 8 * v14);
    return v16 == v12 && v19 == (v15 + 8 * v12);
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FunctionTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::FunctionTypeStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v29[14] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (v6 + v4 >= 0x11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4 > 0x10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *&v28[8 * i] = mlir::TypeRange::dereference_iterator(v3, i);
    }
  }

  v8 = v4;
  if (v6 + v4 > 0x10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      *&v28[8 * v4 + 8 * j] = mlir::TypeRange::dereference_iterator(v5, j);
    }

    v8 = v4;
  }

  v10 = *a1;
  v11 = (v8 + v6);
  if (v8 + v6)
  {
    v12 = 8 * v11;
    a1[10] += 8 * v11;
    if (v10 && (Slow = (v10 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + v12 <= a1[1]))
    {
      *a1 = Slow + v12;
      v14 = v12 - 8;
      v15 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      v16 = v28;
      if ((v12 - 8) >= 0x18)
      {
LABEL_18:
        v15 = Slow;
        v16 = v28;
        if (Slow - v28 >= 0x20)
        {
          v17 = (v14 >> 3) + 1;
          v18 = 8 * (v17 & 0x3FFFFFFFFFFFFFFCLL);
          v15 = (Slow + v18);
          v16 = &v28[v18];
          v19 = v29;
          v20 = (Slow + 16);
          v21 = v17 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 4;
          }

          while (v21);
          if (v17 == (v17 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }
    }

    else
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v11, 8 * v11, 3);
      v14 = v12 - 8;
      v15 = Slow;
      v16 = v28;
      if ((v12 - 8) >= 0x18)
      {
        goto LABEL_18;
      }
    }

    do
    {
LABEL_22:
      v23 = *v16;
      v16 += 8;
      *v15++ = v23;
    }

    while (v16 != &v28[8 * v11]);
LABEL_23:
    v10 = *a1;
    goto LABEL_25;
  }

  Slow = 0;
LABEL_25:
  a1[10] += 24;
  v24 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v24 + 24;
  if (v10)
  {
    v26 = v25 > a1[1];
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v24 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v25;
  }

  *v24 = 0;
  *(v24 + 8) = v4;
  *(v24 + 12) = v6;
  *(v24 + 16) = Slow;
  return v24;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (v3 != v2[2])
  {
    return 0;
  }

  if (v3)
  {
    return memcmp(*(a2 + 16), v2[1], v3) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::OpaqueTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::OpaqueTypeStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  if (!v3)
  {
    Slow = 0;
    goto LABEL_24;
  }

  v4 = a2[1];
  a1[10] += v3 + 1;
  Slow = *a1;
  v6 = v3 + 1 + *a1;
  if (*a1)
  {
    v7 = v6 > a1[1];
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    *a1 = v6;
    if (v3 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v8 = Slow;
    v9 = v4;
    goto LABEL_22;
  }

  v19 = a1;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v3 + 1, v3 + 1, 0);
  a1 = v19;
  if (v3 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v8 = Slow;
  v9 = v4;
  if ((Slow - v4) >= 0x20)
  {
    if (v3 < 0x20)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v10 = v3 & 0xFFFFFFFFFFFFFFE0;
    v11 = (v4 + 16);
    v12 = (Slow + 16);
    v13 = v3 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 2;
      v13 -= 32;
    }

    while (v13);
    if (v3 == v10)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x18) != 0)
    {
LABEL_15:
      v8 = (Slow + (v3 & 0xFFFFFFFFFFFFFFF8));
      v9 = (v4 + (v3 & 0xFFFFFFFFFFFFFFF8));
      v15 = (v4 + v10);
      v16 = (Slow + v10);
      v17 = v10 - (v3 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v18 = *v15++;
        *v16++ = v18;
        v17 += 8;
      }

      while (v17);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v9 = (v4 + v10);
    v8 = (Slow + v10);
  }

  do
  {
LABEL_22:
    v20 = *v9++;
    *v8++ = v20;
  }

  while (v9 != (v4 + v3));
LABEL_23:
  *(Slow + v3) = 0;
LABEL_24:
  a1[10] += 32;
  v21 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21 + 4;
  if (*a1)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10OpaqueTypeEJRNS1_10StringAttrERNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::RankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::RankedTensorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::RankedTensorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::RankedTensorTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::RankedTensorTypeStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *(a2 + 1);
  v4 = *a1;
  if (!v2)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v5 = *a2;
  v6 = 8 * v2;
  a1[10] += 8 * v2;
  v7 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8 * v2;
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
    v27 = v3;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
    v3 = v27;
    v7 = Slow;
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
      v11 = v7;
      v12 = v5;
      if (v7 - v5 >= 0x20)
      {
        v13 = (v10 >> 3) + 1;
        v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = (v7 + v14);
        v12 = (v5 + v14);
        v15 = (v5 + 16);
        v16 = (v7 + 16);
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

  v11 = v7;
  v12 = v5;
  do
  {
LABEL_15:
    v21 = *v12++;
    *v11++ = v21;
  }

  while (v12 != (v5 + 8 * v2));
LABEL_16:
  v4 = *a1;
LABEL_17:
  a1[10] += 40;
  v22 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 40;
  if (v4)
  {
    v24 = v23 > a1[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v28 = v3;
    v26 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
    v3 = v28;
    v22 = v26;
  }

  else
  {
    *a1 = v23;
  }

  *v22 = 0;
  *(v22 + 8) = v7;
  *(v22 + 16) = v2;
  *(v22 + 24) = v3;
  return v22;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail23RankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_16RankedTensorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*a1)[1] != v2)
  {
    return 0;
  }

  v3 = a2 + 16;
  v4 = 0;
  if (v2)
  {
    v5 = **a1;
    v6 = 8 * v2 - 8;
    v7 = (a2 + 16);
    while (*v7 == mlir::TypeRange::dereference_iterator(v5, v4))
    {
      ++v4;
      ++v7;
      if (!v6)
      {
        return v4 == v2 && v7 == (v3 + 8 * v2);
      }

      v6 -= 8;
    }

    return 0;
  }

  v7 = (a2 + 16);
  return v4 == v2 && v7 == (v3 + 8 * v2);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = 8 * v4 + 16;
  a2[10] += v5;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + v5;
  if (*a2)
  {
    v8 = v7 > a2[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8 * v4 + 16, v5, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = v7;
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *(Slow + 16 + 8 * i) = mlir::TypeRange::dereference_iterator(v3, i);
  }

LABEL_8:
  v10 = *(a1 + 8);
  if (*v10)
  {
    (*v10)(*(v10 + 8), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*a1)[1] != v2)
  {
    return 0;
  }

  v3 = a2 + 16;
  v4 = 0;
  if (v2)
  {
    v5 = **a1;
    v6 = 8 * v2 - 8;
    v7 = (a2 + 16);
    while (*v7 == mlir::TypeRange::dereference_iterator(v5, v4))
    {
      ++v4;
      ++v7;
      if (!v6)
      {
        return v4 == v2 && v7 == (v3 + 8 * v2);
      }

      v6 -= 8;
    }

    return 0;
  }

  v7 = (a2 + 16);
  return v4 == v2 && v7 == (v3 + 8 * v2);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = 8 * v4 + 16;
  a2[10] += v5;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = Slow + v5;
  if (*a2)
  {
    v8 = v7 > a2[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8 * v4 + 16, v5, 3);
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *a2 = v7;
    *Slow = 0;
    *(Slow + 8) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    *(Slow + 16 + 8 * i) = mlir::TypeRange::dereference_iterator(v3, i);
  }

LABEL_8:
  v10 = *(a1 + 8);
  if (*v10)
  {
    (*v10)(*(v10 + 8), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedMemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedMemRefTypeStorage,mlir::Type &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::UnrankedMemRefTypeStorage *)>,mlir::TypeID,mlir::Type &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
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
    v10 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *Slow = 0;
    *(Slow + 8) = v10;
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
  *(Slow + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedMemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedMemRefTypeEJRNS1_4TypeERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && (v5 = *(a2 + 40), v5 == *(v2 + 32)))
  {
    return memcmp(*(a2 + 32), *(v2 + 24), v5) == 0;
  }

  else
  {
    return 0;
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::VectorTypeStorage * mlir::StorageUniquer::get<mlir::detail::VectorTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::VectorTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::detail::VectorTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::VectorTypeStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v5 = a2[3];
  v4 = a2[4];
  v6 = *a1;
  if (v2)
  {
    v7 = *a2;
    v8 = 8 * v2;
    a1[10] += 8 * v2;
    if (v6 && (Slow = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + v8 <= a1[1]))
    {
      *a1 = Slow + v8;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
LABEL_5:
        v11 = Slow;
        v12 = v7;
        if (Slow - v7 >= 0x20)
        {
          v13 = (v10 >> 3) + 1;
          v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
          v11 = (Slow + v14);
          v12 = (v7 + v14);
          v15 = (v7 + 16);
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
LABEL_15:
            v6 = *a1;
            if (v4)
            {
              goto LABEL_16;
            }

LABEL_11:
            v19 = 0;
            goto LABEL_35;
          }
        }

        do
        {
LABEL_14:
          v21 = *v12++;
          *v11++ = v21;
        }

        while (v12 != (v7 + 8 * v2));
        goto LABEL_15;
      }
    }

    else
    {
      v20 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v20;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v11 = Slow;
    v12 = v7;
    goto LABEL_14;
  }

  Slow = 0;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_16:
  a1[10] += v4;
  if (v6 && v4 + v6 <= a1[1])
  {
    *a1 = v4 + v6;
    if (v4 >= 8)
    {
      goto LABEL_19;
    }

LABEL_32:
    v22 = v6;
    v23 = v5;
    goto LABEL_33;
  }

  v33 = a1;
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v4, v4, 0);
  a1 = v33;
  if (v4 < 8)
  {
    goto LABEL_32;
  }

LABEL_19:
  v22 = v6;
  v23 = v5;
  if ((v6 - v5) >= 0x20)
  {
    if (v4 < 0x20)
    {
      v24 = 0;
      goto LABEL_26;
    }

    v24 = v4 & 0xFFFFFFFFFFFFFFE0;
    v25 = (v5 + 16);
    v26 = (v6 + 16);
    v27 = v4 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v28 = *v25;
      *(v26 - 1) = *(v25 - 1);
      *v26 = v28;
      v25 += 2;
      v26 += 2;
      v27 -= 32;
    }

    while (v27);
    if (v4 == v24)
    {
      goto LABEL_34;
    }

    if ((v4 & 0x18) != 0)
    {
LABEL_26:
      v22 = (v6 + (v4 & 0xFFFFFFFFFFFFFFF8));
      v23 = (v5 + (v4 & 0xFFFFFFFFFFFFFFF8));
      v29 = (v5 + v24);
      v30 = (v6 + v24);
      v31 = v24 - (v4 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v32 = *v29++;
        *v30++ = v32;
        v31 += 8;
      }

      while (v31);
      if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v23 = (v5 + v24);
    v22 = (v6 + v24);
  }

  do
  {
LABEL_33:
    v34 = *v23++;
    *v22++ = v34;
  }

  while (v23 != (v5 + v4));
LABEL_34:
  v19 = v6;
  v6 = *a1;
LABEL_35:
  a1[10] += 48;
  v35 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = v35 + 6;
  if (v6)
  {
    v37 = v36 > a1[1];
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v35 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 48, 48, 3);
  }

  else
  {
    *a1 = v36;
  }

  *v35 = 0;
  v35[1] = Slow;
  v35[2] = v2;
  v35[3] = v3;
  v35[4] = v19;
  v35[5] = v4;
  return v35;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17VectorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10VectorTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNSB_IbEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void mlir::Dialect::addType<mlir::ComplexType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::ComplexType,mlir::Type,mlir::detail::ComplexTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSB_18ComplexTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSA_18ComplexTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v21 = "builtin.complex";
  v22 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, &v10);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t mlir::Dialect::addType<mlir::Float8E5M2Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E5M2Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E5M2TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E5M2TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v24 = "builtin.f8E5M2";
  v25 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E5M2TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float8E4M3Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E4M3TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E4M3TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v24 = "builtin.f8E4M3";
  v25 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E4M3TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float8E4M3FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float8E4M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float8E4M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v24 = "builtin.f8E4M3FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float8E4M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float8E5M2FNUZType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E5M2FNUZType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E5M2FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E5M2FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v24 = "builtin.f8E5M2FNUZ";
  v25 = 18;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E5M2FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float8E4M3FNUZType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3FNUZType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E4M3FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18Float8E4M3FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v24 = "builtin.f8E4M3FNUZ";
  v25 = 18;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E4M3FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float8E4M3B11FNUZType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E4M3B11FNUZType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_21Float8E4M3B11FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_21Float8E4M3B11FNUZTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v24 = "builtin.f8E4M3B11FNUZ";
  v25 = 21;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_21Float8E4M3B11FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float8E3M4Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float8E3M4Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E3M4TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_14Float8E3M4TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v24 = "builtin.f8E3M4";
  v25 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E3M4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float4E2M1FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float4E2M1FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float4E2M1FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float4E2M1FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
  v24 = "builtin.f4E2M1FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float4E2M1FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float6E2M3FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float6E2M3FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E2M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E2M3FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v24 = "builtin.f6E2M3FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E2M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float6E3M2FNType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float6E3M2FNType,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E3M2FNTypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16Float6E3M2FNTypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v24 = "builtin.f6E3M2FN";
  v25 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E3M2FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::BFloat16Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::BFloat16Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12BFloat16TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12BFloat16TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v24 = "builtin.bf16";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12BFloat16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float16Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float16Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float16TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float16TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v24 = "builtin.f16";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::FloatTF32Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::FloatTF32Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13FloatTF32TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13FloatTF32TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v24 = "builtin.tf32";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_13FloatTF32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float32Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float32Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float32TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float32TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v24 = "builtin.f32";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float64Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float64Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float64TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float64TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  v24 = "builtin.f64";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float64TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float80Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float80Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float80TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11Float80TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
  v24 = "builtin.f80";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float80TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::Float128Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::Float128Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12Float128TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12Float128TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v24 = "builtin.f128";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12Float128TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::FunctionType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::FunctionType,mlir::Type,mlir::detail::FunctionTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSB_19FunctionTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSA_19FunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v21 = "builtin.function";
  v22 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, &v10);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t mlir::Dialect::addType<mlir::IndexType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::IndexType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9IndexTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9IndexTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  v24 = "builtin.index";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_9IndexTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::IntegerType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::IntegerType,mlir::Type,mlir::detail::IntegerTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSB_18IntegerTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSA_18IntegerTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v21 = "builtin.integer";
  v22 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, &v10);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addType<mlir::MemRefType>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::MemRefType>(a1, v8);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, v8);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t mlir::Dialect::addType<mlir::NoneType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::NoneType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8NoneTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8NoneTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  v24 = "builtin.none";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, &v13);
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

  v11 = *(a1 + 32);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(v11);
  v10[0] = &v11;
  v10[1] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_8NoneTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::OpaqueType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSB_17OpaqueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSA_17OpaqueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v21 = "builtin.opaque";
  v22 = 14;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, &v10);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addType<mlir::RankedTensorType>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::RankedTensorType>(a1, v8);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id, v8);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addType<mlir::TupleType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::TupleType,mlir::Type,mlir::detail::TupleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSB_16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSA_16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v21 = "builtin.tuple";
  v22 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, &v10);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addType<mlir::UnrankedMemRefType>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::UnrankedMemRefType>(a1, v8);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id, v8);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addType<mlir::UnrankedTensorType>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::UnrankedTensorType>(a1, v8);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, v8);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::Dialect::addType<mlir::VectorType>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::VectorType>(a1, v8);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id, v8);
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

  mlir::MLIRContext::getTypeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSB_18ComplexTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11ComplexTypeES2_NSA_18ComplexTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ComplexType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ComplexType>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Type::getContext(&v7);
  v8 = v3;
  Context = mlir::Type::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  v9[1] = &Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail18ComplexTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11ComplexTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::ComplexTypeStorage * mlir::StorageUniquer::get<mlir::detail::ComplexTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::ComplexTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E5M2TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E4M3TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float8E4M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E5M2FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_18Float8E4M3FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_21Float8E4M3B11FNUZTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_14Float8E3M4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float4E2M1FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E2M3FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_16Float6E3M2FNTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12BFloat16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float16TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_13FloatTF32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float32TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float64TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_11Float80TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_12Float128TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t mlir::detail::walkImmediateSubElementsImpl<mlir::FunctionType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 16);
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  v12 = v9 + 8 * v10;
  mlir::TypeRange::TypeRange(&v23, v9, v10);
  result = mlir::TypeRange::TypeRange(&v25, v12, v11);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v14 = v24;
  if (v24)
  {
    v15 = 0;
    v16 = v23;
    do
    {
      v17 = mlir::TypeRange::dereference_iterator(v16, v15);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v22, v17);
      ++v15;
    }

    while (v14 != v15);
  }

  v18 = v26;
  if (v26)
  {
    v19 = 0;
    v20 = v25;
    do
    {
      v21 = mlir::TypeRange::dereference_iterator(v20, v19);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v22, v21);
      ++v19;
    }

    while (v18 != v19);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12FunctionTypeES2_NSA_19FunctionTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::FunctionType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::FunctionType>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = v4 + 8 * v5;
  mlir::TypeRange::TypeRange(&v27, v4, v5);
  mlir::TypeRange::TypeRange(&v29, v7, v6);
  v8 = *a3;
  v9 = a3[1];
  v10 = v9 - v28;
  if (v9 >= v28)
  {
    v11 = v28;
  }

  else
  {
    v11 = a3[1];
  }

  v12 = v8 + 8 * v28;
  v13 = mlir::TypeRange::TypeRange(v31, v8, v11);
  v20 = v31[0];
  if (v10 >= v30)
  {
    v14 = v30;
  }

  else
  {
    v14 = v10;
  }

  mlir::TypeRange::TypeRange(v13, v12, v14);
  v19 = v31[0];
  Context = mlir::Type::getContext(&v21);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id;
  v22[1] = &Context;
  v26[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FunctionTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_12FunctionTypeEJRNS1_9TypeRangeESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v26[1] = v22;
  v31[0] = v20;
  v31[1] = v19;
  v16 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v20, 0, v20, *(&v20 + 1));
  v17 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v19, 0, v19, *(&v19 + 1))) | (v16 << 32));
  v24[0] = v31;
  v24[1] = v26;
  v25 = v31;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id, (v17 >> 31) ^ v17, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FunctionTypeStorage * mlir::StorageUniquer::get<mlir::detail::FunctionTypeStorage,mlir::TypeRange &,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::FunctionTypeStorage *)>,mlir::TypeID,mlir::TypeRange &,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_9IndexTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11IntegerTypeES2_NSA_18IntegerTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Type::getContext(&v5);
  return mlir::IntegerType::get(Context, v2 & 0x3FFFFFFF, v2 >> 30);
}

void mlir::AbstractType::get<mlir::MemRefType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::MemRefType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSB_17MemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSA_17MemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  *(a2 + 144) = "builtin.memref";
  *(a2 + 152) = 14;
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

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::MemRefType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::getShape;
  {
    v5 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::MemRefType>::cloneWith(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v7 = a2[5];
    v8 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v9 = a4;
    v10 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v8 = a2[2];
    v9 = a4;
    v10 = 0;
    v7 = 0;
LABEL_7:
    v12 = mlir::MemRefType::get(v5, v6, v9, v10, v7, v8);
    return llvm::cast<mlir::ShapedType,mlir::Type>(&v12);
  }

  v12 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return llvm::cast<mlir::ShapedType,mlir::Type>(&v12);
}

BOOL mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType::Trait<Empty>]";
  v6 = 80;
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

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSB_17MemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10MemRefTypeENS1_14BaseMemRefTypeENSA_17MemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::MemRefType>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::MemRefType>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = a1;
  v9 = *a2;
  v10 = v3;
  v8 = *a3;
  v15[0] = &v9;
  v15[1] = &v8;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::MemRefLayoutAttrInterface const&,mlir::Attribute const&)#1}::operator()(v15, &v10, &v11, &v12, &v13, &v21);
  mlir::Type::getContext(&v14);
  v16 = v18;
  v17 = 0x600000000;
  v4 = v22;
  if (v22)
  {
    if (v22 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v18, v21, 8 * v22);
    LODWORD(v17) = v4;
    v5 = v16;
  }

  else
  {
    v4 = 0;
    v5 = v18;
  }

  v19 = v25;
  v18[6] = v24;
  v20 = v26;
  v6 = mlir::MemRefType::get(v5, v4, v24, v25, *(&v25 + 1), v26);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v21 != &v23)
  {
    free(v21);
  }

  return v6;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::MemRefLayoutAttrInterface,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::MemRefLayoutAttrInterface const&,mlir::Attribute const&)#1}::operator()(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[6] = *MEMORY[0x277D85DE8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a2, *(a2 + 8), &__src);
  v11 = a1[1];
  if (!*a3)
  {
    v13 = 0;
    v14 = mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(*a4, *(a4 + 8), *a1);
    if (*a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v12 = *v11;
  *v11 = vaddq_s64(*v11, xmmword_25736B7B0);
  v13 = *v12.i64[0];
  v14 = mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(*a4, *(a4 + 8), *a1);
  if (!*a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = **a1;
  **a1 = vaddq_s64(v16, xmmword_25736B7B0);
  v17 = *v16.i64[0];
LABEL_6:
  *a6 = a6 + 16;
  *(a6 + 8) = 0x600000000;
  v18 = v24;
  v19 = __src;
  if (v24 && &__src != a6)
  {
    if (__src == v26)
    {
      v21 = v15;
      v22 = v14;
      if (v24 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a6, __src, 8 * v24);
      v19 = __src;
      *(a6 + 8) = v18;
      v14 = v22;
      v15 = v21;
    }

    else
    {
      *a6 = __src;
      v20 = v25;
      *(a6 + 8) = v18;
      *(a6 + 12) = v20;
      __src = v26;
      v25 = 0;
      v19 = v26;
    }

    v24 = 0;
  }

  *(a6 + 64) = v13;
  *(a6 + 72) = v14;
  *(a6 + 80) = v15;
  *(a6 + 88) = v17;
  if (v19 != v26)
  {
    free(v19);
  }
}

void *mlir::AttrTypeSubElementHandler<mlir::MemRefLayoutAttrInterface,void>::replace(void *result, uint64_t a2, int64x2_t *a3)
{
  if (result)
  {
    v3 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25736B7B0);
    result = *v3.i64[0];
    if (*v3.i64[0])
    {
      v4 = *result;
      {
        v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        if (!v7)
        {
          return result;
        }
      }

      else
      {
        v14 = v4;
        v15 = result;
        mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::AffineMapAttr,mlir::Attribute>();
        result = v15;
        v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v6 = *(v14 + 8);
        v7 = *(v14 + 16);
        if (!v7)
        {
          return result;
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
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_8NoneTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSB_17OpaqueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10OpaqueTypeES2_NSA_17OpaqueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueType>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::OpaqueType>(void *a1, uint64_t **a2)
{
  v11 = a1;
  v2 = a1[2];
  v3 = a1[3];
  if (a1[1])
  {
    v4 = **a2;
  }

  else
  {
    v4 = 0;
  }

  mlir::Type::getContext(&v11);
  v12 = v4;
  Context = mlir::Attribute::getContext(&v12);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id;
  v13[1] = &Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir6detail17OpaqueTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10OpaqueTypeEJRNS1_10StringAttrERNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v18[1] = v13;
  v17[0] = v12;
  v17[1] = v2;
  v17[2] = v3;
  v6 = (v12 >> 4) ^ (v12 >> 9);
  v7 = llvm::hash_value(v2, v3);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ 0xFF51AFD7ED558CCDLL ^ v6)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id, (-348639895 * ((v9 >> 47) ^ v9)) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueTypeStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueTypeStorage,mlir::StringAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::detail::OpaqueTypeStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

void mlir::AbstractType::get<mlir::RankedTensorType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::RankedTensorType>,mlir::ValueSemantics<mlir::RankedTensorType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSB_23RankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSA_23RankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  *(a2 + 144) = "builtin.tensor";
  *(a2 + 152) = 14;
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

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::RankedTensorType>,mlir::ValueSemantics<mlir::RankedTensorType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::getShape;
  {
    v5 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::RankedTensorType>::cloneWith(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return mlir::TensorType::operator mlir::ShapedType(&v8);
}

BOOL mlir::detail::storage_user_base_impl::hasTrait<mlir::ShapedType::Trait,mlir::ValueSemantics>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  else
  {
    v5 = a1;
    mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
    a1 = v5;
    v1 = mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  mlir::detail::storage_user_base_impl::hasTrait<mlir::ShapedType::Trait,mlir::ValueSemantics>();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSB_23RankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16RankedTensorTypeENS1_10TensorTypeENSA_23RankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::RankedTensorType>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::RankedTensorType>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v11 = *(a1 + 8);
  v12 = v3;
  v4 = *a2;
  v9 = *a3;
  v10 = v4;
  v13 = a1;
  v14[0] = &v10;
  v14[1] = &v9;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::Attribute const&)#1}::operator()(v14, &v11, &v12, &v12 + 1, &v18);
  mlir::Type::getContext(&v13);
  v15 = v17;
  v16 = 0x600000000;
  v5 = v19;
  if (v19)
  {
    if (v19 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v17, v18, 8 * v19);
    LODWORD(v16) = v5;
    v6 = v15;
  }

  else
  {
    v5 = 0;
    v6 = v17;
  }

  v17[6] = v21;
  v17[7] = v22;
  v7 = mlir::RankedTensorType::get(v6, v5, v21, v22);
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != &v20)
  {
    free(v18);
  }

  return v7;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,mlir::Attribute const&)#1}::operator()(int64x2_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v20[6] = *MEMORY[0x277D85DE8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a2, *(a2 + 8), &__src);
  if (!*a3)
  {
    v11 = 0;
    if (*a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v9 = a1[1];
  v10 = *v9;
  *v9 = vaddq_s64(*v9, xmmword_25736B7B0);
  v11 = *v10.i64[0];
  if (!*a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = **a1;
  **a1 = vaddq_s64(v12, xmmword_25736B7B0);
  v13 = *v12.i64[0];
LABEL_6:
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v14 = v18;
  v15 = __src;
  if (v18 && &__src != a5)
  {
    if (__src == v20)
    {
      if (v18 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a5, __src, 8 * v18);
      v15 = __src;
      *(a5 + 8) = v14;
    }

    else
    {
      *a5 = __src;
      v16 = v19;
      *(a5 + 8) = v14;
      *(a5 + 12) = v16;
      __src = v20;
      v19 = 0;
      v15 = v20;
    }

    v18 = 0;
  }

  *(a5 + 64) = v11;
  *(a5 + 72) = v13;
  if (v15 != v20)
  {
    free(v15);
  }
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSB_16TupleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x277D85DE8];
  result = mlir::TypeRange::TypeRange(&v15, a2 + 16, *(a2 + 8));
  v11 = v15;
  v12 = v16;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      v14 = mlir::TypeRange::dereference_iterator(v11, i);
      result = mlir::AttrTypeImmediateSubElementWalker::walk(&v15, v14);
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9TupleTypeES2_NSA_16TupleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::TupleType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::TupleType>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = a1;
  mlir::TypeRange::TypeRange(&v16, a1 + 16, *(a1 + 8));
  if (a3[1] >= v17)
  {
    v4 = v17;
  }

  else
  {
    v4 = a3[1];
  }

  mlir::TypeRange::TypeRange(&v16, *a3, v4);
  v5 = v16;
  v6 = v17;
  Context = mlir::Type::getContext(&v10);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id;
  v11[1] = &Context;
  v16 = _ZN4llvm12function_refIFvPN4mlir6detail16TupleTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_9TupleTypeEJRNS1_9TypeRangeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v17 = v11;
  v15[0] = v5;
  v15[1] = v6;
  v8 = llvm::hashing::detail::hash_combine_range_impl<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator>(v5, 0, v5, v6);
  v13[1] = &v16;
  v14 = v15;
  v13[0] = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id, v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::TupleTypeStorage * mlir::StorageUniquer::get<mlir::detail::TupleTypeStorage,mlir::TypeRange &>(llvm::function_ref<void ()(mlir::detail::TupleTypeStorage *)>,mlir::TypeID,mlir::TypeRange &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

void mlir::AbstractType::get<mlir::UnrankedMemRefType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedMemRefType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSB_25UnrankedMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSA_25UnrankedMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
  *(a2 + 144) = "builtin.unranked_memref";
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

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedMemRefType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::getShape;
  {
    v5 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedMemRefType>::cloneWith(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v7 = a2[5];
    v8 = a2[6];
    if ((*(a3 + 16) & 1) == 0)
    {
      v5 = a2[1];
      v6 = a2[2];
    }

    v9 = a4;
    v10 = a2[4];
    goto LABEL_7;
  }

  if (*(a3 + 16))
  {
    v8 = a2[2];
    v9 = a4;
    v10 = 0;
    v7 = 0;
LABEL_7:
    v12 = mlir::MemRefType::get(v5, v6, v9, v10, v7, v8);
    return llvm::cast<mlir::ShapedType,mlir::Type>(&v12);
  }

  v12 = mlir::UnrankedMemRefType::get(a4, a2[2]);
  return llvm::cast<mlir::ShapedType,mlir::Type>(&v12);
}

BOOL mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::ShapedType::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedType::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSB_25UnrankedMemRefTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedMemRefTypeENS1_14BaseMemRefTypeENSA_25UnrankedMemRefTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  v5 = *(a2 + 16);
  if (!*(a2 + 8))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = *a5;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *a3;
LABEL_6:
  mlir::Type::getContext(&v9);
  return mlir::UnrankedMemRefType::get(v6, v7);
}

void mlir::AbstractType::get<mlir::UnrankedTensorType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedTensorType>,mlir::ValueSemantics<mlir::UnrankedTensorType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::UnrankedTensorType,mlir::TensorType,mlir::detail::UnrankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSB_25UnrankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSA_25UnrankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  *(a2 + 144) = "builtin.unranked_tensor";
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

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::UnrankedTensorType>,mlir::ValueSemantics<mlir::UnrankedTensorType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::getShape;
  {
    v5 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::UnrankedTensorType>::cloneWith(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a2;
  v5 = *a3;
  v6 = *(a3 + 2);
  v8 = mlir::TensorType::cloneWith(&v7, &v5, a4);
  return mlir::TensorType::operator mlir::ShapedType(&v8);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSB_25UnrankedTensorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18UnrankedTensorTypeENS1_10TensorTypeENSA_25UnrankedTensorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::UnrankedTensorType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::UnrankedTensorType>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v7 = a1;
  if (*(a1 + 8))
  {
    v3 = **a3;
  }

  else
  {
    v3 = 0;
  }

  mlir::Type::getContext(&v7);
  v8 = v3;
  Context = mlir::Type::getContext(&v8);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v9[1] = &Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir6detail25UnrankedTensorTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_18UnrankedTensorTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::UnrankedTensorTypeStorage * mlir::StorageUniquer::get<mlir::detail::UnrankedTensorTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::UnrankedTensorTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

void mlir::AbstractType::get<mlir::VectorType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::VectorType>,mlir::ValueSemantics<mlir::VectorType>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::VectorType,mlir::Type,mlir::detail::VectorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSB_17VectorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSA_17VectorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
  *(a2 + 144) = "builtin.vector";
  *(a2 + 152) = 14;
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

void mlir::detail::InterfaceMap::get<mlir::ShapedType::Trait<mlir::VectorType>,mlir::ValueSemantics<mlir::VectorType>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::cloneWith;
  v2[1] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::getElementType;
  v2[2] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::hasRank;
  v2[3] = mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::getShape;
  {
    v5 = v2;
    mlir::tensor::ExpandShapeOp::fold();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void *mlir::detail::ShapedTypeInterfaceTraits::Model<mlir::VectorType>::cloneWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v4 = *a3;
    v5 = (a3 + 8);
  }

  else
  {
    v5 = (a2 + 16);
    v4 = *(a2 + 8);
  }

  result = mlir::VectorType::get(v4, *v5, a4, *(a2 + 32), *(a2 + 40));
  if (result)
  {
    v7 = *result;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        return result;
      }
    }

    else
    {
      v17 = v7;
      v18 = result;
      mlir::tensor::ExpandShapeOp::fold();
      result = v18;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v17 + 8);
      v10 = *(v17 + 16);
      if (!v10)
      {
        return result;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSB_17VectorTypeStorageENSB_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10VectorTypeES2_NSA_17VectorTypeStorageENSA_11TypeUniquerEJNS1_10ShapedType5TraitENS1_14ValueSemanticsEEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::VectorType>(a2, &v8, &v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::VectorType>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v11 = *a2;
  v12 = v3;
  v10 = *a3;
  v15 = a1;
  v16[0] = &v11;
  v16[1] = &v10;
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,llvm::ArrayRef<BOOL> const&)#1}::operator()(v16, &v12, &v13, &v14, &v24);
  mlir::Type::getContext(&v15);
  v17 = v19;
  v18 = 0x600000000;
  v4 = v25;
  if (v25)
  {
    if (v25 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v19, v24, 8 * v25);
    LODWORD(v18) = v4;
  }

  v5 = v27;
  v6 = v29;
  v20 = v27;
  v21 = v23;
  v22 = xmmword_2573695B0;
  if (v29)
  {
    if (v29 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    memcpy(v23, v28, v29);
    *&v22 = v6;
    v4 = v18;
    v5 = v20;
    v7 = v21;
  }

  else
  {
    v7 = v23;
  }

  v8 = mlir::VectorType::get(v17, v4, v5, v7, v6);
  if (v21 != v23)
  {
    free(v21);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  if (v24 != &v26)
  {
    free(v24);
  }

  return v8;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>>,void>::replace(std::tuple<llvm::ArrayRef<long long>,mlir::Type,llvm::ArrayRef<BOOL>> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(llvm::ArrayRef<long long> const&,mlir::Type const&,llvm::ArrayRef<BOOL> const&)#1}::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[6] = *MEMORY[0x277D85DE8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(*a2, *(a2 + 8), &__src);
  v9 = *(a1 + 8);
  if (*a3)
  {
    v10 = *v9;
    *v9 = vaddq_s64(*v9, xmmword_25736B7B0);
    v11 = *v10.i64[0];
  }

  else
  {
    v11 = 0;
  }

  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<BOOL>,void>::replace(*a4, *(a4 + 8), &v16);
  *a5 = a5 + 16;
  *(a5 + 8) = 0x600000000;
  v12 = v21;
  if (v21 && &__src != a5)
  {
    if (__src == v23)
    {
      if (v21 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a5, __src, 8 * v21);
      *(a5 + 8) = v12;
    }

    else
    {
      *a5 = __src;
      v13 = v22;
      *(a5 + 8) = v12;
      *(a5 + 12) = v13;
      __src = v23;
      v22 = 0;
    }

    v21 = 0;
  }

  *(a5 + 72) = a5 + 96;
  *(a5 + 64) = v11;
  *(a5 + 80) = xmmword_2573695B0;
  v14 = v16;
  if ((a5 + 72) != &v16)
  {
    v15 = v17;
    if (v17)
    {
      if (v16 != v19)
      {
        *(a5 + 72) = v16;
        *(a5 + 80) = v15;
        *(a5 + 88) = v18;
        goto LABEL_21;
      }

      if (v17 >= 0x29)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      memcpy(*(a5 + 72), v16, v17);
      v14 = v16;
      *(a5 + 80) = v15;
      v17 = 0;
    }
  }

  if (v14 != v19)
  {
    free(v14);
  }

LABEL_21:
  if (__src != v23)
  {
    free(__src);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<BOOL>,void>::replace(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v3 = xmmword_2573695B0;
  v14 = xmmword_2573695B0;
  if (a2)
  {
    do
    {
      while (1)
      {
        v4 = v14;
        if (v14 >= *(&v14 + 1))
        {
          break;
        }

        v5 = *a1++;
        *(v13 + v14) = v5;
        *&v14 = v4 + 1;
        if (!--a2)
        {
          goto LABEL_6;
        }
      }

      v6 = a1;
      v7 = a2;
      v8 = a3;
      v12 = v3;
      llvm::SmallVectorTemplateBase<char,true>::growAndEmplaceBack<char const&>(&v13, a1);
      v3 = v12;
      a3 = v8;
      a1 = v6 + 1;
      a2 = v7 - 1;
    }

    while (v7 != 1);
LABEL_6:
    v9 = v13;
    v10 = v14;
    *a3 = a3 + 24;
    *(a3 + 8) = v3;
    if (v10 && &v13 != a3)
    {
      if (v9 != v15)
      {
        *a3 = v9;
        *(a3 + 8) = v10;
        *(a3 + 16) = *(&v14 + 1);
        return;
      }

      if (v10 >= 0x29)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v11 = a3;
      memcpy(*a3, v9, v10);
      v9 = v13;
      *(v11 + 8) = v10;
      *&v14 = 0;
    }

    if (v9 != v15)
    {
      free(v9);
    }
  }

  else
  {
    *a3 = a3 + 24;
    *(a3 + 8) = xmmword_2573695B0;
  }
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = v6 - 1;
  v9 = (37 * *a2) & (v6 - 1);
  v10 = &v7[v9];
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v12 = result[4];
    }

    *a3 = v10;
    *(a3 + 8) = &v4[v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -1)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -2;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[v18 & v8];
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - result[1] <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -1)
  {
    --result[1];
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v14 = result[4];
  }

  *a3 = v10;
  *(a3 + 8) = &v4[v14];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (37 * *a2) & (v4 - 1);
    v7 = (v3 + 4 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 4 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

char *llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(char *__b, unsigned int a2)
{
  v2 = a2;
  v3 = __b;
  *&v45[12] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*__b & 1) == 0)
  {
    v8 = __b + 8;
    v7 = *(__b + 1);
    v9 = *(__b + 4);
    if (v2 > 4)
    {
      buffer = llvm::allocate_buffer(4 * v2, 4uLL);
      v3[1] = buffer;
      v3[2] = v2;
      v19 = (*v3 & 1) == 0;
      *v3 = *v3 & 1;
      if (v19)
      {
        v20 = v2;
      }

      else
      {
        v20 = 4;
      }

      if (!v19)
      {
        buffer = v3 + 1;
      }

      memset(buffer, 255, 4 * v20);
      if (!v9)
      {
LABEL_44:

        llvm::deallocate_buffer(v7, (4 * v9));
      }
    }

    else
    {
      *__b = 1;
      memset(__b + 8, 255, 0x10uLL);
      if (!v9)
      {
        goto LABEL_44;
      }
    }

    v21 = v7;
    while (1)
    {
      v27 = *v21;
      if (*v21 <= 0xFFFFFFFD)
      {
        break;
      }

LABEL_30:
      v21 = (v21 + 4);
      if (v21 == (v7 + 4 * v9))
      {
        goto LABEL_44;
      }
    }

    if (*v3)
    {
      v23 = 3;
      v22 = (v3 + 1);
      v24 = (37 * v27) & 3;
      v25 = &v8[4 * v24];
      v26 = *v25;
      if (v27 == *v25)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = v3[1];
      v23 = *(v3 + 4) - 1;
      v24 = v23 & (37 * v27);
      v25 = &v22[4 * v24];
      v26 = *v25;
      if (v27 == *v25)
      {
LABEL_29:
        *v25 = v27;
        *v3 += 2;
        goto LABEL_30;
      }
    }

    v28 = 0;
    v29 = 1;
    while (v26 != -1)
    {
      if (v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v26 == -2;
      }

      if (v30)
      {
        v28 = v25;
      }

      v31 = v24 + v29++;
      v24 = v31 & v23;
      v25 = &v22[4 * (v31 & v23)];
      v26 = *v25;
      if (v27 == *v25)
      {
        goto LABEL_29;
      }
    }

    if (v28)
    {
      v25 = v28;
    }

    goto LABEL_29;
  }

  v10 = __b + 8;
  v11 = &v44;
  if (*(__b + 2) <= 0xFFFFFFFD)
  {
    v44 = *(__b + 2);
    v11 = v45;
    v12 = *(__b + 3);
    if (v12 > 0xFFFFFFFD)
    {
LABEL_11:
      v13 = *(__b + 4);
      if (v13 > 0xFFFFFFFD)
      {
        goto LABEL_12;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v12 = *(__b + 3);
    if (v12 > 0xFFFFFFFD)
    {
      goto LABEL_11;
    }
  }

  *v11++ = v12;
  v13 = *(__b + 4);
  if (v13 > 0xFFFFFFFD)
  {
LABEL_12:
    v14 = *(__b + 5);
    if (v14 > 0xFFFFFFFD)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *v11++ = v13;
  v14 = *(__b + 5);
  if (v14 > 0xFFFFFFFD)
  {
LABEL_13:
    v15 = *__b;
    if (v2 < 5)
    {
      goto LABEL_14;
    }

LABEL_51:
    *__b = v15 & 0xFFFFFFFE;
    __b = llvm::allocate_buffer(4 * v2, 4uLL);
    v3[1] = __b;
    v3[2] = v2;
    v32 = *v3;
    *v3 = *v3 & 1;
    if ((v32 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_52:
    v16 = 4;
    v17 = v3 + 1;
    goto LABEL_53;
  }

LABEL_50:
  *v11++ = v14;
  v15 = *__b;
  if (v2 >= 5)
  {
    goto LABEL_51;
  }

LABEL_14:
  *__b = v15 & 1;
  if (v15)
  {
    goto LABEL_52;
  }

LABEL_15:
  v16 = *(v3 + 4);
  if (!v16)
  {
    goto LABEL_54;
  }

  v17 = v3[1];
LABEL_53:
  __b = memset(v17, 255, 4 * v16);
LABEL_54:
  if (&v44 != v11)
  {
    v33 = &v44;
    while (1)
    {
      v39 = *v33;
      if (*v33 <= 0xFFFFFFFD)
      {
        break;
      }

LABEL_62:
      if (++v33 == v11)
      {
        return __b;
      }
    }

    if (*v3)
    {
      v35 = 3;
      v34 = (v3 + 1);
      v36 = (37 * v39) & 3;
      v37 = &v10[4 * v36];
      v38 = *v37;
      if (v39 == *v37)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v34 = v3[1];
      v35 = *(v3 + 4) - 1;
      v36 = v35 & (37 * v39);
      v37 = &v34[4 * v36];
      v38 = *v37;
      if (v39 == *v37)
      {
LABEL_61:
        *v37 = v39;
        *v3 += 2;
        goto LABEL_62;
      }
    }

    v40 = 0;
    v41 = 1;
    while (v38 != -1)
    {
      if (v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = v38 == -2;
      }

      if (v42)
      {
        v40 = v37;
      }

      v43 = v36 + v41++;
      v36 = v43 & v35;
      v37 = &v34[4 * (v43 & v35)];
      v38 = *v37;
      if (v39 == *v37)
      {
        goto LABEL_61;
      }
    }

    if (v40)
    {
      v37 = v40;
    }

    goto LABEL_61;
  }

  return __b;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24) && *(a2 + 48) == *(v2 + 40);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v3 = mlir::detail::MemRefTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::MemRefTypeStorage::construct(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 3);
  v5 = a2[5];
  v6 = *a1;
  if (v2)
  {
    v7 = *a2;
    v8 = 8 * v2;
    a1[10] += 8 * v2;
    if (v6 && (v9 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v9 + v8 <= a1[1]))
    {
      *a1 = v9 + v8;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
LABEL_5:
        v11 = v9;
        v12 = v7;
        if (v9 - v7 >= 0x20)
        {
          v13 = (v10 >> 3) + 1;
          v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
          v11 = (v9 + v14);
          v12 = (v7 + v14);
          v15 = (v7 + 16);
          v16 = (v9 + 16);
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
            goto LABEL_14;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      v19 = a1;
      v25 = v4;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      v4 = v25;
      v9 = Slow;
      a1 = v19;
      v10 = v8 - 8;
      if ((v8 - 8) >= 0x18)
      {
        goto LABEL_5;
      }
    }

    v11 = v9;
    v12 = v7;
    do
    {
LABEL_13:
      v21 = *v12++;
      *v11++ = v21;
    }

    while (v12 != (v7 + 8 * v2));
LABEL_14:
    v6 = *a1;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  a1[10] += 56;
  if (v6 && (v22 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8, v22 + 56 <= a1[1]))
  {
    *a1 = v22 + 56;
  }

  else
  {
    v26 = v4;
    v24 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 56, 56, 3);
    v4 = v26;
    v22 = v24;
  }

  *v22 = 0;
  *(v22 + 8) = v9;
  *(v22 + 16) = v2;
  *(v22 + 24) = v3;
  *(v22 + 32) = v4;
  *(v22 + 48) = v5;
  return v22;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_25MemRefLayoutAttrInterfaceERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, void **a7, void *a8)
{
  v42 = *MEMORY[0x277D85DE8];
  v34[0] = a2;
  v34[1] = a3;
  v30 = *a5;
  v10 = *a7;
  v31.i64[0] = *a6;
  v31.i64[1] = v10;
  if (v10)
  {
    v11 = *v10;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (v14)
      {
LABEL_4:
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
        if (v15 != &v13[2 * v14] && *v15 == v12)
        {
          v10 = v15[1];
          goto LABEL_16;
        }
      }
    }

    else
    {
      v27 = v11;
      v28 = a8;
      mlir::detail::StorageUserBase<mlir::MemRefType,mlir::BaseMemRefType,mlir::detail::MemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::AffineMapAttr,mlir::Attribute>();
      a8 = v28;
      v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v13 = *(v27 + 8);
      v14 = *(v27 + 16);
      if (v14)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
  }

LABEL_16:
  v21 = *a8;
  v32 = v10;
  v33 = v21;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v41 = 0xFF51AFD7ED558CCDLL;
  memset(v38, 0, sizeof(v38));
  v35 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v30, v30 + 8 * *(&v30 + 1));
  v22 = vmovn_s64(v31);
  v23 = veor_s8(vshl_u32(v22, 0xFFFFFFFCFFFFFFF7), vshl_u32(v22, 0xFFFFFFF7FFFFFFFCLL));
  *&v24 = v23.u32[0];
  *(&v24 + 1) = v23.u32[1];
  v36 = v24;
  v37 = (v21 >> 4) ^ (v21 >> 9);
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v35, 0, v38, v39);
  v29 = &v30;
  v35 = &v30;
  *&v36 = v34;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, a4, v25, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v29, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v35);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  return v3 == *(*a1 + 8) && !memcmp(*(a2 + 8), *v2, 8 * v3) && *(a2 + 24) == *(v2 + 16) && *(a2 + 32) == *(v2 + 24) && *(a2 + 48) == *(v2 + 40);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::MemRefTypeStorage * mlir::StorageUniquer::get<mlir::detail::MemRefTypeStorage,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::MemRefTypeStorage *)>,mlir::TypeID,llvm::ArrayRef<long long> &,mlir::Type &,mlir::AffineMapAttr &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v3 = mlir::detail::MemRefTypeStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail17MemRefTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_10MemRefTypeEJRNS_8ArrayRefIxEERNS1_4TypeERNS1_13AffineMapAttrERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::ShapedType::cloneWith(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *v3;
  v7 = *a2;
  v8 = *(a2 + 2);
  return v5(v3, v4, &v7, a3);
}

uint64_t mlir::ShapedType::getNumElements(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v2)
    {
      v3 = v2 + 1;
      v4 = (v2 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v5 = &a1[v4];
      v6 = a1 + 1;
      v7 = 1;
      v8 = v4;
      v9 = 1;
      do
      {
        v7 *= *(v6 - 1);
        v9 *= *v6;
        v6 += 2;
        v8 -= 2;
      }

      while (v8);
      v10 = v9 * v7;
      if (v3 == v4)
      {
        return v10;
      }
    }

    else
    {
      v10 = 1;
      v5 = a1;
    }

    do
    {
      v12 = *v5++;
      v10 *= v12;
    }

    while (v5 != &a1[a2]);
    return v10;
  }

  return 1;
}

uint64_t mlir::DiagnosticArgument::DiagnosticArgument(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = a2;
  return result;
}

{
  *result = 0;
  *(result + 8) = a2;
  return result;
}

{
  *result = 4;
  *(result + 8) = a2;
  return result;
}

{
  *result = 4;
  *(result + 8) = a2;
  return result;
}

void mlir::DiagnosticArgument::print(mlir::DiagnosticArgument *this, llvm::raw_ostream *a2)
{
  v2 = *this;
  if (*this > 2)
  {
    switch(v2)
    {
      case 3:
        v6 = *(this + 1);
        v5 = *(this + 2);
        v7 = *(a2 + 4);
        if (v5 <= *(a2 + 3) - v7)
        {
          if (v5)
          {
            v10 = a2;
            v11 = v5;
            memcpy(v7, v6, v5);
            *(v10 + 4) += v11;
          }
        }

        else
        {

          llvm::raw_ostream::write(a2, v6, v5);
        }

        break;
      case 4:
        v9 = *(a2 + 4);
        if (v9 >= *(a2 + 3))
        {
          v12 = this;
          a2 = llvm::raw_ostream::write(a2, 39);
          this = v12;
        }

        else
        {
          *(a2 + 4) = v9 + 1;
          *v9 = 39;
        }

        v15 = *(this + 1);
        v13 = a2;
        mlir::Type::print(&v15, a2);
        v14 = *(v13 + 4);
        if (v14 >= *(v13 + 3))
        {
          llvm::raw_ostream::write(v13, 39);
        }

        else
        {
          *(v13 + 4) = v14 + 1;
          *v14 = 39;
        }

        break;
      case 5:
        v4 = *(this + 1);

        llvm::raw_ostream::operator<<(a2, v4);
        break;
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v8 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v8);
    }

    else if (v2 == 2)
    {
      v3 = *(this + 1);

      llvm::raw_ostream::operator<<(a2, v3);
    }
  }

  else
  {
    v15 = *(this + 1);
    mlir::Attribute::print(&v15, a2);
  }
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, char a2)
{
  v11 = 264;
  LOBYTE(v10) = a2;
  v3 = twineToStrRef(&v10);
  v4 = *(a1 + 16);
  LODWORD(v12) = 3;
  *(&v12 + 1) = v3;
  v13 = v5;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v4 > &v12 || v4 + 24 * v6 <= &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v4 + 24 * *(a1 + 24);
  v8 = v12;
  *(v7 + 16) = v13;
  *v7 = v8;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, void ***a2)
{
  v3 = twineToStrRef(a2);
  v4 = *(a1 + 16);
  LODWORD(v10) = 3;
  *(&v10 + 1) = v3;
  v11 = v5;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v4 > &v10 || v4 + 24 * v6 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v4 + 24 * *(a1 + 24);
  v8 = v10;
  *(v7 + 16) = v11;
  *v7 = v8;
  ++*(a1 + 24);
  return a1;
}

{
  v3 = twineToStrRef(a2);
  v4 = *(a1 + 16);
  LODWORD(v10) = 3;
  *(&v10 + 1) = v3;
  v11 = v5;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v4 > &v10 || v4 + 24 * v6 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v4 + 24 * *(a1 + 24);
  v8 = v10;
  *(v7 + 16) = v11;
  *v7 = v8;
  ++*(a1 + 24);
  return a1;
}

void **twineToStrRef(void ***a1)
{
  v11[8] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_257370CF0;
  if (*(a1 + 33) == 1)
  {
    v1 = *(a1 + 32);
    if (v1 > 4)
    {
      if (v1 - 5 < 2)
      {
        v3 = *a1;
        v6 = a1[1];
        v5 = v11;
        if (v6)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      switch(v1)
      {
        case 1u:
          return 0;
        case 3u:
          v3 = *a1;
          if (!*a1)
          {
            return v3;
          }

          v8 = strlen(*a1);
          v5 = v11;
          if (!v8)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        case 4u:
          v2 = *(*a1 + 23);
          if (v2 >= 0)
          {
            v3 = *a1;
          }

          else
          {
            v3 = **a1;
          }

          if (v2 >= 0)
          {
            v4 = *(*a1 + 23);
          }

          else
          {
            v4 = (*a1)[1];
          }

          v5 = v11;
          if (!v4)
          {
            goto LABEL_19;
          }

LABEL_18:
          operator new[]();
      }
    }
  }

  llvm::Twine::toVector(a1, &v9);
  v5 = v9;
  v3 = v9;
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v5 != v11)
  {
    free(v5);
  }

  return v3;
}

__n128 mlir::Diagnostic::operator<<(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v6.n128_u32[0] = 0;
  v6.n128_u64[1] = a2;
  v3 = *(a1 + 24);
  if (v3 >= *(a1 + 28))
  {
    if (v2 > &v6 || v2 + 24 * v3 <= &v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (v2 + 24 * *(a1 + 24));
  result = v6;
  v4[1].n128_u64[0] = v7;
  *v4 = result;
  ++*(a1 + 24);
  return result;
}

uint64_t mlir::Diagnostic::operator<<(uint64_t a1, uint64_t a2)
{
  *&v10 = *(a2 + 8);
  Value = mlir::StringAttr::getValue(&v10);
  v4 = *(a1 + 16);
  LODWORD(v10) = 3;
  *(&v10 + 1) = Value;
  v11 = v5;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v4 > &v10 || v4 + 24 * v6 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v4 + 24 * *(a1 + 24);
  v8 = v10;
  *(v7 + 16) = v11;
  *v7 = v8;
  ++*(a1 + 24);
  return a1;
}

{
  v25 = 0;
  v26 = a2;
  v24[0] = 0;
  v24[1] = 0;
  v17 = 0;
  v21 = 0;
  v22 = 1;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v16 = &unk_2868A3EF8;
  v23 = v24;
  llvm::raw_ostream::SetBufferAndMode(&v16, 0, 0, 0);
  mlir::OpPrintingFlags::OpPrintingFlags(&v11);
  v3 = *(a1 + 8);
  mlir::OpPrintingFlags::useLocalScope(&v11);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(&v11, 16);
  if (v3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v11, 1);
  }

  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  mlir::Value::print(&v26, &v16, v14);
  LOWORD(v15) = 260;
  *&v14[0] = v24;
  v4 = twineToStrRef(v14);
  v5 = *(a1 + 16);
  LODWORD(v11) = 3;
  *(&v11 + 1) = v4;
  *&v12 = v6;
  v7 = *(a1 + 24);
  if (v7 >= *(a1 + 28))
  {
    if (v5 > &v11 || v5 + 24 * v7 <= &v11)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = v5 + 24 * *(a1 + 24);
  v9 = v11;
  *(v8 + 16) = v12;
  *v8 = v9;
  ++*(a1 + 24);
  llvm::raw_ostream::~raw_ostream(&v16);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  return a1;
}

void mlir::Diagnostic::appendOp(mlir::Diagnostic *this, mlir::Block **a2, const mlir::OpPrintingFlags *a3)
{
  memset(&v19, 0, sizeof(v19));
  v12 = 0;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_2868A3EF8;
  v18 = &v19;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = *(a3 + 1);
  v7 = *a3;
  v8 = v6;
  v9 = *(a3 + 2);
  LODWORD(a3) = *(this + 2);
  mlir::OpPrintingFlags::useLocalScope(&v7);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(&v7, 16);
  if (a3 == 2)
  {
    mlir::OpPrintingFlags::printGenericOpForm(&v7, 1);
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  mlir::Operation::print(a2, &v11, v10);
}

void mlir::Diagnostic::print(mlir::Diagnostic *this, llvm::raw_ostream *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = *(this + 2);
    v5 = 24 * v2;
    do
    {
      mlir::DiagnosticArgument::print(v4, a2);
      v4 = (v4 + 24);
      v5 -= 24;
    }

    while (v5);
  }
}

void mlir::Diagnostic::str(mlir::Diagnostic *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v7 = 0;
  v11 = 0;
  v12 = 1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v6 = &unk_2868A3EF8;
  v13 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v6, 0, 0, 0);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = 24 * v3;
    do
    {
      mlir::DiagnosticArgument::print(v4, &v6);
      v4 = (v4 + 24);
      v5 -= 24;
    }

    while (v5);
  }

  llvm::raw_ostream::~raw_ostream(&v6);
}

void mlir::InFlightDiagnostic::report(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::detail::DiagnosticEngineImpl::emit(**this, this + 1);
    *this = 0;
  }

  if (*(this + 200) == 1)
  {
    mlir::Diagnostic::~Diagnostic((this + 8));
    *(this + 200) = 0;
  }
}

void mlir::detail::DiagnosticEngineImpl::emit(uint64_t a1, uint64_t *a2)
{
  std::recursive_mutex::lock(a1);
  v5 = *(a1 + 120);
  v6 = *(a1 + 112) + 40 * v5;
  v7 = v6 - 32;
  v8 = -40 * v5;
  while (v8)
  {
    v9 = *(v6 - 8);
    v6 -= 40;
    v4 = (*(v9 & 0xFFFFFFFFFFFFFFF8))();
    v7 -= 40;
    v8 += 40;
    if (v4)
    {
      goto LABEL_21;
    }
  }

  if (*(a2 + 2) != 2)
  {
    goto LABEL_21;
  }

  v10 = llvm::errs(v4);
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
LABEL_9:
    v12 = *(v10 + 4);
    if (*(v10 + 3) - v12 <= 6uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v17 = *a2;
  mlir::Attribute::print(&v17, v10);
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 <= 1uLL)
  {
    llvm::raw_ostream::write(v10, ": ", 2uLL);
    goto LABEL_9;
  }

  *v11 = 8250;
  *(v10 + 4) += 2;
  v12 = *(v10 + 4);
  if (*(v10 + 3) - v12 <= 6uLL)
  {
LABEL_10:
    llvm::raw_ostream::write(v10, "error: ", 7uLL);
    v13 = *(a2 + 6);
    if (!v13)
    {
      goto LABEL_16;
    }

LABEL_14:
    v14 = a2[2];
    v15 = 24 * v13;
    do
    {
      mlir::DiagnosticArgument::print(v14, v10);
      v14 = (v14 + 24);
      v15 -= 24;
    }

    while (v15);
    goto LABEL_16;
  }

LABEL_13:
  *(v12 + 3) = 540701295;
  *v12 = 1869771365;
  *(v10 + 4) += 7;
  v13 = *(a2 + 6);
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_16:
  v16 = *(v10 + 4);
  if (v16 < *(v10 + 3))
  {
    *(v10 + 4) = v16 + 1;
    *v16 = 10;
    if (*(v10 + 4) == *(v10 + 2))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  llvm::raw_ostream::write(v10, 10);
  if (*(v10 + 4) != *(v10 + 2))
  {
LABEL_20:
    llvm::raw_ostream::flush_nonempty(v10);
  }

LABEL_21:
  std::recursive_mutex::unlock(a1);
}

void mlir::DiagnosticEngine::DiagnosticEngine(mlir::DiagnosticEngine *this)
{
  operator new();
}

{
  operator new();
}

void mlir::DiagnosticEngine::~DiagnosticEngine(std::recursive_mutex **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<mlir::detail::DiagnosticEngineImpl>::operator()[abi:nn200100](this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    std::default_delete<mlir::detail::DiagnosticEngineImpl>::operator()[abi:nn200100](this, v1);
  }
}

uint64_t mlir::DiagnosticEngine::registerHandler(std::recursive_mutex **a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  std::recursive_mutex::lock(*a1);
  v5 = *a1;
  v6 = *&(*a1)[3].__m_.__opaque[8];
  *&v5[3].__m_.__opaque[8] = v6 + 1;
  v7 = *(a2 + 24);
  v11 = v6;
  v14 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 2) != 0 && (v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 8))(&v12, a2);
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v12 = *a2;
      v13 = *(a2 + 16);
    }

    *(a2 + 24) = 0;
  }

  llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::try_emplace<llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>(v5[1].__m_.__opaque, &v11, &v12);
  v8 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      if ((v14 & 2) != 0)
      {
        v9 = &v12;
      }

      else
      {
        v9 = v12;
      }

      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v9);
    }

    if ((v8 & 2) == 0)
    {
      llvm::deallocate_buffer(v12, *(&v12 + 1));
    }
  }

  std::recursive_mutex::unlock(v4);
  return v6;
}

void mlir::DiagnosticEngine::eraseHandler(std::recursive_mutex **this, uint64_t a2)
{
  v4 = *this;
  std::recursive_mutex::lock(*this);
  v5 = *this;
  v6 = *(*this)[1].__m_.__opaque;
  if (v6)
  {
    v7 = &v5[1].__m_.__opaque[8];
    v8 = 2;
  }

  else
  {
    v7 = *&v5[1].__m_.__opaque[8];
    v8 = *&v5[1].__m_.__opaque[16];
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
LABEL_4:
      v11 = &v7[16 * v10];
      v12 = &v7[16 * v9];
      goto LABEL_17;
    }
  }

  v13 = v8 - 1;
  v14 = (v8 - 1) & (((0xBF58476D1CE4E5B9 * a2) >> 31) ^ (484763065 * a2));
  v15 = *&v7[16 * v14];
  if (v15 == a2)
  {
LABEL_7:
    v11 = &v7[16 * v14];
    if ((v6 & 1) == 0)
    {
      v12 = *&v5[1].__m_.__opaque[8] + 16 * *&v5[1].__m_.__opaque[16];
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 1;
    while (v15 != -1)
    {
      v17 = v14 + v16++;
      v14 = v17 & v13;
      v15 = *&v7[16 * v14];
      if (v15 == a2)
      {
        goto LABEL_7;
      }
    }

    if ((v6 & 1) == 0)
    {
      v7 = *&v5[1].__m_.__opaque[8];
      v9 = *&v5[1].__m_.__opaque[16];
      v10 = v9;
      goto LABEL_4;
    }

    v11 = &v5[1].__m_.__opaque[40];
  }

  v12 = &v5[1].__m_.__opaque[40];
LABEL_17:
  v18 = v11 == v12;
  v19 = &v5[1].__m_.__opaque[48];
  if (!v18)
  {
    v19 = v11 + 8;
  }

  v20 = *v19;
  if (v20 != *&v5[1].__m_.__opaque[48])
  {
    llvm::MapVector<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>,llvm::SmallDenseMap<unsigned long long,unsigned int,2u,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,unsigned int>>,llvm::SmallVector<std::pair<unsigned long long,llvm::unique_function<llvm::LogicalResult ()(mlir::Diagnostic &)>>,2u>>::erase((*this)[1].__m_.__opaque, (*&v5[1].__m_.__opaque[40] + 40 * v20));
  }

  std::recursive_mutex::unlock(v4);
}

void emitDiag(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
  v9 = v26;
  *a1 = DiagEngine;
  *(a1 + 8) = v9;
  *(a1 + 16) = a3;
  *(a1 + 24) = a1 + 40;
  *(a1 + 136) = 0u;
  *(a1 + 32) = 0x400000000;
  *(a1 + 152) = 0u;
  *(a1 + 200) = 1;
  *(a1 + 168) = 0u;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0;
  if (*(a4 + 32) >= 2u)
  {
    LODWORD(v16) = 3;
    *(&v16 + 1) = twineToStrRef(a4);
    v17 = v10;
    v11 = *(a1 + 32);
    v12 = *(a1 + 24);
    if (v11 >= *(a1 + 36))
    {
      if (v12 > &v16 || v12 + 24 * v11 <= &v16)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = v12 + 24 * *(a1 + 32);
    v14 = v16;
    *(v13 + 16) = v17;
    *v13 = v14;
    ++*(a1 + 32);
  }

  if (mlir::MLIRContext::shouldPrintStackTraceOnDiagnostic(Context))
  {
    __p = 0;
    v24 = 0;
    v25 = 0;
    DWORD2(v16) = 0;
    v20 = 0;
    v21 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    *&v16 = &unk_2868A3EF8;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v16, 0, 0, 0);
    llvm::sys::PrintStackTrace(&v16, 0);
    llvm::raw_ostream::~raw_ostream(&v16);
    v15 = HIBYTE(v25);
    if (v25 < 0)
    {
      v15 = v24;
    }

    if (v15)
    {
      operator new();
    }

    if (v25 < 0)
    {
      operator delete(__p);
    }
  }
}

void mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(mlir::MLIRContext **this)
{
  if (*this)
  {
    DiagEngine = mlir::MLIRContext::getDiagEngine(this[1]);
    mlir::DiagnosticEngine::eraseHandler(DiagEngine, *this);
  }
}

{
  if (*this)
  {
    DiagEngine = mlir::MLIRContext::getDiagEngine(this[1]);
    mlir::DiagnosticEngine::eraseHandler(DiagEngine, *this);
  }
}

void mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  *(a1 + 56) = 0;
  v6 = *(a5 + 3);
  *(a1 + 56) = v6;
  if (v6 >= 8)
  {
    if ((v6 & 2) != 0 && (v6 & 4) != 0)
    {
      v8 = a5;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 8))(a1 + 32, a5);
      (*((*(a1 + 56) & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
      a5 = v8;
    }

    else
    {
      v7 = *a5;
      *(a1 + 48) = *(a5 + 2);
      *(a1 + 32) = v7;
    }

    *(a5 + 3) = 0;
  }

  *(a1 + 64) = 10;
  operator new();
}

void mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(llvm *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = llvm::errs(a1);

  mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(a1, a2, a3, v8, a4);
}

{
  v8 = llvm::errs(a1);

  mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(a1, a2, a3, v8, a4);
}

void mlir::SourceMgrDiagnosticHandler::~SourceMgrDiagnosticHandler(mlir::SourceMgrDiagnosticHandler *this)
{
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    if (*(v2 + 12))
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = 0;
        do
        {
          v5 = *(*v2 + v4);
          if (v5 != -8 && v5 != 0)
          {
            llvm::deallocate_buffer(v5, (*v5 + 17));
          }

          v4 += 8;
        }

        while (8 * v3 != v4);
      }
    }

    free(*v2);
    MEMORY[0x259C63180](v2, 0x1080C40468F112ELL);
  }

  v7 = *(this + 7);
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v8 = (this + 32);
      if ((v7 & 2) == 0)
      {
        v8 = *v8;
      }

      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(*(this + 4), *(this + 5));
    }
  }

  if (*this)
  {
    DiagEngine = mlir::MLIRContext::getDiagEngine(*(this + 1));
    mlir::DiagnosticEngine::eraseHandler(DiagEngine, *this);
  }
}

void mlir::SourceMgrDiagnosticHandler::emitDiagnostic(uint64_t a1, uint64_t a2, llvm::Twine *a3, int a4, int a5)
{
  v62[20] = *MEMORY[0x277D85DE8];
  v47 = a2;
  Filename = 0;
  v35 = &Filename;
  mlir::LocationAttr::walk(&v47, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FileLineColLoc mlir::LocationAttr::findInstanceOf<mlir::FileLineColLoc>(void)::{lambda(mlir::FileLineColLoc)#1}>, &v35);
  v46 = Filename;
  if (!Filename)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    LODWORD(v49) = 0;
    LOBYTE(v53) = 0;
    HIDWORD(v53) = 1;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    Filename = &unk_2868A3EF8;
    v54 = &v43;
    llvm::raw_ostream::SetBufferAndMode(&Filename, 0, 0, 0);
    if (*(*v47 + 136) != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      mlir::Attribute::print(&v47, &Filename);
      if ((v51 - v52) > 1)
      {
        *v52++ = 8250;
      }

      else
      {
        llvm::raw_ostream::write(&Filename, ": ", 2uLL);
      }
    }

    llvm::Twine::print(a3, &Filename);
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    v31 = dword_25739AC30[a4];
    LOWORD(v39) = 260;
    v35 = &v43;
    llvm::SourceMgr::PrintMessage(v29, v30, 0, v31, &v35, 0, 0, v32, 0, 0, 1);
    llvm::raw_ostream::~raw_ostream(&Filename);
    if (SHIBYTE(v45) < 0)
    {
      goto LABEL_57;
    }

    return;
  }

  if (a5)
  {
    v9 = mlir::SourceMgrDiagnosticHandler::convertLocToSMLoc(a1, Filename);
    if (v9)
    {
      llvm::SourceMgr::PrintMessage(*(a1 + 16), *(a1 + 24), v9, dword_25739AC30[a4], a3, 0, 0, v10, 0, 0, 1);
      return;
    }
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v36 = 0;
  v40 = 0;
  v41 = 1;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v35 = &unk_2868A3EF8;
  v42 = &v43;
  llvm::raw_ostream::SetBufferAndMode(&v35, 0, 0, 0);
  Filename = mlir::FileLineColLoc::getFilename(&v46);
  Value = mlir::StringAttr::getValue(&Filename);
  v13 = v11;
  v14 = v39;
  if (v11 <= v38 - v39)
  {
    if (v11)
    {
      memcpy(v39, Value, v11);
      v14 = &v39[v13];
      v39 += v13;
    }

    v15 = &v35;
    if (v38 != v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = llvm::raw_ostream::write(&v35, Value, v11);
    v14 = v15[4];
    if (v15[3] != v14)
    {
LABEL_7:
      *v14 = 58;
      v15[4] = (v15[4] + 1);
      goto LABEL_15;
    }
  }

  v15 = llvm::raw_ostream::write(v15, ":", 1uLL);
LABEL_15:
  Line = mlir::FileLineColLoc::getLine(&v46);
  v17 = llvm::raw_ostream::operator<<(v15, Line);
  v18 = *(v17 + 4);
  if (*(v17 + 3) == v18)
  {
    v19 = llvm::raw_ostream::write(v17, ":", 1uLL);
  }

  else
  {
    *v18 = 58;
    v19 = v17;
    ++*(v17 + 4);
  }

  Column = mlir::FileLineColLoc::getColumn(&v46);
  llvm::raw_ostream::operator<<(v19, Column);
  if (v45 >= 0)
  {
    v21 = &v43;
  }

  else
  {
    v21 = v43;
  }

  if (v45 >= 0)
  {
    v22 = SHIBYTE(v45);
  }

  else
  {
    v22 = v44;
  }

  v23 = dword_25739AC30[a4];
  v24 = __p;
  llvm::Twine::str(a3, __p);
  if (v34 < 0)
  {
    v24 = __p[0];
  }

  if (v34 >= 0)
  {
    v25 = v34;
  }

  else
  {
    v25 = __p[1];
  }

  Filename = 0;
  v49 = 0;
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_66;
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v52) = v22;
  if (v22)
  {
    memmove(&v50, v21, v22);
  }

  *(&v50 + v22) = 0;
  v53 = -1;
  LODWORD(v54) = v23;
  if (v25 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_66:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  v56 = v25;
  if (v25)
  {
    memmove(&v55, v24, v25);
  }

  *(&v55 + v25) = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v60 = v62;
  v61 = 0x400000000;
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  llvm::SMDiagnostic::print(&Filename, 0, *(a1 + 24), 1, 1, 1);
  v26 = v60;
  if (v61)
  {
    v27 = (v60 + 40 * v61 - 24);
    v28 = -40 * v61;
    do
    {
      if (*(v27 + 23) < 0)
      {
        operator delete(*v27);
      }

      v27 -= 5;
      v28 += 40;
    }

    while (v28);
    v26 = v60;
  }

  if (v26 != v62)
  {
    free(v26);
  }

  if (*(&v58 + 1))
  {
    *&v59 = *(&v58 + 1);
    operator delete(*(&v58 + 1));
  }

  if (SBYTE7(v58) < 0)
  {
    operator delete(v57);
    if ((v56 & 0x80000000) == 0)
    {
LABEL_55:
      if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_61;
    }
  }

  else if ((v56 & 0x80000000) == 0)
  {
    goto LABEL_55;
  }

  operator delete(v55);
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
LABEL_56:
    llvm::raw_ostream::~raw_ostream(&v35);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

LABEL_61:
  operator delete(v50);
  llvm::raw_ostream::~raw_ostream(&v35);
  if (SHIBYTE(v45) < 0)
  {
LABEL_57:
    operator delete(v43);
  }
}

uint64_t mlir::SourceMgrDiagnosticHandler::convertLocToSMLoc(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  if (!mlir::FileLineColLoc::getLine(&v14))
  {
    return 0;
  }

  if (!mlir::FileLineColLoc::getColumn(&v14))
  {
    return 0;
  }

  v3 = *(a1 + 72);
  v4 = *(a1 + 16);
  Filename = mlir::FileLineColLoc::getFilename(&v14);
  Value = mlir::StringAttr::getValue(&Filename);
  SourceMgrBufferIDForFile = mlir::detail::SourceMgrDiagnosticHandlerImpl::getSourceMgrBufferIDForFile(v3, v4, Value, v6);
  if (!SourceMgrBufferIDForFile)
  {
    return 0;
  }

  v8 = SourceMgrBufferIDForFile;
  v9 = *(a1 + 16);
  Line = mlir::FileLineColLoc::getLine(&v14);
  Column = mlir::FileLineColLoc::getColumn(&v14);
  return llvm::SourceMgr::FindLocForLineAndColumn(v9, v8, Line, Column);
}

void mlir::SourceMgrDiagnosticHandler::emitDiagnostic(mlir::SourceMgrDiagnosticHandler *this, mlir::Diagnostic *a2)
{
  v49[6] = *MEMORY[0x277D85DE8];
  v47 = v49;
  v48 = 0x200000000;
  Caller = *a2;
  v40 = 0uLL;
  LocToShow = mlir::SourceMgrDiagnosticHandler::findLocToShow(this, Caller);
  __p = LocToShow;
  LOBYTE(v36) = v6;
  if (v6)
  {
    v7 = v47 + 24 * v48;
    *v7 = LocToShow;
    *(v7 + 8) = v40;
    LODWORD(v48) = v48 + 1;
  }

  v38 = getCallSiteLoc(Caller);
  v39 = v8;
  if (v8)
  {
    Caller = mlir::CallSiteLoc::getCaller(&v38);
    if (*(this + 16))
    {
      v9 = 0;
      while (1)
      {
        *&v40 = "called from";
        *(&v40 + 1) = 11;
        v10 = mlir::SourceMgrDiagnosticHandler::findLocToShow(this, Caller);
        __p = v10;
        LOBYTE(v36) = v11;
        if ((v11 & 1) == 0)
        {
          goto LABEL_9;
        }

        if (v48 < HIDWORD(v48))
        {
          break;
        }

        llvm::SmallVectorTemplateBase<std::pair<mlir::Value,std::optional<long long>>,true>::growAndEmplaceBack<mlir::Value&,std::optional<long long>&>(&v47, &__p, &v40);
        v38 = getCallSiteLoc(Caller);
        v39 = v14;
        if ((v14 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_10:
        Caller = mlir::CallSiteLoc::getCaller(&v38);
        if (++v9 >= *(this + 16))
        {
          goto LABEL_13;
        }
      }

      v12 = v47 + 24 * v48;
      *v12 = v10;
      *(v12 + 8) = v40;
      LODWORD(v48) = v48 + 1;
LABEL_9:
      v38 = getCallSiteLoc(Caller);
      v39 = v13;
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

LABEL_13:
  if (v48)
  {
    v15 = *v47;
    __p = 0;
    v36 = 0;
    v37 = 0;
    DWORD2(v40) = 0;
    v44 = 0;
    v45 = 1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    *&v40 = &unk_2868A3EF8;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v40, 0, 0, 0);
    v16 = *(a2 + 6);
    if (v16)
    {
      v17 = *(a2 + 2);
      v18 = 24 * v16;
      do
      {
        mlir::DiagnosticArgument::print(v17, &v40);
        v17 = (v17 + 24);
        v18 -= 24;
      }

      while (v18);
    }

    llvm::raw_ostream::~raw_ostream(&v40);
    LOWORD(v43) = 260;
    *&v40 = &__p;
    mlir::SourceMgrDiagnosticHandler::emitDiagnostic(this, v15, &v40, *(a2 + 2), 1);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
      v19 = v48;
      if (v48 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v19 = v48;
      if (v48 == 1)
      {
        goto LABEL_28;
      }
    }

    v24 = v47 + 24 * v19;
    v25 = v47 + 24;
    do
    {
      v26 = *v25;
      LOWORD(v43) = 261;
      v40 = *(v25 + 8);
      mlir::SourceMgrDiagnosticHandler::emitDiagnostic(this, v26, &v40, 0, 1);
      v25 += 24;
    }

    while (v25 != v24);
  }

  else
  {
    v20 = *a2;
    __p = 0;
    v36 = 0;
    v37 = 0;
    DWORD2(v40) = 0;
    v44 = 0;
    v45 = 1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    *&v40 = &unk_2868A3EF8;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v40, 0, 0, 0);
    v21 = *(a2 + 6);
    if (v21)
    {
      v22 = *(a2 + 2);
      v23 = 24 * v21;
      do
      {
        mlir::DiagnosticArgument::print(v22, &v40);
        v22 = (v22 + 24);
        v23 -= 24;
      }

      while (v23);
    }

    llvm::raw_ostream::~raw_ostream(&v40);
    LOWORD(v43) = 260;
    *&v40 = &__p;
    mlir::SourceMgrDiagnosticHandler::emitDiagnostic(this, v20, &v40, *(a2 + 2), 1);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_28:
  v34 = this;
  v27 = *(a2 + 19);
  for (i = *(a2 + 20); v27 != i; ++v27)
  {
    v29 = *v27;
    v30 = **v27;
    __p = 0;
    v36 = 0;
    v37 = 0;
    DWORD2(v40) = 0;
    v44 = 0;
    v45 = 1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    *&v40 = &unk_2868A3EF8;
    p_p = &__p;
    llvm::raw_ostream::SetBufferAndMode(&v40, 0, 0, 0);
    v31 = *(v29 + 6);
    if (v31)
    {
      v32 = v29[2];
      v33 = 24 * v31;
      do
      {
        mlir::DiagnosticArgument::print(v32, &v40);
        v32 = (v32 + 24);
        v33 -= 24;
      }

      while (v33);
    }

    llvm::raw_ostream::~raw_ostream(&v40);
    LOWORD(v43) = 260;
    *&v40 = &__p;
    mlir::SourceMgrDiagnosticHandler::emitDiagnostic(v34, v30, &v40, *(v29 + 2), Caller != *v29);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
    }

    Caller = *v29;
  }

  if (v47 != v49)
  {
    free(v47);
  }
}

unint64_t getCallSiteLoc(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (a1 && v1 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
  {
    v13 = a1;
    ChildLoc = mlir::NameLoc::getChildLoc(&v13);
    a1 = getCallSiteLoc(ChildLoc);
    v3 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  else if (a1 && v1 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    v4 = a1;
    LOBYTE(a1) = 0;
    if (v4)
    {
      v5 = v4;
      v3 = 0;
      if (v1 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
      {
        v13 = v5;
        Locations = mlir::FusedLoc::getLocations(&v13);
        if (v7)
        {
          v8 = Locations;
          v9 = 8 * v7;
          while (1)
          {
            a1 = getCallSiteLoc(*v8);
            if (v10)
            {
              break;
            }

            ++v8;
            v9 -= 8;
            if (!v9)
            {
              v11 = a1;
              LOBYTE(a1) = 0;
              goto LABEL_17;
            }
          }

          v11 = a1;
LABEL_17:
          v3 = v11 & 0xFFFFFFFFFFFFFF00;
        }

        else
        {
          LOBYTE(a1) = 0;
          v3 = 0;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 | a1;
}

uint64_t mlir::SourceMgrDiagnosticHandler::getBufferForFile(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  SourceMgrBufferIDForFile = mlir::detail::SourceMgrDiagnosticHandlerImpl::getSourceMgrBufferIDForFile(*(a1 + 72), *(a1 + 16), a2, a3);
  if (SourceMgrBufferIDForFile)
  {
    return *(**(a1 + 16) + 24 * (SourceMgrBufferIDForFile - 1));
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::SourceMgrDiagnosticHandlerImpl::getSourceMgrBufferIDForFile(uint64_t a1, void *a2, unsigned int *a3, unint64_t a4)
{
  v8 = llvm::StringMapImpl::hash(a3, a4, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a3, a4, v8);
  if (Key != -1 && Key != *(a1 + 8))
  {
    return *(*(*a1 + 8 * Key) + 8);
  }

  v10 = -1431655765 * ((a2[1] - *a2) >> 3);
  if (v10)
  {
    v11 = 0;
    v12 = 24 * v10;
    v13 = 1;
    while (1)
    {
      v14 = (*(**(*a2 + v11) + 16))(*(*a2 + v11));
      if (v16 == a4 && (!a4 || !memcmp(v14, a3, a4)))
      {
        break;
      }

      v13 = (v13 + 1);
      v11 += 24;
      if (v12 == v11)
      {
        goto LABEL_10;
      }
    }

    v17 = llvm::StringMapImpl::hash(a3, a4, v15);
    *(*llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>(a1, a3, a4, v17) + 8) = v13;
  }

  else
  {
LABEL_10:
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    if (a4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (a4 >= 0x17)
    {
      operator new();
    }

    v22 = a4;
    if (a4)
    {
      memmove(&__p, a3, a4);
    }

    *(&__p + a4) = 0;
    v13 = llvm::SourceMgr::AddIncludeFile(a2, &__p, 0, v23);
    if (v22 < 0)
    {
      operator delete(__p);
    }

    v19 = llvm::StringMapImpl::hash(a3, a4, v18);
    *(*llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>(a1, a3, a4, v19) + 8) = v13;
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[0]);
    }
  }

  return v13;
}

unint64_t mlir::SourceMgrDiagnosticHandler::findLocToShow(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 56);
  if (v3 <= 7)
  {
    goto LABEL_27;
  }

  v5 = (a1 + 32);
  if ((v3 & 2) == 0)
  {
    v5 = *v5;
  }

  if (!(*(v3 & 0xFFFFFFFFFFFFFFF8))(v5, a2))
  {
LABEL_26:
    LOBYTE(v2) = 0;
    v11 = 0;
    return v11 | v2;
  }

  v6 = *(*v2 + 136);
  if (v6 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id && v2 != 0)
  {
    v21 = v2;
    Callee = mlir::CallSiteLoc::getCallee(&v21);
LABEL_28:
    LocToShow = mlir::SourceMgrDiagnosticHandler::findLocToShow(a1, Callee);
    LOBYTE(v2) = LocToShow;
    v11 = LocToShow & 0xFFFFFFFFFFFFFF00;
    return v11 | v2;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
  {
LABEL_27:
    v11 = v2 & 0xFFFFFFFFFFFFFF00;
    return v11 | v2;
  }

  if (v6 != &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id || v2 == 0)
  {
    if (v6 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id && v2 != 0)
    {
      v21 = v2;
      Callee = mlir::NameLoc::getChildLoc(&v21);
      goto LABEL_28;
    }

    if (v6 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id && v2 != 0)
    {
      v21 = v2;
      Callee = mlir::OpaqueLoc::getFallbackLocation(&v21);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v21 = v2;
  Locations = mlir::FusedLoc::getLocations(&v21);
  if (v16)
  {
    v17 = Locations;
    v18 = 8 * v16;
    while (1)
    {
      v19 = mlir::SourceMgrDiagnosticHandler::findLocToShow(a1, *v17);
      LOBYTE(v2) = v19;
      if (v20)
      {
        break;
      }

      ++v17;
      v18 -= 8;
      if (!v18)
      {
        LOBYTE(v2) = 0;
        v11 = v19 & 0xFFFFFFFFFFFFFF00;
        return v11 | v2;
      }
    }

    v11 = v19 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    LOBYTE(v2) = 0;
    v11 = 0;
  }

  return v11 | v2;
}

uint64_t mlir::detail::SourceMgrDiagnosticVerifierHandlerImpl::getExpectedDiags@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = llvm::StringMapImpl::hash(a2, a3, a3);
  result = llvm::StringMapImpl::FindKey((a1 + 8), a2, a3, v8);
  if (result == -1 || result == *(a1 + 16))
  {
    *a4 = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    v10 = *(*(a1 + 8) + 8 * result);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    *a4 = v11;
    *(a4 + 8) = v12;
    *(a4 + 16) = 1;
  }

  return result;
}