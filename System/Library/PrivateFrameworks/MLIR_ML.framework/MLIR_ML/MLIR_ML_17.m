void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrES2_NSF_6detail30TorchLocationExtrasAttrStorageENSB_16AttributeUniquerEJNSE_20KeywordPrintableAttr5TraitENSE_20ODIXSerializableAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrES2_NSE_6detail30TorchLocationExtrasAttrStorageENSA_16AttributeUniquerEJNSD_20KeywordPrintableAttr5TraitENSD_20ODIXSerializableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
  *(a2 + 144) = "coreml.torch_location_extras";
  *(a2 + 152) = 28;
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

void mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>::parseAsKeyword;
  v2[1] = mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>::printAsKeyword;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::ODIE::Compiler::detail::ODIXSerializableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>::getAsOdixSerializable;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>::parseAsKeyword(uint64_t *a1, mlir::AsmParser *a2)
{
  if (((*(*a2 + 408))(a2, "torch_location_extras", 21) & 1) == 0)
  {
    return 0;
  }

  v4 = mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::parse(a2);
  *a1 = v4;
  return (v4 != 0) | 0x100u;
}

void *mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>::printAsKeyword(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v7 = a2;
  v4 = (*(*a3 + 16))(a3);
  v5 = v4[4];
  if (v4[3] - v5 > 0x14uLL)
  {
    qmemcpy(v5, "torch_location_extras", 21);
    v4[4] += 21;
  }

  else
  {
    llvm::raw_ostream::write(v4, "torch_location_extras", 0x15uLL);
  }

  return mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr::print(&v7, a3);
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::KeywordPrintableAttr]";
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

const char *llvm::getTypeName<mlir::ODIE::Compiler::ODIXSerializableAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::ODIXSerializableAttr]";
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

BOOL mlir::detail::storage_user_base_impl::hasTrait<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>(uint64_t a1)
{
  {
    v5 = a1;
    mlir::detail::storage_user_base_impl::hasTrait<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>();
    a1 = v5;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v4 = v1;
    v6 = a1;
    mlir::detail::storage_user_base_impl::hasTrait<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>();
    v1 = v4;
    a1 = v6;
  }

  return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<Empty>]";
  v6 = 106;
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

const char *llvm::getTypeName<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<Empty>]";
  v6 = 106;
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

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrES2_NSF_6detail30TorchLocationExtrasAttrStorageENSB_16AttributeUniquerEJNSE_20KeywordPrintableAttr5TraitENSE_20ODIXSerializableAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML23TorchLocationExtrasAttrES2_NSE_6detail30TorchLocationExtrasAttrStorageENSA_16AttributeUniquerEJNSD_20KeywordPrintableAttr5TraitENSD_20ODIXSerializableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
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
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML21ODIELocationFrameAttrES2_NSF_6detail28ODIELocationFrameAttrStorageENSB_16AttributeUniquerEJNSE_20KeywordPrintableAttr5TraitENSE_20ODIXSerializableAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML21ODIELocationFrameAttrES2_NSE_6detail28ODIELocationFrameAttrStorageENSA_16AttributeUniquerEJNSD_20KeywordPrintableAttr5TraitENSD_20ODIXSerializableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  *(a2 + 144) = "coreml.odie_location_frame_attr";
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

void mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>::parseAsKeyword;
  v2[1] = mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>::printAsKeyword;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::ODIE::Compiler::detail::ODIXSerializableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>::getAsOdixSerializable;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>::parseAsKeyword(uint64_t *a1, mlir::AsmParser *a2)
{
  if (((*(*a2 + 408))(a2, "odie_location_frame_attr", 24) & 1) == 0)
  {
    return 0;
  }

  v4 = mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::parse(a2);
  *a1 = v4;
  return (v4 != 0) | 0x100u;
}

void *mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>::printAsKeyword(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v7 = a2;
  v4 = (*(*a3 + 16))(a3);
  v5 = v4[4];
  if (v4[3] - v5 > 0x17uLL)
  {
    qmemcpy(v5, "odie_location_frame_attr", 24);
    v4[4] += 24;
  }

  else
  {
    llvm::raw_ostream::write(v4, "odie_location_frame_attr", 0x18uLL);
  }

  return mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr::print(&v7, a3);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML21ODIELocationFrameAttrES2_NSF_6detail28ODIELocationFrameAttrStorageENSB_16AttributeUniquerEJNSE_20KeywordPrintableAttr5TraitENSE_20ODIXSerializableAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML21ODIELocationFrameAttrES2_NSE_6detail28ODIELocationFrameAttrStorageENSA_16AttributeUniquerEJNSD_20KeywordPrintableAttr5TraitENSD_20ODIXSerializableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr>(uint64_t a1, uint64_t **a2)
{
  v22[15] = *MEMORY[0x277D85DE8];
  v13 = a1;
  v2 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v3 = *a2;
  if (!*(a1 + 8))
  {
    v4 = 0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = *v3++;
  v4 = v5;
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *v3;
LABEL_6:
  Context = mlir::Attribute::getContext(&v13);
  v18 = v11;
  v19 = v12;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id;
  v14[1] = Context;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS3_20ODIXSerializableAttrEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v20[1] = v14;
  v16 = v4;
  v17 = v6;
  memset(v22, 0, 112);
  v22[14] = 0xFF51AFD7ED558CCDLL;
  v21 = ((v4 >> 4) ^ (v4 >> 9));
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(&v21, 0, v22, &v22[7], &v17, &v18);
  v15 = &v16;
  v21 = &v16;
  v22[0] = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ODIELocationFrameAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v21);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ExternAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::ExternAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ExternAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10ExternAttrES2_NSF_6detail17ExternAttrStorageENSB_16AttributeUniquerEJNSE_20KeywordPrintableAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10ExternAttrES2_NSE_6detail17ExternAttrStorageENSA_16AttributeUniquerEJNSD_20KeywordPrintableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  *(a2 + 144) = "coreml.extern";
  *(a2 + 152) = 13;
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

void mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::ExternAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ExternAttr>::parseAsKeyword;
  v2[1] = mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ExternAttr>::printAsKeyword;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::ODIE::Compiler::CoreML::TorchLocationExtrasAttr>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ExternAttr>::parseAsKeyword(uint64_t *a1, mlir::AsmParser *a2)
{
  if (((*(*a2 + 408))(a2, "extern", 6) & 1) == 0)
  {
    return 0;
  }

  v4 = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(a2);
  *a1 = v4;
  return (v4 != 0) | 0x100u;
}

void *mlir::ODIE::Compiler::detail::KeywordPrintableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ExternAttr>::printAsKeyword(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v7 = a2;
  v4 = (*(*a3 + 16))(a3);
  v5 = v4[4];
  if ((v4[3] - v5) > 5)
  {
    *(v5 + 4) = 28274;
    *v5 = 1702131813;
    v4[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v4, "extern", 6uLL);
  }

  return mlir::ODIE::Compiler::CoreML::ExternAttr::print(&v7, a3);
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ExternAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::storage_user_base_impl::hasTrait<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>();
  return mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10ExternAttrES2_NSE_6detail17ExternAttrStorageENSA_16AttributeUniquerEJNSD_20KeywordPrintableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  Context = mlir::Attribute::getContext(&v10);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id;
  v11[1] = Context;
  v15[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v15[1] = v11;
  v14[0] = v2;
  v14[1] = v3;
  v6 = llvm::hash_value(v2, v3);
  v7 = HIDWORD(v6) ^ 0xFF51AFD7ED558CCDLL;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v6 + 8) ^ v7);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::VerifiableTensorEncodingInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>::verifyEncoding;
  {
    v10 = v4;
    mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18TensorEncodingAttrES2_NSF_6detail25TensorEncodingAttrStorageENSB_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18TensorEncodingAttrES2_NSE_6detail25TensorEncodingAttrStorageENSA_16AttributeUniquerEJNS1_24VerifiableTensorEncoding5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  *(a2 + 144) = "coreml.tensor_encoding";
  *(a2 + 152) = 22;
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

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,mlir::detail::AttributeUniquer,mlir::VerifiableTensorEncoding::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke();
  return mlir::detail::TypeIDResolver<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::VerifiableTensorEncoding::Trait<mlir::TypeID mlir::TypeID::get<mlir::VerifiableTensorEncoding::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::VerifiableTensorEncoding::Trait<Empty>]";
  v6 = 94;
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

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr>(uint64_t a1)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v10 = *(a1 + 8);
  mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<int>>,void>::replace(&v10, &v20);
  Context = mlir::Attribute::getContext(&v11);
  v17 = v19;
  v18 = 0xC00000000;
  v2 = v21;
  if (v21)
  {
    if (v21 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v19, v20, 4 * v21);
    LODWORD(v18) = v2;
    v3 = v17;
  }

  else
  {
    v2 = 0;
    v3 = v19;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id;
  v12[1] = Context;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v16[1] = v12;
  v15[0] = v3;
  v15[1] = v2;
  v5 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v3, v3 + 4 * v2);
  v6 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
  v7 = 0x9DDFEA08EB382D69 * ((8 * v5 + 8) ^ v6);
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  if (v17 != v19)
  {
    free(v17);
  }

  if (v20 != v22)
  {
    free(v20);
  }

  return ParametricStorageTypeImpl;
}

void mlir::AttrTypeSubElementHandler<std::tuple<llvm::ArrayRef<int>>,void>::replace(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x277D85DE8];
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<int>,void>::replace(*a1, *(a1 + 8), &__src);
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  v3 = v8;
  v4 = __src;
  if (v8)
  {
    v5 = &__src == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (__src == v10)
    {
      if (v8 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy((a2 + 16), __src, 4 * v8);
      v4 = __src;
      *(a2 + 8) = v3;
    }

    else
    {
      *a2 = __src;
      v6 = v9;
      *(a2 + 8) = v3;
      *(a2 + 12) = v6;
      __src = v10;
      v9 = 0;
      v4 = v10;
    }

    v8 = 0;
  }

  if (v4 != v10)
  {
    free(v4);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<int>,void>::replace(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  __src = v13;
  v12 = 0xC00000000;
  if (a2)
  {
    v3 = 4 * a2;
    do
    {
      while (v12 < HIDWORD(v12))
      {
        v4 = *a1++;
        *(__src + v12) = v4;
        LODWORD(v12) = v12 + 1;
        v3 -= 4;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v5 = a1;
      v6 = a3;
      llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(&__src, a1);
      a3 = v6;
      a1 = v5 + 1;
      v3 -= 4;
    }

    while (v3);
LABEL_7:
    v7 = v12;
    v8 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0xC00000000;
    if (v7 && &__src != a3)
    {
      if (v8 == v13)
      {
        if (v7 >= 0xD)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = a3;
        memcpy(*a3, v8, 4 * v7);
        v8 = __src;
        *(v10 + 8) = v7;
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
    *(a3 + 8) = 0xC00000000;
  }
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>,mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSF_6detail20ParamDeclAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSE_6detail20ParamDeclAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  *(a2 + 144) = "coreml.param.decl";
  *(a2 + 152) = 17;
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>,mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>::getType;
  {
    v4 = v2;
    mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::detail::ParamAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::detail::ParamAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
  v3 = v2;
  *v2 = 0;
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
    mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
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
    *v3 = v7[1];
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_13:
  *v3 = 0;
  {
    goto LABEL_14;
  }

LABEL_18:
  v15 = v3;
  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::detail::ParamAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::ParamAttrInterface]";
  v6 = 90;
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

BOOL mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>(uint64_t a1)
{
  {
    v5 = a1;
    mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>();
    a1 = v5;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v4 = v1;
    v6 = a1;
    mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>();
    v1 = v4;
    a1 = v6;
  }

  return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::ParamAttrInterface::Trait<Empty>]";
  v6 = 104;
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

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSF_6detail20ParamDeclAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v6);
  mlir::AttrTypeImmediateSubElementWalker::walk(v10, v7);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v10, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamDeclAttrES2_NSE_6detail20ParamDeclAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(void *a1, uint64_t **a2, uint64_t **a3)
{
  v20 = a1;
  v3 = a1[2];
  v4 = *a2;
  if (a1[1])
  {
    v6 = *v4++;
    v5 = v6;
    v7 = a1[3];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v5 = 0;
  v7 = a1[3];
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = **a3;
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = *v4;
LABEL_8:
  Context = mlir::Attribute::getContext(&v20);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id;
  v21[1] = Context;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJNS1_10StringAttrENS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v25[1] = v21;
  v24[0] = v5;
  v24[1] = v8;
  v24[2] = v9;
  v12 = (v8 >> 4) ^ (v8 >> 9);
  v13 = 0xB492B66FBE98F273 * ((v5 >> 4) ^ (v5 >> 9));
  v14 = 0x9AE16A3B2F90404FLL * ((v9 >> 4) ^ (v9 >> 9));
  v15 = __ROR8__(v13 - v12, 43);
  v16 = __ROR8__(v14 ^ 0xFF51AFD7ED558CCDLL, 30);
  v17 = v13 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v14 + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * ((v15 - 0x3C5A37A36834CED9 * v12 + v16) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v15 - 0x3C5A37A36834CED9 * v12 + v16) ^ v17)));
  v22[0] = v24;
  v22[1] = v25;
  v23 = v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18ParamDeclArrayAttrES2_NSF_6detail25ParamDeclArrayAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML18ParamDeclArrayAttrES2_NSE_6detail25ParamDeclArrayAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
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
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = a3;
  v16[1] = v5;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(a3, &a3[2 * v5]);
  v9 = HIDWORD(v8) ^ 0xFF51AFD7ED558CCDLL;
  v10 = 0x9DDFEA08EB382D69 * ((8 * v8 + 8) ^ v9);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ParamRefAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamRefAttr>::getType;
  {
    v10 = v4;
    mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
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

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamRefAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSF_6detail19ParamRefAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSE_6detail19ParamRefAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
  *(a2 + 144) = "coreml.param.ref";
  *(a2 + 152) = 16;
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

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamRefAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>();
  return mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSF_6detail19ParamRefAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefAttrES2_NSE_6detail19ParamRefAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamRefAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamRefAttr>(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v12 = a1;
  v3 = *(a1 + 16);
  if (!*(a1 + 8))
  {
    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = **a2;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = **a3;
LABEL_6:
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id;
  v13[1] = Context;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v17[1] = v13;
  v16[0] = v4;
  v16[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v4 >> 4) ^ (v4 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::ODIE::Compiler::CoreML::ParamBindAttr>,mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::ODIE::Compiler::CoreML::ParamBindAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSF_6detail20ParamBindAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSE_6detail20ParamBindAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id;
  *(a2 + 144) = "coreml.param.bind";
  *(a2 + 152) = 17;
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::ODIE::Compiler::CoreML::ParamBindAttr>,mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::ODIE::Compiler::CoreML::ParamBindAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamBindAttr>::getType;
  {
    v4 = v2;
    mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::detail::ParamAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(a1);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSF_6detail20ParamBindAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v13, v6);
  result = mlir::AttrTypeImmediateSubElementWalker::walk(v13, v7);
  if (v9)
  {
    v11 = 16 * v9;
    do
    {
      v12 = *v8;
      v8 += 2;
      result = mlir::AttrTypeImmediateSubElementWalker::walk(v13, v12);
      v11 -= 16;
    }

    while (v11);
  }

  return result;
}

void *_ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13ParamBindAttrES2_NSE_6detail20ParamBindAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a3;
  *(&v8 + 1) = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a2, &v8, &v7);
}

void *mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v14 = *(a1 + 8);
  v15 = v3;
  v4 = *a2;
  v12 = *a3;
  v13 = v4;
  v16 = a1;
  v17[0] = &v13;
  v17[1] = &v12;
  mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr>>,void>::replace(std::tuple<mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr>> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(mlir::Attribute const&,mlir::Type const&,llvm::ArrayRef<mlir::TypedAttr> const&)#1}::operator()(v17, &v14, &v14 + 1, &v15, &v23);
  mlir::Attribute::getContext(&v16);
  v5 = v23;
  v6 = v24;
  v18 = v23;
  v19 = v24;
  v20 = v22;
  v21 = 0x300000000;
  v7 = v26;
  if (v26)
  {
    if (v26 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v22, v25, 16 * v26);
    LODWORD(v21) = v7;
    v5 = v18;
    v6 = v19;
    v8 = v20;
  }

  else
  {
    v7 = 0;
    v8 = v22;
  }

  v17[0] = v5;
  Context = mlir::Attribute::getContext(v17);
  v10 = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(Context, v17[0], v6, v8, v7);
  if (v20 != v22)
  {
    free(v20);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return v10;
}

void mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr>>,void>::replace(std::tuple<mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr>> const&,mlir::AttrTypeSubElementReplacements<mlir::Attribute> &,mlir::AttrTypeSubElementReplacements<mlir::Type> &)::{lambda(mlir::Attribute const&,mlir::Type const&,llvm::ArrayRef<mlir::TypedAttr> const&)#1}::operator()(int64x2_t **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (!*a2)
  {
    v9 = 0;
    v14 = *a3;
    v11 = a1[1];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v8 = *v7;
  *v7 = vaddq_s64(*v7, xmmword_25736B7B0);
  v9 = *v8.i64[0];
  v10 = *a3;
  v11 = a1[1];
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = *v11;
  *v11 = vaddq_s64(*v11, xmmword_25736B7B0);
  v13 = *v12.i64[0];
LABEL_6:
  mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::TypedAttr>,void>::replace(*a4, a4[1], v7, &__src);
  *(a5 + 16) = a5 + 32;
  *a5 = v9;
  *(a5 + 8) = v13;
  *(a5 + 24) = 0x300000000;
  v15 = __src;
  if ((a5 + 16) != &__src)
  {
    v16 = v19;
    if (v19)
    {
      if (__src == v21)
      {
        if (v19 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*(a5 + 16), __src, 16 * v19);
        v15 = __src;
        *(a5 + 24) = v16;
      }

      else
      {
        *(a5 + 16) = __src;
        v17 = v20;
        *(a5 + 24) = v16;
        *(a5 + 28) = v17;
        __src = v21;
        v20 = 0;
        v15 = v21;
      }

      v19 = 0;
    }
  }

  if (v15 != v21)
  {
    free(v15);
  }
}

void mlir::AttrTypeSubElementHandler<llvm::ArrayRef<mlir::TypedAttr>,void>::replace(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v15[6] = *MEMORY[0x277D85DE8];
  __src = v15;
  v14 = 0x300000000;
  if (a2)
  {
    v6 = a1;
    v7 = a1 + 16 * a2;
    do
    {
      while (1)
      {
        *&v12 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(*v6, *(v6 + 8), a3);
        *(&v12 + 1) = v8;
        if (v14 >= HIDWORD(v14))
        {
          break;
        }

        *(__src + v14) = v12;
        LODWORD(v14) = v14 + 1;
        v6 += 16;
        if (v6 == v7)
        {
          goto LABEL_7;
        }
      }

      llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(&__src, &v12);
      v6 += 16;
    }

    while (v6 != v7);
LABEL_7:
    v9 = v14;
    v10 = __src;
    *a4 = a4 + 16;
    *(a4 + 8) = 0x300000000;
    if (v9 && &__src != a4)
    {
      if (v10 == v15)
      {
        if (v9 >= 4)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a4, v10, 16 * v9);
        v10 = __src;
        *(a4 + 8) = v9;
      }

      else
      {
        *a4 = v10;
        v11 = HIDWORD(v14);
        *(a4 + 8) = v9;
        *(a4 + 12) = v11;
        __src = v15;
        HIDWORD(v14) = 0;
        v10 = v15;
      }

      LODWORD(v14) = 0;
    }

    if (v10 != v15)
    {
      free(v10);
    }
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x300000000;
  }
}

void *mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(void *result, uint64_t a2, int64x2_t *a3)
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
        v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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
        mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
        result = v15;
        v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
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

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>,mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSF_6detail24ParamConstantAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSE_6detail24ParamConstantAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  *(a2 + 144) = "coreml.param.constant";
  *(a2 + 152) = 21;
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>,mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>::getType;
  {
    v4 = v2;
    mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::ODIE::Compiler::detail::ParamAttrInterfaceInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(a1);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSF_6detail24ParamConstantAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSE_6detail24ParamConstantAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v12 = a1;
  v3 = *(a1 + 16);
  if (!*(a1 + 8))
  {
    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = **a2;
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = **a3;
LABEL_6:
  mlir::Attribute::getContext(&v12);
  v13 = v4;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  v14[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
  v18[1] = v14;
  v17[0] = v13;
  v17[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ (v13 >> 4) ^ (v13 >> 9));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v15);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10IntentAttrES2_NSE_6detail17IntentAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = HIDWORD(v2) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 + 8) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSF_6detail21TargetSpecAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 56);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSE_6detail21TargetSpecAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(uint64_t a1, uint64_t **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v9 = *(a1 + 24);
  v10 = *(a1 + 8);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (*(a1 + 56))
  {
    v4 = **a2;
  }

  else
  {
    v4 = 0;
  }

  Context = mlir::Attribute::getContext(&v11);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id;
  v12[1] = Context;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_SF_NS1_14DictionaryAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v18[1] = v12;
  v15 = v9;
  v14 = v10;
  v16[0] = v2;
  v16[1] = v3;
  v17 = v4;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(v19, 0, v19, v20, &v14, &v15, v16, &v17);
  v13 = &v14;
  *&v19[0] = &v14;
  *(&v19[0] + 1) = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::ODIE::Compiler::detail::ODIXSerializableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ApproximateAttr>::getAsOdixSerializable;
  {
    v10 = v4;
    mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ApproximateAttr>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(&v14, mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr,void>::resolveTypeID(void)::id, v5);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v14);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ApproximateAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v13;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ApproximateAttrES2_NSF_6detail22ApproximateAttrStorageENSB_16AttributeUniquerEJNSE_20ODIXSerializableAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v12;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ApproximateAttrES2_NSE_6detail22ApproximateAttrStorageENSA_16AttributeUniquerEJNSD_20ODIXSerializableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v11;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  *(a2 + 144) = "coreml.approximate";
  *(a2 + 152) = 18;
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

uint64_t mlir::ODIE::Compiler::detail::ODIXSerializableAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ApproximateAttr>::getAsOdixSerializable(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  Context = mlir::Attribute::getContext(&v8);
  v4 = *(v8 + 8);
  if (v4 > 2)
  {
    v5 = 0;
    v6 = "";
  }

  else
  {
    v5 = qword_25736D360[v4];
    v6 = (&off_279839D08)[v4];
  }

  v10 = 261;
  v9[0] = v6;
  v9[1] = v5;
  return mlir::StringAttr::get(Context, v9, v3);
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ApproximateAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::detail::AttributeUniquer,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  {
    return mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

  mlir::detail::storage_user_base_impl::hasTrait<mlir::ODIE::Compiler::KeywordPrintableAttr::Trait,mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>();
  return mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ODIXSerializableAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ApproximateAttrES2_NSE_6detail22ApproximateAttrStorageENSA_16AttributeUniquerEJNSD_20ODIXSerializableAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::OpaqueType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::OpaqueType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10OpaqueTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10OpaqueTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id;
  v24 = "coreml.opaque";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10OpaqueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TypeType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TypeType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML8TypeTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML8TypeTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
  v24 = "coreml.type";
  v25 = 11;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::SymbolType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10SymbolTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10SymbolTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
  v24 = "coreml.symbol";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10SymbolTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::ArrayType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSF_6detail16ArrayTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSE_6detail16ArrayTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
  v21 = "coreml.array";
  v22 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, &v10);
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

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::ParamRefType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSF_6detail19ParamRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSE_6detail19ParamRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
  v21 = "coreml.param_ref";
  v22 = 16;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, &v10);
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

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::SymbolRefType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSF_6detail20SymbolRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSE_6detail20SymbolRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v21 = "coreml.symbol_ref";
  v22 = 17;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, &v10);
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

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::HandleType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::HandleType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSF_6detail17HandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSE_6detail17HandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
  v21 = "coreml.handle";
  v22 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, &v10);
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

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TokenType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TokenType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9TokenTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9TokenTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
  v24 = "coreml.token";
  v25 = 12;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML9TokenTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::AsyncValueType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSF_6detail21AsyncValueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSE_6detail21AsyncValueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id;
  v21 = "coreml.async.value";
  v22 = 18;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, &v10);
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), void *a2)
{
  a2[10] += 8;
  Slow = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = Slow + 1;
  if (*a2)
  {
    v4 = v3 > a2[1];
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 8, 8, 3);
    *Slow = 0;
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v3;
  *Slow = 0;
  v5 = *a1;
  v6 = **a1;
  if (v6)
  {
LABEL_6:
    v6(v5[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10OpaqueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10SymbolTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSF_6detail16ArrayTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSE_6detail16ArrayTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5.i64[0] = a3;
  v5.i64[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ArrayType>(a2, &v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::ArrayType>(void *a1, int64x2_t *a2)
{
  v18 = a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v17 = *a2;
  v6 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v2, v3, &v17);
  v8 = v7;
  v9 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v4, v5, &v17);
  v11 = v10;
  Context = mlir::Type::getContext(&v18);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v19[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
  v19[1] = &Context;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJNS1_9TypedAttrESF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v24[1] = v19;
  v23[0] = v6;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v11;
  v13 = (v9 >> 4) ^ (v9 >> 9);
  v14 = __ROR8__(v13 + 16, 16);
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v6 >> 4) ^ (v6 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 32) >> 15) ^ (-348639895 * (v14 ^ (v15 >> 47) ^ v15)))) ^ v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSF_6detail19ParamRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSE_6detail19ParamRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v11.i64[0] = a3;
  v11.i64[1] = a4;
  v6 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v4, v5, &v11);
  v8 = v7;
  mlir::Type::getContext(&v12);
  v13 = v6;
  v14 = v8;
  Context = mlir::Attribute::getContext(&v13);
  return mlir::ODIE::Compiler::CoreML::ParamRefType::get(Context, v13, v14);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSF_6detail20SymbolRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSE_6detail20SymbolRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v12.i64[0] = a3;
  v12.i64[1] = a4;
  v6 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v4, v5, &v12);
  v8 = v7;
  Context = mlir::Type::getContext(&v13);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v14[1] = &Context;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v19[1] = v14;
  v18[0] = v6;
  v18[1] = v8;
  v10 = 0x9DDFEA08EB382D69 * ((8 * ((v6 >> 4) ^ (v6 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v17 = v18;
  v16[0] = v18;
  v16[1] = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v10 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSF_6detail17HandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSE_6detail17HandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::HandleType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::HandleType>(uint64_t a1, uint64_t a2, uint64_t **a3)
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

  Context = mlir::Type::getContext(&v7);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
  v8[1] = &Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v8;
  v12 = v3;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v3 >> 4) ^ (v3 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML9TokenTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSF_6detail21AsyncValueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSE_6detail21AsyncValueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::AsyncValueType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::ODIE::Compiler::CoreML::AsyncValueType>(uint64_t a1, uint64_t a2, uint64_t **a3)
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

  Context = mlir::Type::getContext(&v7);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id;
  v8[1] = &Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v13[1] = v8;
  v12 = v3;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v3 >> 4) ^ (v3 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void *mlir::ODIE::Compiler::CoreML::printSingleBinding(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 136);
  if (a2 && v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v4 = *(**(a2 + 8) + 136);
    v5 = *a1;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v7 = *(v5 + 48);

      return v7();
    }

    else
    {
      (*(v5 + 40))();
      v12 = (*(*a1 + 16))(a1);
      v13 = v12[4];
      if ((v12[3] - v13) > 2)
      {
        *(v13 + 2) = 32;
        *v13 = 14880;
        v12[4] += 3;
      }

      else
      {
        llvm::raw_ostream::write(v12, " : ", 3uLL);
      }

      v14 = *(a2 + 16);
      v15 = *(*a1 + 32);

      return v15(a1, v14);
    }
  }

  else if (a2 && v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {

    return mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a1, a2);
  }

  else
  {
    v9 = *(*a1 + 40);

    return v9();
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::parseSingleBinding(uint64_t a1, uint64_t a2)
{
  v54 = 0;
  v4 = (*(*a1 + 552))(a1, &v54);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    ParametricStorageTypeImpl = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v54);
    if (!ParametricStorageTypeImpl)
    {
      goto LABEL_44;
    }

    v11 = *ParametricStorageTypeImpl;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (!v14)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v46 = ParametricStorageTypeImpl;
      mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
      ParametricStorageTypeImpl = v46;
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (!v14)
      {
        goto LABEL_44;
      }
    }

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
  }

  else
  {
    v53 = 0;
    if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v53) & 1) == 0)
    {
      return 0;
    }

    v5 = v53;
    v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v53);
    if (v6)
    {
      v8 = *(a2 + 8);
      if (v8 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v9 = (*a2 + 16 * v8);
      *v9 = v6;
      v9[1] = v7;
      goto LABEL_46;
    }

    if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      if ((*(*a1 + 112))(a1))
      {
        v52 = 0;
        if ((*(*a1 + 536))(a1, &v52))
        {
          v21 = v52;
          v55 = v5;
          Context = mlir::Attribute::getContext(&v55);
          AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
          v56 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
          v57 = Context;
          v63 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
          v64 = &v56;
          v61 = v55;
          v62 = v21;
          v24 = (v21 >> 4) ^ (v21 >> 9);
          v25 = __ROR8__(v24 + 16, 16);
          v26 = 0x9DDFEA08EB382D69 * (v25 ^ (v55 >> 4) ^ (v55 >> 9) ^ 0xFF51AFD7ED558CCDLL);
          v58 = &v61;
          v59 = &v63;
          v60 = &v61;
          ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 32) >> 15) ^ (-348639895 * (v25 ^ (v26 >> 47) ^ v26)))) ^ v24, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v60, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v58);
          if (!ParametricStorageTypeImpl)
          {
            goto LABEL_44;
          }

          v27 = *ParametricStorageTypeImpl;
          {
            v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
            v13 = *(v27 + 8);
            v14 = *(v27 + 16);
            if (v14)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v51 = ParametricStorageTypeImpl;
            mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
            ParametricStorageTypeImpl = v51;
            v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
            v13 = *(v27 + 8);
            v14 = *(v27 + 16);
            if (v14)
            {
LABEL_23:
              v15 = v13;
              v28 = v14;
              do
              {
                v29 = v28 >> 1;
                v30 = &v15[2 * (v28 >> 1)];
                v32 = *v30;
                v31 = v30 + 2;
                v28 += ~(v28 >> 1);
                if (v32 < v12)
                {
                  v15 = v31;
                }

                else
                {
                  v28 = v29;
                }
              }

              while (v28);
              goto LABEL_15;
            }
          }

LABEL_52:
          v14 = 0;
          v15 = v13;
          goto LABEL_15;
        }
      }

      return 0;
    }

    v52 = 0;
    if (((*(*a1 + 576))(a1, &v52) & 1) == 0)
    {
      return 0;
    }

    v33 = v52;
    v55 = v5;
    v34 = mlir::Attribute::getContext(&v55);
    v35 = mlir::MLIRContext::getAttributeUniquer(v34);
    v56 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    v57 = v34;
    v63 = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_;
    v64 = &v56;
    v61 = v55;
    v62 = v33;
    v36 = (v33 >> 4) ^ (v33 >> 9);
    v37 = __ROR8__(v36 + 16, 16);
    v38 = 0x9DDFEA08EB382D69 * (v37 ^ (v55 >> 4) ^ (v55 >> 9) ^ 0xFF51AFD7ED558CCDLL);
    v58 = &v61;
    v59 = &v63;
    v60 = &v61;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v35, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) >> 32) >> 15) ^ (-348639895 * (v37 ^ (v38 >> 47) ^ v38)))) ^ v36, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v60, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v58);
    if (!ParametricStorageTypeImpl)
    {
      goto LABEL_44;
    }

    v39 = *ParametricStorageTypeImpl;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v39 + 8);
      v14 = *(v39 + 16);
      if (!v14)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v50 = ParametricStorageTypeImpl;
      mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
      ParametricStorageTypeImpl = v50;
      v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v13 = *(v39 + 8);
      v14 = *(v39 + 16);
      if (!v14)
      {
        goto LABEL_52;
      }
    }

    v15 = v13;
    v40 = v14;
    do
    {
      v41 = v40 >> 1;
      v42 = &v15[2 * (v40 >> 1)];
      v44 = *v42;
      v43 = v42 + 2;
      v40 += ~(v40 >> 1);
      if (v44 < v12)
      {
        v15 = v43;
      }

      else
      {
        v40 = v41;
      }
    }

    while (v40);
  }

LABEL_15:
  if (v15 != &v13[2 * v14] && *v15 == v12)
  {
    v47 = v15[1];
    v48 = *(a2 + 8);
    if (v48 < *(a2 + 12))
    {
      goto LABEL_45;
    }

LABEL_48:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_44:
  v47 = 0;
  v48 = *(a2 + 8);
  if (v48 >= *(a2 + 12))
  {
    goto LABEL_48;
  }

LABEL_45:
  v49 = (*a2 + 16 * v48);
  *v49 = ParametricStorageTypeImpl;
  v49[1] = v47;
LABEL_46:
  ++*(a2 + 8);
  return 1;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::TypedAttr const*>(_DWORD *a1, _DWORD *a2)
{
  v78[1] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v67 = 0;
  }

  else
  {
    v2 = (*a1 >> 4) ^ (*a1 >> 9);
    *&v74 = v2;
    if (a1 + 4 == a2)
    {
      v67 = 8;
    }

    else
    {
      v3 = (a1[4] >> 4) ^ (a1[4] >> 9);
      *(&v74 + 1) = v3;
      if (a1 + 8 == a2)
      {
        v67 = 16;
      }

      else
      {
        v4 = (a1[8] >> 4) ^ (a1[8] >> 9);
        *&v75 = v4;
        if (a1 + 12 == a2)
        {
          v67 = 24;
        }

        else
        {
          v5 = (a1[12] >> 4) ^ (a1[12] >> 9);
          *(&v75 + 1) = v5;
          if (a1 + 16 == a2)
          {
            v67 = 32;
          }

          else
          {
            v6 = (a1[16] >> 4) ^ (a1[16] >> 9);
            *&v76 = v6;
            if (a1 + 20 == a2)
            {
              v67 = 40;
            }

            else
            {
              v7 = (a1[20] >> 4) ^ (a1[20] >> 9);
              *(&v76 + 1) = v7;
              if (a1 + 24 == a2)
              {
                v67 = 48;
              }

              else
              {
                v8 = (a1[24] >> 4) ^ (a1[24] >> 9);
                *&v77 = v8;
                if (a1 + 28 == a2)
                {
                  v67 = 56;
                }

                else
                {
                  v9 = (a1[28] >> 4) ^ (a1[28] >> 9);
                  *(&v77 + 1) = v9;
                  v10 = a1 + 32;
                  if (a1 + 32 != a2)
                  {
                    v73 = &v75 + 8;
                    v11 = v6 + 0x4BF62CB950C3753ALL;
                    *(&v13 + 1) = v7 + v8 + v6 + 0x4BF62CB950C3753ALL;
                    *&v13 = 0x4BF62CB900000000;
                    v12 = v13 >> 44;
                    v14 = *(&v13 + 1) + v9;
                    *(&v13 + 1) = v8 + 0x61299596E4;
                    *&v13 = 0xBEB4006120000000;
                    v15 = v12 + v11;
                    v16 = v7 - 0x4B6D499041670D8DLL * (v13 >> 42) - 0x7323D61940A0DA1FLL;
                    v17 = v15 + __ROR8__(v16 + v4 + v11 + v9, 21);
                    v18 = v2 + 0x298DF016A9F64655;
                    v19 = v2 + 0x298DF016A9F64655 + v3 + v4;
                    v20 = v19 + v5;
                    *(&v13 + 1) = v19;
                    *&v13 = 0x298DF00000000000;
                    v21 = (v13 >> 44) + v18;
                    *(&v13 + 1) = v3 + 0x1EACB4B2AELL;
                    *&v13 = 0x8C2DD9BEA0000000;
                    v22 = (0xB492B66FBE98F273 * (v13 >> 37)) ^ 0xF7ACCA5326449396;
                    v23 = v21 + __ROR8__(v22 + v18 + v5 - 0xAE502812AB8D92, 21);
                    v24 = 0x544962662A7EE1A4;
                    v25 = 64;
                    while (1)
                    {
                      v32 = v10 + 4;
                      *&v74 = (*v10 >> 4) ^ (*v10 >> 9);
                      v33 = v10 + 4 == a2;
                      if (v10 + 4 == a2)
                      {
                        v35 = 0;
                        v36 = &v74 + 8;
                        v37 = 8;
                      }

                      else
                      {
                        *(&v74 + 1) = (v10[4] >> 4) ^ (v10[4] >> 9);
                        v32 = v10 + 8;
                        v33 = v10 + 8 == a2;
                        if (v10 + 8 == a2)
                        {
                          v35 = 8;
                          v36 = &v75;
                          v37 = 16;
                        }

                        else
                        {
                          *&v75 = (v10[8] >> 4) ^ (v10[8] >> 9);
                          v32 = v10 + 12;
                          v33 = v10 + 12 == a2;
                          if (v10 + 12 == a2)
                          {
                            v35 = 16;
                            v36 = v73;
                            v37 = 24;
                          }

                          else
                          {
                            *(&v75 + 1) = (v10[12] >> 4) ^ (v10[12] >> 9);
                            v32 = v10 + 16;
                            v33 = v10 + 16 == a2;
                            if (v10 + 16 == a2)
                            {
                              v35 = 24;
                              v36 = &v76;
                              v37 = 32;
                            }

                            else
                            {
                              *&v76 = (v10[16] >> 4) ^ (v10[16] >> 9);
                              v32 = v10 + 20;
                              v33 = v10 + 20 == a2;
                              if (v10 + 20 == a2)
                              {
                                v35 = 32;
                                v36 = &v76 + 8;
                                v37 = 40;
                              }

                              else
                              {
                                *(&v76 + 1) = (v10[20] >> 4) ^ (v10[20] >> 9);
                                v32 = v10 + 24;
                                v33 = v10 + 24 == a2;
                                if (v10 + 24 == a2)
                                {
                                  v35 = 40;
                                  v36 = &v77;
                                  v37 = 48;
                                }

                                else
                                {
                                  *&v77 = (v10[24] >> 4) ^ (v10[24] >> 9);
                                  v32 = v10 + 28;
                                  v33 = v10 + 28 == a2;
                                  if (v10 + 28 != a2)
                                  {
                                    v34 = (v10[28] >> 4) ^ (v10[28] >> 9);
                                    v10 += 32;
                                    *(&v77 + 1) = v34;
                                    v33 = v10 == a2;
                                    v35 = 56;
                                    v36 = v78;
                                    v37 = 64;
                                    goto LABEL_28;
                                  }

                                  v35 = 48;
                                  v36 = &v77 + 8;
                                  v37 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v10 = v32;
LABEL_28:
                      if ((v37 & 0x38) != 0)
                      {
                        v38 = 56 - v35;
                        v39 = v37;
                        if (v37 != 56 - v35)
                        {
                          do
                          {
                            v46 = v39;
                            v39 = v38;
                            v38 = v46 % v38;
                          }

                          while (v38);
                          v47 = (&v74 + v39);
                          do
                          {
                            v49 = *(v47 - 1);
                            v47 = (v47 - 1);
                            v48 = v49;
                            v50 = (v47 + v37);
                            v51 = v47;
                            do
                            {
                              v52 = v51;
                              v51 = v50;
                              *v52 = *v50;
                              v53 = v37 < v78 - v50;
                              v54 = &v74 + v37 - (v78 - v50);
                              v50 = (v50 + v37);
                              if (!v53)
                              {
                                v50 = v54;
                              }
                            }

                            while (v50 != v47);
                            *v51 = v48;
                          }

                          while (v47 != &v74);
                          goto LABEL_11;
                        }

                        v40 = v35 | 7;
                        if (55 - v35 < (v35 | 7uLL))
                        {
                          v40 = 55 - v35;
                        }

                        v41 = &v74;
                        if (&v74 < (&v74 | 9) + v35 + v40)
                        {
                          v42 = v37;
                          if (v36 < &v74 + v40 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v40 >= 0x1F)
                        {
                          v56 = v40 + 1;
                          v55 = (v40 + 1) & 0x60;
                          v57 = v74;
                          v58 = v75;
                          v59 = *(v36 + 1);
                          v74 = *(&v74 + v37);
                          v75 = v59;
                          *(&v74 + v37) = v57;
                          *(v36 + 1) = v58;
                          if (v55 != 32)
                          {
                            v60 = v76;
                            v61 = v77;
                            v62 = *(v36 + 3);
                            v76 = *(v36 + 2);
                            v77 = v62;
                            *(v36 + 2) = v60;
                            *(v36 + 3) = v61;
                          }

                          if (v56 == v55)
                          {
                            goto LABEL_11;
                          }

                          if ((v56 & 0x18) == 0)
                          {
                            v41 = &v74 + v55;
                            v42 = v37 + v55;
LABEL_34:
                            v43 = v41 + 1;
                            do
                            {
                              v44 = *(v43 - 1);
                              *(v43 - 1) = *(&v74 + v42);
                              *(&v74 + v42) = v44;
                              if (v43 == v36)
                              {
                                break;
                              }

                              ++v43;
                            }

                            while (v42++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v55 = 0;
                        }

                        v63 = &v36[v55];
                        v64 = (&v74 + v55);
                        v65 = v40 - v55 + 1;
                        do
                        {
                          v66 = *v64;
                          *v64++ = *v63;
                          *v63 = v66;
                          v63 += 8;
                          v65 -= 8;
                        }

                        while (v65);
                      }

LABEL_11:
                      v26 = v16 + v20 + v24;
                      v16 = *(&v76 + 1) + v20 - 0x4B6D499041670D8DLL * __ROR8__(v16 + v23 + v77, 42);
                      v27 = v74 - 0x4B6D499041670D8DLL * v23;
                      v28 = v27 + *(&v74 + 1) + v75;
                      v29 = __ROR8__(v22 + v14, 33);
                      v30 = (0xB492B66FBE98F273 * __ROR8__(v26 + *(&v74 + 1), 37)) ^ v17;
                      v23 = __ROR8__(v28, 44) + v27 + __ROR8__(v30 + v14 + v27 + *(&v75 + 1), 21);
                      v24 = 0xB492B66FBE98F273 * v29;
                      v31 = 0xB492B66FBE98F273 * v29 + v17 + v76;
                      v20 = v28 + *(&v75 + 1);
                      v17 = __ROR8__(v16 + v75 + v31 + *(&v77 + 1), 21) + v31 + __ROR8__(*(&v76 + 1) + v77 + v31, 44);
                      v14 = *(&v76 + 1) + v77 + v31 + *(&v77 + 1);
                      v25 += v37;
                      v22 = v30;
                      if (v33)
                      {
                        v68 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v14)));
                        v69 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v17)));
                        v70 = 0x9DDFEA08EB382D69 * (v69 ^ (v69 >> 47)) - 0x4B6D499041670D8DLL * ((v25 ^ (v25 >> 47)) + v29);
                        v71 = 0x9DDFEA08EB382D69 * (v70 ^ (v30 - 0x4B6D499041670D8DLL * (v16 ^ (v16 >> 47)) - 0x622015F714C7D297 * (v68 ^ (v68 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) ^ ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) >> 47));
                      }
                    }
                  }

                  v67 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v74, v67, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] != v2[1])
  {
    return 0;
  }

  v3 = a2[4];
  if (v3 != v2[3])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[3];
  v5 = v2[2];
  v6 = 16 * v3 - 16;
  do
  {
    v8 = *v5;
    v5 += 2;
    v7 = v8;
    v9 = *v4;
    v4 += 2;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 16;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage::construct(unint64_t *a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 3);
  if (v3)
  {
    v4 = *(a2 + 2);
    v5 = 16 * v3;
    a1[10] += 16 * v3;
    v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 + 16 * v3;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v16 = a1;
      v19 = v2;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 16 * v3, 16 * v3, 3);
      v2 = v19;
      v6 = Slow;
      a1 = v16;
    }

    else
    {
      *a1 = v7;
    }

    v9 = v6;
    do
    {
      v10 = *v4++;
      *v9++ = v10;
      v5 -= 16;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  a1[10] += 40;
  v11 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 40;
  if (*a1)
  {
    v13 = v12 > a1[1];
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v18 = v2;
    v15 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 40, 40, 3);
    v2 = v18;
    v11 = v15;
  }

  else
  {
    *a1 = v12;
  }

  *v11 = 0;
  *(v11 + 8) = v2;
  *(v11 + 24) = v6;
  *(v11 + 32) = v3;
  return v11;
}

uint64_t llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ArrayType::parse(mlir::AsmParser &)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::SymbolRefType::parse(mlir::AsmParser &)::$_0>(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1[1];
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(_DWORD *a1, _DWORD *a2)
{
  v78[1] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v67 = 0;
  }

  else
  {
    v2 = (*a1 >> 4) ^ (*a1 >> 9);
    *&v74 = v2;
    if (a1 + 2 == a2)
    {
      v67 = 8;
    }

    else
    {
      v3 = (a1[2] >> 4) ^ (a1[2] >> 9);
      *(&v74 + 1) = v3;
      if (a1 + 4 == a2)
      {
        v67 = 16;
      }

      else
      {
        v4 = (a1[4] >> 4) ^ (a1[4] >> 9);
        *&v75 = v4;
        if (a1 + 6 == a2)
        {
          v67 = 24;
        }

        else
        {
          v5 = (a1[6] >> 4) ^ (a1[6] >> 9);
          *(&v75 + 1) = v5;
          if (a1 + 8 == a2)
          {
            v67 = 32;
          }

          else
          {
            v6 = (a1[8] >> 4) ^ (a1[8] >> 9);
            *&v76 = v6;
            if (a1 + 10 == a2)
            {
              v67 = 40;
            }

            else
            {
              v7 = (a1[10] >> 4) ^ (a1[10] >> 9);
              *(&v76 + 1) = v7;
              if (a1 + 12 == a2)
              {
                v67 = 48;
              }

              else
              {
                v8 = (a1[12] >> 4) ^ (a1[12] >> 9);
                *&v77 = v8;
                if (a1 + 14 == a2)
                {
                  v67 = 56;
                }

                else
                {
                  v9 = (a1[14] >> 4) ^ (a1[14] >> 9);
                  *(&v77 + 1) = v9;
                  v10 = a1 + 16;
                  if (a1 + 16 != a2)
                  {
                    v73 = &v75 + 8;
                    v11 = v6 + 0x4BF62CB950C3753ALL;
                    *(&v13 + 1) = v7 + v8 + v6 + 0x4BF62CB950C3753ALL;
                    *&v13 = 0x4BF62CB900000000;
                    v12 = v13 >> 44;
                    v14 = *(&v13 + 1) + v9;
                    *(&v13 + 1) = v8 + 0x61299596E4;
                    *&v13 = 0xBEB4006120000000;
                    v15 = v12 + v11;
                    v16 = v7 - 0x4B6D499041670D8DLL * (v13 >> 42) - 0x7323D61940A0DA1FLL;
                    v17 = v15 + __ROR8__(v16 + v4 + v11 + v9, 21);
                    v18 = v2 + 0x298DF016A9F64655;
                    v19 = v2 + 0x298DF016A9F64655 + v3 + v4;
                    v20 = v19 + v5;
                    *(&v13 + 1) = v19;
                    *&v13 = 0x298DF00000000000;
                    v21 = (v13 >> 44) + v18;
                    *(&v13 + 1) = v3 + 0x1EACB4B2AELL;
                    *&v13 = 0x8C2DD9BEA0000000;
                    v22 = (0xB492B66FBE98F273 * (v13 >> 37)) ^ 0xF7ACCA5326449396;
                    v23 = v21 + __ROR8__(v22 + v18 + v5 - 0xAE502812AB8D92, 21);
                    v24 = 0x544962662A7EE1A4;
                    v25 = 64;
                    while (1)
                    {
                      v32 = v10 + 2;
                      *&v74 = (*v10 >> 4) ^ (*v10 >> 9);
                      v33 = v10 + 2 == a2;
                      if (v10 + 2 == a2)
                      {
                        v35 = 0;
                        v36 = &v74 + 8;
                        v37 = 8;
                      }

                      else
                      {
                        *(&v74 + 1) = (v10[2] >> 4) ^ (v10[2] >> 9);
                        v32 = v10 + 4;
                        v33 = v10 + 4 == a2;
                        if (v10 + 4 == a2)
                        {
                          v35 = 8;
                          v36 = &v75;
                          v37 = 16;
                        }

                        else
                        {
                          *&v75 = (v10[4] >> 4) ^ (v10[4] >> 9);
                          v32 = v10 + 6;
                          v33 = v10 + 6 == a2;
                          if (v10 + 6 == a2)
                          {
                            v35 = 16;
                            v36 = v73;
                            v37 = 24;
                          }

                          else
                          {
                            *(&v75 + 1) = (v10[6] >> 4) ^ (v10[6] >> 9);
                            v32 = v10 + 8;
                            v33 = v10 + 8 == a2;
                            if (v10 + 8 == a2)
                            {
                              v35 = 24;
                              v36 = &v76;
                              v37 = 32;
                            }

                            else
                            {
                              *&v76 = (v10[8] >> 4) ^ (v10[8] >> 9);
                              v32 = v10 + 10;
                              v33 = v10 + 10 == a2;
                              if (v10 + 10 == a2)
                              {
                                v35 = 32;
                                v36 = &v76 + 8;
                                v37 = 40;
                              }

                              else
                              {
                                *(&v76 + 1) = (v10[10] >> 4) ^ (v10[10] >> 9);
                                v32 = v10 + 12;
                                v33 = v10 + 12 == a2;
                                if (v10 + 12 == a2)
                                {
                                  v35 = 40;
                                  v36 = &v77;
                                  v37 = 48;
                                }

                                else
                                {
                                  *&v77 = (v10[12] >> 4) ^ (v10[12] >> 9);
                                  v32 = v10 + 14;
                                  v33 = v10 + 14 == a2;
                                  if (v10 + 14 != a2)
                                  {
                                    v34 = (v10[14] >> 4) ^ (v10[14] >> 9);
                                    v10 += 16;
                                    *(&v77 + 1) = v34;
                                    v33 = v10 == a2;
                                    v35 = 56;
                                    v36 = v78;
                                    v37 = 64;
                                    goto LABEL_28;
                                  }

                                  v35 = 48;
                                  v36 = &v77 + 8;
                                  v37 = 56;
                                }
                              }
                            }
                          }
                        }
                      }

                      v10 = v32;
LABEL_28:
                      if ((v37 & 0x38) != 0)
                      {
                        v38 = 56 - v35;
                        v39 = v37;
                        if (v37 != 56 - v35)
                        {
                          do
                          {
                            v46 = v39;
                            v39 = v38;
                            v38 = v46 % v38;
                          }

                          while (v38);
                          v47 = (&v74 + v39);
                          do
                          {
                            v49 = *(v47 - 1);
                            v47 = (v47 - 1);
                            v48 = v49;
                            v50 = (v47 + v37);
                            v51 = v47;
                            do
                            {
                              v52 = v51;
                              v51 = v50;
                              *v52 = *v50;
                              v53 = v37 < v78 - v50;
                              v54 = &v74 + v37 - (v78 - v50);
                              v50 = (v50 + v37);
                              if (!v53)
                              {
                                v50 = v54;
                              }
                            }

                            while (v50 != v47);
                            *v51 = v48;
                          }

                          while (v47 != &v74);
                          goto LABEL_11;
                        }

                        v40 = v35 | 7;
                        if (55 - v35 < (v35 | 7uLL))
                        {
                          v40 = 55 - v35;
                        }

                        v41 = &v74;
                        if (&v74 < (&v74 | 9) + v35 + v40)
                        {
                          v42 = v37;
                          if (v36 < &v74 + v40 + 1)
                          {
                            goto LABEL_34;
                          }
                        }

                        if (v40 >= 0x1F)
                        {
                          v56 = v40 + 1;
                          v55 = (v40 + 1) & 0x60;
                          v57 = v74;
                          v58 = v75;
                          v59 = *(v36 + 1);
                          v74 = *(&v74 + v37);
                          v75 = v59;
                          *(&v74 + v37) = v57;
                          *(v36 + 1) = v58;
                          if (v55 != 32)
                          {
                            v60 = v76;
                            v61 = v77;
                            v62 = *(v36 + 3);
                            v76 = *(v36 + 2);
                            v77 = v62;
                            *(v36 + 2) = v60;
                            *(v36 + 3) = v61;
                          }

                          if (v56 == v55)
                          {
                            goto LABEL_11;
                          }

                          if ((v56 & 0x18) == 0)
                          {
                            v41 = &v74 + v55;
                            v42 = v37 + v55;
LABEL_34:
                            v43 = v41 + 1;
                            do
                            {
                              v44 = *(v43 - 1);
                              *(v43 - 1) = *(&v74 + v42);
                              *(&v74 + v42) = v44;
                              if (v43 == v36)
                              {
                                break;
                              }

                              ++v43;
                            }

                            while (v42++ != 63);
                            goto LABEL_11;
                          }
                        }

                        else
                        {
                          v55 = 0;
                        }

                        v63 = &v36[v55];
                        v64 = (&v74 + v55);
                        v65 = v40 - v55 + 1;
                        do
                        {
                          v66 = *v64;
                          *v64++ = *v63;
                          *v63 = v66;
                          v63 += 8;
                          v65 -= 8;
                        }

                        while (v65);
                      }

LABEL_11:
                      v26 = v16 + v20 + v24;
                      v16 = *(&v76 + 1) + v20 - 0x4B6D499041670D8DLL * __ROR8__(v16 + v23 + v77, 42);
                      v27 = v74 - 0x4B6D499041670D8DLL * v23;
                      v28 = v27 + *(&v74 + 1) + v75;
                      v29 = __ROR8__(v22 + v14, 33);
                      v30 = (0xB492B66FBE98F273 * __ROR8__(v26 + *(&v74 + 1), 37)) ^ v17;
                      v23 = __ROR8__(v28, 44) + v27 + __ROR8__(v30 + v14 + v27 + *(&v75 + 1), 21);
                      v24 = 0xB492B66FBE98F273 * v29;
                      v31 = 0xB492B66FBE98F273 * v29 + v17 + v76;
                      v20 = v28 + *(&v75 + 1);
                      v17 = __ROR8__(v16 + v75 + v31 + *(&v77 + 1), 21) + v31 + __ROR8__(*(&v76 + 1) + v77 + v31, 44);
                      v14 = *(&v76 + 1) + v77 + v31 + *(&v77 + 1);
                      v25 += v37;
                      v22 = v30;
                      if (v33)
                      {
                        v68 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v20 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v20 ^ v14)));
                        v69 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v23 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v23 ^ v17)));
                        v70 = 0x9DDFEA08EB382D69 * (v69 ^ (v69 >> 47)) - 0x4B6D499041670D8DLL * ((v25 ^ (v25 >> 47)) + v29);
                        v71 = 0x9DDFEA08EB382D69 * (v70 ^ (v30 - 0x4B6D499041670D8DLL * (v16 ^ (v16 >> 47)) - 0x622015F714C7D297 * (v68 ^ (v68 >> 47))));
                        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) ^ ((0x9DDFEA08EB382D69 * (v70 ^ (v71 >> 47) ^ v71)) >> 47));
                      }
                    }
                  }

                  v67 = 64;
                }
              }
            }
          }
        }
      }
    }
  }

  return llvm::hashing::detail::hash_short(&v74, v67, 0xFF51AFD7ED558CCDLL);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    v4 = 8 * v2;
    a1[10] += 8 * v2;
    Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = Slow + 8 * v2;
    if (*a1)
    {
      v7 = v6 > a1[1];
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v17 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 8 * v2, 8 * v2, 3);
      a1 = v17;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v6;
      v8 = v4 - 8;
      if ((v4 - 8) >= 0x18)
      {
LABEL_7:
        v9 = Slow;
        v10 = v3;
        if (Slow - v3 >= 0x20)
        {
          v11 = (v8 >> 3) + 1;
          v12 = 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL);
          v9 = (Slow + v12);
          v10 = (v3 + v12);
          v13 = (v3 + 16);
          v14 = (Slow + 16);
          v15 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 4;
          }

          while (v15);
          if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v9 = Slow;
    v10 = v3;
    do
    {
LABEL_15:
      v18 = *v10++;
      *v9++ = v18;
    }

    while (v10 != (v3 + 8 * v2));
    goto LABEL_16;
  }

  Slow = 0;
LABEL_16:
  a1[10] += 24;
  v19 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19 + 3;
  if (*a1)
  {
    v21 = v20 > a1[1];
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v19 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v20;
  }

  *v19 = 0;
  v19[1] = Slow;
  v19[2] = v2;
  return v19;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v8 = *v4++;
    result = v6 == v8;
    v10 = v6 != v8 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage,llvm::ArrayRef<mlir::StringAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7uLL);
  v7 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(v2, &v7, 0))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v7;
  ++*(v4 + 8);
  return 1;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5, uint64_t a6)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v14 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v14, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  v15 = v14;
  if (*(a6 + 16) == 1)
  {
    LOBYTE(v16[0]) = 1;
    *(v16 + 1) = (*a6 >> 4) ^ (*a6 >> 9);
    v10 = __ROR8__(*(v16 + 1) + 9, 9);
    v11 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16[0] ^ 0xFF51AFD7ED558CCDLL ^ v10)))) >> 47))) ^ *(v16 + 1);
  }

  else
  {
    v11 = 0xB2B24F688DC4164DLL;
  }

  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v15, v9, a4, v11);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v15, v12, a4);
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1)
  {
    return 0;
  }

  if (*(a2 + 16) != v2[1])
  {
    return 0;
  }

  v4 = *(v2 + 32);
  v5 = *(a2 + 40);
  result = v5 == v4;
  if (v5 == v4 && v5 != 0)
  {
    return *(a2 + 24) == v2[2];
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::ODIE::Compiler::ODIXSerializableAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, void *a2)
{
  v2 = **a1;
  v9 = (*a1)[1];
  v10 = *(*a1 + 4);
  a2[10] += 48;
  if (*a2 && (v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8, v3 + 48 <= a2[1]))
  {
    *a2 = v3 + 48;
  }

  else
  {
    v6 = a1;
    v8 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 48, 48, 3);
    v2 = v8;
    v3 = Slow;
    a1 = v6;
  }

  *v3 = 0;
  *(v3 + 8) = v2;
  *(v3 + 24) = v9;
  *(v3 + 40) = v10;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(const void ***a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != (*a1)[1])
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*(a2 + 8), **a1, v2) == 0;
  }

  return 1;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = (*a1)[1];
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  v3 = **a1;
  a2[10] += v2 + 1;
  v4 = *a2;
  v5 = v2 + 1 + *a2;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    *a2 = v5;
    if (v2 >= 8)
    {
      goto LABEL_7;
    }

LABEL_21:
    v7 = v4;
    v8 = v3;
    goto LABEL_22;
  }

  v18 = a1;
  v19 = a2;
  Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, v2 + 1, v2 + 1, 0);
  a2 = v19;
  v4 = Slow;
  a1 = v18;
  if (v2 < 8)
  {
    goto LABEL_21;
  }

LABEL_7:
  v7 = v4;
  v8 = v3;
  if ((v4 - v3) >= 0x20)
  {
    if (v2 < 0x20)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v9 = v2 & 0xFFFFFFFFFFFFFFE0;
    v10 = (v3 + 16);
    v11 = (v4 + 16);
    v12 = v2 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 32;
    }

    while (v12);
    if (v2 == v9)
    {
      goto LABEL_23;
    }

    if ((v2 & 0x18) != 0)
    {
LABEL_15:
      v7 = (v4 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v8 = (v3 + (v2 & 0xFFFFFFFFFFFFFFF8));
      v14 = (v3 + v9);
      v15 = (v4 + v9);
      v16 = v9 - (v2 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v17 = *v14++;
        *v15++ = v17;
        v16 += 8;
      }

      while (v16);
      if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v8 = (v3 + v9);
    v7 = (v4 + v9);
  }

  do
  {
LABEL_22:
    v21 = *v8++;
    *v7++ = v21;
  }

  while (v8 != (v3 + v2));
LABEL_23:
  *(v4 + v2) = 0;
LABEL_24:
  a2[10] += 24;
  v22 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22 + 3;
  if (*a2)
  {
    v24 = v23 > a2[1];
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v28 = a1;
    v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    *v22 = 0;
    v22[1] = v4;
    v22[2] = v2;
    v25 = v28[1];
    v26 = *v25;
    if (!*v25)
    {
      return v22;
    }

    goto LABEL_29;
  }

  *a2 = v23;
  *v22 = 0;
  v22[1] = v4;
  v22[2] = v2;
  v25 = a1[1];
  v26 = *v25;
  if (*v25)
  {
LABEL_29:
    v26(v25[1], v22);
  }

  return v22;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage::construct(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a1;
  if (!v2)
  {
    Slow = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = 4 * v2;
  a1[10] += 4 * v2;
  Slow = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = Slow + 4 * v2;
  if (v3)
  {
    v8 = v7 > a1[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v18 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 4 * v2, 4 * v2, 2);
    a1 = v18;
    v9 = v5 - 4;
    if ((v5 - 4) >= 0x1C)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a1 = v7;
    v9 = v5 - 4;
    if ((v5 - 4) >= 0x1C)
    {
LABEL_7:
      v10 = Slow;
      v11 = v4;
      if (Slow - v4 >= 0x20)
      {
        v12 = (v9 >> 2) + 1;
        v13 = 4 * (v12 & 0x7FFFFFFFFFFFFFF8);
        v10 = (Slow + v13);
        v11 = (v4 + v13);
        v14 = (v4 + 16);
        v15 = (Slow + 16);
        v16 = v12 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 8;
        }

        while (v16);
        if (v12 == (v12 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  v10 = Slow;
  v11 = v4;
  do
  {
LABEL_15:
    v19 = *v11++;
    *v10++ = v19;
  }

  while (v11 != (v4 + 4 * v2));
LABEL_16:
  v3 = *a1;
LABEL_17:
  a1[10] += 24;
  v20 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 3;
  if (v3)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 24, 24, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = Slow;
  v20[2] = v2;
  return v20;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v7 = 0;
  v3 = mlir::AsmParser::parseInteger<int>(v2, &v7);
  result = 0;
  if (v3)
  {
    v5 = a1[1];
    v6 = *(v5 + 8);
    if (v6 >= *(v5 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v5 + 4 * v6) = v7;
    ++*(v5 + 8);
    return 1;
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
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
    v11 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v11;
    *(Slow + 24) = v3;
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
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
    v11 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v11;
    *(Slow + 24) = v3;
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
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
    v11 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v11;
    *(Slow + 24) = v3;
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  if (a2[2] == v2[1])
  {
    return a2[3] == v2[2];
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = Slow + 32;
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
    v11 = v2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    *Slow = 0;
    *(Slow + 8) = v11;
    *(Slow + 24) = v3;
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t ***a1, uint64_t a2)
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
  v5 = 8 * v2 - 8;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v3++;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 8;
  }

  while (!v10);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclArrayAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TorchLocationExtrasAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t a1)
{
  v2 = *a1;
  Context = mlir::AsmParser::getContext(*a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "coreml", 6uLL);
  v7 = 0;
  if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(v2, &v7, 0))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v7;
  ++*(v4 + 8);
  return 1;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  v21[0] = a1;
  if (((*(*a1 + 448))(a1, &v20, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v21) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t llvm::interleave<mlir::ODIE::Compiler::CoreML::ParamDeclAttr const*,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},void llvm::interleave<llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::raw_ostream,mlir::ODIE::Compiler::CoreML::ParamDeclAttr const>(mlir::ODIE::Compiler::CoreML::ParamDeclAttr const&,llvm::raw_ostream &,void mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(llvm::ArrayRef<mlir::ODIE::Compiler::CoreML::ParamDeclAttr>)::{lambda(mlir::ODIE::Compiler::CoreML::ParamDeclAttr)#1},llvm::StringRef const&)::{lambda(void)#1},void>(uint64_t result, uint64_t *a2, mlir::AsmPrinter *a3, void *a4, uint64_t a5)
{
  if (result != a2)
  {
    v23[9] = v5;
    v23[10] = v6;
    v11 = result;
    v12 = *result;
    v23[0] = v12;
    result = (*(*a3 + 56))(a3, v12);
    if ((result & 1) == 0)
    {
      v13 = (*(*a3 + 16))(a3);
      v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
      mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(v23, a3);
      result = (*(*v13 + 80))(v13);
      if (v14 == result + v13[4] - v13[2])
      {
        result = (*(*a3 + 40))(a3, v12);
      }
    }

    for (i = (v11 + 8); i != a2; ++i)
    {
      v16 = *a5;
      v17 = *(a5 + 8);
      v18 = a4[4];
      if (v17 <= a4[3] - v18)
      {
        if (v17)
        {
          v19 = *(a5 + 8);
          memcpy(v18, v16, v17);
          a4[4] += v19;
        }
      }

      else
      {
        llvm::raw_ostream::write(a4, v16, v17);
      }

      v20 = *i;
      v23[0] = v20;
      result = (*(*a3 + 56))(a3, v20);
      if ((result & 1) == 0)
      {
        v21 = (*(*a3 + 16))(a3);
        v22 = (*(*v21 + 80))(v21) + v21[4] - v21[2];
        mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(v23, a3);
        result = (*(*v21 + 80))(v21);
        if (v22 == result + v21[4] - v21[2])
        {
          result = (*(*a3 + 40))(a3, v20);
        }
      }
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v22 = a2;
  v14 = llvm::hash_value(*a5, *(a5 + 8));
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v22, a3, a4, v14);
  v23 = v22;
  v16 = llvm::hash_value(*a6, *(a6 + 8));
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v23, v15, a4, v16);
  v24 = v23;
  v18 = llvm::hash_value(*a7, *(a7 + 8));
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v24, v17, a4, v18);
  v25 = v24;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v25, v19, a4, (*a8 >> 4) ^ (*a8 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v25, v20, a4);
}

BOOL mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (!v2 || !memcmp(*(a1 + 8), *a2, v2))
  {
    v5 = *(a1 + 32);
    if (v5 == *(a2 + 24) && (!v5 || !memcmp(*(a1 + 24), *(a2 + 16), v5)))
    {
      v6 = *(a1 + 48);
      if (v6 == *(a2 + 40) && (!v6 || !memcmp(*(a1 + 40), *(a2 + 32), v6)))
      {
        return *(a1 + 56) == *(a2 + 48);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  if (v3)
  {
    v8 = *a2;
    v9 = v3 + 1;
    a1[10] += v3 + 1;
    Slow = *a1;
    if (*a1 && v9 + Slow <= a1[1])
    {
      *a1 = v9 + Slow;
      if (v3 >= 8)
      {
LABEL_5:
        v11 = Slow;
        v12 = v8;
        if ((Slow - v8) < 0x20)
        {
          goto LABEL_22;
        }

        if (v3 >= 0x20)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFFE0;
          v16 = (v8 + 16);
          v17 = (Slow + 16);
          v18 = v3 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v19 = *v16;
            *(v17 - 1) = *(v16 - 1);
            *v17 = v19;
            v16 += 2;
            v17 += 2;
            v18 -= 32;
          }

          while (v18);
          if (v3 == v13)
          {
LABEL_23:
            *(Slow + v3) = 0;
            if (v4)
            {
              goto LABEL_24;
            }

LABEL_9:
            v14 = 0;
            if (v6)
            {
              goto LABEL_43;
            }

LABEL_10:
            v15 = 0;
            goto LABEL_64;
          }

          if ((v3 & 0x18) == 0)
          {
            v12 = (v8 + v13);
            v11 = (Slow + v13);
            goto LABEL_22;
          }
        }

        else
        {
          v13 = 0;
        }

        v11 = (Slow + (v3 & 0xFFFFFFFFFFFFFFF8));
        v12 = (v8 + (v3 & 0xFFFFFFFFFFFFFFF8));
        v20 = (v8 + v13);
        v21 = (Slow + v13);
        v22 = v13 - (v3 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v23 = *v20++;
          *v21++ = v23;
          v22 += 8;
        }

        while (v22);
        if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_23;
        }

        do
        {
LABEL_22:
          v25 = *v12++;
          *v11++ = v25;
        }

        while (v12 != (v8 + v3));
        goto LABEL_23;
      }
    }

    else
    {
      v24 = a1;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v9, v3 + 1, 0);
      a1 = v24;
      if (v3 >= 8)
      {
        goto LABEL_5;
      }
    }

    v11 = Slow;
    v12 = v8;
    goto LABEL_22;
  }

  Slow = 0;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_24:
  v26 = v4 + 1;
  a1[10] += v4 + 1;
  v14 = *a1;
  if (*a1 && v26 + v14 <= a1[1])
  {
    *a1 = v26 + v14;
    if (v4 >= 8)
    {
      goto LABEL_27;
    }

LABEL_40:
    v27 = v14;
    v28 = v2;
    goto LABEL_41;
  }

  v38 = a1;
  v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v26, v4 + 1, 0);
  a1 = v38;
  if (v4 < 8)
  {
    goto LABEL_40;
  }

LABEL_27:
  v27 = v14;
  v28 = v2;
  if ((v14 - v2) < 0x20)
  {
    goto LABEL_41;
  }

  if (v4 < 0x20)
  {
    v29 = 0;
LABEL_34:
    v27 = (v14 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v28 = (v2 + (v4 & 0xFFFFFFFFFFFFFFF8));
    v34 = (v2 + v29);
    v35 = (v14 + v29);
    v36 = v29 - (v4 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v37 = *v34++;
      *v35++ = v37;
      v36 += 8;
    }

    while (v36);
    if (v4 == (v4 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_42;
    }

    do
    {
LABEL_41:
      v39 = *v28++;
      *v27++ = v39;
    }

    while (v28 != (v2 + v4));
    goto LABEL_42;
  }

  v29 = v4 & 0xFFFFFFFFFFFFFFE0;
  v30 = (v2 + 16);
  v31 = (v14 + 16);
  v32 = v4 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v33 = *v30;
    *(v31 - 1) = *(v30 - 1);
    *v31 = v33;
    v30 += 2;
    v31 += 2;
    v32 -= 32;
  }

  while (v32);
  if (v4 != v29)
  {
    if ((v4 & 0x18) == 0)
    {
      v28 = (v2 + v29);
      v27 = (v14 + v29);
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_42:
  *(v14 + v4) = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_43:
  a1[10] += v6 + 1;
  v15 = *a1;
  v40 = v6 + 1 + *a1;
  if (*a1)
  {
    v41 = v40 > a1[1];
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    *a1 = v40;
    if (v6 >= 8)
    {
      goto LABEL_48;
    }

LABEL_61:
    v42 = v15;
    v43 = v5;
    goto LABEL_62;
  }

  v53 = a1;
  v15 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, v6 + 1, v6 + 1, 0);
  a1 = v53;
  if (v6 < 8)
  {
    goto LABEL_61;
  }

LABEL_48:
  v42 = v15;
  v43 = v5;
  if ((v15 - v5) >= 0x20)
  {
    if (v6 < 0x20)
    {
      v44 = 0;
      goto LABEL_55;
    }

    v44 = v6 & 0xFFFFFFFFFFFFFFE0;
    v45 = (v5 + 16);
    v46 = (v15 + 16);
    v47 = v6 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v48 = *v45;
      *(v46 - 1) = *(v45 - 1);
      *v46 = v48;
      v45 += 2;
      v46 += 2;
      v47 -= 32;
    }

    while (v47);
    if (v6 == v44)
    {
      goto LABEL_63;
    }

    if ((v6 & 0x18) != 0)
    {
LABEL_55:
      v42 = (v15 + (v6 & 0xFFFFFFFFFFFFFFF8));
      v43 = (v5 + (v6 & 0xFFFFFFFFFFFFFFF8));
      v49 = (v5 + v44);
      v50 = (v15 + v44);
      v51 = v44 - (v6 & 0xFFFFFFFFFFFFFFF8);
      do
      {
        v52 = *v49++;
        *v50++ = v52;
        v51 += 8;
      }

      while (v51);
      if (v6 == (v6 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v43 = (v5 + v44);
    v42 = (v15 + v44);
  }

  do
  {
LABEL_62:
    v54 = *v43++;
    *v42++ = v54;
  }

  while (v43 != (v5 + v6));
LABEL_63:
  *(v15 + v6) = 0;
LABEL_64:
  a1[10] += 64;
  v55 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v56 = v55 + 8;
  if (*a1)
  {
    v57 = v56 > a1[1];
  }

  else
  {
    v57 = 1;
  }

  if (v57)
  {
    v55 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 64, 64, 3);
  }

  else
  {
    *a1 = v56;
  }

  *v55 = 0;
  v55[1] = Slow;
  v55[2] = v3;
  v55[3] = v14;
  v55[4] = v4;
  v55[5] = v15;
  v55[6] = v6;
  v55[7] = v7;
  return v55;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,char const(&)[1],char const(&)[1],char const(&)[1],mlir::DictionaryAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
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
    *(Slow + 8) = v2;
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJNS1_9TypedAttrESF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJRNS1_9TypedAttrESG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::getCoreMLTensorEncoding(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v18 = a1;
  if (!a1)
  {
    return 0;
  }

  v1 = *(*a1 + 136);
  v2 = v1 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  v3 = v1 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id ? a1 : 0;
  v17 = v3;
  if (!v2)
  {
    return 0;
  }

  result = mlir::RankedTensorType::getEncoding(&v17);
  if (!result || *(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
  {
    mlir::RankedTensorType::getShape(&v17);
    v19 = v21;
    v20 = 0xC00000000;
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = v5;
    if (v5 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v19, 4 * v5);
    LODWORD(v20) = v6;
    if (v6 < 1)
    {
      goto LABEL_20;
    }

    v7 = v19;
    v8 = v6 & 0x7FFFFFFF;
    if (v8 > 7)
    {
      v9 = v8 - (v6 & 7);
      v10 = xmmword_257369620;
      v11 = (v19 + 16);
      v12.i64[0] = 0x400000004;
      v12.i64[1] = 0x400000004;
      v13.i64[0] = 0x800000008;
      v13.i64[1] = 0x800000008;
      v14 = v9;
      do
      {
        v11[-1] = v10;
        *v11 = vaddq_s32(v10, v12);
        v10 = vaddq_s32(v10, v13);
        v11 += 2;
        v14 -= 8;
      }

      while (v14);
      if ((v6 & 7) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v9 = 0;
    }

    do
    {
      v7[v9] = v9;
      ++v9;
    }

    while (v8 != v9);
LABEL_20:
    Context = mlir::Type::getContext(&v18);
    result = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(Context, v19, v20);
    if (v19 != v21)
    {
      v16 = result;
      free(v19);
      return v16;
    }
  }

  return result;
}

uint64_t llvm::SmallVector<int,12u>::SmallVector(uint64_t result, unint64_t a2)
{
  v2 = a2;
  *result = result + 16;
  *(result + 8) = 0xC00000000;
  if (a2)
  {
    if (a2 >= 0xD)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = result;
    bzero(*result, 4 * a2);
    result = v3;
    *(v3 + 8) = v2;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = a4;
  v32[1] = a5;
  if (a5 == 2)
  {
    v12 = (*(mlir::ValueRange::dereference_iterator(v32, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v12)
    {
      v13 = *v12;
      {
        v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v17 = v15;
      v18 = v16;
      do
      {
        v19 = v18 >> 1;
        v20 = &v17[2 * (v18 >> 1)];
        v22 = *v20;
        v21 = v20 + 2;
        v18 += ~(v18 >> 1);
        if (v22 < v14)
        {
          v17 = v21;
        }

        else
        {
          v18 = v19;
        }
      }

      while (v18);
      if (v17 != &v15[2 * v16] && *v17 == v14)
      {
        v24 = v17[1];
        goto LABEL_19;
      }
    }

LABEL_18:
    v24 = 0;
LABEL_19:
    v31[0] = v12;
    v31[1] = v24;
    Shape = mlir::ShapedType::getShape(v31);
    v27 = v26;
    v28 = mlir::IntegerType::get(a1, 1, 0);
    v29 = mlir::RankedTensorType::get(Shape, v27, v28, 0);
    v30 = *(a11 + 8);
    if (v30 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v30) = v29;
    ++*(a11 + 8);
    return 1;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected exactly 2 operands");
}

unint64_t mlir::ODIE::Compiler::CoreML::EqualOp::fold(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 != *(v1 + 56))
  {
    return 0;
  }

  v18 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::TensorType::hasRank(&v18))
  {
    return 0;
  }

  Shape = mlir::TensorType::getShape(&v18);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v20 = 40;
  v21[0] = 1;
  v18 = v21;
  v19 = 1;
  v16 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = mlir::TensorType::getShape(&v16);
  v9 = v8;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v11 = mlir::IntegerType::get(Context, 1, 0);
  v17 = mlir::RankedTensorType::get(v7, v9, v11, 0);
  v12 = mlir::TensorType::operator mlir::ShapedType(&v17);
  result = mlir::DenseElementsAttr::get(v12, v13, v18, v19) & 0xFFFFFFFFFFFFFFFBLL;
  if (v18 != v21)
  {
    v15 = result;
    free(v18);
    return v15;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReshapeOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = v2;
  if (mlir::TensorType::hasRank(&v12))
  {
    Shape = mlir::TensorType::getShape(&v12);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v11))
      {
        v6 = mlir::TensorType::getShape(&v11);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = *(*(*a1 + 72) + 24);
          if ((*(v9 + 8) ^ *(*a1 - 8)) <= 7)
          {
            return v9 | 4;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = v2;
  if (mlir::TensorType::hasRank(&v12))
  {
    Shape = mlir::TensorType::getShape(&v12);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v11))
      {
        v6 = mlir::TensorType::getShape(&v11);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = *(*(*a1 + 72) + 24);
          if ((*(v9 + 8) ^ *(*a1 - 8)) <= 7)
          {
            return v9 | 4;
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verify(mlir::Operation **this)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v39 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(&v39))
  {
    Shape = mlir::TensorType::getShape(&v39);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v38))
      {
        v6 = mlir::TensorType::getShape(&v38);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = mlir::TensorType::getShape(&v39);
          v11 = v10;
          v12 = mlir::TensorType::getShape(&v38);
          if (v11)
          {
            v14 = v12;
            v15 = 8 * v13;
            v16 = 8 * v11;
            result = 1;
            while (v15)
            {
              if (*v9 > *v14)
              {
                v37 = 257;
                mlir::OpState::emitError(this, v36, v42);
                if (v42[0])
                {
                  LODWORD(v40) = 3;
                  *(&v40 + 1) = "broadcast_in_dims op is decreasing number of elements. Input type ";
                  v41 = 66;
                  if (v44 >= v45)
                  {
                    if (v43 > &v40 || v43 + 24 * v44 <= &v40)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v18 = v43 + 24 * v44;
                  v19 = v40;
                  *(v18 + 2) = v41;
                  *v18 = v19;
                  ++v44;
                  if (v42[0])
                  {
                    mlir::DiagnosticArgument::DiagnosticArgument(&v40, v39);
                    if (v44 >= v45)
                    {
                      if (v43 > &v40 || v43 + 24 * v44 <= &v40)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v20 = v43 + 24 * v44;
                    v21 = v40;
                    *(v20 + 2) = v41;
                    *v20 = v21;
                    v22 = ++v44;
                    if (v42[0])
                    {
                      LODWORD(v40) = 3;
                      *(&v40 + 1) = " output type ";
                      v41 = 13;
                      if (v22 >= v45)
                      {
                        if (v43 > &v40 || v43 + 24 * v22 <= &v40)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v23 = v43 + 24 * v44;
                      v24 = v40;
                      *(v23 + 2) = v41;
                      *v23 = v24;
                      ++v44;
                      if (v42[0])
                      {
                        mlir::DiagnosticArgument::DiagnosticArgument(&v40, v38);
                        if (v44 >= v45)
                        {
                          if (v43 > &v40 || v43 + 24 * v44 <= &v40)
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        v25 = v43 + 24 * v44;
                        v26 = v40;
                        *(v25 + 2) = v41;
                        *v25 = v26;
                        ++v44;
                      }
                    }
                  }
                }

                result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
                v27 = result;
                if (v42[0])
                {
                  mlir::InFlightDiagnostic::report(v42);
                  result = v27;
                }

                if (v52)
                {
                  if (v51 != &v52)
                  {
                    free(v51);
                    result = v27;
                  }

                  v28 = __p;
                  if (__p)
                  {
                    v29 = v50;
                    v30 = __p;
                    if (v50 != __p)
                    {
                      do
                      {
                        v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
                      }

                      while (v29 != v28);
                      v30 = __p;
                    }

                    v50 = v28;
                    operator delete(v30);
                    result = v27;
                  }

                  v31 = v47;
                  if (v47)
                  {
                    v32 = v48;
                    v33 = v47;
                    if (v48 != v47)
                    {
                      do
                      {
                        v35 = *--v32;
                        v34 = v35;
                        *v32 = 0;
                        if (v35)
                        {
                          MEMORY[0x259C63150](v34, 0x1000C8077774924);
                        }
                      }

                      while (v32 != v31);
                      v33 = v47;
                    }

                    v48 = v31;
                    operator delete(v33);
                    result = v27;
                  }

                  if (v43 != &v46)
                  {
                    free(v43);
                    return v27;
                  }
                }

                return result;
              }

              ++v9;
              ++v14;
              v15 -= 8;
              v16 -= 8;
              if (!v16)
              {
                return result;
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = v2;
  if (mlir::TensorType::hasRank(&v12))
  {
    Shape = mlir::TensorType::getShape(&v12);
    if (v4)
    {
      v5 = 8 * v4;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v11))
      {
        v6 = mlir::TensorType::getShape(&v11);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          v9 = *(*(*a1 + 72) + 24);
          if ((*(v9 + 8) ^ *(*a1 - 8)) <= 7)
          {
            return v9 | 4;
          }
        }
      }
    }
  }

  return 0;
}

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  v45 = (v3[1] & 0xFFFFFFFFFFFFFFF8);
  if (!*mlir::RankedTensorType::getShape(&v45))
  {
    return v4 | 4;
  }

  v45 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (!*mlir::RankedTensorType::getShape(&v45) || v3 == v4)
  {
    return v3 | 4;
  }

  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v45, v3);
  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v41, v4);
  if (v48 != 1 || v44 != 1)
  {
    result = 0;
    goto LABEL_17;
  }

  v38 = v40;
  v39 = 0x600000000;
  BroadcastedShape = mlir::OpTrait::util::getBroadcastedShape(v45, v46, v41, v42, &v38);
  v6 = v38;
  if (BroadcastedShape)
  {
    if (v39)
    {
      v7 = 0;
      while (*(v38 + v7) != 0x8000000000000000)
      {
        v7 += 8;
        if (8 * v39 == v7)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_24;
    }

LABEL_11:
    llvm::SmallVector<int,12u>::SmallVector(&v35, v39);
    v8 = v39;
    if (v39)
    {
      v9 = v38;
      v10 = v35;
      v11 = (v39 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v11 <= 6)
      {
        v12 = 0;
        v13 = v38;
LABEL_29:
        v25 = &v9[8 * v8];
        v26 = &v10[4 * v12];
        do
        {
          v27 = *v13;
          v13 += 8;
          *v26 = v27;
          v26 += 4;
        }

        while (v13 != v25);
        goto LABEL_31;
      }

      v17 = v11 + 1;
      v12 = (v11 + 1) & 0x3FFFFFFFFFFFFFF8;
      v13 = v38 + 8 * v12;
      v18 = (v35 + 16);
      v19 = (v38 + 32);
      v20 = v12;
      do
      {
        v22 = v19[-2];
        v21 = v19[-1];
        v24 = *v19;
        v23 = v19[1];
        v19 += 4;
        v18[-1] = vuzp1q_s32(v22, v21);
        *v18 = vuzp1q_s32(v24, v23);
        v18 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v17 != v12)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v34 = v36;
    Context = mlir::Attribute::getContext((*a1 + 24));
    v29 = mlir::IntegerType::get(Context, 32, 1u);
    v33 = mlir::RankedTensorType::get(&v34, 1, v29, 0);
    v30 = mlir::TensorType::operator mlir::ShapedType(&v33);
    result = mlir::DenseElementsAttr::getRawIntOrFloat(v30) & 0xFFFFFFFFFFFFFFFBLL;
    if (v35 != &v37)
    {
      v31 = result;
      free(v35);
      result = v31;
    }

    v6 = v38;
    if (v38 == v40)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_24:
  result = 0;
  if (v38 != v40)
  {
LABEL_34:
    v32 = result;
    free(v6);
    result = v32;
  }

LABEL_17:
  if (v44 == 1 && v41 != &v43)
  {
    v15 = result;
    free(v41);
    result = v15;
  }

  if (v48 == 1 && v45 != &v47)
  {
    v16 = result;
    free(v45);
    return v16;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  v53[6] = *MEMORY[0x277D85DE8];
  __dst = 0;
  v44 = a2;
  p_dst = &__dst;
  __src = a2;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&p_dst, DefiningOp))
  {
    v7 = mlir::Value::getDefiningOp(&v44);
    if (!v7 || *(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
    {
      *a1 = 0;
      *(a1 + 64) = 0;
      return;
    }

    v3 = (*(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v3)
    {
      goto LABEL_51;
    }

    v2 = *v3;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      if (!v10)
      {
        goto LABEL_51;
      }

      goto LABEL_13;
    }

LABEL_48:
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v2 + 8);
    v10 = *(v2 + 16);
    if (!v10)
    {
      goto LABEL_51;
    }

LABEL_13:
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
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v37 = v11[1];
LABEL_52:
      __dst = v3;
      v52 = v37;
      Shape = mlir::ShapedType::getShape(&__dst);
      v40 = v38;
      __src = v48;
      v47 = 0x600000000;
      if (v38 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v38)
      {
        memcpy(v48, Shape, 8 * v38);
        v41 = v47;
        v36 = __src;
      }

      else
      {
        v41 = 0;
        v36 = v48;
      }

      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
      v42 = v41 + v40;
      LODWORD(v47) = v42;
      if (v42 && &__src != a1)
      {
        if (v36 == v48)
        {
          if (v42 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(*a1, v36, 8 * v42);
          v36 = __src;
          *(a1 + 8) = v42;
        }

        else
        {
          *a1 = v36;
          v43 = HIDWORD(v47);
          *(a1 + 8) = v42;
          *(a1 + 12) = v43;
          __src = v48;
          HIDWORD(v47) = 0;
          v36 = v48;
        }

        LODWORD(v47) = 0;
      }

      *(a1 + 64) = 1;
      if (v36 != v48)
      {
        goto LABEL_45;
      }

      return;
    }

LABEL_51:
    v37 = 0;
    goto LABEL_52;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v3, &__src);
  if ((v50 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_48;
  }

  __dst = v53;
  v52 = 0xC00000000;
  v6 = v47;
  if (v47)
  {
    if (__src == v48)
    {
      if (v47 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__dst, __src, 4 * v47);
      LODWORD(v52) = v6;
      LODWORD(v47) = 0;
      if ((v50 & 1) == 0)
      {
        __src = v48;
        v47 = 0x600000000;
        v17 = v6;
        if (v6 >= 7)
        {
LABEL_27:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        goto LABEL_30;
      }
    }

    else
    {
      __dst = __src;
      v52 = v47;
      __src = v48;
      v47 = 0;
    }
  }

  if (__src != v48)
  {
    free(__src);
    v6 = v52;
  }

  __src = v48;
  v47 = 0x600000000;
  if (!v6)
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    v18 = v48;
    goto LABEL_42;
  }

  v17 = v6;
  if (v6 >= 7)
  {
    goto LABEL_27;
  }

LABEL_30:
  v18 = v48;
  if (v17)
  {
    bzero(v48, 8 * v17);
  }

  LODWORD(v47) = v6;
  v19 = v52;
  if (!v52)
  {
    goto LABEL_40;
  }

  v20 = __dst;
  v21 = (v52 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v21 <= 6)
  {
    v22 = 0;
    v23 = __dst;
LABEL_38:
    v33 = &v20[4 * v19];
    v34 = &v48[v22];
    do
    {
      v35 = *v23++;
      *v34++ = v35;
    }

    while (v23 != v33);
    goto LABEL_40;
  }

  v24 = v21 + 1;
  v22 = (v21 + 1) & 0x7FFFFFFFFFFFFFF8;
  v23 = (__dst + 4 * v22);
  v25 = &v49;
  v26 = __dst + 16;
  v27 = v22;
  do
  {
    v28 = *(v26 - 1);
    *&v29 = v28;
    *(&v29 + 1) = SDWORD1(v28);
    v30 = v29;
    *&v29 = SDWORD2(v28);
    *(&v29 + 1) = SHIDWORD(v28);
    v31 = v29;
    *&v29 = *v26;
    *(&v29 + 1) = HIDWORD(*v26);
    v32 = v29;
    *&v29 = *(v26 + 1);
    *(&v29 + 1) = HIDWORD(*v26);
    *(v25 - 2) = v30;
    *(v25 - 1) = v31;
    *v25 = v32;
    *(v25 + 1) = v29;
    v25 += 8;
    v26 += 32;
    v27 -= 8;
  }

  while (v27);
  if (v24 != v22)
  {
    goto LABEL_38;
  }

LABEL_40:
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (&__src != a1)
  {
    memcpy(*a1, v48, 8 * v6);
    v18 = __src;
    *(a1 + 8) = v6;
    LODWORD(v47) = 0;
  }

LABEL_42:
  *(a1 + 64) = 1;
  if (v18 != v48)
  {
    free(v18);
  }

  v36 = __dst;
  if (__dst != v53)
  {
LABEL_45:
    free(v36);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 == *(v1 + 56))
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::OrOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 == *(v1 + 56))
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::StackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = a3;
  v40.n128_u64[0] = a4;
  v40.n128_u64[1] = a5;
  mlir::ValueRange::getTypes(&v40, &v38);
  v7 = v38.n128_i64[1];
  v8 = v39;
  for (v37[0] = v38; v7 != v8; *(&v37[0] + 1) = v7)
  {
    DefiningOp = mlir::ValueRange::dereference_iterator(v37, v7);
    if (*(*(*(DefiningOp + 1) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_9;
    }

    v7 = *(&v37[0] + 1) + 1;
  }

  *&v36[0] = &v34;
  *&v37[0] = a3;
  DefiningOp = mlir::Value::getDefiningOp(v37);
  if (!DefiningOp || (DefiningOp = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v36, DefiningOp), !DefiningOp))
  {
LABEL_9:
    v13 = llvm::errs(DefiningOp);
    v14 = v13[4];
    if (v13[3] - v14 > 0x67uLL)
    {
      qmemcpy(v14, "Custom builder for Stack Op requires all tensors to be ranked and the axis to be compile time constant.\n", 104);
      v13[4] += 104;
    }

    else
    {
      llvm::raw_ostream::write(v13, "Custom builder for Stack Op requires all tensors to be ranked and the axis to be compile time constant.\n", 0x68uLL);
    }

    return;
  }

  v37[0] = v38;
  v33 = *(mlir::ValueRange::dereference_iterator(v37, v38.n128_i64[1]) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v33);
  v11 = v10;
  mlir::RankedTensorType::getShape(&v33);
  v31 = 0;
  v32 = 0;
  v30 = 0;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v15 = v11 + 1;
  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v34, v37);
  v36[0] = v37[0];
  v36[1] = v37[1];
  Shape = mlir::DenseElementsAttr::IntElementIterator::operator*(v36, &v28);
  if (v29 > 0x40)
  {
    v19 = *v28;
    Shape = MEMORY[0x259C63150]();
    v18 = (v15 & (v19 >> 63)) + v19;
    if (v18 < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v29)
    {
      v17 = (v28 << -v29) >> -v29;
    }

    else
    {
      v17 = 0;
    }

    v18 = (v15 & (v17 >> 63)) + v17;
    if (v18 < 0)
    {
      goto LABEL_20;
    }
  }

  Shape = mlir::RankedTensorType::getShape(&v33);
  if (v18 > v20)
  {
LABEL_20:
    v21 = llvm::errs(Shape);
    v22 = v21[4];
    if (v21[3] - v22 > 0x57uLL)
    {
      qmemcpy(v22, "Custom builder for Stack Op requires axis to be [-input_rank-1, input_rank](inclusive).\n", 88);
      v21[4] += 88;
    }

    else
    {
      llvm::raw_ostream::write(v21, "Custom builder for Stack Op requires axis to be [-input_rank-1, input_rank](inclusive).\n", 0x58uLL);
    }

    return;
  }

  *&v37[0] = v39 - v38.n128_u64[1];
  std::vector<long long>::insert(&v30, (8 * v18), v37);
  v23 = v30;
  v24 = (v31 - v30) >> 3;
  ElementType = mlir::RankedTensorType::getElementType(&v33);
  v26 = mlir::RankedTensorType::get(v23, v24, ElementType, 0);
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, v40.n128_i64[0], v40.n128_u64[1]);
  v27 = *(a2 + 72);
  if (v27 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v27) = v26;
  ++*(a2 + 72);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

char *std::vector<long long>::insert(uint64_t a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v9 = *a1;
    v10 = (&v6[-*a1] >> 3) + 1;
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      goto LABEL_32;
    }

    v13 = __src - v9;
    v14 = (__src - v9) >> 3;
    v15 = (8 * v14);
    if (!v14)
    {
      if (v13 < 1)
      {
        v16 = v13 >> 2;
        if (v9 == __src)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (!(v17 >> 61))
        {
          operator new();
        }

LABEL_32:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v15 = (v15 - (((v13 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v15 = *a3;
    v18 = *(a1 + 8) - __src;
    memcpy(v15 + 1, __src, v18);
    *(a1 + 8) = v4;
    v19 = &v4[-*a1];
    v20 = v15 - v19;
    memcpy(v15 - v19, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v15 + v18 + 8;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }

    return v15;
  }

  if (__src != v6)
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      *(a1 + 8) = v6;
      if (v6 == v8)
      {
LABEL_21:
        *v4 = *a3;
        return v4;
      }
    }

    else
    {
      *v6 = *(v6 - 1);
      *(a1 + 8) = v6 + 8;
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    memmove(__src + 8, __src, v6 - v8);
    goto LABEL_21;
  }

  *v6 = *a3;
  *(a1 + 8) = v6 + 8;
  return v4;
}

__n128 mlir::ODIE::Compiler::CoreML::IfOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(*a1 + 36);
    if (v5)
    {
      v6 = *a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    v18.n128_u64[0] = 0;
    mlir::ValueRange::ValueRange(&v18.n128_u64[1], v6, v5);
    v7 = *(a3 + 8);
    v8 = *a3;
    if (v7 >= *(a3 + 12))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    mlir::ValueRange::ValueRange(&v18.n128_u64[1], 0, 0);
    v9 = *(a3 + 8);
    v10 = *a3;
    if (v9 >= *(a3 + 12))
    {
      if (v10 > &v18 || v10 + 24 * v9 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = (v10 + 24 * *(a3 + 8));
    v12 = v18;
    v11[1].n128_u64[0] = v19;
    *v11 = v12;
    ++*(a3 + 8);
    v13 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v15 = *(v13 + 24);
    v14 = v13 + 24;
    if (v15 == v14)
    {
      v18.n128_u64[0] = 0;
    }

    else
    {
      v18.n128_u64[0] = v14;
    }

    mlir::ValueRange::ValueRange(&v18.n128_u64[1], 0, 0);
    v7 = *(a3 + 8);
    v8 = *a3;
    if (v7 >= *(a3 + 12))
    {
LABEL_13:
      if (v8 <= &v18 && v8 + 24 * v7 > &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v16 = (v8 + 24 * *(a3 + 8));
  result = v18;
  v16[1].n128_u64[0] = v19;
  *v16 = result;
  ++*(a3 + 8);
  return result;
}

unint64_t *mlir::ODIE::Compiler::CoreML::IfOp::getEntrySuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v21[0] = v6;
  v7 = *(a4 + 8);
  if (v7 >= *(a4 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v21);
  }

  else
  {
    v8 = (*a4 + 24 * v7);
    *v8 = v6;
    mlir::ValueRange::ValueRange(v8 + 1, 0, 0);
    ++*(a4 + 8);
  }

  v9 = *a1;
  v10 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v12 = *(v10 + 24);
  v11 = v10 + 24;
  if (v12 == v11)
  {
    v16 = *(v9 + 36);
    v17 = v9 - 16;
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v21[0] = v18;
    v21[1] = v16;
    v19 = *(a4 + 8);
    if (v19 < *(a4 + 12))
    {
      v20 = (*a4 + 24 * v19);
      *v20 = 0;
      result = mlir::ValueRange::ValueRange(v20 + 1, v18, v16);
      goto LABEL_11;
    }

    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, v21);
  }

  else
  {
    v21[0] = v11;
    v13 = *(a4 + 8);
    if (v13 < *(a4 + 12))
    {
      v14 = (*a4 + 24 * v13);
      *v14 = v11;
      result = mlir::ValueRange::ValueRange(v14 + 1, 0, 0);
LABEL_11:
      ++*(a4 + 8);
      return result;
    }

    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a4, v21);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOp::thenBlock(mlir::ODIE::Compiler::CoreML::IfOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  if (v1)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOp::elseBlock(mlir::ODIE::Compiler::CoreML::IfOp *this)
{
  v1 = ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40);
  v2 = *(v1 + 24);
  if (v2 == v1 + 24 || v2 == 0)
  {
    return 0;
  }

  else
  {
    return v2 - 8;
  }
}

unint64_t *mlir::ODIE::Compiler::CoreML::WhileOp::getSuccessorRegions(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *a1;
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    if (v5 + 3 != a2)
    {
      v7 = *(v4 + 36);
      if (v7)
      {
        v8 = v4 - 16;
      }

      else
      {
        v8 = 0;
      }

      v19 = v8;
      v20 = v7;
      v9 = *(a3 + 8);
      if (v9 >= *(a3 + 12))
      {
        llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a3, &v19);
      }

      else
      {
        v10 = (*a3 + 24 * v9);
        *v10 = 0;
        mlir::ValueRange::ValueRange(v10 + 1, v8, v7);
        ++*(a3 + 8);
      }

      v11 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
      v5 = (v11 + 24);
      v21 = (v11 + 24);
      if (*(v11 + 24) != v11 + 24)
      {
        v12 = *(v11 + 32);
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v5 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  }

  v21 = v5;
  if (*v5 != v5)
  {
    v12 = v5[1];
LABEL_13:
    if (v12)
    {
      v13 = v12 - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 48);
    v15 = (*(v13 + 56) - v14) >> 3;
    v19 = v14;
    v20 = v15;
    v16 = *(a3 + 8);
    if (v16 < *(a3 + 12))
    {
      goto LABEL_17;
    }

    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v21, &v19);
  }

LABEL_18:
  v14 = 0;
  v15 = 0;
  v19 = 0;
  v20 = 0;
  v16 = *(a3 + 8);
  if (v16 < *(a3 + 12))
  {
LABEL_17:
    v17 = (*a3 + 24 * v16);
    *v17 = v5;
    result = mlir::ValueRange::ValueRange(v17 + 1, v14, v15);
    ++*(a3 + 8);
    return result;
  }

  return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v21, &v19);
}

BOOL mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a4[1] == 1)
  {
    v9 = (*(mlir::ValueRange::dereference_iterator(a4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = *v9;
      {
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
        v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (!v13)
        {
          goto LABEL_18;
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
        goto LABEL_19;
      }
    }

LABEL_18:
    v21 = 0;
LABEL_19:
    v30[0] = v9;
    v30[1] = v21;
    Shape = mlir::ShapedType::getShape(v30);
    v31 = v33;
    v32 = 0x300000000;
    if (((8 * v22) >> 3) >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = 0;
    v25 = 8 * v22;
    if (v22)
    {
      memcpy(v31, Shape, v25);
      v24 = v32;
    }

    LODWORD(v32) = v24 + (v25 >> 3);
    v34 = 0uLL;
    v35 = 1;
    v26 = *(a9 + 8);
    v27 = *a9;
    if (v26 >= *(a9 + 12))
    {
      if (v27 > &v31 || v27 + (v26 << 6) <= &v31)
      {
        llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
      }

      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    v28 = v27 + (*(a9 + 8) << 6);
    *v28 = v28 + 16;
    *(v28 + 8) = 0x300000000;
    if (v32)
    {
      llvm::SmallVectorImpl<long long>::operator=(v28, &v31);
    }

    v29 = v34;
    *(v28 + 56) = v35;
    *(v28 + 40) = v29;
    ++*(a9 + 8);
    if (v31 != v33)
    {
      free(v31);
    }

    return 1;
  }

  return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected exactly 1 operand");
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::fold(uint64_t *a1)
{
  v6 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v6);
  if (DefiningOp)
  {
    v3 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v4 = *(*(DefiningOp + 72) + 24);
      if ((*(v3 - 8) ^ *(v4 + 8)) <= 7)
      {
        return v4 | 4;
      }
    }
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(*(v3 + 72) + 24);
  if ((*(v3 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::CastOp *this, mlir::OpBuilder *a2)
{
  if (*(*mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  v5 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *v5;
  {
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_6:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_16;
  }

  v16 = v10[1];
LABEL_17:
  v46[0] = v5;
  v46[1] = v16;
  *&v47 = mlir::ShapedType::getElementType(v46);
  ElementType = mlir::ComplexType::getElementType(&v47);
  PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
  v45 = v18;
  v19 = (*(PartsOfComplex - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = *v19;
  {
    v41 = v19;
    v30 = v20;
    mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
    v19 = v41;
    v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v22 = *(v30 + 8);
    v23 = *(v30 + 16);
    if (v23)
    {
      goto LABEL_20;
    }

LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  if (!v23)
  {
    goto LABEL_31;
  }

LABEL_20:
  v24 = v22;
  v25 = v23;
  do
  {
    v26 = v25 >> 1;
    v27 = &v24[2 * (v25 >> 1)];
    v29 = *v27;
    v28 = v27 + 2;
    v25 += ~(v25 >> 1);
    if (v29 < v21)
    {
      v24 = v28;
    }

    else
    {
      v25 = v26;
    }
  }

  while (v25);
  if (v24 == &v22[2 * v23] || *v24 != v21)
  {
    goto LABEL_31;
  }

  v31 = v24[1];
LABEL_32:
  v43[0] = v19;
  v43[1] = v31;
  LOBYTE(v47) = 0;
  v48 = 0;
  *&v47 = mlir::ShapedType::cloneWith(v43, &v47, ElementType);
  *(&v47 + 1) = v32;
  v43[0] = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v47, &PartsOfComplex);
  v42 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(a2, *(*this + 24), &v47, &v45);
  v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(a2, *(*this + 24), v46, v43, &v42);
  v34 = *this;
  if (*(v33 + 36))
  {
    v35 = v33 - 16;
  }

  else
  {
    v35 = 0;
  }

  for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0); ; *i = v37)
  {
    v37 = *(v34 - 16);
    if (!v37)
    {
      break;
    }

    v38 = v37[1];
    if (v38)
    {
      v39 = *v37;
      *v38 = *v37;
      if (v39)
      {
        *(v39 + 8) = v38;
      }
    }

    v37[3] = i;
    v37[1] = i;
    v40 = *i;
    *v37 = *i;
    if (v40)
    {
      *(v40 + 8) = v37;
    }
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::getPartsOfComplex(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = v6;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v21 + 8);
    v9 = *(v21 + 16);
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v16 = v10[1];
    goto LABEL_15;
  }

LABEL_14:
  v16 = 0;
LABEL_15:
  v22[0] = v5;
  v22[1] = v16;
  *&v24 = mlir::ShapedType::getElementType(v22);
  ElementType = mlir::ComplexType::getElementType(&v24);
  LOBYTE(v24) = 0;
  v25 = 0;
  *&v24 = mlir::ShapedType::cloneWith(v22, &v24, ElementType);
  *(&v24 + 1) = v18;
  v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, &v24, &v23);
  mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, &v24, &v23);
  return v19;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::Type &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  v11 = *a3;
  v17[0] = *a4 - 16;
  mlir::OperationState::addOperands(v18, v17, 1uLL);
  if (v19 >= v20)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v18[8] + 8 * v19++) = v11;
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v20[0] = *a4 - 16;
  v19[0] = v14;
  mlir::OperationState::addOperands(v21, v20, 1uLL);
  mlir::OperationState::addOperands(v21, v19, 1uLL);
  if (v22 >= v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v21[8] + 8 * v22++) = v13;
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

unint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::fold(uint64_t a1)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v28 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v28))
  {
    return 0;
  }

  Shape = mlir::TensorType::getShape(&v28);
  if (v3)
  {
    v4 = 8 * v3;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v6 = mlir::TensorType::getShape(&v28);
  v30 = v32;
  v31 = 0xC00000000;
  if (((8 * v5) >> 3) >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = 0;
  if (v5)
  {
    v9 = (v5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 >= 7)
    {
      v12 = v9 + 1;
      v13 = (v9 + 1) & 0x3FFFFFFFFFFFFFF8;
      v10 = v30 + 4 * v13;
      v11 = (v6 + 8 * v13);
      v14 = (v6 + 32);
      v15 = (v30 + 16);
      v16 = v13;
      do
      {
        v18 = v14[-2];
        v17 = v14[-1];
        v20 = *v14;
        v19 = v14[1];
        v14 += 4;
        v15[-1] = vuzp1q_s32(v18, v17);
        *v15 = vuzp1q_s32(v20, v19);
        v15 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v12 == v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = v30;
      v11 = v6;
    }

    do
    {
      v21 = *v11++;
      *v10++ = v21;
    }

    while (v11 != (v6 + 8 * v5));
LABEL_16:
    v8 = v31;
  }

  LODWORD(v31) = v8 + v5;
  mlir::TensorType::getShape(&v28);
  v29 = v22;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v24 = mlir::IntegerType::get(Context, 32, 1u);
  v27 = mlir::RankedTensorType::get(&v29, 1, v24, 0);
  v25 = mlir::TensorType::operator mlir::ShapedType(&v27);
  result = mlir::DenseElementsAttr::getRawIntOrFloat(v25) & 0xFFFFFFFFFFFFFFFBLL;
  if (v30 != v32)
  {
    v26 = result;
    free(v30);
    return v26;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30[2] = *MEMORY[0x277D85DE8];
  if (a5 == 1)
  {
    v23 = a6;
    v24[0] = 0;
    v25 = 0;
    v26 = a9;
    v27 = a10;
    if (a6)
    {
      v14 = a4;
      Context = mlir::Attribute::getContext(&v23);
      if (v25 == 1)
      {
        v25 = 0;
      }

      mlir::OperationName::OperationName(v24, "coreml.get_shape", 16, Context);
      v25 = 1;
      a4 = v14;
    }

    v28 = a4;
    v29 = 1;
    v30[0] = a4;
    v30[1] = 0;
    v16 = *(mlir::ValueRange::dereference_iterator(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = 0;
    }

    v30[0] = v16;
    if (v16)
    {
      mlir::RankedTensorType::getShape(v30);
      v22 = v17;
      v18 = mlir::IntegerType::get(a1, 32, 1u);
      v19 = mlir::RankedTensorType::get(&v22, 1, v18, 0);
      v20 = *(a11 + 8);
      if (v20 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v20) = v19;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected operand to be ranked tensor");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected exactly 1 operand");
  }
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::printNamedRegionOp(v3, InterfaceFor, 0, 0, a2);
}

void mlir::ODIE::Compiler::CoreML::printNamedRegionOp(mlir::Operation *a1, mlir::Operation *a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v21[0] = a1;
  v21[1] = a2;
  v8 = (*(*a5 + 16))(a5);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, " ", 1uLL);
  }

  else
  {
    *v9 = 32;
    ++v8[4];
  }

  NameAttr = mlir::SymbolOpInterface::getNameAttr(v21);
  Value = mlir::StringAttr::getValue(&NameAttr);
  (*(*a5 + 88))(a5, Value, v11);
  NameAttr = v25;
  v24 = 0x300000000;
  if (a4 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    memcpy(v25, a3, 16 * a4);
    LODWORD(v24) = v24 + a4;
    v12 = v21[0];
    if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v21[0]))
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v24) = 0;
    v12 = v21[0];
    if (!mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v21[0]))
    {
      goto LABEL_9;
    }
  }

  if (!v12)
  {
LABEL_9:
    v14 = v24;
    goto LABEL_14;
  }

  InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v12);
  (*(InterfaceFor + 32))(InterfaceFor, v12, a5);
  if (v24 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = NameAttr + 16 * v24;
  *v15 = "param_decls";
  v15[1] = 11;
  v14 = v24 + 1;
  LODWORD(v24) = v24 + 1;
LABEL_14:
  if (v14 >= HIDWORD(v24))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = NameAttr + 16 * v14;
  *v16 = "sym_name";
  v16[1] = 8;
  LODWORD(v24) = v24 + 1;
  AttrDictionary = mlir::Operation::getAttrDictionary(v21[0]);
  v17 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a5 + 200))(a5, v17, v18, NameAttr, v24);
  v19 = (*(*a5 + 16))(a5);
  v20 = v19[4];
  if (v19[3] == v20)
  {
    llvm::raw_ostream::write(v19, " ", 1uLL);
  }

  else
  {
    *v20 = 32;
    ++v19[4];
  }

  (*(*a5 + 224))(a5, ((v21[0] + 16 * ((*(v21[0] + 11) >> 23) & 1) + ((*(v21[0] + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v21[0] + 10), 0, 0, 0);
  if (NameAttr != v25)
  {
    free(NameAttr);
  }
}

void mlir::ODIE::Compiler::CoreML::parseNamedRegionOp(uint64_t a1, mlir::OperationState *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ModuleOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::specialize(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
    mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v3, InterfaceFor, a2);
  }

  mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(0, 0, a2);
}

void mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v7 = 0;
  v5 = 0u;
  *v6 = 0u;
  *v3 = 0u;
  *__p = 0u;
  v10[0] = &unk_2868634C8;
  v10[1] = a3;
  v10[3] = v10;
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement();
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::readProperties(uint64_t a1, mlir::Attribute *a2)
{
  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v7);
  v4 = *(a2 + 32);
  if (!v4)
  {
    operator new();
  }

  if (v7[1])
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext(a2);
    *v4 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, 0, 0);
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v4 + 1) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 48))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
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

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr]";
  *(&v28 + 1) = 98;
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

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::print(mlir::ODIE::Compiler::CoreML::ImportOp *this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 40))(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80));
  v18 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  result = mlir::SymbolRefAttr::getRootReference(&v18);
  v7 = *this;
  v8 = (*(*this + 44) >> 23) & 1;
  if (result != *(*this + 16 * v8 + 72))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = v9[4];
    if (v9[3] - v10 > 3uLL)
    {
      *v10 = 544432416;
      v9[4] += 4;
    }

    else
    {
      llvm::raw_ostream::write(v9, " as ", 4uLL);
    }

    v18 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    Value = mlir::StringAttr::getValue(&v18);
    result = (*(*a2 + 88))(a2, Value, v12);
    v7 = *this;
    v8 = (*(*this + 44) >> 23) & 1;
  }

  v18 = *(v7 + 16 * v8 + 64);
  if (v18)
  {
    v13 = mlir::StringAttr::getValue(&v18);
    v15 = v14;
    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if ((v16[3] - v17) > 5)
    {
      *(v17 + 4) = 8301;
      *v17 = 1869768224;
      v16[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v16, " from ", 6uLL);
    }

    return (*(*a2 + 80))(a2, v13, v15);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getPath@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
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

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::parse(mlir::ODIE::Compiler::CoreML::ImportOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    operator new();
  }

  v13 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(this, &v13, 0))
  {
    return 0;
  }

  v4[2] = v13;
  if ((*(*this + 408))(this, "as", 2))
  {
    v9[0] = 0;
    if (!mlir::AsmParser::parseSymbolName(this, v9))
    {
      return 0;
    }

    v4[1] = v9[0];
  }

  else
  {
    v4[1] = mlir::SymbolRefAttr::getRootReference(&v13);
  }

  if ((*(*this + 408))(this, "from", 4))
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v5 = mlir::AsmParser::parseString(this, __p);
    if (v5)
    {
      v6 = (*(*this + 32))(this);
      v10 = 260;
      v9[0] = __p;
      *v4 = mlir::Builder::getStringAttr(v6, v9, v7);
      if (SHIBYTE(v12) < 0)
      {
        goto LABEL_12;
      }
    }

    else if (SHIBYTE(v12) < 0)
    {
LABEL_12:
      operator delete(__p[0]);
      return (v5 & 1) != 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v3 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::printNamedRegionOp(v3, InterfaceFor, 0, 0, a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::ClassOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::getMemberValue(mlir::Operation **a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  mlir::Region::getOps<mlir::ODIE::Compiler::CoreML::MemberOp>((((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10)), &v43);
  v51 = v43;
  *v52 = v44;
  v53 = v45;
  v54 = v46;
  v8 = v47;
  v9 = v44;
  if (v44 != v47)
  {
    if (a3)
    {
      do
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
        v11 = (*(&v54 + 1))(ValuePtr);
        *&v48 = mlir::SymbolTable::getSymbolName(v11, v12);
        Value = mlir::StringAttr::getValue(&v48);
        if (v14 == a3 && !memcmp(Value, a2, a3))
        {
          break;
        }

        while (1)
        {
          mlir::Region::OpIterator::operator++(&v51);
          v9 = v52[0];
          if (v52[0] == *(&v53 + 1))
          {
            break;
          }

          v15 = v54;
          v16 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v52[0]);
          if (v15(v16))
          {
            v9 = v52[0];
            break;
          }
        }
      }

      while (v9 != v8);
    }

    else
    {
      do
      {
        v17 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
        v18 = (*(&v54 + 1))(v17);
        *&v48 = mlir::SymbolTable::getSymbolName(v18, v19);
        mlir::StringAttr::getValue(&v48);
        if (!v20)
        {
          break;
        }

        while (1)
        {
          mlir::Region::OpIterator::operator++(&v51);
          v9 = v52[0];
          if (v52[0] == *(&v53 + 1))
          {
            break;
          }

          v21 = v54;
          v22 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v52[0]);
          if (v21(v22))
          {
            v9 = v52[0];
            break;
          }
        }
      }

      while (v9 != v8);
    }
  }

  if (v52[0] == v47)
  {
    v42[16] = 257;
    mlir::OpState::emitError(a1, v42, &v51);
    if (!v51)
    {
      goto LABEL_26;
    }

    LODWORD(v48) = 3;
    *(&v48 + 1) = "no member named '";
    v49 = 17;
    if (v53 >= DWORD1(v53))
    {
      if (v52[1] > &v48 || v52[1] + 24 * v53 <= &v48)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v29 = v52[1] + 24 * v53;
    v30 = v48;
    *(v29 + 2) = v49;
    *v29 = v30;
    LODWORD(v53) = v53 + 1;
    if (v51 && (v50 = 261, *&v48 = a2, *(&v48 + 1) = a3, mlir::Diagnostic::operator<<(&v51 + 8, &v48), v51))
    {
      LODWORD(v48) = 3;
      *(&v48 + 1) = "' found";
      v49 = 7;
      if (v53 >= DWORD1(v53))
      {
        if (v52[1] > &v48 || v52[1] + 24 * v53 <= &v48)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = v52[1] + 24 * v53;
      v32 = v48;
      *(v31 + 2) = v49;
      *v31 = v32;
      LODWORD(v53) = v53 + 1;
      v33 = v51;
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v33)
      {
        mlir::InFlightDiagnostic::report(&v51);
      }
    }

    else
    {
LABEL_26:
      *a4 = 0;
      *(a4 + 16) = 0;
    }

    if (v60 == 1)
    {
      if (v59 != &v60)
      {
        free(v59);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v58;
        v36 = __p;
        if (v58 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v58 = v34;
        operator delete(v36);
      }

      v37 = v55;
      if (v55)
      {
        v38 = v56;
        v39 = v55;
        if (v56 != v55)
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
          v39 = v55;
        }

        v56 = v37;
        operator delete(v39);
      }

      if (v52[1] != &v53 + 8)
      {
        free(v52[1]);
      }
    }
  }

  else
  {
    v23 = *(&v54 + 1);
    v24 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v52[0]);
    v25 = v23(v24);
    v26 = *(v25 + 16 * ((*(v25 + 44) >> 23) & 1) + 80);
    if (v26 && (v27 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr const,void>>::doCastIfPossible(v26)) != 0)
    {
      *a4 = v27;
      *(a4 + 8) = v28;
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
    }

    *(a4 + 16) = 1;
  }
}

void *mlir::ODIE::Compiler::CoreML::MemberOp::getValue@<X0>(mlir::ODIE::Compiler::CoreML::MemberOp *this@<X0>, uint64_t a2@<X8>)
{
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (result && (result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr const,void>>::doCastIfPossible(result)) != 0)
  {
    *a2 = result;
    *(a2 + 8) = v4;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::specialize(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
    mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v3, InterfaceFor, a2);
  }

  mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(0, 0, a2);
}

void *mlir::ODIE::Compiler::CoreML::MemberOp::print(mlir::ODIE::Compiler::CoreML::MemberOp *this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::StringAttr::getValue(&v15);
  (*(*a2 + 88))(a2, Value, v7);
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 2)
  {
    *(v9 + 2) = 32;
    *v9 = 14880;
    v8[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v8, " : ", 3uLL);
  }

  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  v10 = mlir::TypeAttr::getValue(&v15);
  (*(*a2 + 32))(a2, v10);
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  if (result)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr const,void>>::doCastIfPossible(result);
    if (result)
    {
      v12 = result;
      v13 = (*(*a2 + 16))(a2);
      v14 = v13[4];
      if ((v13[3] - v14) > 2)
      {
        *(v14 + 2) = 32;
        *v14 = 15648;
        v13[4] += 3;
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          return (*(*a2 + 48))(a2, v12);
        }
      }

      else
      {
        llvm::raw_ostream::write(v13, " = ", 3uLL);
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
        {
          return (*(*a2 + 48))(a2, v12);
        }
      }

      return mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v12);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::parse(mlir::ODIE::Compiler::CoreML::MemberOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v9 = 0;
  v10 = 0;
  if (mlir::AsmParser::parseSymbolName(this, &v10) && ((*(*this + 104))(this) & 1) != 0 && ((*(*this + 536))(this, &v9) & 1) != 0)
  {
    mlir::NamedAttribute::NamedAttribute(&v11, **(*(a2 + 1) + 96), v10);
    mlir::NamedAttrList::push_back(a2 + 112, v11, v12);
    v5 = *(*(*(a2 + 1) + 96) + 8);
    v6 = mlir::TypeAttr::get(v9);
    mlir::NamedAttribute::NamedAttribute(&v11, v5, v6);
    mlir::NamedAttrList::push_back(a2 + 112, v11, v12);
    if (((*(*this + 144))(this) & 1) == 0)
    {
      return 1;
    }

    v8[0] = 0;
    v8[1] = 0;
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, v8))
    {
      mlir::NamedAttribute::NamedAttribute(&v11, *(*(*(a2 + 1) + 96) + 16), v8[0]);
      mlir::NamedAttrList::push_back(a2 + 112, v11, v12);
      return 1;
    }
  }

  return 0;
}