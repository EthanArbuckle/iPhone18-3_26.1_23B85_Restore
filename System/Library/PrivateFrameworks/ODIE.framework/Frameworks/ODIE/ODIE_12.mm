void *_ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED1Ev(void *a1)
{
  *a1 = &unk_286E785A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEED0Ev(void *a1)
{
  *a1 = &unk_286E785A8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x25F891040);
}

__n128 _ZNKSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286E785A8;
  std::vector<long>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir18SparseElementsAttr20try_value_begin_implIN4llvm9StringRefEEENS5_9FailureOrINS5_15mapped_iteratorINS5_6detail15SafeIntIteratorIlLb0EEENS_8functionIFT_lEEEDTclclsr3stdE7declvalISF_EEdeclL_ZNS_7declvalB8nn200100ISB_EEDTclsr3stdE9__declvalISD_ELi0EEEvEEEEEEEENS2_6detail17ElementsAttrTraitIS3_E13OverloadTokenISD_EEEUllE_NS_9allocatorISQ_EEFS6_lEEclEOl(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) - v2;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
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
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 48) - v4;
    if (*(a1 + 40))
    {
      v9 = 0;
    }

    v7 = *(a1 + 32) + 16 * v9;
    v8 = (v7 + 8);
  }

  else
  {
LABEL_5:
    v7 = a1 + 56;
    v8 = (a1 + 64);
  }

  v10 = *v8;
  return *v7;
}

uint64_t std::__function::__value_func<llvm::StringRef ()(long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<llvm::StringRef ()(long)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E785F0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::StringRef ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  return a1;
}

void mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::~OpaqueIterator(uint64_t a1)
{
  *a1 = &unk_286E785F0;
  if (*(a1 + 48) == 1)
  {
    std::__function::__value_func<llvm::StringRef ()(long)>::~__value_func[abi:nn200100](a1 + 16);
  }

  JUMPOUT(0x25F891040);
}

uint64_t mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<llvm::mapped_iterator<llvm::detail::SafeIntIterator<long,false>,std::function<llvm::StringRef ()(long)>,llvm::StringRef>,llvm::StringRef>::at(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) + a2;
  v3 = *(a1 + 40);
  v6 = v2;
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(v5);
}

BOOL mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSB_25SparseElementsAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v8 = a2[3];
  v7 = a2[4];
  if (a2[1])
  {
    a5(a6);
  }

  if (v8)
  {
    a3(a4, v8);
  }

  if (v7)
  {

    a3(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_18SparseElementsAttrES2_NSA_25SparseElementsAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v18.i64[0] = a3;
  v18.i64[1] = a4;
  v17.i64[0] = a5;
  v17.i64[1] = a6;
  v10 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v6, v7, &v18, &v17);
  if (!v9)
  {
    v13 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    return mlir::SparseElementsAttr::get(v10, v11, v13, v15);
  }

  v12 = v18.i64[0];
  v18 = vaddq_s64(v18, xmmword_25D0A0600);
  v13 = *v12;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = v18.i64[0];
  v18 = vaddq_s64(v18, xmmword_25D0A0600);
  v15 = *v14;
  return mlir::SparseElementsAttr::get(v10, v11, v13, v15);
}

void mlir::AbstractAttribute::get<mlir::StridedLayoutAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v4 = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::getAffineMap;
  v4[1] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::isIdentity;
  v4[2] = mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::verifyLayout;
  v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSB_24StridedLayoutAttrStorageENSB_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSA_24StridedLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id, "builtin.strided_layout", 22);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::MemRefLayoutAttrInterfaceInterfaceTraits::Model<mlir::StridedLayoutAttr>::verifyLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a4 == *(a2 + 24))
  {
    v6 = 1;
  }

  else
  {
    a5(&v9, a6);
    if (v9)
    {
      mlir::Diagnostic::operator<<<49ul>(v10, "expected the number of strides to match the rank");
    }

    v6 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::detail::StorageUserBase<mlir::StridedLayoutAttr,mlir::Attribute,mlir::detail::StridedLayoutAttrStorage,mlir::detail::AttributeUniquer,mlir::MemRefLayoutAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemRefLayoutAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_17StridedLayoutAttrES2_NSA_24StridedLayoutAttrStorageENSA_16AttributeUniquerEJNS1_25MemRefLayoutAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(v11, *(&v11 + 1), &v12);
  v16 = &v10;
  v17 = v19;
  v18 = 0x600000000;
  if (v13)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v17, &v12);
  }

  if (v12 != &v14)
  {
    free(v12);
  }

  v3 = *(**a2 + 32);
  v4 = v16;
  v12 = v16;
  v13 = v15;
  v14 = 0x600000000;
  if (v18)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v13, &v17);
    v4 = v12;
    v5 = v13;
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v5 = v15;
  }

  v7 = mlir::StridedLayoutAttr::get(v3, *v4, v5, v6);
  if (v13 != v15)
  {
    free(v13);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<long long>,void>::replace(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = 0x600000000;
  if (a2)
  {
    v5 = 8 * a2;
    do
    {
      llvm::SmallVectorImpl<long long>::emplace_back<long long const&>(&v8, a1++);
      v5 -= 8;
    }

    while (v5);
    v6 = v9;
    *a3 = a3 + 2;
    a3[1] = 0x600000000;
    if (v6)
    {
      llvm::SmallVectorImpl<long long>::operator=(a3, &v8);
    }
  }

  else
  {
    *a3 = a3 + 2;
    a3[1] = 0x600000000;
  }

  if (v8 != v10)
  {
    free(v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SmallVectorImpl<long long>::emplace_back<long long const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<long long,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 8);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 8 * v3) = *a2;
    v5 = v3 + 1;
    *(a1 + 8) = v5;
  }

  return v4 + 8 * v5 - 8;
}

void mlir::AbstractAttribute::get<mlir::StringAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::StringAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSB_17StringAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10StringAttrES2_NSA_17StringAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id, "builtin.string", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::StringAttr,mlir::Attribute,mlir::detail::StringAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void mlir::AbstractAttribute::get<mlir::SymbolRefAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::SymbolRefAttr,mlir::Attribute,mlir::detail::SymbolRefAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id, "builtin.symbol_ref", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSB_20SymbolRefAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = a2[2];
  v7 = a2[3];
  if (a2[1])
  {
    result = a3(a4);
  }

  if (v7)
  {
    v9 = 8 * v7;
    do
    {
      if (*v6)
      {
        result = a3(a4);
      }

      ++v6;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_13SymbolRefAttrES2_NSA_20SymbolRefAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v4 = a3;
  if (*(a2 + 8))
  {
    a4 = (a4 - 1);
    v4 = (a3 + 1);
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  if (a4 >= *(a2 + 24))
  {
    v6 = *(a2 + 24);
  }

  else
  {
    v6 = a4;
  }

  return mlir::SymbolRefAttr::get(v5, v4, v6, a4);
}

void mlir::AbstractAttribute::get<mlir::TypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::TypeAttr,mlir::Attribute,mlir::detail::TypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id, "builtin.type", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSB_15TypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8TypeAttrES2_NSA_15TypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(a2 + 8))
  {
    return mlir::TypeAttr::get(*a5);
  }

  else
  {
    return mlir::TypeAttr::get(0);
  }
}

void mlir::AbstractAttribute::get<mlir::UnitAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::UnitAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8UnitAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id, "builtin.unit", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::UnitAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_8UnitAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 0;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_8UnitAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void mlir::Dialect::addAttribute<mlir::DistinctAttr>(uint64_t a1)
{
  v7[11] = *MEMORY[0x277D85DE8];
  v2 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID();
  mlir::AbstractAttribute::get<mlir::DistinctAttr>(a1, &v5);
  mlir::Dialect::addAttribute(a1, v2, &v5);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v7);
  mlir::detail::InterfaceMap::~InterfaceMap(&v6);
  v3 = *(a1 + 32);
  v4 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID();
  mlir::StorageUniquer::registerParametricStorageTypeImpl((*v3 + 560), v4);
}

void mlir::AbstractAttribute::get<mlir::DistinctAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v10[1] = 0x300000000;
  *&v8 = mlir::detail::StorageUserBase<mlir::DistinctAttr,mlir::Attribute,mlir::detail::DistinctAttrStorage,mlir::detail::DistinctAttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v9 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v10[0] = v11;
  v4 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID();
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v10, &v8, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v7, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v6, v4, "builtin.distinct", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v8);
  mlir::detail::InterfaceMap::~InterfaceMap(v10);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSB_19DistinctAttrStorageENSB_24DistinctAttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

void *_ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_12DistinctAttrES2_NSA_19DistinctAttrStorageENSA_24DistinctAttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  v4 = *(**a2 + 32);
  v6 = v3;
  return mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(v4, &v6);
}

void llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 4);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 16 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 4);
}

uint64_t llvm::array_pod_sort_comparator<mlir::NamedAttribute>(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if ((mlir::StringAttr::compare(&v5, *a2) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  return mlir::StringAttr::compare(&v5, *a1) >> 31;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v11[0] = a2;
  v11[1] = a3;
  v10[0] = a4;
  v10[1] = a5;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::NamedAttribute>>(v12, v12, v13, a4, a5);
  v9 = v10;
  *&v12[0] = v10;
  *(&v12[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::NamedAttribute>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *a2, char *a3, unint64_t *a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v25 = 0;
  if (a5)
  {
    v8 = a4;
    v9 = 0;
    v10 = 16 * a5;
    v11 = &a4[2 * a5];
    while (v9 <= 0x38)
    {
      v12 = v9 + 8;
      v13 = 0xBF58476D1CE4E5B9 * ((*(v8 + 2) >> 4) ^ (*(v8 + 2) >> 9) | (((*v8 >> 4) ^ (*v8 >> 9)) << 32));
      *&__src[v9] = (v13 >> 31) ^ v13;
      v8 += 2;
      v9 += 8;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v26[0] = xmmword_25D0A0610;
    v26[1] = xmmword_25D0A0620;
    v26[2] = xmmword_25D0A0630;
    v27 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v26, __src, a3, a4);
    if (v10)
    {
      v15 = 64;
      do
      {
        v16 = 0;
        do
        {
          v17 = v16 + 8;
          v18 = 0xBF58476D1CE4E5B9 * ((*(v8 + 2) >> 4) ^ (*(v8 + 2) >> 9) | (((*v8 >> 4) ^ (*v8 >> 9)) << 32));
          *&__src[v16] = (v18 >> 31) ^ v18;
          v8 += 2;
          if (v8 == v11)
          {
            break;
          }

          v19 = v16 >= 0x31;
          v16 += 8;
        }

        while (!v19);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v17], &v29);
        llvm::hashing::detail::hash_state::mix(v26, __src, v20, v21);
        v15 += v17;
      }

      while (v8 != v11);
    }

    else
    {
      v15 = 64;
    }

    v14 = llvm::hashing::detail::hash_state::finalize(v26, v15);
  }

  else
  {
    v12 = 0;
LABEL_7:
    v14 = llvm::hashing::detail::hash_short(__src, v12, 0xFF51AFD7ED558CCDLL);
  }

  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v25, a2, a3, v14);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v25, v22, a3);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute> &>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DictionaryAttrStorage::construct(a2, **a1, *(*a1 + 8));
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::DictionaryAttrStorage::construct(unint64_t *a1, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = 16 * a3;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16 * a3, 3);
    v8 = v7;
    do
    {
      v9 = *a2++;
      *v8++ = v9;
      v6 -= 16;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 24, 3);
  *result = 0;
  result[1] = v7;
  result[2] = a3;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJRNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  v4 = **a1;
  v5 = &v3[2 * v2];
  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v3;
    v9 = v3[1];
    v3 += 2;
    result = v8 == v6 && v9 == v7;
  }

  while (result && v3 != v5);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DictionaryAttrStorage * mlir::StorageUniquer::get<mlir::detail::DictionaryAttrStorage,llvm::ArrayRef<mlir::NamedAttribute>>(llvm::function_ref<void ()(mlir::detail::DictionaryAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::NamedAttribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DictionaryAttrStorage::construct(a2, **a1, *(*a1 + 8));
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21DictionaryAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DictionaryAttrEJNS_8ArrayRefINS1_14NamedAttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL mlir::detail::StringAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2 || !memcmp(*(a1 + 16), *a2, v2))
  {
    return *(a1 + 8) == *(a2 + 16);
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,char const(&)[1],mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,char const(&)[1],mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::StringAttrStorage::construct(unint64_t *a1, uint64_t a2)
{
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 40, 3);
  v5 = mlir::StorageUniquer::StorageAllocator::copyInto(a1, *a2, *(a2 + 8));
  v6 = *(a2 + 16);
  *v4 = 0;
  v4[1] = v6;
  v4[2] = v5;
  v4[3] = v7;
  v4[4] = 0;
  return v4;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJRA1_KcNS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  *a2 = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::NoneType>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::NoneType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefENS1_8NoneTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  *a2 = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::StringAttrStorage * mlir::StorageUniquer::get<mlir::detail::StringAttrStorage,llvm::StringRef,mlir::Type &>(llvm::function_ref<void ()(mlir::detail::StringAttrStorage *)>,mlir::TypeID,llvm::StringRef,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::detail::StringAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void _ZN4llvm12function_refIFvPN4mlir6detail17StringAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_10StringAttrEJNS_9StringRefERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, mlir::detail::StringAttrStorage *a2)
{
  *a2 = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  v4 = a1[1];

  mlir::detail::StringAttrStorage::initialize(a2, v4);
}

uint64_t mlir::Diagnostic::operator<<<29ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<59ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<34ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<18ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<56ul>(uint64_t a1, char *__s)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerAttrStorage * mlir::StorageUniquer::get<mlir::detail::IntegerAttrStorage,mlir::IntegerType &,llvm::APInt>(llvm::function_ref<void ()(mlir::detail::IntegerAttrStorage *)>,mlir::TypeID,mlir::IntegerType &,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = *(*a1 + 4);
  v4 = **a1;
  v5 = (*a1)[1];
  *(*a1 + 4) = 0;
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v6 = 0;
  *(v6 + 8) = v4;
  *(v6 + 24) = v3;
  *(v6 + 16) = v5;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(v7[1], v6);
  }

  return v6;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11IntegerAttrEJRNS1_11IntegerTypeENS_5APIntEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<28ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<3ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<mlir::Type &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<190ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<48ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<7ul>(uint64_t a1, char *__s)
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

uint64_t mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  v11 = a4;
  v12 = a5;
  v13 = *a6;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,long long,llvm::ArrayRef<char>>(__dst, __dst, v16, a4, &v12, &v13);
  v10 = &v11;
  *&__dst[0] = &v11;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseArrayAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseArrayAttrStorage,mlir::Type &,unsigned long,llvm::ArrayRef<char> &>(llvm::function_ref<void ()(mlir::detail::DenseArrayAttrStorage *)>,mlir::TypeID,mlir::Type &,unsigned long,llvm::ArrayRef<char> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::DenseArrayAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail21DenseArrayAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_14DenseArrayAttrEJRNS1_4TypeEmRNS_8ArrayRefIcEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void llvm::SmallVectorTemplateBase<BOOL,true>::push_back(void *a1, char a2)
{
  v4 = a1[1];
  if ((v4 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v4 + 1, 1);
    v4 = a1[1];
  }

  *(*a1 + v4) = a2;
  ++a1[1];
}

uint64_t mlir::AsmParser::parseInteger<BOOL>(uint64_t a1, _BYTE *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<BOOL,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<BOOL>(BOOL &)::{lambda(llvm::APInt &)#1}>(a1, a2, v10);
  if ((v5 & 0x100) == 0)
  {
    v8 = "expected integer value";
    v9 = 259;
    (*(*a1 + 24))(v10, a1, v4, &v8);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<BOOL,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<BOOL>(BOOL &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v16 = 1;
  __s2 = 0;
  v7 = (*(**a3 + 376))();
  if (v7 & (v7 >> 8))
  {
    llvm::APInt::sextOrTrunc(&__s2, 8u, &v17);
    LODWORD(v8) = llvm::APInt::getLimitedValue(&v17, 0xFFFFFFFFFFFFFFFFLL) != 0;
    *a2 = v8;
    if (v18 >= 0x41 && v17)
    {
      MEMORY[0x25F891010](v17, 0x1000C8000313F17);
      LODWORD(v8) = *a2;
    }

    if (v16 > 0x40)
    {
      operator new[]();
    }

    if (v16)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    if (v8 == __s2)
    {
      v9 = 1;
    }

    else
    {
      v13 = "integer value too large";
      v14 = 259;
      (*(*a1 + 24))(&v17, a1, v6, &v13);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
      v9 = 0;
    }

    v10 = 1;
  }

  else
  {
    v9 = v7;
    v10 = BYTE1(v7);
  }

  if (v16 >= 0x41 && __s2)
  {
    MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 | (v10 << 8);
}

void llvm::SmallVectorTemplateBase<short,true>::push_back(void *a1, __int16 a2)
{
  v4 = a1[1];
  if ((v4 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v4 + 1, 2);
    v4 = a1[1];
  }

  *(*a1 + 2 * v4) = a2;
  ++a1[1];
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<int>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v4 = 0;
  v2 = mlir::AsmParser::parseInteger<int>(*a1, &v4);
  result = 0;
  if (v2)
  {
    llvm::SmallVectorTemplateBase<int,true>::push_back(a1[1], v4);
    return 1;
  }

  return result;
}

uint64_t mlir::AsmParser::parseInteger<int>(uint64_t a1, signed int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(a1, a2, v10);
  if ((v5 & 0x100) == 0)
  {
    v8 = "expected integer value";
    v9 = 259;
    (*(*a1 + 24))(v10, a1, v4, &v8);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<int,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<int>(int &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, signed int *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v18 = 1;
  __s2 = 0;
  v7 = (*(**a3 + 376))();
  if (v7 & (v7 >> 8))
  {
    llvm::APInt::sextOrTrunc(&__s2, 0x20u, &__s1);
    LimitedValue = llvm::APInt::getLimitedValue(&__s1, 0xFFFFFFFFFFFFFFFFLL);
    *a2 = LimitedValue;
    if (v20 >= 0x41 && __s1)
    {
      MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
      LimitedValue = *a2;
    }

    v9 = LimitedValue;
    v20 = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(&__s1);
    }

    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v18;
    if (!v18)
    {
      v10 = 0;
    }

    if ((v10 & v9) == __s2)
    {
      v11 = 1;
    }

    else
    {
      v15 = "integer value too large";
      v16 = 259;
      (*(*a1 + 24))(&__s1, a1, v6, &v15);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__s1);
      v11 = 0;
    }

    v12 = 1;
  }

  else
  {
    v11 = v7;
    v12 = BYTE1(v7);
  }

  if (v18 >= 0x41 && __s2)
  {
    MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 | (v12 << 8);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::DenseArrayAttrImpl<long long>::parseWithoutBraces(mlir::AsmParser &,mlir::Type)::{lambda(void)#1}>(uint64_t *a1)
{
  v3 = 0;
  if ((mlir::AsmParser::parseInteger<long long>(*a1, &v3) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<long long,true>::push_back(a1[1], v3);
  return 1;
}

uint64_t mlir::AsmParser::parseInteger<long long>(uint64_t a1, uint64_t **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<long long>(long long &)::{lambda(llvm::APInt &)#1}>(a1, a2, v10);
  if ((v5 & 0x100) == 0)
  {
    v8 = "expected integer value";
    v9 = 259;
    (*(*a1 + 24))(v10, a1, v4, &v8);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<long long>(long long &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v17 = 1;
  __s2 = 0;
  v7 = (*(**a3 + 376))();
  if (v7 & (v7 >> 8))
  {
    llvm::APInt::sextOrTrunc(&__s2, 0x40u, &__s1);
    LimitedValue = llvm::APInt::getLimitedValue(&__s1, 0xFFFFFFFFFFFFFFFFLL);
    *a2 = LimitedValue;
    if (v19 >= 0x41 && __s1)
    {
      MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
      LimitedValue = *a2;
    }

    v19 = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(&__s1);
    }

    if (v17)
    {
      v9 = 0xFFFFFFFFFFFFFFFFLL >> -v17;
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & LimitedValue) == __s2)
    {
      v10 = 1;
    }

    else
    {
      v14 = "integer value too large";
      v15 = 259;
      (*(*a1 + 24))(&__s1, a1, v6, &v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__s1);
      v10 = 0;
    }

    v11 = 1;
  }

  else
  {
    v10 = v7;
    v11 = BYTE1(v7);
  }

  if (v17 >= 0x41 && __s2)
  {
    MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 | (v11 << 8);
}

void llvm::SmallVectorTemplateBase<float,true>::push_back(uint64_t a1, float a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 4);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 4 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::destroy_range(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      if (*(v2 - 2) >= 0x41u)
      {
        result = *(v2 - 2);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      v2 -= 4;
      if (*(v4 - 6) >= 0x41u)
      {
        result = *v2;
        if (*v2)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::grow(uint64_t a1, unint64_t a2)
{
  v12 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 32, &v12);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v4 + 16;
    v8 = v5 + 24;
    v9 = 32 * v6;
    do
    {
      *(v7 - 2) = *(v8 - 4);
      *(v7 - 2) = *(v8 - 3);
      *(v8 - 4) = 0;
      *(v7 + 2) = *v8;
      *v7 = *(v8 - 1);
      v7 += 32;
      *v8 = 0;
      v8 += 8;
      v9 -= 32;
    }

    while (v9);
    v5 = *a1;
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = 0;
  }

  llvm::SmallVectorTemplateBase<std::complex<llvm::APInt>,false>::destroy_range(v5, &v5[32 * v10]);
  v11 = v12;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v11;
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::destroy_range(llvm::APFloat::Storage *a1, llvm::APFloat::Storage *a2)
{
  if (a2 != a1)
  {
    do
    {
      v3 = (a2 - 48);
      llvm::APFloat::Storage::~Storage((a2 - 24));
      llvm::APFloat::Storage::~Storage(v3);
      a2 = v3;
    }

    while (v3 != a1);
  }
}

void llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v14);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (v5 + 24);
    v8 = 48 * v6;
    v9 = v4 + 24;
    do
    {
      if (*(v7 - 3) == &llvm::semPPCDoubleDouble)
      {
        v10 = *(v7 - 2);
        *(v7 - 2) = 0;
        *(v9 - 3) = &llvm::semPPCDoubleDouble;
        *(v9 - 2) = v10;
        *(v7 - 3) = &llvm::semBogus;
      }

      else
      {
        *(v9 - 3) = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=((v9 - 3), (v7 - 3));
      }

      if (*v7 == &llvm::semPPCDoubleDouble)
      {
        v11 = v7[1];
        v7[1] = 0;
        *v9 = &llvm::semPPCDoubleDouble;
        v9[1] = v11;
        *v7 = &llvm::semBogus;
      }

      else
      {
        *v9 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(v9, v7);
      }

      v7 += 6;
      v9 += 6;
      v8 -= 48;
    }

    while (v8);
    v5 = *a1;
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = 0;
  }

  llvm::SmallVectorTemplateBase<std::complex<llvm::APFloat>,false>::destroy_range(v5, (v5 + 48 * v12));
  v13 = v14;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v13;
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<char>::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *(a2 + 8) && (v3 = v2[3], v3 == *(a2 + 40)))
  {
    return memcmp(v2[2], *(a2 + 32), v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseIntOrFPElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseIntOrFPElementsAttrStorage,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &>(llvm::function_ref<void ()(mlir::detail::DenseIntOrFPElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,llvm::ArrayRef<char> &,BOOL &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[3];
  v7 = *(*a1 + 40);
  if (v6)
  {
    v8 = (*a1)[2];
    v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v6, 3);
    memcpy(v9, v8, v6);
  }

  else
  {
    v9 = 0;
  }

  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 48, 3);
  *v10 = 0;
  *(v10 + 8) = v4;
  *(v10 + 16) = v5;
  *(v10 + 24) = v7;
  *(v10 + 32) = v9;
  *(v10 + 40) = v6;
  v11 = a1[1];
  if (*v11)
  {
    (*v11)(v11[1], v10);
  }

  return v10;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail31DenseIntOrFPElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_24DenseIntOrFPElementsAttrEJRNS1_10ShapedTypeERNS_8ArrayRefIcEERbEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DenseResourceElementsAttrStorage * mlir::StorageUniquer::get<mlir::detail::DenseResourceElementsAttrStorage,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &>(llvm::function_ref<void ()(mlir::detail::DenseResourceElementsAttrStorage *)>,mlir::TypeID,mlir::ShapedType &,mlir::DialectResourceBlobHandle<mlir::BuiltinDialect> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v8 = *(*a1 + 1);
  v9 = (*a1)[4];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 48, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  *(v5 + 40) = v9;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail32DenseResourceElementsAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_25DenseResourceElementsAttrEJRNS1_10ShapedTypeERNS1_25DialectResourceBlobHandleINS1_14BuiltinDialectEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>();
      mlir::detail::TypeIDResolver<mlir::ResourceBlobManagerDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1792);
}

uint64_t llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>()
{
  {
    llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ResourceBlobManagerDialectInterface>();
    *algn_27FC17718 = v1;
  }

  return llvm::getTypeName<mlir::ResourceBlobManagerDialectInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ResourceBlobManagerDialectInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ResourceBlobManagerDialectInterface]";
  v6 = 103;
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

uint64_t mlir::DialectResourceBlobManager::insert<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>@<X0>(pthread_rwlock_t **a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  LOBYTE(v15) = 0;
  v18 = 0;
  if (*(a5 + 64) == 1)
  {
    v15 = *a5;
    v16 = *(a5 + 16);
    llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v17, (a5 + 24));
    v17[32] = *(a5 + 56);
    v18 = 1;
  }

  v12 = mlir::DialectResourceBlobManager::insert(a1, a3, a4, &v15);
  if (v18 == 1)
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(&v15);
  }

  result = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID();
  *a6 = v12;
  a6[1] = result;
  a6[2] = a2;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>();
      mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1832);
}

uint64_t llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>()
{
  {
    llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>();
    unk_27FC17740 = v1;
  }

  return llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>]";
  v6 = 115;
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

void llvm::SmallVectorImpl<unsigned long long>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) >= a2)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    if (v4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = *(a1 + 8);
    }

    if (v5)
    {
      v6 = 0;
      v7 = (v5 + 1) & 0x1FFFFFFFELL;
      v8 = vdupq_n_s64(v5 - 1);
      v9 = (v3 + 8);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
        if (v10.i8[0])
        {
          *(v9 - 1) = a3;
        }

        if (v10.i8[4])
        {
          *v9 = a3;
        }

        v6 += 2;
        v9 += 2;
      }

      while (v7 != v6);
    }

    v11 = a2 - v4;
    if (a2 > v4)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v3 + 8 * v4 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
        if (v15.i8[0])
        {
          *(v14 - 1) = a3;
        }

        if (v15.i8[4])
        {
          *v14 = a3;
        }

        v12 += 2;
        v14 += 2;
      }

      while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
    }

    *(a1 + 8) = a2;
  }

  else
  {
    llvm::SmallVectorTemplateBase<unsigned long long,true>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<unsigned long long,true>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
  if (a2)
  {
    v6 = 0;
    v7 = vdupq_n_s64(a2 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25D0A0500)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v6 += 2;
      v8 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
  }

  *(a1 + 8) = a2;
}

void *mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get((*a1 + 736));
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(v4, 16, 3);
  *v5 = 0;
  v5[1] = v3;
  v6 = mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID();
  *v5 = mlir::AbstractAttribute::lookup(v6, a1);
  return v5;
}

void mlir::BuiltinDialect::~BuiltinDialect(mlir::BuiltinDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

void mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ModuleOp>(a1, *(**a2 + 32));
  v9[0] = a2;
  v9[1] = v6;
  v9[2] = v10;
  v9[3] = 0x400000000;
  v10[4] = v11;
  v10[5] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[8] = 4;
  v12[9] = v13;
  v12[10] = 0x100000000;
  v13[1] = v14;
  v13[2] = 0x100000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v14[4] = 0;
  v14[6] = 0;
  v7 = *a3;
  v8 = *(a3 + 2);
  mlir::ModuleOp::build(a1, v9);
}

uint64_t *mlir::ModuleOp::getDataLayoutSpec(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v2 = *(AttrDictionary + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(AttrDictionary + 8) + 8);
  v4 = 16 * v2;
  while (1)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*v3);
    if (result)
    {
      break;
    }

    v3 += 2;
    v4 -= 16;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *mlir::ModuleOp::getTargetSystemSpec(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v2 = *(AttrDictionary + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (*(AttrDictionary + 8) + 8);
  v4 = 16 * v2;
  while (1)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::TargetSystemSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::TargetSystemSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*v3);
    if (result)
    {
      break;
    }

    v3 += 2;
    v4 -= 16;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::ModuleOp::verify(mlir::Operation **this)
{
  v33 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = *(AttrDictionary + 16);
  if (v3)
  {
    v4 = *(AttrDictionary + 8);
    v5 = &v4[2 * v3];
    while (1)
    {
      v6 = *v4;
      v7 = *(*v4 + 24);
      if (!v7)
      {
        break;
      }

      v8 = *(v6 + 16);
      v9 = memchr(v8, 46, *(*v4 + 24));
      if (v9)
      {
        v10 = v9 - v8 == -1;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_10;
      }

LABEL_16:
      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_17;
      }
    }

    v8 = *(v6 + 16);
LABEL_10:
    v1 = 0;
    v30 = "sym_name";
    v31[0] = 8;
    v31[1] = "sym_visibility";
    v31[2] = 14;
    while (v31[v1] != v7 || v7 && memcmp(v31[v1 - 1], v8, v7))
    {
      v1 += 2;
      if (v1 == 4)
      {
        v26 = 257;
        mlir::Operation::emitOpError(*this, v25, &v30);
        if (v30)
        {
          mlir::Diagnostic::operator<<<66ul>(v31, "can only contain attributes with dialect-prefixed names, found: '");
          if (v30)
          {
            v20 = *(v6 + 16);
            v21 = *(v6 + 24);
            v29 = 261;
            v27 = v20;
            v28[0] = v21;
            mlir::Diagnostic::operator<<(v31, &v27);
            if (v30)
            {
              mlir::Diagnostic::operator<<<2ul>(v31, "'");
            }
          }
        }

        v19 = (v32 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        goto LABEL_32;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v11 = mlir::Operation::getAttrDictionary(*this);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v11 + 8);
    v15 = 16 * v12;
    do
    {
      v16 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(v14[1]);
      if (v16)
      {
        if (v13)
        {
          v26 = 257;
          mlir::Operation::emitOpError(*this, v25, &v27);
          if (v27)
          {
            mlir::Diagnostic::operator<<<42ul>(v28, "expects at most one data layout attribute");
          }

          mlir::InFlightDiagnostic::InFlightDiagnostic(&v30, &v27);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
          mlir::Diagnostic::attachNote(v31, (v1 * 8) & 0xFFFFFFFFFFFFFF00, 0);
        }

        v17 = (*v14)[2];
        v18 = (*v14)[3];
        v13 = v16;
      }

      v14 += 2;
      v15 -= 16;
    }

    while (v15);
  }

  v19 = 1;
LABEL_32:
  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

BOOL mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = v3 - v2;
  v5 = a2[1];
  if (v3 - v2 == a2[3] - v5)
  {
    if (v3 == v2)
    {
      return 1;
    }

    v7 = *a2;
    v8 = *a1 + 32 * v2 + 24;
    v9 = *a2 - 16 * v5;
    while (1)
    {
      if (v5)
      {
        if (v7)
        {
          v10 = *(v7 + 8) & 7;
          v11 = *a2;
          v12 = v5;
          if (v10 != 6)
          {
            v13 = (5 - v10);
            v14 = v9;
            v12 = v5 - v13;
            if (v5 <= v13)
            {
              goto LABEL_15;
            }

            v11 = v7 - 16 * v13;
          }
        }

        else
        {
          v11 = 0;
          v12 = v5;
        }

        v14 = v11 - 24 * v12;
      }

      else
      {
        v14 = *a2;
      }

LABEL_15:
      v15 = *(v14 + 8) ^ *(*v8 + 8);
      result = v15 < 8;
      if (v15 <= 7)
      {
        ++v5;
        v8 += 32;
        v9 -= 16;
        if (--v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

void llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  v12 = a5 - a3;
  if (a5 != a3)
  {
    v13 = (*a1 + 8 * v10);
    v14 = (a2 + 32 * a3 + 24);
    do
    {
      v15 = *v14;
      v14 += 4;
      *v13++ = v15 | 4;
      --v12;
    }

    while (v12);
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 + v9;
}

BOOL mlir::ModuleOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(v10, "sym_name", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(v13, "sym_visibility", 14, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<49ul>(v13, "' failed to satisfy constraint: string attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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
        llvm::getTypeName<mlir::StringAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::StringAttr>();
        *algn_27FC17B88 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::StringAttr>(void)::Name;
        v16 = *algn_27FC17B88;
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

uint64_t mlir::ModuleOp::verifyInvariantsImpl(mlir::ModuleOp *this)
{
  v20[26] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v20[0] = v2;
  if (!mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20))
  {
    goto LABEL_8;
  }

  v20[0] = *this;
  if (!mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(v5, "sym_visibility", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v20))
  {
    goto LABEL_8;
  }

  v6 = *this;
  v7 = ((&v6[4 * ((v6[11] >> 23) & 1) + 17] + ((v6[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v6[10];
  v19 = 0;
  v20[0] = *(v7 + 8);
  v17[0] = v7;
  v15[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8_;
  if (llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v20, v17, 1, v15))
  {
    goto LABEL_10;
  }

  v17[0] = "region #";
  v18 = 259;
  mlir::Operation::emitOpError(v6, v17, v20);
  v8 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v20, &v19);
  v9 = v8;
  v14 = 1283;
  v13[0] = " ('";
  v13[2] = "bodyRegion";
  v13[3] = 10;
  v15[0] = v13;
  v15[2] = "') ";
  v16 = 770;
  if (*v8)
  {
    mlir::Diagnostic::operator<<((v8 + 1), v15);
    if (*v9)
    {
      mlir::Diagnostic::operator<<<50ul>((v9 + 1), "failed to verify constraint: region with 1 blocks");
    }
  }

  v10 = *(v9 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
  if ((v10 & 1) == 0)
  {
LABEL_10:
    result = 1;
  }

  else
  {
LABEL_8:
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::UnrealizedConversionCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a7, &a7[16 * a8]);

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::UnrealizedConversionCastOp::parse(uint64_t a1, uint64_t a2)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x400000000;
  v12[0] = &v13;
  v12[1] = 0x100000000;
  __src = &v11;
  v10 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 720))(a1, &v14, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && (!v15 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v12)) && (v8[16] = 257, ((*(*a1 + 400))(a1, "to", 2, v8)) && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v10);
    v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v14, v12, v4, a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  if (__src != &v11)
  {
    free(__src);
  }

  if (v12[0] != &v13)
  {
    free(v12[0]);
  }

  if (v14 != v16)
  {
    free(v14);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  v19 = *(a3 + 8);
  v20 = v6;
  if (v6 == v19)
  {
    if (v6)
    {
      v8 = *a2;
      v9 = *a3;
      v10 = 32 * v6;
      while (((*(*a1 + 728))(a1, v8, *v9, a5) & 1) != 0)
      {
        v8 += 32;
        ++v9;
        v10 -= 32;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_6:
      v11 = 1;
    }
  }

  else
  {
    v18[16] = 257;
    (*(*a1 + 24))(&v21, a1, a4, v18);
    if (v21)
    {
      mlir::Diagnostic::operator<<<48ul>(v22, "number of operands and types do not match: got ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v21, &v20);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " operands and ");
    }

    v14 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v19);
    v15 = v14;
    if (*v14)
    {
      mlir::Diagnostic::operator<<<7ul>((v14 + 1), " types");
    }

    v11 = (v15[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::DataLayoutSpecInterface>();
      mlir::detail::TypeIDResolver<mlir::DataLayoutSpecInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1912);
}

uint64_t llvm::getTypeName<mlir::DataLayoutSpecInterface>()
{
  {
    llvm::getTypeName<mlir::DataLayoutSpecInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DataLayoutSpecInterface>();
    unk_27FC17790 = v1;
  }

  return llvm::getTypeName<mlir::DataLayoutSpecInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::DataLayoutSpecInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DataLayoutSpecInterface]";
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

uint64_t *llvm::DefaultDoCastIfPossible<mlir::TargetSystemSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::TargetSystemSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::TargetSystemSpecInterface>();
      mlir::detail::TypeIDResolver<mlir::TargetSystemSpecInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1952);
}

uint64_t llvm::getTypeName<mlir::TargetSystemSpecInterface>()
{
  {
    llvm::getTypeName<mlir::TargetSystemSpecInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TargetSystemSpecInterface>();
    *algn_27FC177B8 = v1;
  }

  return llvm::getTypeName<mlir::TargetSystemSpecInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::TargetSystemSpecInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TargetSystemSpecInterface]";
  v6 = 93;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::__mlir_ods_local_attr_constraint_BuiltinOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned int &>(uint64_t a1, unsigned int *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 5;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(uint64_t *a1, void *a2, int a3, uint64_t (**a4)(uint64_t))
{
  v7 = *a1;
  if (a3)
  {
    v8 = a3;
    while (v7 != *a2)
    {
      if (v7)
      {
        v9 = v7 - 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*a4)(v9);
      v7 = *(*a1 + 8);
      *a1 = v7;
      v8 -= v10;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    if (v7 == *a2)
    {
      return 1;
    }

    else
    {
      do
      {
        if (v7)
        {
          v11 = v7 - 8;
        }

        else
        {
          v11 = 0;
        }

        v12 = (*a4)(v11);
        if (v12)
        {
          break;
        }

        v7 = *(*a1 + 8);
        *a1 = v7;
      }

      while (v7 != *a2);
      return v12 ^ 1u;
    }
  }
}

void llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
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

void *mlir::RegisteredOperationName::Model<mlir::ModuleOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "builtin.module", 0xE, a2, &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E786A0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ModuleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ModuleOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a4 == 14)
  {
    if (*a3 == 0x697369765F6D7973 && *(a3 + 6) == 0x7974696C69626973)
    {
      v5 = *(v4 + 72);
      goto LABEL_11;
    }
  }

  else if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
  {
    v5 = *(v4 + 64);
LABEL_11:
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    return v7 | v5;
  }

  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 14)
  {
    v7 = *v5;
    v8 = *(v5 + 6);
    if (v7 == 0x697369765F6D7973 && v8 == 0x7974696C69626973)
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

  else if (v6 == 8 && *v5 == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "sym_name";
    v14 = 8;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "sym_visibility";
    v14 = 14;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::ModuleOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
  if ((v12 & 1) == 0 || (v13 = *(v11 + 8)) == 0)
  {
LABEL_12:
    v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_visibility", 0xEuLL);
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

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v17 = "sym_name";
    v18 = 8;
    v9 = mlir::StringAttr::get(v8, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v19 = 261;
    v17 = "sym_visibility";
    v18 = 14;
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

__n128 mlir::RegisteredOperationName::Model<mlir::ModuleOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ModuleOp>::hashProperties(uint64_t a1, void *a2)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ModuleOp>,mlir::OpTrait::ZeroResults<mlir::ModuleOp>,mlir::OpTrait::ZeroSuccessors<mlir::ModuleOp>,mlir::OpTrait::ZeroOperands<mlir::ModuleOp>,mlir::OpTrait::NoRegionArguments<mlir::ModuleOp>,mlir::OpTrait::NoTerminator<mlir::ModuleOp>,mlir::OpTrait::SingleBlock<mlir::ModuleOp>,mlir::OpTrait::OpInvariants<mlir::ModuleOp>,mlir::BytecodeOpInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::AffineScope<mlir::ModuleOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ModuleOp>,mlir::OpTrait::SymbolTable<mlir::ModuleOp>,mlir::SymbolOpInterface::Trait<mlir::ModuleOp>,mlir::OpAsmOpInterface::Trait<mlir::ModuleOp>,mlir::RegionKindInterface::Trait<mlir::ModuleOp>,mlir::OpTrait::HasOnlyGraphRegion<mlir::ModuleOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::BytecodeOpInterface>();
      mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 1992);
}

uint64_t llvm::getTypeName<mlir::BytecodeOpInterface>()
{
  {
    llvm::getTypeName<mlir::BytecodeOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BytecodeOpInterface>();
    unk_27FC177E0 = v1;
  }

  return llvm::getTypeName<mlir::BytecodeOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::BytecodeOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BytecodeOpInterface]";
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::isDeclaration;
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getNameAttr(uint64_t a1, uint64_t a2)
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

void mlir::Operation::setAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4)
{
  v6 = *(***(a1 + 24) + 32);
  v9 = 261;
  v8[0] = a2;
  v8[1] = a3;
  v7 = mlir::StringAttr::get(v6, v8, a3);
  mlir::Operation::setAttr(a1, v7, a4);
}

void mlir::Operation::setAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[9] = *MEMORY[0x277D85DE8];
  if (*(a1 + 47) && ((*(**(a1 + 48) + 80))(*(a1 + 48), a1, *(a2 + 16), *(a2 + 24)), (v6 & 1) != 0))
  {
    v7 = *(**(a1 + 48) + 88);
    v8 = *MEMORY[0x277D85DE8];

    v7();
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v10, *(a1 + 56));
    if (mlir::NamedAttrList::set(v10, a2, a3) != a3)
    {
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v10, *(***(a1 + 24) + 32));
    }

    if (v10[0] != v11)
    {
      free(v10[0]);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>::getRegionKind;
  v2[1] = mlir::detail::RegionKindInterfaceInterfaceTraits::Model<mlir::ModuleOp>::hasSSADominance;
  v3 = mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::RegionKindInterface>();
      mlir::detail::TypeIDResolver<mlir::RegionKindInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2032);
}

uint64_t llvm::getTypeName<mlir::RegionKindInterface>()
{
  {
    llvm::getTypeName<mlir::RegionKindInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::RegionKindInterface>();
    *algn_27FC17808 = v1;
  }

  return llvm::getTypeName<mlir::RegionKindInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::RegionKindInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionKindInterface]";
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

void *llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[16] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  v9[12] = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[13] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[14] = mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[15] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 15);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2072);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>();
    unk_27FC17830 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneRegion<Empty>]";
  v6 = 93;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2112);
}

uint64_t llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>();
    *algn_27FC17858 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroResults<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2152);
}

uint64_t llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>();
    unk_27FC17880 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroSuccessors<Empty>]";
  v6 = 98;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2192);
}

uint64_t llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>();
    *algn_27FC178A8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NoRegionArguments<Empty>]";
  v6 = 101;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2232);
}

uint64_t llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>();
    unk_27FC178D0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::NoTerminator<Empty>]";
  v6 = 96;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2272);
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>();
    *algn_27FC178F8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlock<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2312);
}

uint64_t llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>();
    unk_27FC17920 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OpInvariants<Empty>]";
  v6 = 96;
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

uint64_t mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2352);
}

uint64_t llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>();
    *algn_27FC17948 = v1;
  }

  return llvm::getTypeName<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BytecodeOpInterface::Trait<Empty>]";
  v6 = 101;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2392);
}

uint64_t llvm::getTypeName<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>>();
    unk_27FC17970 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AffineScope<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2432);
}

uint64_t llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>();
    *algn_27FC17998 = v1;
  }

  return llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolOpInterface::Trait<Empty>]";
  v6 = 99;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2472);
}

uint64_t llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>();
    unk_27FC179C0 = v1;
  }

  return llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmOpInterface::Trait<Empty>]";
  v6 = 98;
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

uint64_t mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2512);
}

uint64_t llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>();
    *algn_27FC179E8 = v1;
  }

  return llvm::getTypeName<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::RegionKindInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionKindInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::RegionKindInterface::Trait<Empty>]";
  v6 = 101;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2552);
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>();
    unk_27FC17A10 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasOnlyGraphRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasOnlyGraphRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasOnlyGraphRegion<Empty>]";
  v6 = 102;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 16;
  if (*&a2[4 * ((a2[11] >> 23) & 1) + 16])
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

    v10 = *&v7[4 * ((a2[11] >> 23) & 1)];
    (*(*a3 + 88))(a3, *(v10 + 16), *(v10 + 24));
  }

  v15 = v17;
  v16 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "sym_name", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 200))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, v16);
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

  (*(*a3 + 224))(a3, ((&v7[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10], 1, 1, 0);
  if (v15 != v17)
  {
    free(v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

BOOL mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v21[26] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5) || (mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = a1[11];
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = 0;
    v10 = (((&a1[4 * ((v7 >> 23) & 1) + 17] + ((v7 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    while (1)
    {
      if (v10 != *v10)
      {
        v11 = v10[1];
        if (v10 == v11 || v10 != *(v11 + 8))
        {
          break;
        }
      }

      ++v9;
      v10 += 3;
      if (v8 == v9)
      {
        goto LABEL_16;
      }
    }

    v20 = v9;
    v18 = "expects region #";
    v19 = 259;
    mlir::Operation::emitOpError(a1, &v18, v21);
    v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v21, &v20);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<23ul>((v12 + 1), " to have 0 or 1 blocks");
    }

    v14 = *(v13 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v21);
    if (v14)
    {
      goto LABEL_19;
    }
  }

LABEL_16:
  v21[0] = a1;
  if ((mlir::ModuleOp::verifyInvariantsImpl(v21) & 1) == 0 || !mlir::detail::SymbolOpInterfaceTrait<mlir::ModuleOp>::verifyTrait(a1))
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v21[0] = a1;
  v15 = mlir::ModuleOp::verify(v21);
LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::Diagnostic::operator<<<23ul>(uint64_t a1, char *__s)
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

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::ModuleOp>::verifyTrait(uint64_t a1)
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

void *llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

uint64_t mlir::Op<mlir::ModuleOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(a1, a2))
  {
    v4 = mlir::detail::verifySymbolTable(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>>(v6);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "builtin.unrealized_conversion_cast", 0x22, a2, &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E78768;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::UnrealizedConversionCastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ConditionallySpeculatable>();
      mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2624);
}

uint64_t llvm::getTypeName<mlir::ConditionallySpeculatable>()
{
  {
    llvm::getTypeName<mlir::ConditionallySpeculatable>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ConditionallySpeculatable>();
    *algn_27FC17A58 = v1;
  }

  return llvm::getTypeName<mlir::ConditionallySpeculatable>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ConditionallySpeculatable>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ConditionallySpeculatable]";
  v6 = 93;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::UnrealizedConversionCastOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemoryEffectOpInterface>();
      mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2664);
}

uint64_t llvm::getTypeName<mlir::MemoryEffectOpInterface>()
{
  {
    llvm::getTypeName<mlir::MemoryEffectOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemoryEffectOpInterface>();
    unk_27FC17A80 = v1;
  }

  return llvm::getTypeName<mlir::MemoryEffectOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemoryEffectOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemoryEffectOpInterface]";
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

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 44) & 0x800000) != 0)
  {
    v6 = *(a2 + 68);
    v7 = *(a2 + 72);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v32[0] = v7;
  v32[1] = v6;
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v28 = v7;
  v29 = 0;
  v30 = v7;
  v31 = v6;
  v24 = v9;
  v25 = 0;
  v26 = v9;
  v27 = v8;
  if (mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(&v28, &v24))
  {
    v10 = a5;
    v11 = v7;
    v12 = v7;
    v13 = v6;
LABEL_8:
    llvm::SmallVectorImpl<mlir::OpFoldResult>::append<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v10, v11, 0, v12, v13);
    return 1;
  }

  if (v6)
  {
    v15 = *(v7 + 24);
    if ((~*(v15 + 8) & 7) == 0)
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = *(v15 + 8) & 7;
      if (v16 == 6)
      {
        v17 = v15 + 24 * *(v15 + 16);
        v18 = v17 + 120;
        if (v17 == -120)
        {
          return 0;
        }
      }

      else
      {
        v18 = v15 + 16 * v16 + 16;
      }

      if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
      {
        v19 = *(v18 + 36);
        v20 = v18 - 16;
        if (!v19)
        {
          v20 = 0;
        }

        v23[0] = v20;
        v23[1] = v19;
        if (llvm::detail::operator==<mlir::OperandRange,mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>(v23, v32))
        {
          if ((*(v18 + 46) & 0x80) != 0)
          {
            v21 = *(v18 + 72);
            v22 = *(v18 + 68);
          }

          else
          {
            v21 = 0;
            v22 = 0;
          }

          v28 = v21;
          v29 = 0;
          v30 = v21;
          v31 = v22;
          v24 = v9;
          v25 = 0;
          v26 = v9;
          v27 = v8;
          if (mlir::ValueTypeRange<mlir::OperandRange>::operator==<mlir::ValueTypeRange<mlir::ResultRange>>(&v28, &v24))
          {
            if ((*(v18 + 46) & 0x80) != 0)
            {
              v11 = *(v18 + 72);
              v13 = *(v18 + 68);
              v12 = v11;
            }

            else
            {
              v11 = 0;
              v12 = 0;
              v13 = 0;
            }

            v10 = a5;
            goto LABEL_8;
          }
        }
      }
    }
  }

  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2704);
}

uint64_t llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>();
    *algn_27FC17AA8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::ZeroRegions<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2744);
}

uint64_t llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>();
    unk_27FC17AD0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::VariadicResults<Empty>]";
  v6 = 99;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2784);
}

uint64_t llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>();
    *algn_27FC17AF8 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::VariadicOperands<Empty>]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2824);
}

uint64_t llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>();
    unk_27FC17B20 = v1;
  }

  return llvm::getTypeName<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ConditionallySpeculatable::Trait<Empty>]";
  v6 = 107;
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

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2864);
}

uint64_t llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>();
    *algn_27FC17B48 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::AlwaysSpeculatableImplTrait<Empty>]";
  v6 = 111;
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

uint64_t mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2904);
}

uint64_t llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>();
    unk_27FC17B70 = v1;
  }

  return llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::MemoryEffectOpInterface::Trait<Empty>]";
  v6 = 105;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v49[4] = *MEMORY[0x277D85DE8];
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

  v32 = (*(*a3 + 16))(a3);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 28532;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, "to", 2uLL);
  }

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

  v36 = *(a2 + 36);
  if (v36)
  {
    v37 = a2 - 16;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    (*(*a3 + 32))(a3, *(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v36 != 1)
    {
      v38 = v37 - 16;
      v39 = 1;
      while (1)
      {
        v40 = (*(*a3 + 16))(a3);
        v41 = *(v40 + 4);
        if (*(v40 + 3) - v41 > 1uLL)
        {
          *v41 = 8236;
          *(v40 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v40, ", ", 2uLL);
        }

        v42 = *(a2 - 8) & 7;
        v43 = v37;
        v44 = v39;
        if (v42 == 6)
        {
          goto LABEL_53;
        }

        v45 = (5 - v42);
        v46 = v38;
        v44 = v39 - v45;
        if (v39 > v45)
        {
          break;
        }

LABEL_54:
        (*(*a3 + 32))(a3, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
        ++v39;
        v38 -= 16;
        if (v36 == v39)
        {
          goto LABEL_55;
        }
      }

      v43 = v37 - 16 * v45;
LABEL_53:
      v46 = v43 - 24 * v44;
      goto LABEL_54;
    }
  }

LABEL_55:
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v49, 0);
  v48 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::UnrealizedConversionCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    if (*(a1 + 9))
    {
      v4 = 1;
    }

    else
    {
      v7[16] = 257;
      mlir::Operation::emitOpError(a1, v7, &v8);
      if (v8)
      {
        mlir::Diagnostic::operator<<<48ul>(v9, "expected at least one result for cast operation");
      }

      v4 = v9[192] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void mlir::Operation::setDiscardableAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v7, *(a1 + 56));
  if (mlir::NamedAttrList::set(v7, a2, a3) != a3)
  {
    *(a1 + 56) = mlir::NamedAttrList::getDictionary(v7, *(***(a1 + 24) + 32));
  }

  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void *mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::~ResourceBlobManagerDialectInterfaceBase(void *a1)
{
  *a1 = &unk_286E78850;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::~ResourceBlobManagerDialectInterfaceBase(void *a1)
{
  *a1 = &unk_286E78850;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x25F891040);
}

void mlir::ResourceBlobManagerDialectInterface::~ResourceBlobManagerDialectInterface(mlir::ResourceBlobManagerDialectInterface *this)
{
  *this = &unk_286E78850;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

{
  *this = &unk_286E78850;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::DialectResourceBlobManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E78870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::DialectResourceBlobManager>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 52))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(a1 + 40) + v3);
        if (v5 != -8 && v5 != 0)
        {
          if (*(v5 + 88) == 1)
          {
            mlir::AsmResourceBlob::~AsmResourceBlob((v5 + 24));
          }

          MEMORY[0x25F891030](v5, 8);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*(a1 + 40));
  v7 = *(a1 + 24);
  pthread_rwlock_destroy(v7);

  free(v7);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t anonymous namespace::BuiltinOpAsmDialectInterface::getAlias(uint64_t a1, uint64_t a2, llvm::raw_ostream *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
  {
    v6 = *(a3 + 4);
    if ((*(a3 + 3) - v6) <= 2)
    {
      v7 = "map";
      goto LABEL_10;
    }

    *(v6 + 2) = 112;
    v12 = 24941;
    goto LABEL_17;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
  {
    v6 = *(a3 + 4);
    if ((*(a3 + 3) - v6) <= 2)
    {
      v7 = "set";
      goto LABEL_10;
    }

    *(v6 + 2) = 116;
    v12 = 25971;
    goto LABEL_17;
  }

  v15 = a2;
  if (!mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v15))
  {
    v10 = *(*a2 + 136);
    if (v10 != mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID() || *(**(a2 + 8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      return 0;
    }

    v14 = *(a3 + 4);
    if (*(a3 + 3) - v14 <= 7uLL)
    {
      v7 = "distinct";
      v8 = a3;
      v9 = 8;
      goto LABEL_11;
    }

    *v14 = 0x74636E6974736964;
    v13 = *(a3 + 4) + 8;
LABEL_18:
    *(a3 + 4) = v13;
    return 1;
  }

  v6 = *(a3 + 4);
  if ((*(a3 + 3) - v6) > 2)
  {
    *(v6 + 2) = 99;
    v12 = 28524;
LABEL_17:
    *v6 = v12;
    v13 = *(a3 + 4) + 3;
    goto LABEL_18;
  }

  v7 = "loc";
LABEL_10:
  v8 = a3;
  v9 = 3;
LABEL_11:
  llvm::raw_ostream::write(v8, v7, v9);
  return 1;
}

uint64_t anonymous namespace::BuiltinOpAsmDialectInterface::getAlias(int a1, _DWORD *a2, llvm::raw_ostream *this)
{
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id || a2[2] < 0x11u)
  {
    return 0;
  }

  v3 = *(this + 4);
  if ((*(this + 3) - v3) > 4)
  {
    *(v3 + 4) = 101;
    *v3 = 1819309428;
    *(this + 4) += 5;
  }

  else
  {
    llvm::raw_ostream::write(this, "tuple", 5uLL);
  }

  return 1;
}

void anonymous namespace::BuiltinOpAsmDialectInterface::declareResource(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  LOBYTE(v9[0]) = 0;
  v10 = 0;
  mlir::ResourceBlobManagerDialectInterfaceBase<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>::insert(v5, a2, a3, v9, &v7);
  *a4 = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = 1;
  if (v10 == 1)
  {
    mlir::AsmResourceBlob::~AsmResourceBlob(v9);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::BuiltinOpAsmDialectInterface::getResourceKey(const void ***a1@<X1>, void *a2@<X8>)
{
  v3 = **a1;
  if (v3)
  {
    v4 = (*a1)[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t anonymous namespace::BuiltinOpAsmDialectInterface::parseResource(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  (*(*a2 + 56))(v11, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>, &v10);
  if (v12 == 1)
  {
    v4 = *(a1 + 24);
    v5 = (*(*a2 + 16))(a2);
    v7 = mlir::DialectResourceBlobManager::lookup(*(v4 + 24), v5, v6);
    std::optional<mlir::AsmResourceBlob>::operator=[abi:nn200100]<mlir::AsmResourceBlob,void>(v7 + 16, v11);
    if (v12)
    {
      mlir::AsmResourceBlob::~AsmResourceBlob(v11);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::BuiltinOpAsmDialectInterface::buildResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 32);
  if (v4)
  {
    v6 = *(a3 + 24);
    v7 = 24 * v4;
    do
    {
      v8 = *(v6 + 8);
      v9 = mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID();
      if (v6 && v8 == v9 && *(*v6 + 80) == 1)
      {
        (*(*a4 + 32))(a4, **v6, *(*v6 + 8), *(*v6 + 16), *(*v6 + 24), *(*v6 + 32));
      }

      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }
}

uint64_t std::__find[abi:nn200100]<llvm::StringRef const*,llvm::StringRef const*,llvm::StringRef,std::__identity>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *a3;
    v6 = *(a3 + 8);
    do
    {
      if (*(v3 + 8) == v6 && (!v6 || !memcmp(*v3, v5, v6)))
      {
        break;
      }

      v3 += 16;
    }

    while (v3 != a2);
  }

  return v3;
}

uint64_t mlir::Diagnostic::operator<<<42ul>(uint64_t a1, char *__s)
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

BOOL llvm::detail::operator==<mlir::OperandRange,mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (v2 != a2[1])
  {
    return 0;
  }

  if (v2)
  {
    v3 = 0;
    v4 = *a1;
    v5 = v2 - 1;
    v6 = (*a2 + 24);
    for (i = *a1; ; i -= 16)
    {
      v8 = v4;
      if (v3)
      {
        v9 = v4;
        v10 = v3;
        if (!v4)
        {
          goto LABEL_9;
        }

        v11 = *(v4 + 8) & 7;
        v9 = v4;
        v10 = v3;
        if (v11 == 6)
        {
          goto LABEL_9;
        }

        v12 = (5 - v11);
        v8 = i;
        v10 = v3 - v12;
        if (v3 > v12)
        {
          break;
        }
      }

LABEL_10:
      v13 = *v6;
      v6 += 4;
      result = v8 == v13;
      if (v8 != v13 || v5 == v3++)
      {
        return result;
      }
    }

    v9 = v4 - 16 * v12;
LABEL_9:
    v8 = v9 - 24 * v10;
    goto LABEL_10;
  }

  return 1;
}

uint64_t mlir::Diagnostic::operator<<<54ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<mlir::Attribute &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<60ul>(uint64_t a1, char *__s)
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

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1D840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D840))
  {
    qword_27FC1D830 = llvm::detail::getTypeNameImpl<mlir::detail::ModuleOpGenericAdaptorBase::Properties>();
    *algn_27FC1D838 = v1;
    __cxa_guard_release(&qword_27FC1D840);
  }

  return qword_27FC1D830;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::ModuleOpGenericAdaptorBase::Properties]";
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

uint64_t mlir::Diagnostic::operator<<<10ul>(uint64_t a1, char *__s)
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

const char *llvm::detail::getTypeNameImpl<mlir::StringAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::StringAttr]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ModuleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v9 = a5 - a3;
  v10 = *(a1 + 8);
  v11 = a5 - a3 + v10;
  if (v11 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 8);
    v10 = *(a1 + 8);
  }

  if (a5 != v6)
  {
    v12 = (*a1 + 8 * v10);
    do
    {
      *v12++ = mlir::TypeRange::dereference_iterator(a2, v6++);
    }

    while (a5 != v6);
    LODWORD(v10) = *(a1 + 8);
  }

  *(a1 + 8) = v10 + v9;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::readAttribute(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 8) + 32);
  v44 = 0;
  v4 = 0;
  if ((*(*a2 + 72))(a2, &v44))
  {
    switch(v44)
    {
      case 0:
        *v53 = &v53[16];
        *&v53[8] = 0x600000000;
        *v50 = 0;
        if (((*(*a2 + 72))(a2, v50) & 1) == 0)
        {
          goto LABEL_82;
        }

        v5 = *v50;
        if (*v50 > *&v53[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v53, &v53[16], *v50, 8);
          v5 = *v50;
        }

        if (v5)
        {
          v6 = 0;
          do
          {
            v45 = 0;
            if (((*(*a2 + 48))(a2, &v45) & 1) == 0)
            {
              goto LABEL_82;
            }

            v7 = *&v53[8];
            if (*&v53[8] >= *&v53[12])
            {
              llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(v53, v45);
            }

            else
            {
              *(*v53 + 8 * *&v53[8]) = v45;
              *&v53[8] = v7 + 1;
            }

            ++v6;
          }

          while (v6 < *v50);
        }

        v14 = mlir::ArrayAttr::get(v3, *v53, *&v53[8]);
        goto LABEL_125;
      case 1:
        *v53 = &v53[16];
        *&v53[8] = 0x300000000;
        v48 = 0;
        if (((*(*a2 + 72))(a2, &v48) & 1) == 0)
        {
          goto LABEL_82;
        }

        v19 = v48;
        if (v48 > *&v53[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v53, &v53[16], v48, 16);
          v19 = v48;
        }

        if (!v19)
        {
          goto LABEL_56;
        }

        v20 = 0;
        while (1)
        {
          v45 = 0;
          v49 = 0;
          if (!mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v45) || ((*(*a2 + 48))(a2, &v49) & 1) == 0)
          {
            goto LABEL_82;
          }

          *v50 = v45;
          *&v50[8] = v49;
          v50[16] = 1;
          llvm::SmallVectorImpl<mlir::NamedAttribute>::emplace_back<mlir::NamedAttribute>(v53, v50);
          if (++v20 >= v48)
          {
LABEL_56:
            v14 = mlir::DictionaryAttr::get(v3, *v53, *&v53[8]);
            goto LABEL_125;
          }
        }

      case 2:
        *v50 = 0uLL;
        v4 = 0;
        if (((*(*a2 + 104))(a2, v50) & 1) == 0)
        {
          goto LABEL_145;
        }

        v55 = 261;
        *v53 = *v50;
        Raw = mlir::StringAttr::get(v3, v53, v18);
        goto LABEL_91;
      case 3:
        *v50 = 0uLL;
        v45 = 0;
        if (((*(*a2 + 104))(a2, v50) & 1) == 0 || ((*(*a2 + 64))(a2, &v45) & 1) == 0)
        {
          goto LABEL_144;
        }

        v55 = 261;
        *v53 = *v50;
        Raw = mlir::StringAttr::get(v53, v45);
        goto LABEL_91;
      case 4:
        *v53 = 0;
        v4 = 0;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v53))
        {
          goto LABEL_145;
        }

        Raw = mlir::SymbolRefAttr::get(*v53, 0, 0, v9);
        goto LABEL_91;
      case 5:
        v45 = 0;
        *v53 = &v53[16];
        *&v53[8] = 0x600000000;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v45))
        {
          goto LABEL_111;
        }

        *v50 = a2;
        if ((mlir::DialectBytecodeReader::readList<mlir::FlatSymbolRefAttr,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::FlatSymbolRefAttr>(llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::FlatSymbolRefAttr&)#1}>(a2, v53, v50) & 1) == 0)
        {
          goto LABEL_111;
        }

        v22 = mlir::SymbolRefAttr::get(v45, *v53, *&v53[8], v21);
        goto LABEL_68;
      case 6:
        *v53 = 0;
        v4 = 0;
        if (((*(*a2 + 64))(a2, v53) & 1) == 0)
        {
          goto LABEL_145;
        }

        Raw = mlir::TypeAttr::get(*v53);
        goto LABEL_91;
      case 7:
        v4 = *(*v3 + 608);
        goto LABEL_145;
      case 8:
        v48 = 0;
        LOBYTE(v45) = 0;
        v47 = 0;
        if (((*(*a2 + 64))(a2, &v48) & 1) == 0)
        {
          goto LABEL_144;
        }

        v49 = v48;
        v27 = *(*v48 + 136);
        if (v27 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v28 = v48[2] & 0x3FFFFFFF;
        }

        else if (v27 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v28 = 64;
        }

        else
        {
          v52 = 257;
          (*(*a2 + 16))(v53, a2, v50);
          if (*v53)
          {
            mlir::Diagnostic::operator<<<58ul>(&v53[8], "expected integer or index type for IntegerAttr, but got: ");
            if (*v53)
            {
              mlir::Diagnostic::operator<<<mlir::Type &>(&v53[8], &v49);
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(v53);
          v28 = 0;
        }

        (*(*a2 + 88))(v53, a2, v28);
        std::__optional_storage_base<llvm::APInt,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APInt,false>>(&v45, v53);
        if (v53[16] == 1 && *&v53[8] >= 0x41u && *v53)
        {
          MEMORY[0x25F891010](*v53, 0x1000C8000313F17);
        }

        if (v47 != 1)
        {
          goto LABEL_144;
        }

        v4 = mlir::IntegerAttr::get(v48, &v45);
        if ((v47 & 1) != 0 && v46 >= 0x41 && v45)
        {
          MEMORY[0x25F891010](v45, 0x1000C8000313F17);
        }

        goto LABEL_145;
      case 9:
        v45 = 0;
        v50[0] = 0;
        v51 = 0;
        if (((*(*a2 + 64))(a2, &v45) & 1) != 0 && (v15 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v45)) != 0)
        {
          v17 = (*v16)(v16, v15);
          (*(*a2 + 96))(v53, a2, v17);
          std::__optional_storage_base<llvm::APFloat,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APFloat,false>>(v50, v53);
          if (v54 == 1)
          {
            llvm::APFloat::Storage::~Storage(v53);
          }

          v4 = mlir::FloatAttr::get(v45, v50);
        }

        else
        {
          v4 = 0;
        }

        if (v51 == 1)
        {
          llvm::APFloat::Storage::~Storage(v50);
        }

        goto LABEL_145;
      case 10:
        *v53 = 0;
        *v50 = 0;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v53) || !mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v50))
        {
          goto LABEL_144;
        }

        Raw = mlir::CallSiteLoc::get(*v53, *v50);
        goto LABEL_91;
      case 11:
        *v53 = 0;
        *v50 = 0;
        v45 = 0;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v53) || ((*(*a2 + 72))(a2, v50) & 1) == 0 || ((*(*a2 + 72))(a2, &v45) & 1) == 0)
        {
          goto LABEL_144;
        }

        Raw = mlir::FileLineColRange::get(*v53, *v50, v45);
        goto LABEL_91;
      case 12:
        *v53 = &v53[16];
        *&v53[8] = 0x600000000;
        v49 = 0;
        if (((*(*a2 + 72))(a2, &v49) & 1) == 0)
        {
          goto LABEL_82;
        }

        v10 = v49;
        if (v49 > *&v53[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v53, &v53[16], v49, 8);
          v10 = v49;
        }

        if (!v10)
        {
          goto LABEL_35;
        }

        v11 = 0;
        while (1)
        {
          v45 = 0;
          v12 = mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, &v45);
          v13 = v45;
          if (!v12)
          {
            v13 = 0;
          }

          *v50 = v13;
          v50[8] = v12;
          if (!v12)
          {
            goto LABEL_82;
          }

          llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v53, v50);
          if (++v11 >= v49)
          {
LABEL_35:
            v14 = mlir::FusedLoc::get(*v53, *&v53[8], 0, v3);
            goto LABEL_125;
          }
        }

      case 13:
        *v53 = &v53[16];
        *&v53[8] = 0x600000000;
        v48 = 0;
        v49 = 0;
        if (((*(*a2 + 72))(a2, &v49) & 1) == 0)
        {
          goto LABEL_82;
        }

        v23 = v49;
        if (v49 > *&v53[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v53, &v53[16], v49, 8);
          v23 = v49;
        }

        if (!v23)
        {
          goto LABEL_80;
        }

        v24 = 0;
        do
        {
          v45 = 0;
          v25 = mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, &v45);
          v26 = v45;
          if (!v25)
          {
            v26 = 0;
          }

          *v50 = v26;
          v50[8] = v25;
          if (!v25)
          {
            goto LABEL_82;
          }

          llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(v53, v50);
          ++v24;
        }

        while (v24 < v49);
LABEL_80:
        if (((*(*a2 + 48))(a2, &v48) & 1) == 0)
        {
LABEL_82:
          v4 = 0;
          goto LABEL_126;
        }

        v14 = mlir::FusedLoc::get(v3, *v53, *&v53[8], v48);
LABEL_125:
        v4 = v14;
LABEL_126:
        v32 = *v53;
        if (*v53 != &v53[16])
        {
          goto LABEL_127;
        }

        goto LABEL_145;
      case 14:
        *v53 = 0;
        *v50 = 0;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, v53) || !mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(a2, v50))
        {
          goto LABEL_144;
        }

        Raw = mlir::NameLoc::get(*v53, *v50);
        goto LABEL_91;
      case 15:
        v4 = *(*v3 + 616);
        goto LABEL_145;
      case 16:
        v45 = 0;
        v46 = 0;
        v4 = 0;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, &v45))
        {
          goto LABEL_145;
        }

        mlir::DialectBytecodeReader::readResourceHandle<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(v53, a2);
        if (v54)
        {
          *&v50[1] = *&v53[1];
          *&v50[16] = *&v53[16];
          v50[0] = v53[0];
          Raw = mlir::DenseResourceElementsAttr::get(v45, v46, v50);
LABEL_91:
          v4 = Raw;
        }

        else
        {
LABEL_144:
          v4 = 0;
        }

        goto LABEL_145;
      case 17:
        *v50 = 0;
        v45 = 0;
        *v53 = 0;
        *&v53[8] = 0;
        if (((*(*a2 + 64))(a2, v50) & 1) == 0 || ((*(*a2 + 72))(a2, &v45) & 1) == 0 || ((*(*a2 + 112))(a2, v53) & 1) == 0)
        {
          goto LABEL_144;
        }

        Raw = mlir::DenseArrayAttr::get(*v50, v45, *v53, *&v53[8]);
        goto LABEL_91;
      case 18:
        *v53 = 0;
        *&v53[8] = 0;
        *v50 = 0uLL;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, v53) || ((*(*a2 + 112))(a2, v50) & 1) == 0)
        {
          goto LABEL_144;
        }

        Raw = mlir::DenseIntOrFPElementsAttr::getRaw(*v53, *&v53[8], *v50, *&v50[8]);
        goto LABEL_91;
      case 19:
        *v50 = 0uLL;
        v45 = 0;
        *v53 = &v53[16];
        *&v53[8] = 0x300000000;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, v50) || ((*(*a2 + 72))(a2, &v45) & 1) == 0)
        {
          goto LABEL_154;
        }

        v33 = *v50;
        if (v45 || (v37 = (*(*&v50[8] + 24))(*&v50[8], *v50), !v38))
        {
          v34 = 1;
        }

        else
        {
          v39 = 8 * v38;
          v34 = 1;
          do
          {
            v40 = *v37++;
            v34 *= v40;
            v39 -= 8;
          }

          while (v39);
        }

        llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(v53, v34);
        v41 = *v53;
        if (*&v53[8])
        {
          v42 = 16 * *&v53[8];
          do
          {
            if (((*(*a2 + 104))(a2, v41) & 1) == 0)
            {
LABEL_154:
              v4 = 0;
              goto LABEL_155;
            }

            v41 += 16;
            v42 -= 16;
          }

          while (v42);
          v41 = *v53;
          v43 = *&v53[8];
        }

        else
        {
          v43 = 0;
        }

        v4 = mlir::DenseStringElementsAttr::get(v33, *(&v33 + 1), v41, v43);
LABEL_155:
        v32 = *v53;
        if (*v53 == &v53[16])
        {
          goto LABEL_145;
        }

        goto LABEL_127;
      case 20:
        *v53 = 0;
        *&v53[8] = 0;
        *v50 = 0;
        v45 = 0;
        if (!mlir::DialectBytecodeReader::readType<mlir::ShapedType>(a2, v53) || !mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a2, v50) || !mlir::DialectBytecodeReader::readAttribute<mlir::DenseElementsAttr>(a2, &v45))
        {
          goto LABEL_144;
        }

        Raw = mlir::SparseElementsAttr::get(*v53, *&v53[8], *v50, v45);
        goto LABEL_91;
      case 21:
        *v53 = 0;
        v4 = 0;
        if (((*(*a2 + 48))(a2, v53) & 1) == 0)
        {
          goto LABEL_145;
        }

        Raw = mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(v3, v53);
        goto LABEL_91;
      case 22:
        v49 = 0;
        *v53 = &v53[16];
        *&v53[8] = 0x600000000;
        v4 = 0;
        if (!mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v49))
        {
          goto LABEL_112;
        }

        *v50 = 0;
        if (((*(*a2 + 72))(a2, v50) & 1) == 0)
        {
          goto LABEL_111;
        }

        v29 = *v50;
        if (*v50 > *&v53[12])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v53, &v53[16], *v50, 8);
          v29 = *v50;
        }

        if (!v29)
        {
          goto LABEL_129;
        }

        v30 = 0;
        break;
      default:
        v52 = 257;
        (*(*a2 + 16))(v53, a2, v50);
        if (*v53)
        {
          mlir::Diagnostic::operator<<<25ul>(&v53[8], "unknown attribute code: ");
        }

        mlir::InFlightDiagnostic::operator<<<unsigned long long &>(v53, &v44);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v53);
        goto LABEL_144;
    }

    do
    {
      v45 = 0;
      if (((*(*a2 + 72))(a2, &v45) & 1) == 0)
      {
LABEL_111:
        v4 = 0;
        goto LABEL_112;
      }

      v31 = *&v53[8];
      if (*&v53[8] >= *&v53[12])
      {
        llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(v53, v45);
      }

      else
      {
        *(*v53 + 8 * *&v53[8]) = v45;
        *&v53[8] = v31 + 1;
      }

      ++v30;
    }

    while (v30 < *v50);
LABEL_129:
    v4 = 0;
    if (*&v53[8] <= 1)
    {
      if (!*&v53[8])
      {
        v22 = mlir::FileLineColRange::get(v49);
        goto LABEL_68;
      }

      if (*&v53[8] == 1)
      {
        v22 = mlir::FileLineColRange::get(v49, **v53);
        goto LABEL_68;
      }
    }

    else
    {
      switch(*&v53[8])
      {
        case 2:
          v22 = mlir::FileLineColRange::get(v49, **v53, *(*v53 + 8));
          goto LABEL_68;
        case 3:
          v22 = mlir::FileLineColRange::get(v49, **v53, *(*v53 + 8), *(*v53 + 16));
          goto LABEL_68;
        case 4:
          v22 = mlir::FileLineColRange::get(v49, **v53, *(*v53 + 8), *(*v53 + 16), *(*v53 + 24));
LABEL_68:
          v4 = v22;
          break;
      }
    }

LABEL_112:
    v32 = *v53;
    if (*v53 != &v53[16])
    {
LABEL_127:
      free(v32);
    }
  }

LABEL_145:
  v35 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::readType(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 8) + 32);
  v51 = 0;
  v4 = 0;
  if ((*(*a2 + 72))(a2, &v51))
  {
    switch(v51)
    {
      case 0:
        v55 = 0;
        v4 = 0;
        if ((*(*a2 + 72))(a2, &v55))
        {
          v5 = mlir::IntegerType::get(v3, v55 >> 2, v55 & 3);
          goto LABEL_80;
        }

        goto LABEL_110;
      case 1:
        v4 = *(*v3 + 472);
        goto LABEL_110;
      case 2:
        v55 = &v56[1];
        v56[0] = 0x600000000;
        v58 = v60;
        v59 = 0x600000000;
        *&v62 = a2;
        if (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v55, &v62) & 1) != 0 && (*&v62 = a2, (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v58, &v62)))
        {
          *&v62 = v55 & 0xFFFFFFFFFFFFFFF9 | 2;
          *(&v62 + 1) = LODWORD(v56[0]);
          *&v61 = v58 & 0xFFFFFFFFFFFFFFF9 | 2;
          *(&v61 + 1) = v59;
          v4 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v3, &v62, &v61);
        }

        else
        {
          v4 = 0;
        }

        if (v58 != v60)
        {
          free(v58);
        }

        goto LABEL_115;
      case 3:
        v4 = *(*v3 + 416);
        goto LABEL_110;
      case 4:
        v4 = *(*v3 + 424);
        goto LABEL_110;
      case 5:
        v4 = *(*v3 + 440);
        goto LABEL_110;
      case 6:
        v4 = *(*v3 + 448);
        goto LABEL_110;
      case 7:
        v4 = *(*v3 + 456);
        goto LABEL_110;
      case 8:
        v4 = *(*v3 + 464);
        goto LABEL_110;
      case 9:
        v58 = 0;
        v4 = 0;
        if (((*(*a2 + 64))(a2, &v58) & 1) == 0)
        {
          goto LABEL_110;
        }

        v55 = v58;
        v5 = mlir::detail::TypeUniquer::get<mlir::ComplexType,mlir::Type &>(*(**v58 + 32), &v55);
        goto LABEL_80;
      case 10:
        v8 = &v56[1];
        v54 = 0;
        v55 = &v56[1];
        v56[0] = 0x600000000;
        v53 = 0;
        v62 = 0uLL;
        if (((*(*a2 + 72))(a2, &v54) & 1) == 0)
        {
          goto LABEL_107;
        }

        v36 = v54;
        if (v54 > HIDWORD(v56[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, &v56[1], v54, 8);
          v36 = v54;
        }

        if (!v36)
        {
          goto LABEL_90;
        }

        v37 = 0;
        while (1)
        {
          *&v61 = 0;
          v38 = (*(*a2 + 80))(a2, &v61);
          v39 = v61;
          if ((v38 & 1) == 0)
          {
            v39 = 0;
          }

          v58 = v39;
          LOBYTE(v59) = v38 & 1;
          if ((v38 & 1) == 0)
          {
            goto LABEL_107;
          }

          llvm::SmallVectorImpl<long long>::emplace_back<long long>(&v55, &v58);
          if (++v37 >= v54)
          {
LABEL_90:
            if (((*(*a2 + 64))(a2, &v53) & 1) != 0 && mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(a2, &v62))
            {
              v21 = v55;
              v22 = LODWORD(v56[0]);
              v23 = v53;
              v26 = *(&v62 + 1);
              v25 = v62;
              v24 = 0;
              goto LABEL_93;
            }

            goto LABEL_107;
          }
        }

      case 11:
        v52 = 0;
        v53 = 0;
        v8 = &v56[1];
        v55 = &v56[1];
        v56[0] = 0x600000000;
        v62 = 0uLL;
        if (((*(*a2 + 48))(a2, &v53) & 1) == 0)
        {
          goto LABEL_107;
        }

        v54 = 0;
        if (((*(*a2 + 72))(a2, &v54) & 1) == 0)
        {
          goto LABEL_107;
        }

        v17 = v54;
        if (v54 > HIDWORD(v56[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, &v56[1], v54, 8);
          v17 = v54;
        }

        if (!v17)
        {
          goto LABEL_29;
        }

        v18 = 0;
        while (1)
        {
          *&v61 = 0;
          v19 = (*(*a2 + 80))(a2, &v61);
          v20 = v61;
          if ((v19 & 1) == 0)
          {
            v20 = 0;
          }

          v58 = v20;
          LOBYTE(v59) = v19 & 1;
          if ((v19 & 1) == 0)
          {
            goto LABEL_107;
          }

          llvm::SmallVectorImpl<long long>::emplace_back<long long>(&v55, &v58);
          if (++v18 >= v54)
          {
LABEL_29:
            if (((*(*a2 + 64))(a2, &v52) & 1) == 0 || !mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(a2, &v62))
            {
              goto LABEL_107;
            }

            v21 = v55;
            v22 = LODWORD(v56[0]);
            v23 = v52;
            v24 = v53;
            v26 = *(&v62 + 1);
            v25 = v62;
LABEL_93:
            v35 = mlir::MemRefType::get(v21, v22, v23, v25, v26, v24);
            goto LABEL_106;
          }
        }

      case 12:
        v4 = *(*v3 + 528);
        if (!v4)
        {
          v27 = *(*v3 + 384);
          v55 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
          v4 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v27 + 232), &v55);
        }

        goto LABEL_110;
      case 13:
        v8 = &v56[1];
        v54 = 0;
        v55 = &v56[1];
        v56[0] = 0x600000000;
        *&v61 = 0;
        if (((*(*a2 + 72))(a2, &v61) & 1) == 0)
        {
          goto LABEL_107;
        }

        v31 = v61;
        if (v61 > HIDWORD(v56[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, &v56[1], v61, 8);
          v31 = v61;
        }

        if (!v31)
        {
          goto LABEL_74;
        }

        v32 = 0;
        while (1)
        {
          *&v62 = 0;
          v33 = (*(*a2 + 80))(a2, &v62);
          v34 = v62;
          if ((v33 & 1) == 0)
          {
            v34 = 0;
          }

          v58 = v34;
          LOBYTE(v59) = v33 & 1;
          if ((v33 & 1) == 0)
          {
            goto LABEL_107;
          }

          llvm::SmallVectorImpl<long long>::emplace_back<long long>(&v55, &v58);
          if (++v32 >= v61)
          {
LABEL_74:
            if (((*(*a2 + 64))(a2, &v54) & 1) == 0)
            {
              goto LABEL_107;
            }

            v16 = v54;
            v13 = v55;
            v15 = LODWORD(v56[0]);
            v14 = 0;
            goto LABEL_76;
          }
        }

      case 14:
        v8 = &v56[1];
        v54 = 0;
        v55 = &v56[1];
        v56[0] = 0x600000000;
        v53 = 0;
        if (((*(*a2 + 48))(a2, &v54) & 1) == 0)
        {
          goto LABEL_107;
        }

        *&v61 = 0;
        if (((*(*a2 + 72))(a2, &v61) & 1) == 0)
        {
          goto LABEL_107;
        }

        v9 = v61;
        if (v61 > HIDWORD(v56[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, &v56[1], v61, 8);
          v9 = v61;
        }

        if (!v9)
        {
          goto LABEL_17;
        }

        v10 = 0;
        while (1)
        {
          *&v62 = 0;
          v11 = (*(*a2 + 80))(a2, &v62);
          v12 = v62;
          if ((v11 & 1) == 0)
          {
            v12 = 0;
          }

          v58 = v12;
          LOBYTE(v59) = v11 & 1;
          if ((v11 & 1) == 0)
          {
            goto LABEL_107;
          }

          llvm::SmallVectorImpl<long long>::emplace_back<long long>(&v55, &v58);
          if (++v10 >= v61)
          {
LABEL_17:
            if (((*(*a2 + 64))(a2, &v53) & 1) == 0)
            {
              goto LABEL_107;
            }

            v14 = v54;
            v13 = v55;
            v15 = LODWORD(v56[0]);
            v16 = v53;
LABEL_76:
            v35 = mlir::RankedTensorType::get(v13, v15, v16, v14);
            goto LABEL_106;
          }
        }

      case 15:
        v55 = &v56[1];
        v56[0] = 0x600000000;
        v58 = a2;
        if (mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(a2, &v55, &v58))
        {
          v58 = v55 & 0xFFFFFFFFFFFFFFF9 | 2;
          v59 = LODWORD(v56[0]);
          v4 = mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange &>(v3, &v58);
        }

        else
        {
          v4 = 0;
        }

LABEL_115:
        v44 = v55;
        if (v55 == &v56[1])
        {
          goto LABEL_110;
        }

        goto LABEL_109;
      case 16:
        v55 = 0;
        v4 = 0;
        if (((*(*a2 + 64))(a2, &v55) & 1) == 0)
        {
          goto LABEL_110;
        }

        v6 = v55;
        v7 = 0;
        goto LABEL_48;
      case 17:
        v55 = 0;
        v58 = 0;
        if (((*(*a2 + 48))(a2, &v55) & 1) == 0 || ((*(*a2 + 64))(a2, &v58) & 1) == 0)
        {
          goto LABEL_64;
        }

        v6 = v58;
        v7 = v55;
LABEL_48:
        v5 = mlir::UnrankedMemRefType::get(v6, v7);
        goto LABEL_80;
      case 18:
        v58 = 0;
        v4 = 0;
        if (((*(*a2 + 64))(a2, &v58) & 1) == 0)
        {
          goto LABEL_110;
        }

        v55 = v58;
        v5 = mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(*(**v58 + 32), &v55);
LABEL_80:
        v4 = v5;
        goto LABEL_110;
      case 19:
        v8 = &v56[1];
        v54 = 0;
        v55 = &v56[1];
        v56[0] = 0x600000000;
        *&v61 = 0;
        if (((*(*a2 + 72))(a2, &v61) & 1) == 0)
        {
          goto LABEL_107;
        }

        v40 = v61;
        if (v61 > HIDWORD(v56[0]))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, &v56[1], v61, 8);
          v40 = v61;
        }

        if (!v40)
        {
          goto LABEL_104;
        }

        v41 = 0;
        do
        {
          *&v62 = 0;
          v42 = (*(*a2 + 80))(a2, &v62);
          v43 = v62;
          if ((v42 & 1) == 0)
          {
            v43 = 0;
          }

          v58 = v43;
          LOBYTE(v59) = v42 & 1;
          if ((v42 & 1) == 0)
          {
            goto LABEL_107;
          }

          llvm::SmallVectorImpl<long long>::emplace_back<long long>(&v55, &v58);
          ++v41;
        }

        while (v41 < v61);
LABEL_104:
        if (((*(*a2 + 64))(a2, &v54) & 1) == 0)
        {
LABEL_107:
          v4 = 0;
          goto LABEL_108;
        }

        v35 = mlir::VectorType::get(v55, LODWORD(v56[0]), v54, 0, 0);
LABEL_106:
        v4 = v35;
        goto LABEL_108;
      case 20:
        v8 = v57;
        v55 = v57;
        *v56 = xmmword_25D0A0550;
        v58 = v60;
        v59 = 0x600000000;
        v53 = 0;
        *&v62 = 0;
        if (((*(*a2 + 72))(a2, &v62) & 1) == 0)
        {
          goto LABEL_128;
        }

        v28 = v62;
        if (v56[1] < v62)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v55, v57, v62, 1);
          v28 = v62;
        }

        if (!v28)
        {
          goto LABEL_117;
        }

        v29 = 0;
        break;
      default:
        v60[8] = 257;
        (*(*a2 + 16))(&v55, a2, &v58);
        if (v55)
        {
          mlir::Diagnostic::operator<<<25ul>(v56, "unknown attribute code: ");
        }

        mlir::InFlightDiagnostic::operator<<<unsigned long long &>(&v55, &v51);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
LABEL_64:
        v4 = 0;
        goto LABEL_110;
    }

    while (1)
    {
      LOBYTE(v61) = 0;
      if (((*(*a2 + 120))(a2, &v61) & 1) == 0)
      {
        break;
      }

      v30 = v56[0];
      if (v56[0] >= v56[1])
      {
        llvm::SmallVectorTemplateBase<BOOL,true>::push_back(&v55, v61 & 1);
      }

      else
      {
        *(v55 + v56[0]) = v61;
        v56[0] = (v30 + 1);
      }

      if (++v29 >= v62)
      {
LABEL_117:
        v54 = 0;
        if ((*(*a2 + 72))(a2, &v54))
        {
          v47 = v54;
          if (v54 > HIDWORD(v59))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v54, 8);
            v47 = v54;
          }

          if (v47)
          {
            v48 = 0;
            while (1)
            {
              *&v61 = 0;
              v49 = (*(*a2 + 80))(a2, &v61);
              v50 = v61;
              if ((v49 & 1) == 0)
              {
                v50 = 0;
              }

              *&v62 = v50;
              BYTE8(v62) = v49 & 1;
              if ((v49 & 1) == 0)
              {
                break;
              }

              llvm::SmallVectorImpl<long long>::emplace_back<long long>(&v58, &v62);
              if (++v48 >= v54)
              {
                goto LABEL_126;
              }
            }
          }

          else
          {
LABEL_126:
            if ((*(*a2 + 64))(a2, &v53))
            {
              v4 = mlir::VectorType::get(v58, v59, v53, v55, v56[0]);
              goto LABEL_129;
            }
          }
        }

        break;
      }
    }

LABEL_128:
    v4 = 0;
LABEL_129:
    if (v58 != v60)
    {
      free(v58);
    }

LABEL_108:
    v44 = v55;
    if (v55 != v8)
    {
LABEL_109:
      free(v44);
    }
  }

LABEL_110:
  v45 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::writeAttribute(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = *(*a2 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 0);
    v9 = a2[1];
    v8 = a2[2];
    (*(*a3 + 48))(a3, v8);
    if (v8)
    {
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        (*(*a3 + 16))(a3, v11);
        v10 -= 8;
      }

      while (v10);
    }

    goto LABEL_31;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id)
  {
    (*(*a3 + 48))(a3, 10);
    goto LABEL_26;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 17);
    (*(*a3 + 32))(a3, a2[1]);
    (*(*a3 + 48))(a3, a2[2]);
    v13 = a2[3];
    v14 = a2[4];
LABEL_30:
    (*(*a3 + 88))(a3, v13, v14);
    goto LABEL_31;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 18);
    (*(*a3 + 32))(a3, a2[1]);
    v13 = a2[4];
    v14 = a2[5];
    goto LABEL_30;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 16);
    (*(*a3 + 32))(a3, a2[1]);
    v63 = *(a2 + 3);
    v64 = a2[5];
    (*(*a3 + 40))(a3, &v63);
    goto LABEL_31;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 19);
    (*(*a3 + 32))(a3, a2[1]);
    (*(*a3 + 48))(a3, *(a2 + 24));
    v17 = a2[4];
    if (*(a2 + 24) == 1)
    {
      (*(*a3 + 80))(a3, *v17, v17[1]);
      goto LABEL_31;
    }

    v23 = a2[5];
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = &v17[2 * v23];
    do
    {
      v25 = *v17;
      v26 = v17[1];
      v17 += 2;
      (*(*a3 + 80))(a3, v25, v26);
      v7 = 1;
    }

    while (v17 != v24);
  }

  else
  {
    if (v5 != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      if (v5 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID())
      {
        v27 = *(*a3 + 48);
        v28 = a3;
        v29 = 21;
        goto LABEL_45;
      }

      v6 = *(*a2 + 136);
      if (v6 != &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
      {
        if (v6 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (v6 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
          {
            (*(*a3 + 48))(a3, 9);
            (*(*a3 + 32))(a3, a2[1]);
            llvm::APFloat::Storage::Storage(&v63, (a2 + 2));
            (*(*a3 + 72))(a3, &v63);
            llvm::APFloat::Storage::~Storage(&v63);
            goto LABEL_31;
          }

          if (v6 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id)
          {
            if (!a2[3])
            {
              (*(*a3 + 48))(a3, 12);
              v32 = a2[1];
              v31 = a2[2];
              (*(*a3 + 48))(a3, v31);
              if (v31)
              {
                v33 = 8 * v31;
                do
                {
                  v34 = *v32++;
                  (*(*a3 + 16))(a3, v34);
                  v33 -= 8;
                }

                while (v33);
              }

              if (!a2[3])
              {
                goto LABEL_31;
              }
            }

            (*(*a3 + 48))(a3, 13);
            v36 = a2[1];
            v35 = a2[2];
            (*(*a3 + 48))(a3, v35);
            if (v35)
            {
              v37 = 8 * v35;
              do
              {
                v38 = *v36++;
                (*(*a3 + 16))(a3, v38);
                v37 -= 8;
              }

              while (v37);
            }

            v12 = a2[3];
            goto LABEL_27;
          }

          if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v62 = a2;
            (*(*a3 + 48))(a3, 8);
            (*(*a3 + 32))(a3, a2[1]);
            mlir::IntegerAttr::getValue(&v62, &v63);
            (*(*a3 + 64))(a3, &v63);
            if (DWORD2(v63) >= 0x41 && v63)
            {
              MEMORY[0x25F891010](v63, 0x1000C8000313F17);
            }

            goto LABEL_31;
          }

          if (v6 != &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
          {
            if (v6 != &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
            {
              if (v6 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
              {
                if (*(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
                {
                  (*(*a3 + 48))(a3, 2);
                  (*(*a3 + 80))(a3, a2[2], a2[3]);
                  if (*(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
                  {
                    goto LABEL_31;
                  }
                }

                (*(*a3 + 48))(a3, 3);
                (*(*a3 + 80))(a3, a2[2], a2[3]);
              }

              else
              {
                if (v6 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
                {
                  if (v6 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
                  {
                    (*(*a3 + 48))(a3, 7);
                  }

                  else
                  {
                    if (v6 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
                    {
                      v7 = 0;
                      goto LABEL_32;
                    }

                    (*(*a3 + 48))(a3, 15);
                  }

LABEL_31:
                  v7 = 1;
                  goto LABEL_32;
                }

                (*(*a3 + 48))(a3, 6);
              }

              (*(*a3 + 32))(a3, a2[1]);
              goto LABEL_31;
            }

            (*(*a3 + 48))(a3, 20);
            (*(*a3 + 32))(a3, a2[1]);
            (*(*a3 + 16))(a3, a2[3]);
            v12 = a2[4];
LABEL_27:
            (*(*a3 + 16))(a3, v12);
            goto LABEL_31;
          }

          (*(*a3 + 48))(a3, 14);
LABEL_26:
          (*(*a3 + 16))(a3, a2[1]);
          v12 = a2[2];
          goto LABEL_27;
        }

        v27 = *(*a3 + 48);
        if (!a2 || a2[3])
        {
          v27(a3, 5);
          (*(*a3 + 16))(a3, a2[1]);
          v63 = *(a2 + 1);
          v62 = a3;
          mlir::DialectBytecodeWriter::writeList<llvm::ArrayRef<mlir::FlatSymbolRefAttr> &,void mlir::DialectBytecodeWriter::writeAttributes<mlir::FlatSymbolRefAttr>(llvm::ArrayRef<mlir::FlatSymbolRefAttr>)::{lambda(mlir::FlatSymbolRefAttr)#1}>(a3, &v63, &v62);
          goto LABEL_31;
        }

        v28 = a3;
        v29 = 4;
LABEL_45:
        v27(v28, v29);
        v12 = a2[1];
        goto LABEL_27;
      }

      if (a2)
      {
        if ((a2[1] & 6) != 2 || (((*(*a3 + 48))(a3, 11), (*(*a3 + 16))(a3, a2[1] & 0xFFFFFFFFFFFFFFF8), (*(*a3 + 48))(a3, *(a2 + 4)), (a2[1] & 6) == 0) ? (v30 = 0) : (v30 = *(a2 + 6)), (*(*a3 + 48))(a3, v30), *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id))
        {
          if ((a2[1] & 6) == 2)
          {
            goto LABEL_31;
          }
        }
      }

      (*(*a3 + 48))(a3, 22);
      (*(*a3 + 16))(a3, a2[1] & 0xFFFFFFFFFFFFFFF8);
      v39 = *(a2 + 4);
      v40 = a2[1];
      v41 = v40 & 6;
      if (!v39)
      {
        if ((v40 & 6) != 0 && *(a2 + 6))
        {
          goto LABEL_75;
        }

        v49 = 2;
        if (v41 == 6)
        {
          v49 = 4;
        }

        if (!LODWORD(a2[v49]))
        {
          if ((v40 & 4) != 0)
          {
            v50 = 28;
          }

          else
          {
            if ((v40 & 2) == 0)
            {
              goto LABEL_116;
            }

            v50 = 24;
          }

          if (!*(a2 + v50))
          {
            goto LABEL_116;
          }
        }
      }

      if ((v40 & 6) == 0)
      {
        v42 = 1;
LABEL_76:
        v44 = 2;
        if (v41 == 6)
        {
          v44 = 4;
        }

        v45 = a2[v44];
        v43 = v42;
        if (v39 == v45)
        {
          (*(*a3 + 48))(a3, 1);
          v46 = *(a2 + 4);
LABEL_120:
          (*(*a3 + 48))(a3, v46);
          goto LABEL_31;
        }

LABEL_80:
        if ((v40 & 4) != 0)
        {
          v48 = 28;
        }

        else
        {
          if ((v40 & 2) == 0)
          {
            v47 = 0;
            goto LABEL_92;
          }

          v48 = 24;
        }

        v47 = *(a2 + v48);
LABEL_92:
        if (v43)
        {
          v51 = 0;
        }

        else
        {
          v51 = *(a2 + 6);
        }

        if (v47 != v51)
        {
          goto LABEL_101;
        }

        v52 = 2;
        if (v41 == 6)
        {
          v52 = 4;
        }

        if (v39 != LODWORD(a2[v52]))
        {
LABEL_101:
          v53 = v41 == 6;
          v54 = 2;
          if (v53)
          {
            v54 = 4;
          }

          v55 = a2[v54];
          v56 = *(*a3 + 48);
          if (v39 == v55)
          {
            v56(a3, 3);
            (*(*a3 + 48))(a3, *(a2 + 4));
            if ((a2[1] & 6) != 0)
            {
              v57 = *(a2 + 6);
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v56(a3, 4);
            (*(*a3 + 48))(a3, *(a2 + 4));
            if ((a2[1] & 6) != 0)
            {
              v58 = *(a2 + 6);
            }

            else
            {
              v58 = 0;
            }

            (*(*a3 + 48))(a3, v58);
            v59 = 2;
            if ((~*(a2 + 2) & 6) == 0)
            {
              v59 = 4;
            }

            v57 = LODWORD(a2[v59]);
          }

          (*(*a3 + 48))(a3, v57);
          v60 = a2[1];
          if ((v60 & 4) != 0)
          {
            v61 = 28;
          }

          else
          {
            if ((v60 & 2) == 0)
            {
              goto LABEL_116;
            }

            v61 = 24;
          }

          v46 = *(a2 + v61);
          goto LABEL_120;
        }

        (*(*a3 + 48))(a3, 2);
        (*(*a3 + 48))(a3, *(a2 + 4));
        if ((a2[1] & 6) != 0)
        {
          v46 = *(a2 + 6);
          goto LABEL_120;
        }

LABEL_116:
        v46 = 0;
        goto LABEL_120;
      }

LABEL_75:
      v42 = 0;
      v43 = 0;
      if (*(a2 + 6))
      {
        goto LABEL_80;
      }

      goto LABEL_76;
    }

    v7 = 1;
    (*(*a3 + 48))(a3, 1);
    v19 = a2[1];
    v18 = a2[2];
    (*(*a3 + 48))(a3, v18);
    if (v18)
    {
      v20 = &v19[2 * v18];
      do
      {
        v21 = *v19;
        v22 = v19[1];
        v19 += 2;
        (*(*a3 + 16))(a3, v21);
        (*(*a3 + 16))(a3, v22);
        v7 = 1;
      }

      while (v19 != v20);
    }
  }

LABEL_32:
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t anonymous namespace::BuiltinDialectBytecodeInterface::writeType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 3);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    (*(*a3 + 48))(a3, 9);
LABEL_21:
    v7 = *(a2 + 8);
LABEL_22:
    (*(*a3 + 32))(a3, v7);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    (*(*a3 + 48))(a3, 8);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    (*(*a3 + 48))(a3, 4);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    (*(*a3 + 48))(a3, 5);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    (*(*a3 + 48))(a3, 6);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    (*(*a3 + 48))(a3, 7);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    (*(*a3 + 48))(a3, 2);
    v9 = *(a2 + 8);
    v48 = *(a2 + 16);
    v49 = v9;
    v47 = a3;
    mlir::DialectBytecodeWriter::writeList<llvm::ArrayRef<mlir::Type> &,void mlir::DialectBytecodeWriter::writeTypes<mlir::Type>(llvm::ArrayRef<mlir::Type>)::{lambda(mlir::Type)#1}>(a3, &v48, &v47);
    v10 = *(a2 + 12);
    v48 = *(a2 + 16) + 8 * *(a2 + 8);
    v49 = v10;
LABEL_31:
    v47 = a3;
    mlir::DialectBytecodeWriter::writeList<llvm::ArrayRef<mlir::Type> &,void mlir::DialectBytecodeWriter::writeTypes<mlir::Type>(llvm::ArrayRef<mlir::Type>)::{lambda(mlir::Type)#1}>(a3, &v48, &v47);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v6 = 1;
    (*(*a3 + 48))(a3, 1);
    return v6;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    (*(*a3 + 48))(a3, 0);
    HIDWORD(v11) = *(a2 + 8);
    LODWORD(v11) = HIDWORD(v11);
    (*(*a3 + 48))(a3, (v11 >> 30));
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    if (*(a2 + 48))
    {
      goto LABEL_39;
    }

    (*(*a3 + 48))(a3, 10);
    v13 = *(a2 + 8);
    v12 = *(a2 + 16);
    (*(*a3 + 48))(a3, v12);
    if (v12)
    {
      v14 = 8 * v12;
      do
      {
        v15 = *v13++;
        (*(*a3 + 56))(a3, v15);
        v14 -= 8;
      }

      while (v14);
    }

    (*(*a3 + 32))(a3, *(a2 + 24));
    (*(*a3 + 16))(a3, *(a2 + 32));
    if (*(a2 + 48))
    {
LABEL_39:
      (*(*a3 + 48))(a3, 11);
      (*(*a3 + 16))(a3, *(a2 + 48));
      v17 = *(a2 + 8);
      v16 = *(a2 + 16);
      (*(*a3 + 48))(a3, v16);
      if (v16)
      {
        v18 = 8 * v16;
        do
        {
          v19 = *v17++;
          (*(*a3 + 56))(a3, v19);
          v18 -= 8;
        }

        while (v18);
      }

      (*(*a3 + 32))(a3, *(a2 + 24));
      (*(*a3 + 16))(a3, *(a2 + 32));
    }

    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    (*(*a3 + 48))(a3, 12);
    return 1;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if (!*(a2 + 32))
    {
      (*(*a3 + 48))(a3, 13);
      v21 = *(a2 + 8);
      v20 = *(a2 + 16);
      (*(*a3 + 48))(a3, v20);
      if (v20)
      {
        v22 = 8 * v20;
        do
        {
          v23 = *v21++;
          (*(*a3 + 56))(a3, v23);
          v22 -= 8;
        }

        while (v22);
      }

      (*(*a3 + 32))(a3, *(a2 + 24));
      if (!*(a2 + 32))
      {
        return 1;
      }
    }

    (*(*a3 + 48))(a3, 14);
    (*(*a3 + 16))(a3, *(a2 + 32));
    v25 = *(a2 + 8);
    v24 = *(a2 + 16);
    (*(*a3 + 48))(a3, v24);
    if (v24)
    {
      v26 = 8 * v24;
      do
      {
        v27 = *v25++;
        (*(*a3 + 56))(a3, v27);
        v26 -= 8;
      }

      while (v26);
    }

    goto LABEL_52;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
  {
    (*(*a3 + 48))(a3, 15);
    v28 = *(a2 + 8);
    v48 = a2 + 16;
    v49 = v28;
    goto LABEL_31;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    if (!*(a2 + 16))
    {
      (*(*a3 + 48))(a3, 16);
      (*(*a3 + 32))(a3, *(a2 + 8));
      if (!*(a2 + 16))
      {
        return 1;
      }
    }

    (*(*a3 + 48))(a3, 17);
    (*(*a3 + 16))(a3, *(a2 + 16));
    goto LABEL_21;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    (*(*a3 + 48))(a3, 18);
    goto LABEL_21;
  }

  if (v4 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    return 0;
  }

  v29 = *(a2 + 32);
  v30 = *(a2 + 40);
  v31 = memchr(v29, 1, v30);
  if (!v31 || v31 == &v29[v30])
  {
    (*(*a3 + 48))(a3, 19);
    v33 = *(a2 + 8);
    v32 = *(a2 + 16);
    (*(*a3 + 48))(a3, v32);
    if (v32)
    {
      v34 = 8 * v32;
      do
      {
        v35 = *v33++;
        (*(*a3 + 56))(a3, v35);
        v34 -= 8;
      }

      while (v34);
    }

    (*(*a3 + 32))(a3, *(a2 + 24));
    v29 = *(a2 + 32);
    v30 = *(a2 + 40);
  }

  v36 = &v29[v30];
  v37 = v29;
  v6 = 1;
  v38 = memchr(v37, 1, v30);
  if (v38)
  {
    v39 = v38 == v36;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    (*(*a3 + 48))(a3, 20);
    v41 = *(a2 + 32);
    v40 = *(a2 + 40);
    (*(*a3 + 48))(a3, v40);
    for (; v40; --v40)
    {
      v42 = *v41++;
      (*(*a3 + 96))(a3, v42);
    }

    v44 = *(a2 + 8);
    v43 = *(a2 + 16);
    (*(*a3 + 48))(a3, v43);
    if (v43)
    {
      v45 = 8 * v43;
      do
      {
        v46 = *v44++;
        (*(*a3 + 56))(a3, v46);
        v45 -= 8;
      }

      while (v45);
    }

LABEL_52:
    v7 = *(a2 + 24);
    goto LABEL_22;
  }

  return v6;
}

void mlir::BytecodeDialectInterface::readVersion(uint64_t a1@<X1>, void *a2@<X8>)
{
  v6[26] = *MEMORY[0x277D85DE8];
  v4 = "Dialect does not support versioning";
  v5 = 259;
  (*(*a1 + 16))(v6, a1, &v4);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
  *a2 = 0;
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::BytecodeDialectInterface>();
      mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 2968);
}

uint64_t llvm::getTypeName<mlir::BytecodeDialectInterface>()
{
  {
    llvm::getTypeName<mlir::BytecodeDialectInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BytecodeDialectInterface>();
    unk_27FC17BB0 = v1;
  }

  return llvm::getTypeName<mlir::BytecodeDialectInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::BytecodeDialectInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BytecodeDialectInterface]";
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

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned long long &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 5;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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
        llvm::getTypeName<mlir::StringAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::StringAttr>();
        *algn_27FC17B88 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::StringAttr>(void)::Name;
        v16 = *algn_27FC17B88;
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

uint64_t mlir::DialectBytecodeReader::readList<mlir::FlatSymbolRefAttr,llvm::LogicalResult mlir::DialectBytecodeReader::readAttributes<mlir::FlatSymbolRefAttr>(llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr> &)::{lambda(mlir::FlatSymbolRefAttr&)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  if (((*(*a1 + 72))(a1, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (v10 > *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v10, 8);
    v5 = v10;
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v9 = 0;
      if (!mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(*a3, &v9))
      {
        break;
      }

      v7 = *(a2 + 8);
      if (v7 >= *(a2 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(a2, v9);
      }

      else
      {
        *(*a2 + 8 * v7) = v9;
        ++*(a2 + 8);
      }

      if (++v6 >= v10)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if ((*(*a1 + 48))(a1, &v12))
  {
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !v12[3])
    {
      *a2 = v12;
      v7 = 1;
    }

    else
    {
      *a2 = 0;
      v11[16] = 257;
      (*(*a1 + 16))(&v16, a1, v11);
      if (v16)
      {
        mlir::Diagnostic::operator<<<10ul>(v17, "expected ");
      }

      {
        llvm::getTypeName<mlir::FlatSymbolRefAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::FlatSymbolRefAttr>();
        *algn_27FC17BC8 = v10;
      }

      if (v16)
      {
        v15 = 261;
        v13 = llvm::getTypeName<mlir::FlatSymbolRefAttr>(void)::Name;
        v14 = *algn_27FC17BC8;
        mlir::Diagnostic::operator<<(v17, &v13);
        if (v16)
        {
          mlir::Diagnostic::operator<<<12ul>(v17, ", but got: ");
          if (v16)
          {
            LODWORD(v13) = 0;
            v14 = v12;
            v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v18, &v13, 1);
            v5 = v18 + 24 * v19;
            v6 = *v4;
            *(v5 + 16) = *(v4 + 16);
            *v5 = v6;
            ++v19;
          }
        }
      }

      v7 = (v20 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

const char *llvm::detail::getTypeNameImpl<mlir::FlatSymbolRefAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FlatSymbolRefAttr]";
  v6 = 85;
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

void llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t *std::__optional_storage_base<llvm::APInt,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APInt,false>>(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 16))
    {
      return llvm::APInt::operator=(a1, a2);
    }
  }

  else if (*(a1 + 16))
  {
    return std::__optional_destruct_base<llvm::APInt,false>::reset[abi:nn200100](a1);
  }

  else
  {
    *(a1 + 2) = *(a2 + 2);
    *a1 = *a2;
    *(a2 + 2) = 0;
    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t *llvm::APInt::operator=(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 2) >= 0x41u)
  {
    v4 = *a1;
    if (*a1)
    {
      MEMORY[0x25F891010]();
    }
  }

  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a2 + 2) = 0;
  return a1;
}

uint64_t std::__optional_destruct_base<llvm::APInt,false>::reset[abi:nn200100](uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = result;
    if (*(result + 8) >= 0x41u)
    {
      result = *result;
      if (*v1)
      {
        result = MEMORY[0x25F891010]();
      }
    }

    *(v1 + 16) = 0;
  }

  return result;
}

void std::__optional_storage_base<llvm::APFloat,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APFloat,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {

      llvm::APFloat::Storage::operator=(a1, a2);
    }
  }

  else if (*(a1 + 24))
  {
    llvm::APFloat::Storage::~Storage(a1);
    *(v2 + 24) = 0;
  }

  else
  {
    if (*a2 == &llvm::semPPCDoubleDouble)
    {
      v3 = *(a2 + 8);
      *(a2 + 8) = 0;
      *a1 = &llvm::semPPCDoubleDouble;
      *(a1 + 8) = v3;
      *a2 = &llvm::semBogus;
    }

    else
    {
      *a1 = &llvm::semBogus;
      a1 = llvm::detail::IEEEFloat::operator=(a1, a2);
    }

    *(a1 + 24) = 1;
  }
}

llvm::APFloat::Storage *llvm::APFloat::Storage::operator=(void **this, void **a2)
{
  v4 = *a2;
  if (*this != &llvm::semPPCDoubleDouble && v4 != &llvm::semPPCDoubleDouble)
  {
    goto LABEL_13;
  }

  if (*this == &llvm::semPPCDoubleDouble && v4 == &llvm::semPPCDoubleDouble)
  {
    if (this == a2)
    {
      return this;
    }

    v7 = (this + 1);
    v8 = this[1];
    this[1] = 0;
    if (v8)
    {
      std::default_delete<llvm::APFloat []>::operator()[abi:nn200100]<llvm::APFloat>(v7, v8);
      v9 = *a2;
    }

    else
    {
      v9 = &llvm::semPPCDoubleDouble;
    }

    v11 = a2[1];
    a2[1] = 0;
    *this = v9;
    this[1] = v11;
    goto LABEL_20;
  }

  if (this != a2)
  {
    llvm::APFloat::Storage::~Storage(this);
    if (*a2 != &llvm::semPPCDoubleDouble)
    {
      *this = &llvm::semBogus;
LABEL_13:
      llvm::detail::IEEEFloat::operator=(this, a2);
      return this;
    }

    v10 = a2[1];
    a2[1] = 0;
    *this = &llvm::semPPCDoubleDouble;
    this[1] = v10;
LABEL_20:
    *a2 = &llvm::semBogus;
  }

  return this;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LocationAttr>(uint64_t a1, uint64_t **a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v17 = v14;
    if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v17))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v17, a1, v13);
      if (v17)
      {
        mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
      }

      {
        *&llvm::getTypeName<mlir::LocationAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LocationAttr>();
        *(&llvm::getTypeName<mlir::LocationAttr>(void)::Name + 1) = v12;
      }

      if (v17)
      {
        v16 = 261;
        v15[0] = llvm::getTypeName<mlir::LocationAttr>(void)::Name;
        mlir::Diagnostic::operator<<(v18, v15);
        if (v17)
        {
          mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
          if (v17)
          {
            LODWORD(v15[0]) = 0;
            *(&v15[0] + 1) = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, v15, 1);
            v8 = v19 + 24 * v20;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v20;
          }
        }
      }

      v6 = (v21 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

const char *llvm::detail::getTypeNameImpl<mlir::LocationAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LocationAttr]";
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

uint64_t llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(a1, *a2);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

void llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

BOOL mlir::DialectBytecodeReader::readType<mlir::ShapedType>(uint64_t a1, uint64_t **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 64))(a1, &v14))
  {
    v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
    *a2 = v4;
    a2[1] = v5;
    if (v4)
    {
      v6 = 1;
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
        llvm::getTypeName<mlir::ShapedType>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ShapedType>();
        unk_27FC17350 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::ShapedType>(void)::Name;
        v16 = unk_27FC17350;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 4;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

void mlir::DialectBytecodeReader::readResourceHandle<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(uint64_t a1, uint64_t a2)
{
  v11[25] = *MEMORY[0x277D85DE8];
  (*(*a2 + 128))(&v7, a2);
  if (v9)
  {
    v4 = *(&v7 + 1);
    if (v4 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID())
    {
      *a1 = v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = 1;
    }

    else
    {
      v6[16] = 257;
      (*(*a2 + 16))(&v10, a2, v6);
      if (v10)
      {
        mlir::Diagnostic::operator<<<65ul>(v11, "provided resource handle differs from the expected resource type");
      }

      *a1 = 0;
      *(a1 + 24) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 16);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 16 * v2), 16 * a2 - 16 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    if (mlir::DenseIntElementsAttr::classof(v14))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
    if (v5)
    {
      v6 = 1;
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
        llvm::getTypeName<mlir::DenseIntElementsAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DenseIntElementsAttr>();
        *algn_27FC17BF8 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::DenseIntElementsAttr>(void)::Name;
        v16 = *algn_27FC17BF8;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::DenseElementsAttr>(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ((*(*a1 + 48))(a1, &v15))
  {
    v4 = v15;
    v5 = *(*v15 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v14[16] = 257;
      (*(*a1 + 16))(&v19, a1, v14);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1D858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D858))
      {
        _MergedGlobals_6 = llvm::detail::getTypeNameImpl<mlir::DenseElementsAttr>();
        unk_27FC1D850 = v13;
        __cxa_guard_release(&qword_27FC1D858);
      }

      if (v19)
      {
        v18 = 261;
        v16 = _MergedGlobals_6;
        v17 = unk_27FC1D850;
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
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

const char *llvm::detail::getTypeNameImpl<mlir::DenseIntElementsAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DenseIntElementsAttr]";
  v6 = 88;
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

const char *llvm::detail::getTypeNameImpl<mlir::DenseElementsAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DenseElementsAttr]";
  v6 = 85;
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

void llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t mlir::DialectBytecodeReader::readList<mlir::Type,llvm::LogicalResult mlir::DialectBytecodeReader::readTypes<mlir::Type>(llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type&)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if ((*(*a1 + 72))(a1, &v9))
  {
    v5 = v9;
    if (v9 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v9, 8);
      v5 = v9;
    }

    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    while (1)
    {
      v8 = 0;
      if (((*(**a3 + 64))(*a3, &v8) & 1) == 0)
      {
        break;
      }

      llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(a2, &v8);
      if (++v6 >= v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a1, *a2);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = v3 + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::MemRefLayoutAttrInterface>(uint64_t a1, uint64_t **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v14);
    *a2 = v4;
    a2[1] = v5;
    if (v4)
    {
      v6 = 1;
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
        llvm::getTypeName<mlir::MemRefLayoutAttrInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::MemRefLayoutAttrInterface>();
        *algn_27FC17768 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::MemRefLayoutAttrInterface>(void)::Name;
        v16 = *algn_27FC17768;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::MemRefLayoutAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::MemRefLayoutAttrInterface,mlir::Attribute,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

uint64_t mlir::DialectBytecodeWriter::writeList<llvm::ArrayRef<mlir::FlatSymbolRefAttr> &,void mlir::DialectBytecodeWriter::writeAttributes<mlir::FlatSymbolRefAttr>(llvm::ArrayRef<mlir::FlatSymbolRefAttr>)::{lambda(mlir::FlatSymbolRefAttr)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*a1 + 48))(a1, *(a2 + 8));
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *a2;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = (*(**a3 + 16))(*a3, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlir::DialectBytecodeWriter::writeList<llvm::ArrayRef<mlir::Type> &,void mlir::DialectBytecodeWriter::writeTypes<mlir::Type>(llvm::ArrayRef<mlir::Type>)::{lambda(mlir::Type)#1}>(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*a1 + 48))(a1, *(a2 + 8));
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *a2;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      result = (*(**a3 + 32))(*a3, v9);
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t mlir::MemRefType::verify(void (*a1)(uint64_t **__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = a5;
  if (!mlir::Type::isIntOrFloat(&v30))
  {
    v16 = *a5;
    v17 = *(v16 + 136);
    v18 = v17 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    v19 = v18 || v17 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v20 = v19 || v17 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (!v20 && v17 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v29 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v16 + 8, v29))
      {
        a1(&v30, a2);
        if (v30)
        {
          mlir::Diagnostic::operator<<<28ul>(v31, "invalid memref element type");
        }

LABEL_32:
        v26 = v31[192] ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        goto LABEL_33;
      }
    }
  }

  if (a4)
  {
    v22 = 8 * a4;
    v23 = a3;
    while (*v23 < 0x8000000000000001)
    {
      ++v23;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_20;
      }
    }

    a1(&v30, a2);
    if (v30)
    {
      mlir::Diagnostic::operator<<<20ul>(v31, "invalid memref size");
    }

    goto LABEL_32;
  }

LABEL_20:
  if ((*(a7 + 16))(a7, a6, a3, a4, a1, a2))
  {
    if (a8)
    {
      v24 = *(*a8 + 136);
      if (v24 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v25 = v24 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
        if (!v25 && *(**a8 + 24) == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
        {
          a1(&v30, a2);
          if (v30)
          {
            mlir::Diagnostic::operator<<<35ul>(v31, "unsupported memory space Attribute");
          }

          goto LABEL_32;
        }
      }
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

LABEL_33:
  v27 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::StringAttr,llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a4;
  v6 = a5;
  mlir::OpaqueType::verify(a1, a2, a4);
}

void mlir::OpaqueType::verify(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  mlir::Dialect::isValidNamespace();
}

uint64_t mlir::RankedTensorType::get(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  v5 = a4;
  v6 = a3;
  return mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**a3 + 32), &v7, &v6, &v5);
}

uint64_t mlir::detail::StorageUserBase<mlir::RankedTensorType,mlir::TensorType,mlir::detail::RankedTensorTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait,mlir::ValueSemantics>::getChecked<llvm::ArrayRef<long long>,mlir::Type,mlir::Attribute>(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  *&v11 = a4;
  *(&v11 + 1) = a5;
  v9 = a7;
  v10 = a6;
  if (mlir::RankedTensorType::verify(a1, a2, a4, a5, a6, a7))
  {
    return mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(a3, &v11, &v10, &v9);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RankedTensorType::verify(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v11 = 8 * a4;
    v12 = a3;
    while (*v12 < 0x8000000000000001)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    a1(&v23, a2);
    if (v23)
    {
      mlir::Diagnostic::operator<<<30ul>(v24, "invalid tensor dimension size");
    }

    goto LABEL_17;
  }

LABEL_5:
  if (a6)
  {
    v14 = llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(a6);
    if (v14)
    {
      if (((*v13)(v13, v14, a3, a4, a5, a1, a2) & 1) == 0)
      {
        v15 = 0;
        goto LABEL_19;
      }
    }
  }

  if (!mlir::TensorType::isValidElementType(a5))
  {
    a1(&v23, a2);
    if (v23)
    {
      mlir::Diagnostic::operator<<<30ul>(v24, "invalid tensor element type: ");
      if (v23)
      {
        v21 = 4;
        v22 = a5;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
        v17 = v25 + 24 * v26;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v26;
      }
    }

LABEL_17:
    v15 = v27 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
    goto LABEL_19;
  }

  v15 = 1;
LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t mlir::UnrankedMemRefType::get(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v4 = mlir::detail::skipDefaultMemorySpace(a2);
  return mlir::detail::TypeUniquer::get<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(*(**a1 + 32), &v5, &v4);
}

uint64_t mlir::detail::skipDefaultMemorySpace(uint64_t a1)
{
  v1 = a1;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v3 = *(a1 + 24);
    if (v3 >= 0x41)
    {
      operator new[]();
    }

    if (!*(a1 + 16))
    {
      return 0;
    }
  }

  return v1;
}

uint64_t mlir::UnrankedMemRefType::getChecked(void (*a1)(uint64_t **__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = mlir::detail::skipDefaultMemorySpace(a4);
  v8 = *(**a3 + 32);

  return mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<mlir::Type,mlir::Attribute>(a1, a2, v8, a3, v7);
}

uint64_t mlir::detail::StorageUserBase<mlir::UnrankedMemRefType,mlir::BaseMemRefType,mlir::detail::UnrankedMemRefTypeStorage,mlir::detail::TypeUniquer,mlir::ShapedType::Trait>::getChecked<mlir::Type,mlir::Attribute>(void (*a1)(uint64_t **__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v7 = a5;
  v8 = a4;
  if (mlir::UnrankedMemRefType::verify(a1, a2, a4, a5))
  {
    return mlir::detail::TypeUniquer::get<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(a3, &v8, &v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::UnrankedMemRefType::verify(void (*a1)(uint64_t **__return_ptr, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = a3;
  if (!mlir::Type::isIntOrFloat(&v20))
  {
    v8 = *a3;
    v9 = *(v8 + 136);
    v10 = v9 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    v11 = v10 || v9 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v12 = v11 || v9 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (!v12 && v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v19 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v8 + 8, v19))
      {
        a1(&v20, a2);
        if (v20)
        {
          mlir::Diagnostic::operator<<<28ul>(v21, "invalid memref element type");
        }

LABEL_30:
        v16 = v21[192] ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
        goto LABEL_24;
      }
    }
  }

  if (a4)
  {
    v14 = *(*a4 + 136);
    if (v14 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v15 = v14 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id;
      if (!v15 && *(**a4 + 24) == &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
      {
        a1(&v20, a2);
        if (v20)
        {
          mlir::Diagnostic::operator<<<35ul>(v21, "unsupported memory space Attribute");
        }

        goto LABEL_30;
      }
    }
  }

  v16 = 1;
LABEL_24:
  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

uint64_t mlir::VectorType::get(uint64_t a1, size_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v17[5] = *MEMORY[0x277D85DE8];
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v12 = a5;
  v13 = a3;
  v11 = a4;
  v15 = v17;
  v16 = xmmword_25D0A0550;
  if (!a5)
  {
    if (a2)
    {
      llvm::SmallVectorImpl<BOOL>::append(&v15, a2, 0);
      v7 = v15;
      v6 = v16;
    }

    else
    {
      v6 = 0;
      v7 = v17;
    }

    v11 = v7;
    v12 = v6;
  }

  v8 = mlir::detail::TypeUniquer::get<mlir::VectorType,llvm::ArrayRef<long long> &,mlir::Type &,llvm::ArrayRef<BOOL> &>(*(**a3 + 32), &v14, &v13, &v11);
  if (v15 != v17)
  {
    free(v15);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}