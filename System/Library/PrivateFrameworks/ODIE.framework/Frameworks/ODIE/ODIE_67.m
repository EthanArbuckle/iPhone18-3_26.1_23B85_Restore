void mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DILexicalBlockAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSD_11DIScopeAttrENSD_6detail25DILexicalBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSC_11DIScopeAttrENSC_6detail25DILexicalBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, "llvm.di_lexical_block", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSD_11DIScopeAttrENSD_6detail25DILexicalBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18DILexicalBlockAttrENSC_11DIScopeAttrENSC_6detail25DILexicalBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2[2];
  if (a2[1])
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = a2[3];
  if (v3)
  {
    v3 = *a3;
  }

  v7 = *(**v4 + 32);
  v8 = *v7;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id;
  v12[1] = v7;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25DILexicalBlockAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18DILexicalBlockAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjSH_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v17[1] = v12;
  v14 = v4;
  v15 = v3;
  v16 = v6;
  memset(v19, 0, sizeof(v19));
  memset(__dst, 0, sizeof(__dst));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int>(__dst, __dst, v19, v4, &v15, &v16, &v16 + 1);
  v13 = &v14;
  *&__dst[0] = &v14;
  *(&__dst[0] + 1) = v17;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DILexicalBlockFileAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DILexicalBlockFileAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSD_11DIScopeAttrENSD_6detail29DILexicalBlockFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSC_11DIScopeAttrENSC_6detail29DILexicalBlockFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, "llvm.di_lexical_block_file", 26);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSD_11DIScopeAttrENSD_6detail29DILexicalBlockFileAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22DILexicalBlockFileAttrENSC_11DIScopeAttrENSC_6detail29DILexicalBlockFileAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + 24);
  if (v3)
  {
    v3 = *a3;
  }

  v7 = *(**v4 + 32);
  v8 = *v7;
  v12[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id;
  v12[1] = v7;
  v17[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail29DILexicalBlockFileAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22DILexicalBlockFileAttrEJRNS2_11DIScopeAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v17[1] = v12;
  v14 = v4;
  v15 = v3;
  v16 = v6;
  memset(v19, 0, sizeof(v19));
  memset(__dst, 0, sizeof(__dst));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v19, v4, &v15, &v16);
  v13 = &v14;
  *&__dst[0] = &v14;
  *(&__dst[0] + 1) = v17;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILexicalBlockFileAttr,void>::id, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v13, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILexicalBlockFileAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILexicalBlockFileAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILexicalBlockFileAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DILocalVariableAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DILocalVariableAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSD_10DINodeAttrENSD_6detail26DILocalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSC_10DINodeAttrENSC_6detail26DILocalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, "llvm.di_local_variable", 22);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSD_10DINodeAttrENSD_6detail26DILocalVariableAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[6];
  v8 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v8;
  }

  if (v6)
  {
    (v8)(a4, v6);
    a3 = v8;
  }

  if (v5)
  {
    (v8)(a4, v5);
    a3 = v8;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM19DILocalVariableAttrENSC_10DINodeAttrENSC_6detail26DILocalVariableAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = *a3;
    a3 = (a3 + 8);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v6 = *a3;
    a3 = (a3 + 8);
    v3 = v6;
  }

  if (*(a2 + 24))
  {
    v8 = *a3;
    a3 = (a3 + 8);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  if (*(a2 + 48))
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(v3 + 16);
  v13 = *(v3 + 24);
  v15 = *(**v4 + 32);
  v22 = 261;
  v21[0] = v14;
  v21[1] = v13;
  v16 = mlir::StringAttr::get(v15, v21, a3);
  v17 = *v15;
  v23[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id;
  v23[1] = v15;
  v32[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail26DILocalVariableAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19DILocalVariableAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjSI_SI_RNS2_10DITypeAttrERNS2_7DIFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS5_;
  v32[1] = v23;
  v25 = v4;
  v26 = v16;
  v27 = v7;
  v28 = v9;
  v29 = v10;
  v30 = v12;
  v31 = v11;
  memset(v34, 0, sizeof(v34));
  memset(__dst, 0, sizeof(__dst));
  v35 = 0;
  v36 = 0xFF51AFD7ED558CCDLL;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int,unsigned int,unsigned int,mlir::LLVM::DITypeAttr,mlir::LLVM::DIFlags>(__dst, __dst, v34, v4, &v26, &v27, &v28, &v28 + 1, &v29, &v30, &v31);
  v24 = &v25;
  __dst[0] = &v25;
  __dst[1] = v32;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v17 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILocalVariableAttr,void>::id, v18, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILocalVariableAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILocalVariableAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILocalVariableAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &,unsigned int &,unsigned int &,mlir::LLVM::DITypeAttr &,mlir::LLVM::DIFlags &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DISubprogramAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v4 = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getIsRecSelf;
  v4[1] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getRecId;
  v4[2] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::withRecId;
  v4[3] = mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getRecSelf;
  v5 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::LLVM::DISubprogramAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DISubprogramAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSD_11DIScopeAttrENSD_6detail23DISubprogramAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSC_11DIScopeAttrENSC_6detail23DISubprogramAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubprogramAttr,void>::id, "llvm.di_subprogram", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::withRecId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v8[8] = *(a2 + 104);
  *v8 = *(a2 + 96);
  v3 = mlir::LLVM::DISubprogramAttr::get(*(**a2 + 32), a3, *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), HIDWORD(*(a2 + 72)), *(a2 + 80), *(a2 + 88), *v8, *(a2 + 112), *(a2 + 120));
  v4 = v3;
  if (v3)
  {
    v5 = *v3;
    v6 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
  }

  return v4;
}

void *mlir::LLVM::detail::DIRecursiveTypeAttrInterfaceInterfaceTraits::Model<mlir::LLVM::DISubprogramAttr>::getRecSelf(uint64_t a1)
{
  v1 = mlir::LLVM::DISubprogramAttr::get(*(**a1 + 32), a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v2 = v1;
  if (v1)
  {
    v3 = *v1;
    v4 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v3 + 8, v4);
  }

  return v2;
}

BOOL mlir::detail::StorageUserBase<mlir::LLVM::DISubprogramAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DISubprogramAttrStorage,mlir::detail::AttributeUniquer,mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::DIRecursiveTypeAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSD_11DIScopeAttrENSD_6detail23DISubprogramAttrStorageENSB_16AttributeUniquerEJNSD_28DIRecursiveTypeAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = a2[3];
  v6 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  v11 = a2[7];
  v10 = a2[8];
  v12 = a2[11];
  v13 = a2[12];
  v14 = a2[14];
  v18 = v12;
  v19 = a2[13];
  v20 = a2[15];
  if (a2[1])
  {
    result = a3(a4);
  }

  if (v7)
  {
    result = (a3)(a4, v7);
  }

  if (v6)
  {
    result = (a3)(a4, v6);
  }

  if (v9)
  {
    result = (a3)(a4, v9);
  }

  if (v8)
  {
    result = (a3)(a4, v8);
  }

  if (v11)
  {
    result = (a3)(a4, v11);
  }

  if (v10)
  {
    result = (a3)(a4, v10);
  }

  if (v18)
  {
    result = a3(a4);
  }

  if (v19)
  {
    v16 = 8 * v19;
    do
    {
      if (*v13)
      {
        result = a3(a4);
      }

      ++v13;
      v16 -= 8;
    }

    while (v16);
  }

  if (v20)
  {
    v17 = 8 * v20;
    do
    {
      if (*v14)
      {
        result = a3(a4);
      }

      ++v14;
      v17 -= 8;
    }

    while (v17);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DISubprogramAttrENSC_11DIScopeAttrENSC_6detail23DISubprogramAttrStorageENSA_16AttributeUniquerEJNSC_28DIRecursiveTypeAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  if (v4)
  {
    --a4;
    v6 = *a3++;
    v4 = v6;
  }

  if (v5)
  {
    --a4;
    v7 = *a3++;
    v5 = v7;
  }

  if (*(a2 + 32))
  {
    --a4;
    v9 = *a3++;
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 40))
  {
    --a4;
    v11 = *a3++;
    v10 = v11;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 48))
  {
    --a4;
    v13 = *a3++;
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a2 + 64);
  if (*(a2 + 56))
  {
    --a4;
    v16 = *a3++;
    v15 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = *(a2 + 104);
  v18 = *(a2 + 120);
  v19 = *(a2 + 88);
  if (v14)
  {
    --a4;
    v20 = *a3++;
    v14 = v20;
  }

  if (v19)
  {
    --a4;
    v21 = *a3++;
    v19 = v21;
  }

  v22 = a4 - v17;
  if (a4 >= v17)
  {
    a4 = *(a2 + 104);
  }

  v23 = &a3[v17];
  if (v22 < v18)
  {
    v18 = v22;
  }

  *&v25 = a3;
  *(&v25 + 1) = a4;
  return mlir::LLVM::DISubprogramAttr::get(*(**a2 + 32), v4, *(a2 + 16), v5, v8, v10, v12, v15, v14, *(a2 + 72), *(a2 + 76), *(a2 + 80), v19, v25, v23, v18);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIModuleAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIModuleAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DIModuleAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSD_11DIScopeAttrENSD_6detail19DIModuleAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSC_11DIScopeAttrENSC_6detail19DIModuleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIModuleAttr,void>::id, "llvm.di_module", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSD_11DIScopeAttrENSD_6detail19DIModuleAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v10 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v10;
  }

  if (v6)
  {
    (v10)(a4, v6);
    a3 = v10;
  }

  if (v5)
  {
    (v10)(a4, v5);
    a3 = v10;
  }

  if (v8)
  {
    (v10)(a4, v8);
    a3 = v10;
  }

  if (v7)
  {
    (v10)(a4, v7);
    a3 = v10;
  }

  if (v9)
  {

    (a3)(a4, v9);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12DIModuleAttrENSC_11DIScopeAttrENSC_6detail19DIModuleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  if (*(a2 + 24))
  {
    v8 = *a3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 32))
  {
    v10 = *a3++;
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + 40))
  {
    v12 = *a3++;
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + 48))
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  return mlir::LLVM::DIModuleAttr::get(*(**a2 + 32), v3, v4, v7, v9, v11, v13, *(a2 + 56), *(a2 + 60));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DINamespaceAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DINamespaceAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DINamespaceAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSD_11DIScopeAttrENSD_6detail22DINamespaceAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSC_11DIScopeAttrENSC_6detail22DINamespaceAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DINamespaceAttr,void>::id, "llvm.di_namespace", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSD_11DIScopeAttrENSD_6detail22DINamespaceAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15DINamespaceAttrENSC_11DIScopeAttrENSC_6detail22DINamespaceAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (*(a2 + 16))
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DINamespaceAttr::get(*(**a2 + 32), v3, v5, *(a2 + 24));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIImportedEntityAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIImportedEntityAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIImportedEntityAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSD_10DINodeAttrENSD_6detail27DIImportedEntityAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSC_10DINodeAttrENSC_6detail27DIImportedEntityAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIImportedEntityAttr,void>::id, "llvm.di_imported_entity", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSD_10DINodeAttrENSD_6detail27DIImportedEntityAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = a2[3];
  v6 = a2[4];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  if (a2[2])
  {
    result = a3(a4);
  }

  if (v7)
  {
    result = (a3)(a4, v7);
  }

  if (v6)
  {
    result = (a3)(a4, v6);
  }

  if (v8)
  {
    result = (a3)(a4, v8);
  }

  if (v10)
  {
    v12 = 8 * v10;
    do
    {
      if (*v9)
      {
        result = a3(a4);
      }

      ++v9;
      v12 -= 8;
    }

    while (v12);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DIImportedEntityAttrENSC_10DINodeAttrENSC_6detail27DIImportedEntityAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v8)
  {
    --a4;
    v10 = *a3;
    a3 += 2;
    v8 = v10;
  }

  if (v9)
  {
    --a4;
    v11 = *a3;
    a3 += 2;
    v9 = v11;
  }

  v12 = *(a2 + 64);
  v13 = *(a2 + 48);
  if (*(a2 + 32))
  {
    --a4;
    v15 = *a3;
    a3 += 2;
    v14 = v15;
    if (v13)
    {
LABEL_7:
      --a4;
      v17 = *a3;
      a3 += 2;
      v16 = v17;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_10:
  if (a4 < v12)
  {
    v12 = a4;
  }

  return mlir::LLVM::DIImportedEntityAttr::get(*(**a2 + 32), *(a2 + 8), v8, v9, v14, *(a2 + 40), v16, a8, a3, v12);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIAnnotationAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIAnnotationAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIAnnotationAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSD_10DINodeAttrENSD_6detail23DIAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSC_10DINodeAttrENSC_6detail23DIAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIAnnotationAttr,void>::id, "llvm.di_annotation", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSD_10DINodeAttrENSD_6detail23DIAnnotationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIAnnotationAttrENSC_10DINodeAttrENSC_6detail23DIAnnotationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::DIAnnotationAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DISubrangeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DISubrangeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DISubrangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSD_10DINodeAttrENSD_6detail21DISubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSC_10DINodeAttrENSC_6detail21DISubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubrangeAttr,void>::id, "llvm.di_subrange", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void *_ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSD_10DINodeAttrENSD_6detail21DISubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v6;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::walk(v9, v8);
}

void *mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::walk(void *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    result = (*a2)(*(a2 + 8));
  }

  if (v3[1])
  {
    result = (*a2)(*(a2 + 8));
  }

  if (v3[2])
  {
    result = (*a2)(*(a2 + 8));
  }

  if (v3[3])
  {
    v5 = *a2;
    v4 = *(a2 + 8);

    return v5(v4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14DISubrangeAttrENSC_10DINodeAttrENSC_6detail21DISubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v5;
  v13.i64[0] = a3;
  v13.i64[1] = a4;
  mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::replace(v12, v14, &v13);
  v6 = *(**a2 + 32);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];

  return mlir::LLVM::DISubrangeAttr::get(v6, v7, v8, v9, v10);
}

void *mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::replace(void *result, uint64_t *a2, int64x2_t *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v3 = *v4.i64[0];
  }

  v5 = a2[1];
  if (v5)
  {
    v6 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v5 = *v6.i64[0];
  }

  v7 = a2[2];
  if (v7)
  {
    v8 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v7 = *v8.i64[0];
  }

  if (a2[3])
  {
    v9 = *a3;
    *a3 = vaddq_s64(*a3, xmmword_25D0A0600);
    v10 = *v9.i64[0];
  }

  else
  {
    v10 = 0;
  }

  *result = v3;
  result[1] = v5;
  result[2] = v7;
  result[3] = v10;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DICommonBlockAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DICommonBlockAttr,mlir::LLVM::DIScopeAttr,mlir::LLVM::detail::DICommonBlockAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSD_11DIScopeAttrENSD_6detail24DICommonBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSC_11DIScopeAttrENSC_6detail24DICommonBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DICommonBlockAttr,void>::id, "llvm.di_common_block", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSD_11DIScopeAttrENSD_6detail24DICommonBlockAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v8;
  }

  if (v6)
  {
    (v8)(a4, v6);
    a3 = v8;
  }

  if (v5)
  {
    (v8)(a4, v5);
    a3 = v8;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17DICommonBlockAttrENSC_11DIScopeAttrENSC_6detail24DICommonBlockAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3)
  {
    v5 = *a3++;
    v3 = v5;
  }

  if (v4)
  {
    v6 = *a3++;
    v4 = v6;
  }

  v7 = *(a2 + 32);
  if (!*(a2 + 24))
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    return mlir::LLVM::DICommonBlockAttr::get(*(**a2 + 32), v3, v4, v8, v10, *(a2 + 40));
  }

  v9 = *a3++;
  v8 = v9;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = *a3;
  return mlir::LLVM::DICommonBlockAttr::get(*(**a2 + 32), v3, v4, v8, v10, *(a2 + 40));
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIGenericSubrangeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIGenericSubrangeAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DIGenericSubrangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSD_10DINodeAttrENSD_6detail28DIGenericSubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSC_10DINodeAttrENSC_6detail28DIGenericSubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIGenericSubrangeAttr,void>::id, "llvm.di_generic_subrange", 24);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void *_ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSD_10DINodeAttrENSD_6detail28DIGenericSubrangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v6;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::walk(v9, v8);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM21DIGenericSubrangeAttrENSC_10DINodeAttrENSC_6detail28DIGenericSubrangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v5;
  v13.i64[0] = a3;
  v13.i64[1] = a4;
  mlir::AttrTypeSubElementHandler<std::tuple<mlir::Attribute,mlir::Attribute,mlir::Attribute,mlir::Attribute>,void>::replace(v12, v14, &v13);
  v6 = *(**a2 + 32);
  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];

  return mlir::LLVM::DIGenericSubrangeAttr::get(v6, v7, v8, v9, v10);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DISubroutineTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DISubroutineTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DISubroutineTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSD_10DITypeAttrENSD_6detail27DISubroutineTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSC_10DITypeAttrENSC_6detail27DISubroutineTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DISubroutineTypeAttr,void>::id, "llvm.di_subroutine_type", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSD_10DITypeAttrENSD_6detail27DISubroutineTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v7 = *(a2 + 16);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20DISubroutineTypeAttrENSC_10DITypeAttrENSC_6detail27DISubroutineTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a2[2];
  if (a4 >= a2[6])
  {
    a4 = a2[6];
  }

  return mlir::LLVM::DISubroutineTypeAttr::get(*(**a2 + 32), a2[2], a3, a4);
}

void mlir::AbstractAttribute::get<mlir::LLVM::DILabelAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DILabelAttr,mlir::LLVM::DINodeAttr,mlir::LLVM::detail::DILabelAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSD_10DINodeAttrENSD_6detail18DILabelAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSC_10DINodeAttrENSC_6detail18DILabelAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, "llvm.di_label", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSD_10DINodeAttrENSD_6detail18DILabelAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v7;
  }

  if (v6)
  {
    (v7)(a4, v6);
    a3 = v7;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11DILabelAttrENSC_10DINodeAttrENSC_6detail18DILabelAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = *a3;
    a3 = (a3 + 8);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v6 = *a3;
    a3 = (a3 + 8);
    v3 = v6;
  }

  v7 = *(a2 + 32);
  if (*(a2 + 24))
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  v11 = *(**v4 + 32);
  v18 = 261;
  v17[0] = v10;
  v17[1] = v9;
  v12 = mlir::StringAttr::get(v11, v17, a3);
  v13 = *v11;
  v19[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id;
  v19[1] = v11;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18DILabelAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11DILabelAttrEJRNS2_11DIScopeAttrENS1_10StringAttrERNS2_10DIFileAttrERjEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS5_;
  v25[1] = v19;
  v21 = v4;
  v22 = v12;
  v23 = v8;
  v24 = v7;
  memset(v27, 0, sizeof(v27));
  memset(__dst, 0, sizeof(__dst));
  v28 = 0;
  v29 = 0xFF51AFD7ED558CCDLL;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::DIScopeAttr,mlir::StringAttr,mlir::LLVM::DIFileAttr,unsigned int>(__dst, __dst, v27, v4, &v22, &v23, &v24);
  v20 = &v21;
  *&__dst[0] = &v21;
  *(&__dst[0] + 1) = v25;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::DILabelAttr,void>::id, v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::DILabelAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::DILabelAttrStorage,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &>(llvm::function_ref<void ()(mlir::LLVM::detail::DILabelAttrStorage *)>,mlir::TypeID,mlir::LLVM::DIScopeAttr &,mlir::StringAttr,mlir::LLVM::DIFileAttr &,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::DIStringTypeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::DIStringTypeAttr,mlir::LLVM::DITypeAttr,mlir::LLVM::detail::DIStringTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSD_10DITypeAttrENSD_6detail23DIStringTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSC_10DITypeAttrENSC_6detail23DIStringTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::DIStringTypeAttr,void>::id, "llvm.di_string_type", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSD_10DITypeAttrENSD_6detail23DIStringTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[5];
  v5 = a2[6];
  v7 = a2[7];
  v8 = a3;
  if (a2[2])
  {
    a3(a4);
    a3 = v8;
  }

  if (v6)
  {
    (v8)(a4, v6);
    a3 = v8;
  }

  if (v5)
  {
    (v8)(a4, v5);
    a3 = v8;
  }

  if (v7)
  {

    (a3)(a4, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16DIStringTypeAttrENSC_10DITypeAttrENSC_6detail23DIStringTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3;
  if (*(a2 + 16))
  {
    v3 = a3 + 1;
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 40))
  {
    v6 = *v3++;
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 48))
  {
    v8 = *v3++;
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 56))
  {
    v9 = *v3;
  }

  else
  {
    v9 = 0;
  }

  return mlir::LLVM::DIStringTypeAttr::get(*(**a2 + 32), *(a2 + 8), v4, *(a2 + 24), *(a2 + 32), v5, v7, v9, *(a2 + 64));
}

void mlir::AbstractAttribute::get<mlir::LLVM::MemoryEffectsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::MemoryEffectsAttr,mlir::Attribute,mlir::LLVM::detail::MemoryEffectsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17MemoryEffectsAttrES2_NSD_6detail24MemoryEffectsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17MemoryEffectsAttrES2_NSC_6detail24MemoryEffectsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id, "llvm.memory_effects", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeDomainAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeDomainAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeDomainAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSD_6detail27AliasScopeDomainAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSC_6detail27AliasScopeDomainAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeDomainAttr,void>::id, "llvm.alias_scope_domain", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSD_6detail27AliasScopeDomainAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM20AliasScopeDomainAttrES2_NSC_6detail27AliasScopeDomainAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::AliasScopeDomainAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::AliasScopeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::AliasScopeAttr,mlir::Attribute,mlir::LLVM::detail::AliasScopeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSD_6detail21AliasScopeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSC_6detail21AliasScopeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, "llvm.alias_scope", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSD_6detail21AliasScopeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a3;
  if (a2[1])
  {
    a3(a4);
    a3 = v7;
  }

  if (v6)
  {
    (v7)(a4, v6);
    a3 = v7;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14AliasScopeAttrES2_NSC_6detail21AliasScopeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2[2];
  if (a2[1])
  {
    v5 = *a3++;
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  v6 = a2[3];
  if (v3)
  {
    v7 = *a3++;
    v3 = v7;
  }

  if (v6)
  {
    v6 = *a3;
  }

  v8 = *(**a2 + 32);
  v9 = *v8;
  v13[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id;
  v13[1] = v8;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21AliasScopeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14AliasScopeAttrEJNS1_9AttributeENS2_20AliasScopeDomainAttrENS1_10StringAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v18[1] = v13;
  v15 = v4;
  v16 = v3;
  v17 = v6;
  memset(v20, 0, sizeof(v20));
  memset(__dst, 0, sizeof(__dst));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(__dst, __dst, v20, v4, &v16, &v17);
  v14 = &v15;
  *&__dst[0] = &v15;
  *(&__dst[0] + 1) = v18;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::AliasScopeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::AliasScopeAttrStorage,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::AliasScopeAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::LLVM::AliasScopeDomainAttr,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::AccessGroupAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::AccessGroupAttr,mlir::Attribute,mlir::LLVM::detail::AccessGroupAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSD_6detail22AccessGroupAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSC_6detail22AccessGroupAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id, "llvm.access_group", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSD_6detail22AccessGroupAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15AccessGroupAttrES2_NSC_6detail22AccessGroupAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::AccessGroupAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAARootAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::TBAARootAttr,mlir::LLVM::TBAANodeAttr,mlir::LLVM::detail::TBAARootAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSD_12TBAANodeAttrENSD_6detail19TBAARootAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSC_12TBAANodeAttrENSC_6detail19TBAARootAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAARootAttr,void>::id, "llvm.tbaa_root", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSD_12TBAANodeAttrENSD_6detail19TBAARootAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM12TBAARootAttrENSC_12TBAANodeAttrENSC_6detail19TBAARootAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v3 = *a3;
  }

  return mlir::LLVM::TBAARootAttr::get(*(**a2 + 32), v3);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAAMemberAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::TBAAMemberAttr,mlir::Attribute,mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSD_6detail21TBAAMemberAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSC_6detail21TBAAMemberAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, "llvm.tbaa_member", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSD_6detail21TBAAMemberAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM14TBAAMemberAttrES2_NSC_6detail21TBAAMemberAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(**v4 + 32);
  v6 = *v5;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id;
  v10[1] = v5;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21TBAAMemberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14TBAAMemberAttrEJRNS2_12TBAANodeAttrERxEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v14[1] = v10;
  v12 = v4;
  v13 = v3;
  memset(v16, 0, sizeof(v16));
  memset(__dst, 0, sizeof(__dst));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::TBAANodeAttr,long long>(__dst, __dst, v16, v4, &v13);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v14;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TBAAMemberAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr &,long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr &,long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TBAAMemberAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TBAAMemberAttrStorage,mlir::LLVM::TBAANodeAttr &,long long &>(llvm::function_ref<void ()(mlir::LLVM::detail::TBAAMemberAttrStorage *)>,mlir::TypeID,mlir::LLVM::TBAANodeAttr &,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAATypeDescriptorAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::TBAATypeDescriptorAttr,mlir::LLVM::TBAANodeAttr,mlir::LLVM::detail::TBAATypeDescriptorAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSD_12TBAANodeAttrENSD_6detail29TBAATypeDescriptorAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSC_12TBAANodeAttrENSC_6detail29TBAATypeDescriptorAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATypeDescriptorAttr,void>::id, "llvm.tbaa_type_desc", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSD_12TBAANodeAttrENSD_6detail29TBAATypeDescriptorAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v7 = *(a2 + 24);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM22TBAATypeDescriptorAttrENSC_12TBAANodeAttrENSC_6detail29TBAATypeDescriptorAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  if (a4 >= *(a2 + 32))
  {
    v4 = *(a2 + 32);
  }

  else
  {
    v4 = a4;
  }

  return mlir::LLVM::TBAATypeDescriptorAttr::get(*(**a2 + 32), *(a2 + 8), *(a2 + 16), a3, v4);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TBAATagAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::TBAATagAttr,mlir::Attribute,mlir::LLVM::detail::TBAATagAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSD_6detail18TBAATagAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSC_6detail18TBAATagAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id, "llvm.tbaa_tag", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSD_6detail18TBAATagAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM11TBAATagAttrES2_NSC_6detail18TBAATagAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (*(a2 + 16))
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::TBAATagAttr::get(*(**a2 + 32), v3, v5, *(a2 + 24), *(a2 + 32));
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSD_6detail24ConstantRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2)
{
  result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm5APIntES4_EEC2B8nn200100IJLm0ELm1EEJS4_S4_EJEJEJRKS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(&v3, a2 + 8, a2 + 24);
  if (v6 >= 0x41)
  {
    result = v5;
    if (v5)
    {
      result = MEMORY[0x25F891010](v5, 0x1000C8000313F17);
    }
  }

  if (v4 >= 0x41)
  {
    result = v3;
    if (v3)
    {
      return MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm5APIntES4_EEC2B8nn200100IJLm0ELm1EEJS4_S4_EJEJEJRKS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  *(result + 8) = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  *result = *a2;
  v4 = *(a3 + 8);
  *(result + 24) = v4;
  if (v4 > 0x40)
  {
    operator new[]();
  }

  *(result + 16) = *a3;
  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17ConstantRangeAttrES2_NSC_6detail24ConstantRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v21[9] = *MEMORY[0x277D85DE8];
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJN4llvm5APIntES4_EEC2B8nn200100IJLm0ELm1EEJS4_S4_EJEJEJRKS4_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSA_IJDpT2_EEEDpOT3_(&__src, a2 + 8, a2 + 24);
  v3 = *(**a2 + 32);
  if (v10 > 0x40)
  {
    operator new[]();
  }

  if (v12 > 0x40)
  {
    operator new[]();
  }

  v4 = *v3;
  v13[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id;
  v13[1] = v3;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24ConstantRangeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ConstantRangeAttrEJNS_5APIntESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v19[1] = v13;
  v16 = v10;
  v15 = __src;
  v18 = v12;
  v17 = v11;
  memset(v21, 0, 56);
  memset(v20, 0, sizeof(v20));
  v21[7] = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APInt,llvm::APInt>(v20, v20, v21, &v15, &v17);
  v14 = &v15;
  *&v20[0] = &v15;
  *(&v20[0] + 1) = v19;
  v6 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::ConstantRangeAttr,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt,llvm::APInt>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt,llvm::APInt &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ConstantRangeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ConstantRangeAttrStorage,llvm::APInt,llvm::APInt>(llvm::function_ref<void ()(mlir::LLVM::detail::ConstantRangeAttrStorage *)>,mlir::TypeID,llvm::APInt,llvm::APInt &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v20);
  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x25F891010](v17, 0x1000C8000313F17);
  }

  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x25F891010](v15, 0x1000C8000313F17);
  }

  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x25F891010](v11, 0x1000C8000313F17);
  }

  if (v10 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::LLVM::detail::ConstantRangeAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) >= 0x41u)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      MEMORY[0x25F891010](v3, 0x1000C8000313F17);
    }
  }

  if (*(a2 + 16) >= 0x41u && *(a2 + 8))
  {

    JUMPOUT(0x25F891010);
  }
}

void mlir::AbstractAttribute::get<mlir::LLVM::VScaleRangeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::VScaleRangeAttr,mlir::Attribute,mlir::LLVM::detail::VScaleRangeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSD_6detail22VScaleRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSC_6detail22VScaleRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id, "llvm.vscale_range", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSD_6detail22VScaleRangeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VScaleRangeAttrES2_NSC_6detail22VScaleRangeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::VScaleRangeAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::TargetFeaturesAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::TargetFeaturesAttr,mlir::Attribute,mlir::LLVM::detail::TargetFeaturesAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSD_6detail25TargetFeaturesAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSC_6detail25TargetFeaturesAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, "llvm.target_features", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSD_6detail25TargetFeaturesAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 8);
    v8 = 8 * v4;
    do
    {
      if (*v7)
      {
        result = a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM18TargetFeaturesAttrES2_NSC_6detail25TargetFeaturesAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2[4];
  if (a4 < v4)
  {
    v4 = a4;
  }

  v5 = *(**a2 + 32);
  v6 = *v5;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id;
  v10[1] = v5;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25TargetFeaturesAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18TargetFeaturesAttrEJNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v13[1] = v10;
  v12[0] = a3;
  v12[1] = v4;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::StringAttr>>(v14, 0, v14, v15, v12);
  v11 = v12;
  *&v14[0] = v12;
  *(&v14[0] + 1) = v13;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::TargetFeaturesAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::TargetFeaturesAttrStorage,llvm::ArrayRef<mlir::StringAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::TargetFeaturesAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::StringAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::UndefAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::UndefAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9UndefAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM9UndefAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::UndefAttr,void>::id, "llvm.undef", 10);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::UndefAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM9UndefAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM9UndefAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::PoisonAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10PoisonAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM10PoisonAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::PoisonAttr,void>::id, "llvm.poison", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::PoisonAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::VecTypeHintAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::VecTypeHintAttr,mlir::Attribute,mlir::LLVM::detail::VecTypeHintAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSD_6detail22VecTypeHintAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSC_6detail22VecTypeHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id, "llvm.vec_type_hint", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSD_6detail22VecTypeHintAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM15VecTypeHintAttrES2_NSC_6detail22VecTypeHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 8))
  {
    v3 = *a3;
  }

  else
  {
    v3 = 0;
  }

  return mlir::LLVM::VecTypeHintAttr::get(*(**a2 + 32), v3, *(a2 + 16));
}

void mlir::AbstractAttribute::get<mlir::LLVM::ZeroAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::ZeroAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM8ZeroAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM8ZeroAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::ZeroAttr,void>::id, "llvm.zero", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::LLVM::ZeroAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM8ZeroAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_4LLVM8ZeroAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void mlir::AbstractAttribute::get<mlir::LLVM::TailCallKindAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::TailCallKindAttr,mlir::Attribute,mlir::LLVM::detail::TailCallKindAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16TailCallKindAttrES2_NSD_6detail23TailCallKindAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM16TailCallKindAttrES2_NSC_6detail23TailCallKindAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id, "llvm.tailcallkind", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::LLVM::WorkgroupAttributionAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::WorkgroupAttributionAttr,mlir::Attribute,mlir::LLVM::detail::WorkgroupAttributionAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSD_6detail31WorkgroupAttributionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSC_6detail31WorkgroupAttributionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::WorkgroupAttributionAttr,void>::id, "llvm.mlir.workgroup_attribution", 31);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSD_6detail31WorkgroupAttributionAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24WorkgroupAttributionAttrES2_NSC_6detail31WorkgroupAttributionAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *a3++;
    v3 = v4;
  }

  if (a2[2])
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return mlir::LLVM::WorkgroupAttributionAttr::get(*(**a2 + 32), v3, v5);
}

void mlir::AbstractAttribute::get<mlir::LLVM::IntegerOverflowFlagsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::IntegerOverflowFlagsAttr,mlir::Attribute,mlir::LLVM::detail::IntegerOverflowFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24IntegerOverflowFlagsAttrES2_NSD_6detail31IntegerOverflowFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM24IntegerOverflowFlagsAttrES2_NSC_6detail31IntegerOverflowFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::IntegerOverflowFlagsAttr,void>::id, "llvm.overflow", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::LLVM::FastmathFlagsAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::LLVM::FastmathFlagsAttr,mlir::Attribute,mlir::LLVM::detail::FastmathFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17FastmathFlagsAttrES2_NSD_6detail24FastmathFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4LLVM17FastmathFlagsAttrES2_NSC_6detail24FastmathFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id, "llvm.fastmath", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::LLVM::LLVMDialect::LLVMDialect(mlir::LLVM::LLVMDialect *this, mlir::MLIRContext *a2, const llvm::Twine *a3)
{
  *(this + 1) = "llvm";
  *(this + 2) = 4;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E8B3A8;
  v4 = 262;
  v3[0] = "llvm.workgroup_attribution";
  v3[1] = 26;
  *(this + 12) = mlir::StringAttr::get(a2, v3, a3);
  _ZNSt3__115allocate_sharedB8nn200100IN4mlir16ThreadLocalCacheIN4llvm8DenseSetINS1_4TypeENS3_12DenseMapInfoIS5_vEEEEE16PerInstanceStateENS_9allocatorISA_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void mlir::LLVM::LLVMDialect::~LLVMDialect(mlir::LLVM::LLVMDialect *this)
{
  *this = &unk_286E8B3A8;
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  mlir::Dialect::~Dialect(this);
}

{
  mlir::LLVM::LLVMDialect::~LLVMDialect(this);

  JUMPOUT(0x25F891040);
}

void processFMFAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * a3;
  *&v15 = a2;
  *(&v15 + 1) = v4;
  llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v15);
  *&v17 = v4;
  *(&v17 + 1) = v4;
  llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v17);
  v5 = v16;
  v6 = v17;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  v17 = v15;
  v7 = v15;
  v18 = v5;
  if (v15 == v6)
  {
    v9 = 0;
    v8 = 0;
    v10 = 8;
  }

  else
  {
    v8 = 0;
    do
    {
      ++v8;
      *&v15 = v7 + 16;
      llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v15);
      v7 = v15;
    }

    while (v15 != v6);
    v9 = *(a1 + 8);
    v10 = *(a1 + 12);
  }

  v11 = v8 + v9;
  if (v11 <= v10)
  {
    v12 = v9;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11, 16);
    v12 = *(a1 + 8);
    v9 = *(a1 + 8);
  }

  v13 = v17;
  if (v17 != v6)
  {
    v14 = (*a1 + 16 * v12);
    do
    {
      *v14++ = *v13;
      *&v17 = v13 + 1;
      llvm::filter_iterator_base<mlir::NamedAttribute const*,processFMFAttr(llvm::ArrayRef<mlir::NamedAttribute>)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v17);
      v13 = v17;
    }

    while (v17 != v6);
    v9 = *(a1 + 8);
  }

  *(a1 + 8) = v9 + v8;
}

uint64_t mlir::LLVM::ICmpOp::parse(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  memset(v23, 0, 24);
  memset(v22, 0, 24);
  v21 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v24, 0, "predicate", 9, a2 + 112) || ((*(*a1 + 704))(a1, v23, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v22, 1) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 536))(a1, &v21) & 1) == 0) || ((*(*a1 + 728))(a1, v23, v21, a2 + 16) & 1) == 0 || ((*(*a1 + 728))(a1, v22, v21, a2 + 16) & 1) == 0)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v6 = mlir::LLVM::symbolizeICmpPredicate(*(v24 + 16), *(v24 + 24));
  if ((v7 & 1) == 0)
  {
    v20 = 257;
    (*(*a1 + 24))(&__src, a1, v4, v19);
    if (__src)
    {
      mlir::Diagnostic::operator<<<2ul>(v28, "'");
      if (__src)
      {
        v18 = *(v24 + 16);
        v17 = *(v24 + 24);
        v26 = 261;
        v25[0] = v18;
        v25[1] = v17;
        mlir::Diagnostic::operator<<(v28, v25);
        if (__src)
        {
          mlir::Diagnostic::operator<<<53ul>(v28, "' is an incorrect value of the 'predicate' attribute");
        }
      }
    }

    goto LABEL_20;
  }

  v8 = v6;
  v9 = (*(*a1 + 32))(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v8);
  mlir::NamedAttrList::set(a2 + 112, "predicate", 9, I64IntegerAttr);
  if ((mlir::LLVM::LLVMDialect::isCompatibleType(v21, v11, v12, v13) & 1) == 0)
  {
    v25[0] = "expected LLVM dialect-compatible type";
    v26 = 259;
    (*(*a1 + 24))(&__src, a1, v5, v25);
LABEL_20:
    v14 = v28[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_14;
  }

  __src = getI1SameShape(v21);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v28);
  v14 = 1;
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t mlir::LLVM::FCmpOp::parse(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  memset(v23, 0, 24);
  memset(v22, 0, 24);
  v21 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v24, 0, "predicate", 9, a2 + 112) || ((*(*a1 + 704))(a1, v23, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v22, 1) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 536))(a1, &v21) & 1) == 0) || ((*(*a1 + 728))(a1, v23, v21, a2 + 16) & 1) == 0 || ((*(*a1 + 728))(a1, v22, v21, a2 + 16) & 1) == 0)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v6 = mlir::LLVM::symbolizeFCmpPredicate(*(v24 + 16), *(v24 + 24));
  if ((v7 & 1) == 0)
  {
    v20 = 257;
    (*(*a1 + 24))(&__src, a1, v4, v19);
    if (__src)
    {
      mlir::Diagnostic::operator<<<2ul>(v28, "'");
      if (__src)
      {
        v18 = *(v24 + 16);
        v17 = *(v24 + 24);
        v26 = 261;
        v25[0] = v18;
        v25[1] = v17;
        mlir::Diagnostic::operator<<(v28, v25);
        if (__src)
        {
          mlir::Diagnostic::operator<<<53ul>(v28, "' is an incorrect value of the 'predicate' attribute");
        }
      }
    }

    goto LABEL_20;
  }

  v8 = v6;
  v9 = (*(*a1 + 32))(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v8);
  mlir::NamedAttrList::set(a2 + 112, "predicate", 9, I64IntegerAttr);
  if ((mlir::LLVM::LLVMDialect::isCompatibleType(v21, v11, v12, v13) & 1) == 0)
  {
    v25[0] = "expected LLVM dialect-compatible type";
    v26 = 259;
    (*(*a1 + 24))(&__src, a1, v5, v25);
LABEL_20:
    v14 = v28[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_14;
  }

  __src = getI1SameShape(v21);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v28);
  v14 = 1;
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t getBoolAttribute(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = 592;
  if (a3)
  {
    v3 = 600;
  }

  v4 = *(a2 + v3);
  v8 = v4;
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (v5)
  {
    return mlir::DenseElementsAttr::get(v5, v6, &v8, 1uLL);
  }

  return v4;
}

uint64_t mlir::LLVM::AllocaOp::getAlignment(mlir::LLVM::AllocaOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    if (*(v1 + 24) > 0x40u)
    {
      operator new[]();
    }

    return *(v1 + 16);
  }

  return v1;
}

uint64_t mlir::LLVM::AllocaOp::parse(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v24, 0, 24);
  v22 = 0;
  v23 = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(*(*(a2 + 8) + 96) + 16);
    v5 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v4, *(**v5 + 608));
  }

  if ((*(*a1 + 704))(a1, v24, 1))
  {
    v27 = 257;
    if ((*(*a1 + 400))(a1, "x", 1, &__src) & 1) != 0 && ((*(*a1 + 536))(a1, &v22) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v6 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 536))(a1, &v23))
      {
        v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(a2 + 112, "alignment", 9uLL);
        if ((v8 & 1) == 0)
        {
          goto LABEL_23;
        }

        v9 = *(v7 + 8);
        if (*(*v9 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v9 = 0;
        }

        v21 = v9;
        if (!v9)
        {
          v13 = (*(*a1 + 16))(a1);
          v19[0] = "expected integer alignment";
          v20 = 259;
          (*(*a1 + 24))(&__src, a1, v13, v19);
          goto LABEL_31;
        }

        mlir::IntegerAttr::getValue(&v21, &__src);
        v10 = v26[0];
        if (v26[0] > 0x40)
        {
          v14 = llvm::APInt::countLeadingZerosSlowCase(&__src);
          if (__src)
          {
            MEMORY[0x25F891010](__src, 0x1000C8000313F17);
          }

          if (v14 != v10)
          {
            goto LABEL_23;
          }
        }

        else if (__src)
        {
          goto LABEL_23;
        }

        mlir::NamedAttrList::erase(a2 + 112, "alignment", 9uLL);
LABEL_23:
        v15 = v23;
        if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id && *(v23 + 8) == 1 && *(v23 + 12) == 1)
        {
          if ((*(*a1 + 728))(a1, v24, **(v23 + 16), a2 + 16))
          {
            v16 = *(*(v15 + 16) + 8 * *(v15 + 8));
            if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
            {
              v17 = mlir::TypeAttr::get(v22);
              mlir::OperationState::addAttribute(a2, "elem_type", 9, v17);
              v16 = *(*(v15 + 16) + 8 * *(v15 + 8));
            }

            __src = v16;
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v26);
            v18 = 1;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_32;
        }

        v19[0] = "expected trailing function type with one argument and one result";
        v20 = 259;
        (*(*a1 + 24))(&__src, a1, v6, v19);
LABEL_31:
        v18 = v28 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_32:
        result = v18 & 1;
        goto LABEL_17;
      }
    }
  }

  result = 0;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::LLVM::CondBrOp::getSuccessorOperands(mlir::LLVM::CondBrOp *this, uint64_t a2, int a3)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a3)
  {
    v7 = *(v5 + 16);
    v8 = *(v5 + 20);
    v6 = v5 + 16;
    v9 = *(v6 + 8);
    v10 = v8 + v7;
    v11 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6, 3);
    __src = 2;
    v18 = v11;
    v19 = v12;
    *&v20 = a2;
    *(&v20 + 1) = __PAIR64__(v9, v10);
  }

  else
  {
    v13 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v14 = *(v5 + 16);
    v15 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 16, 3);
    __src = 1;
    v18 = v13;
    v19 = v15;
    *&v20 = a2;
    *(&v20 + 1) = v14;
  }

  v21 = v23;
  v22 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v21, &__src, &v20);
  *this = 0;
  *(this + 8) = v20;
  *(this + 3) = this + 40;
  *(this + 4) = 0x100000000;
  if (v22)
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v21);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void mlir::LLVM::SwitchOp::getSuccessorOperands(mlir::LLVM::SwitchOp *this, mlir::Operation **a2, int a3)
{
  v39[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a2;
    v7 = (*a2 + 16 * ((*(*a2 + 11) >> 23) & 1));
    v8 = v7[22];
    v9 = v7[23];
    v7 += 22;
    v10 = v7[2];
    v11 = v9 + v8;
    v12 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v13 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a2 + 3) + 32), v7, 3);
    __src = 2;
    v31 = v12;
    v32 = v13;
    v35 = v6;
    v36 = v11;
    v37 = v10;
    v38[0] = v39;
    v38[1] = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(v38, &__src, v33);
    AttrDictionary = mlir::Operation::getAttrDictionary(*a2);
    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(AttrDictionary + 8), *(AttrDictionary + 8) + 16 * *(AttrDictionary + 16), *(*(*(*a2 + 6) + 96) + 8));
    if (v17)
    {
      v18 = *v15;
      v16 = v15[1];
    }

    else
    {
      v18 = 0;
    }

    mlir::MutableOperandRangeRange::MutableOperandRangeRange(&__src, &v35, v18, v16);
    if (v38[0] != v39)
    {
      free(v38[0]);
    }

    mlir::MutableOperandRangeRange::dereference(&__src, v34[5] + (a3 - 1), &v26);
    if (v32 != v34)
    {
      free(v32);
    }

    *this = 0;
    *(this + 8) = v26;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v28)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v27);
    }

    v24 = v27;
    if (v27 != v29)
    {
LABEL_16:
      free(v24);
    }
  }

  else
  {
    v19 = *a2;
    v20 = *a2 + 16 * ((*(*a2 + 11) >> 23) & 1);
    v21 = *(v20 + 88);
    v22 = *(*(*(*a2 + 6) + 96) + 8 * *(*(*a2 + 6) + 104) - 8);
    v23 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(v19 + 3) + 32), v20 + 88, 3);
    __src = 1;
    v31 = v22;
    v32 = v23;
    *&v26 = v19;
    *(&v26 + 1) = v21;
    v27 = v29;
    v28 = 0x100000000;
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v27, &__src, v33);
    *this = 0;
    *(this + 8) = v26;
    *(this + 3) = this + 40;
    *(this + 4) = 0x100000000;
    if (v28)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v27);
    }

    v24 = v27;
    if (v27 != v29)
    {
      goto LABEL_16;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void mlir::LLVM::GEPOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8, _BYTE *a9, uint64_t a10)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v18 = a5;
  __src = a3;
  v23 = v25;
  v24 = 0xC00000000;
  v20 = v22;
  v21 = 0x600000000;
  destructureIndices(a4, a6, a7, &v23, &v20);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v20);
  *(a2 + 192) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a9, &a9[16 * a10]);
  v14 = *(*(*(a2 + 8) + 96) + 16);
  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(*a1, v23, v24);
  mlir::NamedAttrList::push_back(a2 + 112, v14, v15);
  if (a8)
  {
    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), *(**a1 + 608));
  }

  v16 = mlir::TypeAttr::get(a4);
  mlir::OperationState::addAttribute(a2, "elem_type", 9, v16);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v20 & 0xFFFFFFFFFFFFFFF9, 0, v20 & 0xFFFFFFFFFFFFFFF9, v21);
  if (v20 != v22)
  {
    free(v20);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void destructureIndices(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5;
    v9 = 8 * a3;
    LODWORD(v10) = *(a4 + 8);
    v11 = &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    v12 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id;
    v13 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v14 = &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id;
    while (1)
    {
      v15 = 0;
      if (v10 && a1)
      {
        v15 = *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id;
      }

      if ((*a2 & 4) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = *a2 & 0xFFFFFFFFFFFFFFF8;
      }

      if (!v16)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(a4, *a2 >> 35);
        goto LABEL_30;
      }

      v39 = 1;
      v38 = 0;
      if (!v15)
      {
        break;
      }

      v37 = &v38;
      v17 = *(v16 + 8) & 7;
      v18 = v17 == 7;
      v19 = v17 == 7 ? 0 : v16;
      if (v18)
      {
        break;
      }

      v20 = *(v19 + 8) & 7;
      if (v20 == 6)
      {
        v21 = v19 + 24 * *(v19 + 16);
        v22 = (v21 + 120);
        if (v21 == -120)
        {
          break;
        }
      }

      else
      {
        v22 = (v19 + 16 * v20 + 16);
      }

      if (!mlir::detail::constant_int_value_binder::match(&v37, v22))
      {
        break;
      }

      v23 = v14;
      v24 = v13;
      v25 = v11;
      v26 = v12;
      v27 = v39;
      v28 = v27 - llvm::APInt::getNumSignBits(&v38);
      v12 = v26;
      v11 = v25;
      v13 = v24;
      v14 = v23;
      v5 = a5;
      if ((v28 + 1) > 0x1D)
      {
        break;
      }

      if (v39 > 0x40)
      {
        v29 = *v38;
      }

      else if (v39)
      {
        v29 = (v38 << -v39) >> -v39;
      }

      else
      {
        LODWORD(v29) = 0;
      }

      llvm::SmallVectorTemplateBase<int,true>::push_back(a4, v29);
LABEL_27:
      if (v39 >= 0x41 && v38)
      {
        MEMORY[0x25F891010](v38, 0x1000C8000313F17);
      }

LABEL_30:
      v10 = *(a4 + 8);
      if (v10 == 1)
      {
        v30 = a1;
      }

      else
      {
        v30 = 0;
      }

      if (v10 == 1 || a1 == 0)
      {
        a1 = v30;
      }

      else
      {
        v32 = *(*a1 + 136);
        if (v32 == v11)
        {
          a1 = *(a1 + 24);
        }

        else if (v32 == v12 || v32 == v13 || v32 == v14)
        {
          a1 = *(a1 + 8);
        }

        else
        {
          if (v32 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
          {
            v33 = *(*a4 + 4 * v10 - 4);
            if ((v33 & 0x80000000) == 0)
            {
              v34 = *(a1 + 24);
              if (v34)
              {
                if (v33 < *(a1 + 28) >> 3)
                {
                  v35 = 16;
                  goto LABEL_57;
                }
              }

              else if (v33 < v34 >> 2)
              {
                v35 = 8;
LABEL_57:
                a1 = *(*(a1 + v35) + 8 * v33);
                goto LABEL_47;
              }
            }
          }

          a1 = 0;
        }
      }

LABEL_47:
      ++a2;
      v9 -= 8;
      if (!v9)
      {
        return;
      }
    }

    llvm::SmallVectorTemplateBase<int,true>::push_back(a4, 0x80000000);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v5, v16);
    goto LABEL_27;
  }
}

uint64_t *llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *>(a1, a2);
  }

  else
  {
    v5 = (*a1 + 40 * v4);
    result = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get();
    *v5 = a2;
    v5[1] = result;
    v5[2] = 0;
    v5[3] = 0;
    *(v5 + 29) = 0;
    ++*(a1 + 8);
  }

  return result;
}

void mlir::LLVM::LoadOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v27 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v27, 0, &v27, 1);
  if (a5)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 16) = a5;
  }

  if (a6)
  {
    v21 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 80) = v21;
  }

  if (a7)
  {
    v22 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 48) = v22;
  }

  if (a8)
  {
    v23 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 24) = v23;
  }

  if (a9)
  {
    v24 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 32) = v24;
  }

  v25 = mlir::IntegerType::get(*a1, 64, 0);
  v26 = mlir::IntegerAttr::get(v25, a10);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 56) = v26;
  if (a11)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 64) = a11;
  }

  if (a12)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) = a12;
  }

  if (a13)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 8) = a13;
  }

  if (a14)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 40) = a14;
  }

  if (a15)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::LoadOpGenericAdaptorBase::Properties>(a2) + 72) = a15;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v29);
}

void *mlir::LLVM::StoreOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a4;
  v27 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v27, 0, &v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v26, 0, &v26, 1);
  if (a5)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 16) = a5;
  }

  if (a6)
  {
    v20 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 72) = v20;
  }

  if (a7)
  {
    v21 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 40) = v21;
  }

  if (a8)
  {
    v22 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2) + 24) = v22;
  }

  v23 = mlir::IntegerType::get(*a1, 64, 0);
  v24 = mlir::IntegerAttr::get(v23, a9);
  result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
  result[6] = v24;
  if (a10)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[7] = a10;
  }

  if (a11)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    *result = a11;
  }

  if (a12)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[1] = a12;
  }

  if (a13)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[4] = a13;
  }

  if (a14)
  {
    result = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::StoreOpGenericAdaptorBase::Properties>(a2);
    result[8] = a14;
  }

  return result;
}

llvm::raw_ostream *printOpBundles(llvm::raw_ostream *result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 3))
  {
    goto LABEL_59;
  }

  v7 = result;
  v8 = (*(*result + 16))(result);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "[", 1uLL);
  }

  else
  {
    *v9 = 91;
    ++*(v8 + 4);
  }

  v63 = *a2;
  v64 = *(a2 + 2);
  v10 = *a3;
  v48 = *a3;
  LOBYTE(v49[0]) = 0;
  v52[0] = 0;
  v11 = *(a3 + 40);
  if (v11 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::__value_func[abi:nn200100](v49, a3 + 8);
    v52[0] = 1;
    v10 = v48;
  }

  v12 = *(a4 + 8);
  v56 = v63;
  v57 = v64;
  v58.i64[0] = 0;
  v58.i64[1] = v10;
  v59[0] = 0;
  v61 = 0;
  if (!v11)
  {
    v62 = v12;
    goto LABEL_15;
  }

  if (!v51)
  {
    v13 = &v60;
    goto LABEL_13;
  }

  if (v51 != v49)
  {
    v13 = &v51;
    v60 = v51;
LABEL_13:
    *v13 = 0;
    v61 = 1;
    v62 = v12;
LABEL_14:
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](v49);
    goto LABEL_15;
  }

  v60 = v59;
  (*(*v51 + 24))();
  v61 = 1;
  v62 = v12;
  if (v52[0])
  {
    goto LABEL_14;
  }

LABEL_15:
  v46 = *a2;
  v14 = *(a2 + 3);
  v47 = *(a2 + 2);
  v15 = *(a3 + 48);
  *&v63 = v15;
  BYTE8(v63) = 0;
  v67 = 0;
  v16 = *(a3 + 88);
  if (v16 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::__value_func[abi:nn200100](&v63 + 8, a3 + 56);
    v67 = 1;
    v15 = v63;
  }

  v17 = *(a4 + 8) + 8 * *(a4 + 16);
  v49[0] = *(&v46 + 1);
  v49[1] = v47;
  v50 = v14;
  v51 = v15;
  v52[0] = 0;
  v54 = 0;
  if (v16)
  {
    if (v66)
    {
      if (v66 == (&v63 + 8))
      {
        v53 = v52;
        (*(*v66 + 24))(v66, v52);
        v54 = 1;
        v55 = v17;
        if ((v67 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v18 = &v66;
      v53 = v66;
    }

    else
    {
      v18 = &v53;
    }

    *v18 = 0;
    v54 = 1;
    v55 = v17;
LABEL_24:
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](&v63 + 8);
    goto LABEL_25;
  }

  v55 = v17;
LABEL_25:
  if (v58.i64[0] != v50 && v58.i64[1] != v51 && v62 != v55)
  {
    v19 = v57 + v58.i64[0];
    if (v57 + v58.i64[0])
    {
      LODWORD(v20) = 0;
      v21 = 4 * v19;
      v22 = *(*(&v56 + 1) + 24);
      do
      {
        v23 = *v22++;
        v20 = (v23 + v20);
        v21 -= 4;
      }

      while (v21);
    }

    else
    {
      v20 = 0;
    }

    v24 = v56 + 32 * v20;
    v25 = *(*(*(&v56 + 1) + 24) + 4 * v19);
    v26 = std::function<mlir::TypeRange ()>::operator()(v60, v58.i32[2]);
    *&v63 = v24;
    *(&v63 + 1) = v25;
    v64 = v26;
    v65 = v27;
    v66 = v62;
    printOpBundles(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRangeRange,mlir::TypeRangeRange,std::optional<mlir::ArrayAttr>)::$_0::operator()<std::tuple<mlir::OperandRange,mlir::TypeRange,mlir::Attribute const&>>(v7, &v63);
    v28 = vaddq_s64(v58, vdupq_n_s64(1uLL));
    v58 = v28;
    v29 = v62 + 8;
    v62 = (v62 + 8);
    if (v28.i64[0] != v50)
    {
      v30 = v28.i64[1];
      v45 = vdupq_n_s64(1uLL);
      do
      {
        if (v30 == v51 || v29 == v55)
        {
          break;
        }

        v32 = (*(*v7 + 16))(v7);
        v33 = *(v32 + 4);
        if (*(v32 + 3) - v33 > 1uLL)
        {
          *v33 = 8236;
          *(v32 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v32, ", ", 2uLL);
        }

        v34 = v57 + v58.i64[0];
        if (v57 + v58.i64[0])
        {
          LODWORD(v35) = 0;
          v36 = 4 * v34;
          v37 = *(*(&v56 + 1) + 24);
          do
          {
            v38 = *v37++;
            v35 = (v38 + v35);
            v36 -= 4;
          }

          while (v36);
        }

        else
        {
          v35 = 0;
        }

        v39 = v56 + 32 * v35;
        v40 = *(*(*(&v56 + 1) + 24) + 4 * v34);
        v41 = std::function<mlir::TypeRange ()>::operator()(v60, v58.i32[2]);
        *&v63 = v39;
        *(&v63 + 1) = v40;
        v64 = v41;
        v65 = v42;
        v66 = v62;
        printOpBundles(mlir::OpAsmPrinter &,mlir::Operation *,mlir::OperandRangeRange,mlir::TypeRangeRange,std::optional<mlir::ArrayAttr>)::$_0::operator()<std::tuple<mlir::OperandRange,mlir::TypeRange,mlir::Attribute const&>>(v7, &v63);
        v58 = vaddq_s64(v58, v45);
        v29 = v62 + 8;
        v62 = (v62 + 8);
        v30 = v58.i64[1];
      }

      while (v58.i64[0] != v50);
    }
  }

  if (v54 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](v52);
  }

  if (v61 == 1)
  {
    std::__function::__value_func<mlir::TypeRange ()>::~__value_func[abi:nn200100](v59);
  }

  result = (*(*v7 + 16))(v7);
  v43 = *(result + 4);
  if (*(result + 3) == v43)
  {
    result = llvm::raw_ostream::write(result, "]", 1uLL);
  }

  else
  {
    *v43 = 93;
    ++*(result + 4);
  }

LABEL_59:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v49[20] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v44 = v46;
  v45 = 0x100000000;
  v41 = &v43;
  v42 = 0x100000000;
  v38 = &v40;
  v39 = 0x100000000;
  v31 = 0;
  v4 = **(*(a2 + 8) + 96);
  v5 = *(*(*a1 + 32))(a1);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(a1);
  v7 = mlir::LLVM::CConvAttr::get(v5, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v4, v7);
  v8 = *(*(*(a2 + 8) + 96) + 8);
  v9 = 0;
  v10 = *(*(*a1 + 32))(a1);
  v47 = v49;
  v48 = 0xA00000000;
  do
  {
    if (v9 > 3)
    {
      v11 = 0;
      v12 = &str_2_25;
    }

    else
    {
      v11 = qword_25D0A01D0[v9];
      v12 = (&off_2799BEBF0)[v9];
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v47, v12, v11);
    ++v9;
  }

  while (v9 != 4);
  v13 = parseOptionalKeywordAlternative(a1, v47, v48);
  if (v47 != v49)
  {
    free(v47);
  }

  if (v13 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = mlir::LLVM::TailCallKindAttr::get(v10, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v8, v15);
  if ((parseOptionalCallFuncPtr(a1, &v44) & 1) == 0)
  {
    goto LABEL_31;
  }

  v16 = v45;
  if (!v45 && !mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v33, a2 + 112))
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 720))(a1, &v44, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((*(*a1 + 408))(a1, "vararg", 6))
  {
    v17 = *(*(*(a2 + 8) + 96) + 128);
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v32, *(v17 + 16), *(v17 + 24), a2 + 112) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v18 = (*(*a1 + 40))(a1);
  v19 = parseOpBundles(a1, &v41, &v38, &v31);
  if (v19 >= 0x100u && (v19 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v31 && *(v31 + 16))
  {
    v20 = *(*(*(a2 + 8) + 96) + 104);
    mlir::OperationState::addAttribute(a2, *(v20 + 16), *(v20 + 24), v31);
  }

  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v47 = v49;
    v48 = 0x600000000;
    v35 = v37;
    v36 = 0x600000000;
    if ((parseCallTypeAndResolveOperands(a1, a2, v16 == 0, v44, v45, &v47, &v35) & 1) != 0 && (v21 = (*(*a1 + 32))(a1), mlir::call_interface_impl::addArgAndResultAttrs(v21, a2, v47, v48, v35, v36, *(*(*(a2 + 8) + 96) + 32), *(*(*(a2 + 8) + 96) + 112)), resolveOpBundleOperands(a1, v18, a2, v41, v42, v38, v39, *(*(*(a2 + 8) + 96) + 96))))
    {
      if (v42)
      {
        v22 = 0;
        v23 = 48 * v42;
        v24 = v41 + 8;
        do
        {
          v25 = *v24;
          v24 += 48;
          v22 += v25;
          v23 -= 48;
        }

        while (v23);
      }

      else
      {
        v22 = 0;
      }

      v29 = (*(*a1 + 32))(a1);
      v34[0] = v45;
      v34[1] = v22;
      v30 = mlir::detail::DenseArrayAttrImpl<int>::get(*v29, v34, 2);
      mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v30);
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    if (v35 != v37)
    {
      free(v35);
    }

    if (v47 != v49)
    {
      free(v47);
    }
  }

  else
  {
LABEL_31:
    v26 = 0;
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v38);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v41);
  if (v44 != v46)
  {
    free(v44);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(uint64_t a1)
{
  v2 = 0;
  v11[20] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0xA00000000;
  do
  {
    v3 = mlir::LLVM::cconv::stringifyCConv(v2);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v9, v3, v4);
    ++v2;
  }

  while (v2 != 102);
  v5 = parseOptionalKeywordAlternative(a1, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }

  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t parseOptionalCallFuncPtr(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, 24);
  v3 = 1;
  v4 = (*(*a1 + 712))(a1, v9, 1);
  if ((v4 & 0x100) != 0)
  {
    v3 = v4;
    if (v4)
    {
      v3 = 1;
      v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(a2, v9, 1);
      v6 = (*a2 + 32 * *(a2 + 8));
      v7 = v5[1];
      *v6 = *v5;
      v6[1] = v7;
      ++*(a2 + 8);
    }
  }

  return v3;
}

uint64_t parseOpBundles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 320))(a1))
  {
    if ((*(*a1 + 336))(a1))
    {
      v8 = 1;
    }

    else
    {
      v13[3] = &v14;
      v14 = v16;
      v15 = 0x600000000;
      v13[0] = a1;
      v13[1] = a2;
      v13[2] = a3;
      if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseOpBundles(mlir::OpAsmParser &,llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u> &,llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u> &,mlir::ArrayAttr &)::$_0>, v13, 0, 0) & 1) != 0 && ((*(*a1 + 328))(a1))
      {
        v10 = (*(*a1 + 32))(a1);
        *a4 = mlir::ArrayAttr::get(*v10, v14, v15);
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      if (v14 != v16)
      {
        free(v14);
      }
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 | (v9 << 8);
}

uint64_t parseCallTypeAndResolveOperands(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = *MEMORY[0x277D85DE8];
  v14 = (*(*a1 + 40))(a1);
  v38 = v40;
  v39 = 0x600000000;
  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_3;
  }

  llvm::SmallVectorImpl<mlir::Type>::emplace_back<>(&v38);
  if (((*(*a1 + 536))(a1, v38 + 8 * v39 - 8) & 1) == 0)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_26;
  }

  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    v35 = "expected indirect call to have 2 trailing types";
    v37[8] = 259;
    (*(*a1 + 24))(&v41, a1, v14, &v35);
    v16 = v43 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    goto LABEL_26;
  }

LABEL_3:
  v35 = v37;
  v36 = 0x600000000;
  __src = v34;
  v33 = 0x600000000;
  if ((mlir::call_interface_impl::parseFunctionSignature(a1, &v35, a6, &__src, a7, 1) & 1) == 0)
  {
    if (a3)
    {
      v15 = "expected direct call to have 1 trailing types";
    }

    else
    {
      v15 = "expected trailing function type";
    }

    goto LABEL_21;
  }

  if (v33 < 2)
  {
    if (v33 == 1)
    {
      v17 = *(**__src + 136);
      if (v17 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
      {
        v15 = "expected a non-void result type";
        goto LABEL_21;
      }
    }

    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type*,void>(&v38, v35, v35 + 8 * v36);
    v18 = (*(*a1 + 16))(a1);
    v19 = v38;
    v30 = v39;
    v31 = a5;
    if (a5 == v39)
    {
      if (a5)
      {
        v20 = 32 * a5;
        while (((*(*a1 + 728))(a1, a4, *v19, a2 + 16) & 1) != 0)
        {
          a4 += 32;
          ++v19;
          v20 -= 32;
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      v29 = 257;
      (*(*a1 + 24))(&v41, a1, v18, v28);
      if (v41)
      {
        mlir::Diagnostic::operator<<<48ul>(&v42, "number of operands and types do not match: got ");
      }

      v23 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v41, &v31);
      v24 = v23;
      if (*v23)
      {
        mlir::Diagnostic::operator<<<15ul>((v23 + 1), " operands and ");
      }

      v25 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v24, &v30);
      v26 = v25;
      if (*v25)
      {
        mlir::Diagnostic::operator<<<7ul>((v25 + 1), " types");
      }

      v27 = *(v26 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
      if (v27)
      {
LABEL_36:
        v16 = 0;
        goto LABEL_22;
      }
    }

LABEL_37:
    if (v33)
    {
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v33);
    }

    v16 = 1;
    goto LABEL_22;
  }

  v15 = "expected function with 0 or 1 result";
LABEL_21:
  v28[0] = v15;
  v29 = 259;
  (*(*a1 + 24))(&v41, a1, v14, v28);
  v16 = v43 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
LABEL_22:
  if (__src != v34)
  {
    free(__src);
  }

  if (v35 != v37)
  {
    free(v35);
  }

LABEL_26:
  if (v38 != v40)
  {
    free(v38);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

BOOL resolveOpBundleOperands(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v41[24] = *MEMORY[0x277D85DE8];
  v38 = 0;
  if (a5)
  {
    v14 = &a4[6 * a5];
    v15 = a4;
    while (1)
    {
      v16 = *(v15 + 2);
      if (v16 != *(a6 + 8))
      {
        v36 = "expected ";
        v37 = 259;
        (*(*a1 + 24))(&v39, a1, a2, &v36);
        v35 = *(v15 + 2);
        v28 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v39, &v35);
        v29 = v28;
        if (*v28)
        {
          mlir::Diagnostic::operator<<<56ul>((v28 + 1), " types for operand bundle operands for operand bundle #");
        }

        v30 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v29, &v38);
        v31 = v30;
        if (*v30)
        {
          mlir::Diagnostic::operator<<<20ul>((v30 + 1), ", but actually got ");
        }

        v34 = *(a6 + 8);
        v23 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v31, &v34) + 200) & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
        goto LABEL_19;
      }

      if (v16)
      {
        break;
      }

LABEL_8:
      v15 += 6;
      a6 += 64;
      if (v15 == v14)
      {
        v39 = v41;
        v40 = 0xC00000000;
        if (a5 >= 0xD)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, a5, 4);
        }

        v20 = 48 * a5;
        v21 = (a4 + 1);
        v8 = a8;
        do
        {
          v22 = *v21;
          v21 += 12;
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v39, v22);
          v20 -= 48;
        }

        while (v20);
        goto LABEL_16;
      }
    }

    v17 = *v15;
    v18 = *a6;
    v19 = 32 * v16;
    while (((*(*a1 + 728))(a1, v17, *v18, a3 + 16) & 1) != 0)
    {
      v17 += 32;
      ++v18;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
  }

  else
  {
    v39 = v41;
    v40 = 0xC00000000;
LABEL_16:
    v24 = (*(*a1 + 32))(a1);
    v25 = mlir::detail::DenseArrayAttrImpl<int>::get(*v24, v39, v40);
    mlir::NamedAttrList::push_back(a3 + 112, v8, v25);
    if (v39 != v41)
    {
      free(v39);
    }

    v23 = 1;
  }

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

void mlir::LLVM::InvokeOp::getSuccessorOperands(mlir::LLVM::InvokeOp *this, uint64_t a2, int a3)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a3)
  {
    v7 = *(v5 + 64);
    v8 = *(v5 + 68);
    v6 = v5 + 64;
    v9 = *(v6 + 8);
    v10 = v8 + v7;
    v11 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v12 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6, 4);
    __src = 2;
    v18 = v11;
    v19 = v12;
    *&v20 = a2;
    *(&v20 + 1) = __PAIR64__(v9, v10);
  }

  else
  {
    v13 = *(*(*(a2 + 48) + 96) + 8 * *(*(a2 + 48) + 104) - 8);
    v14 = *(v5 + 64);
    v15 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v5 + 64, 4);
    __src = 1;
    v18 = v13;
    v19 = v15;
    *&v20 = a2;
    *(&v20 + 1) = v14;
  }

  v21 = v23;
  v22 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v21, &__src, &v20);
  *this = 0;
  *(this + 8) = v20;
  *(this + 3) = this + 40;
  *(this + 4) = 0x100000000;
  if (v22)
  {
    llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(this + 24, &v21);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::LLVM::InvokeOp::parse(uint64_t a1, uint64_t a2)
{
  v51[32] = *MEMORY[0x277D85DE8];
  v49 = v51;
  v50 = 0x800000000;
  v26 = 0;
  v27 = 0;
  v46 = &v48;
  v47 = 0x100000000;
  v43 = &v45;
  v44 = 0x100000000;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v40 = v42;
  v41 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v4 = (*(*a1 + 32))(a1);
  v5 = **(*(a2 + 8) + 96);
  v6 = *(*(*a1 + 32))(a1);
  v7 = parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(a1);
  v8 = mlir::LLVM::CConvAttr::get(v6, v7);
  mlir::NamedAttrList::push_back(a2 + 112, v5, v8);
  if ((parseOptionalCallFuncPtr(a1, &v49) & 1) == 0)
  {
    goto LABEL_25;
  }

  v9 = v50;
  if (!v50 && !mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v27, a2 + 112))
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 720))(a1, &v49, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_25;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v33) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 816))(a1, &v24, &v40) & 1) == 0)
  {
    goto LABEL_25;
  }

  v36 = 257;
  if (((*(*a1 + 400))(a1, "unwind", 6, &v33) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 816))(a1, &v23, &v37) & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((*(*a1 + 408))(a1, "vararg", 6))
  {
    v10 = *(*(*(a2 + 8) + 96) + 56);
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v26, *(v10 + 16), *(v10 + 24), a2 + 112) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v11 = (*(*a1 + 40))(a1);
  v12 = parseOpBundles(a1, &v46, &v43, &v25);
  if (v12 >= 0x100u && (v12 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v25 && *(v25 + 16))
  {
    v13 = *(*(*(a2 + 8) + 96) + 40);
    mlir::OperationState::addAttribute(a2, *(v13 + 16), *(v13 + 24), v25);
  }

  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v33 = v35;
    v34 = 0x600000000;
    v30 = v32;
    v31 = 0x600000000;
    if ((parseCallTypeAndResolveOperands(a1, a2, v9 == 0, v49, v50, &v33, &v30) & 1) != 0 && (v14 = (*(*a1 + 32))(a1), mlir::call_interface_impl::addArgAndResultAttrs(v14, a2, v33, v34, v30, v31, *(*(*(a2 + 8) + 96) + 8), *(*(*(a2 + 8) + 96) + 48)), resolveOpBundleOperands(a1, v11, a2, v46, v47, v43, v44, *(*(*(a2 + 8) + 96) + 32))))
    {
      v28 = v24;
      v29 = v23;
      llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, &v28 + 4, 0, &v28 + 4, 2);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v40 & 0xFFFFFFFFFFFFFFF9, 0, v40 & 0xFFFFFFFFFFFFFFF9, v41);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v37 & 0xFFFFFFFFFFFFFFF9, 0, v37 & 0xFFFFFFFFFFFFFFF9, v38);
      if (v47)
      {
        v15 = 0;
        v16 = 48 * v47;
        v17 = v46 + 8;
        do
        {
          v18 = *v17;
          v17 += 48;
          v15 += v18;
          v16 -= 48;
        }

        while (v16);
      }

      else
      {
        v15 = 0;
      }

      v28 = __PAIR64__(v41, v50);
      v29 = __PAIR64__(v15, v38);
      v22 = mlir::detail::DenseArrayAttrImpl<int>::get(*v4, &v28, 4);
      mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 0x13, v22);
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    if (v30 != v32)
    {
      free(v30);
    }

    if (v33 != v35)
    {
      free(v33);
    }
  }

  else
  {
LABEL_25:
    v19 = 0;
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v43);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v46);
  if (v49 != v51)
  {
    free(v49);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t mlir::Diagnostic::operator<<<79ul>(uint64_t a1, char *__s)
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

uint64_t mlir::LLVM::LandingpadOp::parse(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 408))(a1, "cleanup", 7))
  {
    v4 = (*(*a1 + 32))(a1);
    mlir::OperationState::addAttribute(a2, "cleanup", 7, *(**v4 + 608));
  }

  if ((*(*a1 + 288))(a1))
  {
    while (((*(*a1 + 408))(a1, "filter", 6) & 1) != 0 || ((*(*a1 + 408))(a1, "catch", 5) & 1) != 0)
    {
      __src = 0;
      v8[0] = 0;
      v8[1] = 0;
      v6 = 0;
      if (((*(*a1 + 704))(a1, &__src, 1) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &v6) & 1) == 0 || ((*(*a1 + 728))(a1, &__src, v6, a2 + 16) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        return 0;
      }

      if (((*(*a1 + 288))(a1) & 1) == 0)
      {
        break;
      }
    }
  }

  __src = 0;
  if (((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
  return 1;
}

uint64_t getInsertExtractValueElementType(void (*a1)(void *__return_ptr, uint64_t, const char *, uint64_t), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v29 = *MEMORY[0x277D85DE8];
  if ((mlir::LLVM::LLVMDialect::isCompatibleType(a3, a2, a3, a4) & 1) == 0)
  {
    v15 = "expected LLVM IR Dialect type, got ";
    v16 = a2;
    v17 = 35;
    goto LABEL_19;
  }

  if (a5)
  {
    for (i = 8 * a5; i; i -= 8)
    {
      v11 = *v6;
      v23 = *v6;
      v12 = *(*v7 + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
      {
        if (v11 < 0 || *(v7 + 16) <= v11)
        {
LABEL_21:
          a1(v26, a2, "position out of bounds: ", 24);
          mlir::InFlightDiagnostic::operator<<<long long &>(v26, &v23);
          goto LABEL_22;
        }

        v7 = *(v7 + 8);
      }

      else
      {
        if (v12 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
        {
          v15 = "expected LLVM IR structure/array type, got: ";
          v16 = a2;
          v17 = 44;
LABEL_19:
          a1(v26, v16, v15, v17);
          if (v26[0])
          {
            v24 = 4;
            v25 = v7;
            v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v24, 1);
            v19 = v27 + 24 * v28;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 16);
            *v19 = v20;
            ++v28;
          }

LABEL_22:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
          v7 = 0;
          break;
        }

        if (v11 < 0)
        {
          goto LABEL_21;
        }

        v13 = *(v7 + 24);
        if (v13)
        {
          if (v11 >= *(v7 + 28) >> 3)
          {
            goto LABEL_21;
          }

          v14 = 16;
        }

        else
        {
          if (v11 >= v13 >> 2)
          {
            goto LABEL_21;
          }

          v14 = 8;
        }

        v7 = *(*(v7 + v14) + 8 * v11);
      }

      ++v6;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::GlobalOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*a1 + 32))(a1);
  v5 = *(*(*(a2 + 1) + 96) + 64);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(a1);
  v7 = mlir::LLVM::LinkageAttr::get(v4, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v5, v7);
  v8 = *(*(*(a2 + 1) + 96) + 112);
  v9 = (*(*a1 + 32))(a1);
  v10 = parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v8, I64IntegerAttr);
  v12 = *(*(*(a2 + 1) + 96) + 96);
  v13 = (*(*a1 + 32))(a1);
  v14 = parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(a1);
  v15 = mlir::Builder::getI64IntegerAttr(v13, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v15);
  if ((*(*a1 + 408))(a1, "thread_local", 12))
  {
    v16 = *(*(*(a2 + 1) + 96) + 88);
    v17 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v16, *(**v17 + 608));
  }

  if ((*(*a1 + 408))(a1, "constant", 8))
  {
    v18 = *(*(*(a2 + 1) + 96) + 24);
    v19 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v18, *(**v19 + 608));
  }

  v30 = 0;
  v20 = *(*(*(a2 + 1) + 96) + 80);
  if ((mlir::AsmParser::parseSymbolName(a1, &v30, *(v20 + 16), *(v20 + 24), a2 + 112) & 1) == 0)
  {
    goto LABEL_19;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_19;
  }

  v29 = 0;
  if (((*(*a1 + 304))(a1) & 1) == 0)
  {
    v22 = *(*(*(a2 + 1) + 96) + 104);
    if (!mlir::AsmParser::parseAttribute<mlir::Attribute>(a1, &v29, 0, *(v22 + 16), *(v22 + 24), a2 + 112) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((*(*a1 + 408))(a1, "comdat", 6))
  {
    v31[0] = 0;
    if (((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, v31, 0) || ((*(*a1 + 296))(a1) & 1) == 0)
    {
LABEL_19:
      v23 = 0;
      goto LABEL_20;
    }

    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 1) + 96) + 16), v31[0]);
  }

  v33 = v35;
  v34 = 0x100000000;
  if ((*(*a1 + 488))(a1, a2 + 14) & 1) != 0 && ((*(*a1 + 592))(a1, &v33))
  {
    if (v34 < 2)
    {
      mlir::OperationState::addRegion(a2);
    }

    v21 = (*(*a1 + 16))(a1);
    v27 = "expected zero or one type";
    v28 = 259;
    (*(*a1 + 24))(v31, a1, v21, &v27);
    v26 = v32 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
  }

  else
  {
    v26 = 0;
  }

  v23 = v26 & 1;
  if (v33 != v35)
  {
    free(v33);
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t mlir::LLVM::satisfiesLLVMModule(mlir::LLVM *this, mlir::Operation *a2)
{
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  result = (*(**(this + 6) + 32))(*(this + 6), v3);
  if (result)
  {
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
    v5 = *(**(this + 6) + 32);

    return v5();
  }

  return result;
}

uint64_t isZeroAttribute(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    LODWORD(v43) = *(a1 + 24);
    if (v43 > 0x40)
    {
      operator new[]();
    }

    v6 = *(a1 + 16) == 0;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(&v42, (a1 + 16));
    if (v42 == &llvm::semPPCDoubleDouble)
    {
      v9 = v43;
    }

    else
    {
      v9 = &v42;
    }

    v6 = (*(v9 + 20) & 7) == 3;
    llvm::APFloat::Storage::~Storage(&v42);
  }

  else
  {
    v3 = v2 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v3 && *(a1 + 24) == 1)
    {
      v4 = *(a1 + 8);
      (*(*(a1 + 16) + 24))();
      v42 = a1;
      v43 = 0;
      v5 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v42);
      v6 = isZeroAttribute(v5);
    }

    else
    {
      v7 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
      v27[0] = v7;
      v27[1] = v8;
      if (v7)
      {
        mlir::ElementsAttr::getValues<mlir::Attribute>(v27, &v42);
        v32 = v42;
        if (v42 == 1)
        {
          v33 = v43;
        }

        else
        {
          (*(*v43 + 2))(&v33);
        }

        v34 = v44;
        v28 = v45;
        v29 = v46;
        if (v45 == 1)
        {
          v30 = v47;
        }

        else
        {
          (*(*v47 + 16))(&v30);
        }

        v31 = v48;
        v39 = v32;
        if (v32 == 1)
        {
          v40 = v33;
        }

        else
        {
          (*(*v33 + 2))(&v40);
        }

        v16 = v34;
        v41 = v34;
        v35 = v28;
        v36 = v29;
        if (v28 == 1)
        {
          v37 = v30;
        }

        else
        {
          (*(*v30 + 16))(&v37);
          v16 = v41;
        }

        v38 = v31;
        if (v16 == v31)
        {
          v6 = 1;
        }

        else
        {
          do
          {
            if (HIBYTE(v39))
            {
              v17 = 0;
            }

            else
            {
              v17 = v16;
            }

            if (v39 == 1)
            {
              v18 = v40[v17];
            }

            else
            {
              v18 = (*(*v40 + 3))(v40, v17);
            }

            v6 = isZeroAttribute(v18);
            if (!v6)
            {
              break;
            }

            v16 = v41 + 1;
            v41 = v16;
          }

          while (v16 != v38);
        }

        if ((v35 & 1) == 0)
        {
          v19 = v37;
          v37 = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }
        }

        if ((v39 & 1) == 0)
        {
          v20 = v40;
          v40 = 0;
          if (v20)
          {
            (*(*v20 + 1))(v20);
          }
        }

        if ((v28 & 1) == 0)
        {
          v21 = v30;
          v30 = 0;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }
        }

        if ((v32 & 1) == 0)
        {
          v22 = v33;
          v33 = 0;
          if (v22)
          {
            (*(*v22 + 1))(v22);
          }
        }

        if ((v45 & 1) == 0)
        {
          v23 = v47;
          v47 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }
        }

        if ((v42 & 1) == 0)
        {
          v24 = v43;
          v43 = 0;
          if (v24)
          {
            (*(*v24 + 1))(v24);
          }
        }
      }

      else
      {
        v10 = *(*a1 + 136);
        if (v10 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v11 = *(a1 + 16);
          if (v11)
          {
            v12 = *(a1 + 8);
            v13 = 8 * v11 - 8;
            do
            {
              v14 = *v12++;
              LODWORD(v7) = isZeroAttribute(v14);
              if (v7)
              {
                v15 = v13 == 0;
              }

              else
              {
                v15 = 1;
              }

              v13 -= 8;
            }

            while (!v15);
          }

          else
          {
            LOBYTE(v7) = 1;
          }
        }

        v6 = (v10 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id) & v7;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL verifyComdat(void **a1, mlir::Operation *a2, char a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0 || (NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(a1, a2)) != 0 && (v6 = mlir::SymbolTable::lookupSymbolIn(NearestSymbolTable, a2)) != 0 && *(*(v6 + 48) + 16) == &unk_27FC1FED0)
  {
    v7 = 1;
  }

  else
  {
    v10[16] = 257;
    mlir::Operation::emitError(&v11, a1, v10);
    if (v11)
    {
      mlir::Diagnostic::operator<<<23ul>(v12, "expected comdat symbol");
    }

    v7 = (v12[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::LLVM::GlobalOp::getAlignment(mlir::LLVM::GlobalOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v1)
  {
    if (*(v1 + 24) > 0x40u)
    {
      operator new[]();
    }

    return *(v1 + 16);
  }

  return v1;
}

uint64_t verifySymbolAttrUse(uint64_t a1, mlir::SymbolTable *this, mlir::SymbolTableCollection *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(this, this);
  if (NearestSymbolTable && (v9 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v5)) != 0 && *(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id)
  {
    v13 = (((v9 + 16 * ((*(v9 + 44) >> 23) & 1) + ((*(v9 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v9 + 40));
    if (*v13 != v13)
    {
      v10 = 1;
      goto LABEL_8;
    }

    v14[0] = "'";
    v15 = 259;
    mlir::Operation::emitOpError(this, v14, &v19);
    if (v19)
    {
      v18 = 261;
      v16 = v7;
      v17 = v6;
      mlir::Diagnostic::operator<<(v20, &v16);
      if (v19)
      {
        mlir::Diagnostic::operator<<<29ul>(v20, "' does not have a definition");
      }
    }
  }

  else
  {
    v14[0] = "'";
    v15 = 259;
    mlir::Operation::emitOpError(this, v14, &v19);
    if (v19)
    {
      v18 = 261;
      v16 = v7;
      v17 = v6;
      mlir::Diagnostic::operator<<(v20, &v16);
      if (v19)
      {
        mlir::Diagnostic::operator<<<43ul>(v20, "' does not reference a valid LLVM function");
      }
    }
  }

  v10 = v20[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

BOOL mlir::LLVM::AliasOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*a1 + 32))(a1);
  v5 = *(*(*(a2 + 1) + 96) + 16);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(a1);
  v7 = mlir::LLVM::LinkageAttr::get(v4, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v5, v7);
  v8 = *(*(*(a2 + 1) + 96) + 48);
  v9 = (*(*a1 + 32))(a1);
  v10 = parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v8, I64IntegerAttr);
  v12 = *(*(*(a2 + 1) + 96) + 40);
  v13 = (*(*a1 + 32))(a1);
  v14 = parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(a1);
  v15 = mlir::Builder::getI64IntegerAttr(v13, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v15);
  if ((*(*a1 + 408))(a1, "thread_local", 12))
  {
    v16 = *(*(*(a2 + 1) + 96) + 32);
    v17 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v16, *(**v17 + 608));
  }

  v25 = 0;
  v18 = *(*(*(a2 + 1) + 96) + 24);
  if (mlir::AsmParser::parseSymbolName(a1, &v25, *(v18 + 16), *(v18 + 24), a2 + 112))
  {
    v28 = v30;
    v29 = 0x100000000;
    if ((*(*a1 + 488))(a1, a2 + 14) & 1) != 0 && ((*(*a1 + 592))(a1, &v28))
    {
      if (v29 < 2)
      {
        mlir::OperationState::addRegion(a2);
      }

      v19 = (*(*a1 + 16))(a1);
      v23 = "expected zero or one type";
      v24 = 259;
      (*(*a1 + 24))(v26, a1, v19, &v23);
      v20 = (v27 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
    }

    else
    {
      v20 = 0;
    }

    if (v28 != v30)
    {
      free(v28);
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t mlir::LLVM::LLVMFuncOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v81[26] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a2 + 1) + 96) + 192);
  v5 = *(*(*a1 + 32))(a1);
  v6 = parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(a1);
  v7 = mlir::LLVM::LinkageAttr::get(v5, v6);
  mlir::NamedAttrList::push_back(a2 + 112, v4, v7);
  v8 = *(*(*(a2 + 1) + 96) + 360);
  v9 = (*(*a1 + 32))(a1);
  v10 = parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(a1);
  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(v9, v10);
  mlir::NamedAttrList::push_back(a2 + 112, v8, I64IntegerAttr);
  v12 = *(*(*(a2 + 1) + 96) + 336);
  v13 = (*(*a1 + 32))(a1);
  v14 = parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(a1);
  v15 = mlir::Builder::getI64IntegerAttr(v13, v14);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v15);
  v16 = **(*(a2 + 1) + 96);
  v17 = *(*(*a1 + 32))(a1);
  v18 = parseOptionalLLVMKeyword<mlir::LLVM::cconv::CConv,mlir::LLVM::cconv::CConv>(a1);
  v19 = mlir::LLVM::CConvAttr::get(v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v19);
  v57 = 0;
  v71 = v73;
  v72 = 0x100000000;
  v68 = v70;
  v69 = 0x600000000;
  v65 = v67;
  v66 = 0x600000000;
  v56 = 0;
  v20 = (*(*a1 + 40))(a1);
  if ((mlir::AsmParser::parseSymbolName(a1, &v57, "sym_name", 8, a2 + 112) & 1) == 0 || (mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, 1, &v71, &v56, &v65, &v68) & 1) == 0)
  {
    goto LABEL_7;
  }

  v21 = v64;
  v62 = v64;
  v63 = 0x600000000;
  if (v72)
  {
    v22 = v72 << 6;
    v23 = v71 + 4;
    do
    {
      v24 = *v23;
      v23 += 8;
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v62, v24);
      v22 -= 64;
    }

    while (v22);
    v21 = v62;
    v25 = v63;
  }

  else
  {
    v25 = 0;
  }

  v54 = v65;
  v28 = v66;
  v53 = v56;
  v29 = (*(*a1 + 32))(a1);
  if (v28 >= 2)
  {
    *&v74 = "failed to construct function type: expected zero or one function result";
    LOWORD(v76) = 259;
    (*(*a1 + 24))(v81, a1, v20, &v74);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v81);
    goto LABEL_47;
  }

  v52 = v29;
  v78 = v80;
  v79 = 0x400000000;
  if (v25)
  {
    v33 = 8 * v25;
    while (1)
    {
      v34 = *v21;
      if (!mlir::LLVM::LLVMDialect::isCompatibleType(*v21, v30, v31, v32))
      {
        break;
      }

      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v78, v34);
      ++v21;
      v33 -= 8;
      if (!v33)
      {
        goto LABEL_21;
      }
    }

    *&v74 = "failed to construct function type: expected LLVM type for function arguments";
    LOWORD(v76) = 259;
    (*(*a1 + 24))(v77, a1, v20, &v74);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v77);
    v36 = 0;
  }

  else
  {
LABEL_21:
    if (v28)
    {
      v35 = *v54;
    }

    else
    {
      v37 = *v52;
      v38 = mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID();
      v39 = *(*v37 + 384);
      *&v74 = v38;
      v35 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v39 + 232), &v74);
    }

    if (mlir::LLVM::LLVMDialect::isCompatibleType(v35, v30, v31, v32))
    {
      v58[0] = v35;
      *&v74 = v78;
      *(&v74 + 1) = v79;
      LOBYTE(v60) = v53;
      v36 = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMFunctionType,mlir::Type &,llvm::ArrayRef<mlir::Type> &,BOOL &>(*(**v35 + 32), v58, &v74, &v60);
    }

    else
    {
      v58[0] = "failed to construct function type: expected LLVM type for function results";
      v59 = 259;
      (*(*a1 + 24))(&v74, a1, v20, v58);
      if (v74)
      {
        v60 = 4;
        v61 = v35;
        v40 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v75, &v60, 1);
        v41 = v75 + 24 * v76;
        v42 = *v40;
        *(v41 + 16) = *(v40 + 16);
        *v41 = v42;
        ++v76;
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
      v36 = 0;
    }
  }

  if (v78 != v80)
  {
    free(v78);
  }

  if (!v36)
  {
    goto LABEL_47;
  }

  v43 = *(*(*(a2 + 1) + 96) + 168);
  v44 = mlir::TypeAttr::get(v36);
  mlir::NamedAttrList::push_back(a2 + 112, v43, v44);
  if ((*(*a1 + 408))(a1, "vscale_range", 12))
  {
    v81[0] = 0;
    v77[0] = 0;
    if (((*(*a1 + 280))(a1) & 1) == 0 || (mlir::AsmParser::parseInteger<long long>(a1, v81) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || (mlir::AsmParser::parseInteger<long long>(a1, v77) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_47;
    }

    v45 = (*(*a1 + 32))(a1);
    v46 = mlir::IntegerType::get(*v45, 32, 0);
    v55 = *(*(*(a2 + 1) + 96) + 368);
    v47 = *(*(*a1 + 32))(a1);
    v48 = mlir::IntegerAttr::get(v46, v81[0]);
    v49 = mlir::IntegerAttr::get(v46, v77[0]);
    v50 = mlir::LLVM::VScaleRangeAttr::get(v47, v48, v49);
    mlir::NamedAttrList::push_back(a2 + 112, v55, v50);
  }

  if (((*(*a1 + 408))(a1, "comdat", 6) & 1) == 0)
  {
    goto LABEL_45;
  }

  v81[0] = 0;
  if ((*(*a1 + 280))(a1) & 1) != 0 && mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, v81, 0) && ((*(*a1 + 296))(a1))
  {
    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 1) + 96) + 104), v81[0]);
LABEL_45:
    if ((*(*a1 + 496))(a1, a2 + 14))
    {
      v51 = (*(*a1 + 32))(a1);
      mlir::call_interface_impl::addArgAndResultAttrs(v51, a2, v71, v72, v68, v69, *(*(*(a2 + 1) + 96) + 32), *(*(*(a2 + 1) + 96) + 280));
      mlir::OperationState::addRegion(a2);
    }
  }

LABEL_47:
  if (v62 != v64)
  {
    free(v62);
  }

LABEL_7:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::linkage::Linkage,mlir::LLVM::linkage::Linkage>(uint64_t a1)
{
  v2 = 0;
  v11[20] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0xA00000000;
  do
  {
    v3 = mlir::LLVM::linkage::stringifyLinkage(v2);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v9, v3, v4);
    ++v2;
  }

  while (v2 != 11);
  v5 = parseOptionalKeywordAlternative(a1, v9, v10);
  if (v9 != v11)
  {
    free(v9);
  }

  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::Visibility,long long>(uint64_t a1)
{
  v2 = 0;
  v13[20] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0xA00000000;
  do
  {
    if (v2 == 1)
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }

    if (v2 == 1)
    {
      v4 = "hidden";
    }

    else
    {
      v4 = &str_2_25;
    }

    if (v2 == 2)
    {
      v5 = 9;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = "protected";
    }

    else
    {
      v6 = v4;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v11, v6, v5);
    ++v2;
  }

  while (v2 != 3);
  v7 = parseOptionalKeywordAlternative(a1, v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }

  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t parseOptionalLLVMKeyword<mlir::LLVM::UnnamedAddr,long long>(uint64_t a1)
{
  v2 = 0;
  v13[20] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0xA00000000;
  do
  {
    if (v2 == 1)
    {
      v3 = 18;
    }

    else
    {
      v3 = 0;
    }

    if (v2 == 1)
    {
      v4 = "local_unnamed_addr";
    }

    else
    {
      v4 = &str_2_25;
    }

    if (v2 == 2)
    {
      v5 = 12;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = "unnamed_addr";
    }

    else
    {
      v6 = v4;
    }

    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v11, v6, v5);
    ++v2;
  }

  while (v2 != 3);
  v7 = parseOptionalKeywordAlternative(a1, v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }

  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t getNumElements(void *a1)
{
  for (i = 1; ; i *= v9[1] * v3)
  {
    v2 = *(*a1 + 136);
    v3 = 1;
    while (v2 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = a1[1];
        v6 = 8 * v4;
        v7 = 1;
        do
        {
          v8 = *v5++;
          v7 *= v8;
          v6 -= 8;
        }

        while (v6);
      }

      else
      {
        v7 = 1;
      }

      a1 = a1[3];
      v3 *= v7;
      v2 = *(*a1 + 136);
    }

    if (v2 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id)
    {
      break;
    }

    v9 = a1 + 1;
    a1 = a1[1];
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
  {
    v10 = *(a1 + 4);
    v3 *= v10 * getNumElements(a1[1]);
  }

  return v3 * i;
}

BOOL isTypeCompatibleWithAtomicOp(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  v5 = v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
  if (v5 || (result = mlir::LLVM::isCompatibleFloatingPointType(a1)))
  {
    TypeSizeInBits = mlir::DataLayout::getTypeSizeInBits(a2, a1);
    v9 = (TypeSizeInBits & (TypeSizeInBits - 1)) == 0;
    if (TypeSizeInBits < 8)
    {
      v9 = 0;
    }

    return (v8 & 1) == 0 && v9;
  }

  return result;
}

uint64_t getValAndBoolStructType(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = mlir::IntegerType::get(*(**a1 + 32), 1, 0);
  v3 = *(**a1 + 32);
  v8[0] = a1;
  v8[1] = v2;
  *&v7 = v8;
  *(&v7 + 1) = 2;
  v6 = 0;
  result = mlir::detail::TypeUniquer::get<mlir::LLVM::LLVMStructType,llvm::ArrayRef<mlir::Type> &,BOOL &>(v3, &v7, &v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::operator[](void *a1, uint64_t a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = *(*a1 + 24);
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = a2 + 1;
    v7 = *(*a1 + 24);
    do
    {
      v8 = *v7++;
      if (v8 == 0x80000000)
      {
        v4 = ++v5;
      }

      --v6;
    }

    while (v6 > 1);
    v3 += 4 * a2;
  }

  v11[0] = a1;
  v11[1] = v3;
  v11[2] = v2;
  v11[3] = v4;
  result = mlir::LLVM::GEPIndicesAdaptor<mlir::ValueRange>::iterator::operator*(v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::SmallVectorImpl<mlir::LLVM::GEPArg>::emplace_back<long long>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::LLVM::GEPArg,true>::push_back(a1, (a2 << 35) | 4);
  }

  else
  {
    *(*a1 + 8 * v2) = (a2 << 35) | 4;
    ++*(a1 + 8);
  }
}

BOOL mlir::LLVM::AShrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
          mlir::Diagnostic::operator<<<47ul>(v13, "' failed to satisfy constraint: unit attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AShrOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AShrOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v27[25] = *MEMORY[0x277D85DE8];
  v23 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(a2[2] >> 30))
  {
    goto LABEL_11;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_12;
  }

  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 6;
  if (v10)
  {
    v11 = 2;
  }

  v12 = *&a2[v11];
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v12[2] >> 30))
  {
LABEL_11:
    v13 = 1;
  }

  else
  {
LABEL_12:
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    mlir::Operation::emitOpError(a1, v21, &v26);
    if (v26)
    {
      mlir::Diagnostic::operator<<<3ul>(v27, " #");
    }

    v14 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v26, &v23);
    v15 = v14;
    if (*v14)
    {
      mlir::Diagnostic::operator<<<90ul>((v14 + 1), " must be signless integer or LLVM dialect-compatible vector of signless integer, but got ");
      if (*v15)
      {
        v24 = 4;
        v25 = a2;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v15 + 3), &v24, 1);
        v17 = v15[3] + 24 * *(v15 + 8);
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++*(v15 + 8);
      }
    }

    v13 = (v15[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::LLVM::AShrOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __src = 0;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AShrOpGenericAdaptorBase::Properties>(a2) = v4;
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
  if (mlir::LLVM::AShrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AShrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v7) && ((*(*a1 + 104))(a1) & 1) != 0 && (v7[0] = 0, ((*(*a1 + 536))(a1, v7) & 1) != 0) && (__src = v7[0], llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v10), ((*(*a1 + 728))(a1, v12, __src, a2 + 16) & 1) != 0))
  {
    return (*(*a1 + 728))(a1, v10, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AddOp::inferReturnTypes(uint64_t a1, uint64_t a2, unint64_t **a3)
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

uint64_t mlir::LLVM::AddOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v8, 1)) && (v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddOpGenericAdaptorBase::Properties>(a2), (parseOverflowFlags(a1, v4)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t parseOverflowFlags(mlir::AsmParser *a1, _DWORD *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if ((*(*a1 + 152))(a1))
    {
      while (1)
      {
        v11 = 0;
        v12 = 0;
        v4 = (*(*a1 + 40))(a1);
        if (!mlir::AsmParser::parseKeyword(a1, &v11))
        {
          break;
        }

        v5 = mlir::LLVM::symbolizeIntegerOverflowFlags(v11, v12);
        if ((v5 & 0x100000000) == 0)
        {
          v9 = "invalid overflow flag: expected nsw, nuw, or none";
          v10 = 259;
          (*(*a1 + 24))(v13, a1, v4, &v9);
          v6 = (v14 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
          goto LABEL_9;
        }

        *a2 |= v5;
        if (((*(*a1 + 128))(a1) & 1) == 0)
        {
          v6 = (*(*a1 + 168))(a1);
          goto LABEL_9;
        }
      }
    }

    v6 = 0;
  }

  else
  {
    *a2 = 0;
    v6 = 1;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void printOverflowFlags(uint64_t a1, int a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a2;
    v4 = (*(*a1 + 16))(a1);
    v5 = *(v4 + 4);
    if ((*(v4 + 3) - v5) > 9)
    {
      *(v5 + 8) = 15479;
      *v5 = *" overflow<";
      *(v4 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v4, " overflow<", 0xAuLL);
    }

    v19 = v21;
    v20 = 0x200000000;
    if (v2)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "nsw", 3);
    }

    if ((v2 & 2) != 0)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "nuw", 3);
    }

    v6 = v20;
    if (v20)
    {
      v7 = v19;
      v8 = (*(*a1 + 16))(a1);
      llvm::raw_ostream::operator<<(v8, *v7, *(v7 + 1));
      if (v6 != 1)
      {
        v9 = &v7[16 * v6];
        v10 = v7 + 16;
        do
        {
          v11 = (*(*a1 + 16))(a1);
          v12 = *(v11 + 4);
          if (*(v11 + 3) - v12 > 1uLL)
          {
            *v12 = 8236;
            *(v11 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v11, ", ", 2uLL);
          }

          v13 = (*(*a1 + 16))(a1);
          v14 = *v10;
          v15 = *(v10 + 1);
          v10 += 16;
          llvm::raw_ostream::operator<<(v13, v14, v15);
        }

        while (v10 != v9);
      }
    }

    v16 = (*(*a1 + 16))(a1);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, ">", 1uLL);
    }

    else
    {
      *v17 = 62;
      ++*(v16 + 4);
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void mlir::LLVM::AddrSpaceCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps2(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v26[25] = *MEMORY[0x277D85DE8];
  v22 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    goto LABEL_15;
  }

  if (!mlir::LLVM::isCompatibleVectorType(a2))
  {
    goto LABEL_9;
  }

  v9 = *(*a2 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v11 = 3;
  if (v10)
  {
    v11 = 1;
  }

  if (*(*a2[v11] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
LABEL_15:
    v17 = 1;
  }

  else
  {
LABEL_9:
    v21 = 261;
    v20[0] = a3;
    v20[1] = a4;
    mlir::Operation::emitOpError(a1, v20, &v25);
    if (v25)
    {
      mlir::Diagnostic::operator<<<3ul>(v26, " #");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v25, &v22);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<92ul>((v12 + 1), " must be LLVM pointer type or LLVM dialect-compatible vector of LLVM pointer type, but got ");
      if (*v13)
      {
        v23 = 4;
        v24 = a2;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v23, 1);
        v15 = v13[3] + 24 * *(v13 + 8);
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++*(v13 + 8);
      }
    }

    v17 = (v13[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL mlir::LLVM::AddrSpaceCastOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::AddressOfOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v8, "global_name", 11, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || a1[3]))
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
          mlir::Diagnostic::operator<<<64ul>(v13, "' failed to satisfy constraint: flat symbol reference attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddressOfOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps3(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
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

uint64_t mlir::LLVM::AddressOfOp::parse(uint64_t a1, uint64_t a2)
{
  __src = 0;
  v13 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v10[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v10);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(a1, &v13, v5))
  {
    return 0;
  }

  if (v13)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AddressOfOpGenericAdaptorBase::Properties>(a2);
    *v7 = v13;
  }

  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = a2;
  if (!mlir::LLVM::AddressOfOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AddressOfOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v10) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v13);
  return 1;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps3(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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
          mlir::Diagnostic::operator<<<51ul>(v13, "' failed to satisfy constraint: any type attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
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
        v6[0] = "linkage";
        v6[1] = 7;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<59ul>(v9, "' failed to satisfy constraint: LLVM Linkage specification");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && (mlir::LLVM::UnnamedAddrAttr::classof(a1) & 1) == 0)
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "unnamed_addr";
        v8[1] = 12;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<61ul>(v11, "' failed to satisfy constraint: LLVM GlobalValue UnnamedAddr");
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && (mlir::LLVM::VisibilityAttr::classof(a1) & 1) == 0)
  {
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "visibility_";
        v8[1] = 11;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<60ul>(v11, "' failed to satisfy constraint: LLVM GlobalValue Visibility");
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

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::LinkageAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::UnnamedAddrAttr>(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ((*(*a1 + 56))(a1, &v15))
  {
    v4 = v15;
    if (v15 && ((v5 = mlir::LLVM::UnnamedAddrAttr::classof(v15)) == 0 ? (v6 = 0) : (v6 = v4), *a2 = v6, (v5 & 1) == 0))
    {
      v14[16] = 257;
      (*(*a1 + 16))(&v19, a1, v14);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC20BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20BA0))
      {
        qword_27FC20B90 = llvm::detail::getTypeNameImpl<mlir::LLVM::UnnamedAddrAttr>();
        *algn_27FC20B98 = v13;
        __cxa_guard_release(&qword_27FC20BA0);
      }

      if (v19)
      {
        v18 = 261;
        v16 = qword_27FC20B90;
        v17 = *algn_27FC20B98;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::VisibilityAttr>(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ((*(*a1 + 56))(a1, &v15))
  {
    v4 = v15;
    if (v15 && ((v5 = mlir::LLVM::VisibilityAttr::classof(v15)) == 0 ? (v6 = 0) : (v6 = v4), *a2 = v6, (v5 & 1) == 0))
    {
      v14[16] = 257;
      (*(*a1 + 16))(&v19, a1, v14);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC20BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20BB8))
      {
        qword_27FC20BA8 = llvm::detail::getTypeNameImpl<mlir::LLVM::VisibilityAttr>();
        unk_27FC20BB0 = v13;
        __cxa_guard_release(&qword_27FC20BB8);
      }

      if (v19)
      {
        v18 = 261;
        v16 = qword_27FC20BA8;
        v17 = unk_27FC20BB0;
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

uint64_t mlir::LLVM::AliasOp::populateDefaultProperties(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 48))
  {
    v3 = mlir::IntegerType::get(*(***(result + 8) + 32), 64, 0);
    result = mlir::IntegerAttr::get(v3, 0);
    *(a2 + 48) = result;
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_region_constraint_LLVMOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[26] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23[0] = *(a2 + 8);
  v20[0] = a2;
  v17[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__3;
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 64)
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
          mlir::Diagnostic::operator<<<66ul>(v14, "' failed to satisfy constraint: 64-bit signless integer attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AllocaOp::setAlignment(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  v4 = *(*a1 + 44);
  if (a3)
  {
    v6 = mlir::IntegerType::get(*(***(v3 + 24) + 32), 64, 0);
    result = mlir::Builder::getIntegerAttr(v8, v6, a2);
  }

  else
  {
    result = 0;
  }

  *(v3 + 16 * ((v4 >> 23) & 1) + 64) = result;
  return result;
}

void mlir::LLVM::AllocaOp::build(mlir::Builder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6)
  {
    I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1, a6);
  }

  else
  {
    I64IntegerAttr = 0;
  }

  mlir::LLVM::AllocaOp::build(a1, a2, a3, a5, I64IntegerAttr, a4, 0);
}

void mlir::LLVM::AllocaOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v14, 0, &v14, 1);
  if (a5)
  {
    *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(a2) = a5;
  }

  v12 = mlir::TypeAttr::get(a6);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(a2) + 8) = v12;
  if (a7)
  {
    v13 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AllocaOpGenericAdaptorBase::Properties>(a2) + 16) = v13;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v16);
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps4(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v14 = a3;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || a2[2] >> 30)
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
      mlir::Diagnostic::operator<<<36ul>((v5 + 1), " must be signless integer, but got ");
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

  else
  {
    v4 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::AutomaticAllocationScopeResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::AutomaticAllocationScopeResource *>(a1, a2, a3, a4, a5, a6);
  }

  v7 = *a1 + 40 * v6;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *v7 = *a2;
  *(v7 + 8) = v11;
  *(v7 + 16) = v8 & 0xFFFFFFFFFFFFFFF9 | 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = v9;
  *(v7 + 36) = v10;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 40 * v7 - 40;
}

uint64_t *mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get()
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID();
    mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance = &unk_286E982F0;
    unk_27FC1AFE0 = v1;
    __cxa_atexit(mlir::SideEffects::AutomaticAllocationScopeResource::~AutomaticAllocationScopeResource, &mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance, &dword_25C85D000);
  }

  return &mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance;
}

void mlir::LLVM::AndOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  __src = v21;
  v20 = 0x200000000;
  v5 = *(a2 + 2);
  v6 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::LLVM::AndOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v15, v16, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v20);
  if (__src != v21)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::LLVM::AndOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

uint64_t mlir::LLVM::AndOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::AtomicCmpXchgOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v19, "failure_ordering", 16, a3, a4))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v25, "success_ordering", 16, a3, a4))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v28, "syncscope", 9, a3, a4))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v31, a3, a4))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v34, "volatile_", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  v35 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 72));
  return (v36 & 1) == 0 || (v37 = v35[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v37, "weak", 4, a3, a4);
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupAttr,void>::id)
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
      v9[0] = "access_groups";
      v9[1] = 13;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<73ul>(v12, "' failed to satisfy constraint: LLVM dialect access group metadata array");
      }
    }
  }

  v3 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::AliasScopeAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_3;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

LABEL_3:
  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<63ul>(v16, "' failed to satisfy constraint: LLVM dialect alias scope array");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && (mlir::LLVM::AtomicOrderingAttr::classof(a1) & 1) == 0)
  {
    a4(&v14, a5);
    if (v14)
    {
      mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
      if (v14)
      {
        v13 = 261;
        v12[0] = a2;
        v12[1] = a3;
        mlir::Diagnostic::operator<<(v15, v12);
        if (v14)
        {
          mlir::Diagnostic::operator<<<72ul>(v15, "' failed to satisfy constraint: Atomic ordering for LLVM's memory model");
        }
      }
    }

    v9 = (v15[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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
      while (*v5 && *(**v5 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TBAATagAttr,void>::id)
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
      v9[0] = "tbaa";
      v9[1] = 4;
      mlir::Diagnostic::operator<<(v12, v9);
      if (v11)
      {
        mlir::Diagnostic::operator<<<69ul>(v12, "' failed to satisfy constraint: LLVM dialect TBAA tag metadata array");
      }
    }
  }

  v3 = (v12[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v11);
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::LLVM::AtomicOrderingAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    if (mlir::LLVM::AtomicOrderingAttr::classof(v14))
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

      if ((atomic_load_explicit(&qword_27FC20C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20C20))
      {
        qword_27FC20C10 = llvm::detail::getTypeNameImpl<mlir::LLVM::AtomicOrderingAttr>();
        *algn_27FC20C18 = v12;
        __cxa_guard_release(&qword_27FC20C20);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC20C10;
        v16 = *algn_27FC20C18;
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

uint64_t mlir::LLVM::AtomicCmpXchgOp::inferReturnTypes(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = a1;
  v8[1] = a2;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (a2 >= 3)
  {
    v6 = mlir::ValueRange::dereference_iterator(v8, 2);
    **a3 = getValAndBoolStructType(*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps5(mlir::Operation *a1, _DWORD *a2, unsigned int a3)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (a2[2] >> 30)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  if (v4 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
  {
    goto LABEL_10;
  }

LABEL_3:
  v14 = 261;
  v13[0] = "operand";
  v13[1] = 7;
  mlir::Operation::emitOpError(a1, v13, &v18);
  if (v18)
  {
    mlir::Diagnostic::operator<<<3ul>(v19, " #");
  }

  v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
  v6 = v5;
  if (*v5)
  {
    mlir::Diagnostic::operator<<<57ul>((v5 + 1), " must be signless integer or LLVM pointer type, but got ");
    if (*v6)
    {
      v16 = 4;
      v17 = a2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v16, 1);
      v8 = v6[3] + 24 * *(v6 + 8);
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++*(v6 + 8);
    }
  }

  v10 = (v6[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps6(mlir::Operation *a1, uint64_t a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
  {
    v8 = 1;
  }

  else
  {
    v12 = 261;
    v11[0] = "result";
    v11[1] = 6;
    mlir::Operation::emitOpError(a1, v11, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<3ul>(v17, " #");
    }

    v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
    v4 = v3;
    if (*v3)
    {
      mlir::Diagnostic::operator<<<39ul>((v3 + 1), " must be LLVM structure type, but got ");
      if (*v4)
      {
        v14 = 4;
        v15 = a2;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v4 + 3), &v14, 1);
        v6 = v4[3] + 24 * *(v4 + 8);
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++*(v4 + 8);
      }
    }

    v8 = (v4[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::LLVM::AtomicCmpXchgOp::parse(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  v53[0] = v54;
  v53[1] = 1;
  memset(v51, 0, sizeof(v51));
  v52 = 0;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v48[0] = v49;
  v48[1] = 1;
  v46 = 0;
  v47 = 0;
  v45[0] = &v46;
  v45[1] = 1;
  v43[1] = 1;
  v44 = 0;
  v43[0] = &v44;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 72) = v4;
  }

  if ((*(*a1 + 408))(a1, "volatile", 8))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 64) = v5;
  }

  v6 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v54, 1) & 1) == 0)
  {
    goto LABEL_66;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_66;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v51, 1) & 1) == 0)
  {
    goto LABEL_66;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_66;
  }

  v7 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v49, 1) & 1) == 0)
  {
    goto LABEL_66;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_66;
    }

    v8 = (*(*a1 + 32))(a1);
    v10 = mlir::NoneType::get(*v8, v9);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v47, v10))
    {
      goto LABEL_66;
    }

    if (v47)
    {
      v11 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2);
      *(v11 + 48) = v47;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  v41 = 0;
  v42 = 0;
  v66 = v68;
  v67 = 0x400000000;
  v69 = 4;
  v12 = (*(*a1 + 40))(a1);
  v62 = xmmword_2799BEB20;
  v63 = *&off_2799BEB30;
  v64 = xmmword_2799BEB40;
  __src = xmmword_2799BEAE0;
  v59 = *&off_2799BEAF0;
  v60 = xmmword_2799BEB00;
  v61 = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v41, &__src, 7))
  {
    v13 = v42;
    if (v42)
    {
LABEL_18:
      v14 = mlir::LLVM::symbolizeAtomicOrdering(v41, v13);
      if ((v15 & 1) == 0)
      {
        v39[0] = "invalid ";
        v40 = 259;
        (*(*a1 + 24))(&__src, a1, v12, v39);
        if (__src)
        {
          v36 = "success_ordering attribute specification: ";
LABEL_59:
          mlir::Diagnostic::operator<<<44ul>(&__src + 8, v36);
          if (__src)
          {
            v57 = 261;
            v56[0] = v41;
            v56[1] = v42;
            mlir::Diagnostic::operator<<(&__src + 8, v56);
            if (__src)
            {
              v57 = 264;
              LOBYTE(v56[0]) = 34;
              mlir::Diagnostic::operator<<(&__src + 8, v56);
            }
          }
        }

LABEL_48:
        v28 = (v65 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        goto LABEL_55;
      }

      v16 = v14;
      v17 = (*(*a1 + 32))(a1);
      v18 = mlir::LLVM::AtomicOrderingAttr::get(*v17, v16);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 40) = v18;
    }

LABEL_20:
    if (v66 != v68)
    {
      free(v66);
    }

    v41 = 0;
    v42 = 0;
    v66 = v68;
    v67 = 0x400000000;
    v69 = 4;
    v12 = (*(*a1 + 40))(a1);
    v62 = xmmword_2799BEB20;
    v63 = *&off_2799BEB30;
    v64 = xmmword_2799BEB40;
    __src = xmmword_2799BEAE0;
    v59 = *&off_2799BEAF0;
    v60 = xmmword_2799BEB00;
    v61 = *&off_2799BEB10;
    if ((*(*a1 + 424))(a1, &v41, &__src, 7))
    {
      v19 = v42;
      if (!v42)
      {
        goto LABEL_26;
      }

LABEL_24:
      v20 = mlir::LLVM::symbolizeAtomicOrdering(v41, v19);
      if (v21)
      {
        v22 = v20;
        v23 = (*(*a1 + 32))(a1);
        v24 = mlir::LLVM::AtomicOrderingAttr::get(*v23, v22);
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicCmpXchgOpGenericAdaptorBase::Properties>(a2) + 24) = v24;
        goto LABEL_26;
      }

      v39[0] = "invalid ";
      v40 = 259;
      (*(*a1 + 24))(&__src, a1, v12, v39);
      if (!__src)
      {
        goto LABEL_48;
      }

      v36 = "failure_ordering attribute specification: ";
      goto LABEL_59;
    }

    v39[0] = 0;
    v33 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v33);
    v35 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v39, NoneType, "failure_ordering", 16, &v66);
    if ((v35 & 0x100) == 0)
    {
      v32 = "expected string or keyword containing one of the following enum values for attribute 'failure_ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
      goto LABEL_47;
    }

    if (v35)
    {
      v19 = *(v39[0] + 24);
      v41 = *(v39[0] + 16);
      v42 = v19;
      if (!v19)
      {
LABEL_26:
        if (v66 != v68)
        {
          free(v66);
        }

        v66 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v25 = *(a2 + 8);
          *&__src = a1;
          *(&__src + 1) = &v66;
          *&v59 = a2;
          if (mlir::LLVM::AtomicCmpXchgOp::verifyInherentAttrs(v25, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AtomicCmpXchgOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 536))(a1, &v46) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0)
          {
            *&__src = 0;
            if ((*(*a1 + 536))(a1, &__src))
            {
              v44 = __src;
              v56[0] = __src;
              v26 = *(*__src + 136);
              if (v26 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
              {
                if (*(__src + 8) >> 30)
                {
LABEL_36:
                  v27 = (*(*a1 + 16))(a1);
                  v68[8] = 257;
                  (*(*a1 + 24))(&__src, a1, v27, &v66);
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<<62ul>(&__src + 8, "'val' must be signless integer or LLVM pointer type, but got ");
                    if (__src)
                    {
                      mlir::Diagnostic::operator<<<mlir::Type &>(&__src + 8, v56);
                    }
                  }

                  v28 = (v65 & 1) == 0;
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
                  goto LABEL_67;
                }
              }

              else if (v26 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id)
              {
                goto LABEL_36;
              }

              *&__src = getValAndBoolStructType(__src);
              llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &__src + 8);
              if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v53, v45, v6, a2 + 16) && ((*(*a1 + 728))(a1, v51, v44, a2 + 16) & 1) != 0)
              {
                v28 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v48, v43, v7, a2 + 16);
                goto LABEL_67;
              }
            }
          }
        }

LABEL_66:
        v28 = 0;
        goto LABEL_67;
      }

      goto LABEL_24;
    }

    goto LABEL_54;
  }

  v39[0] = 0;
  v29 = (*(*a1 + 32))(a1);
  v30 = mlir::Builder::getNoneType(v29);
  v31 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v39, v30, "success_ordering", 16, &v66);
  if ((v31 & 0x100) == 0)
  {
    v32 = "expected string or keyword containing one of the following enum values for attribute 'success_ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
LABEL_47:
    v56[0] = v32;
    v57 = 259;
    (*(*a1 + 24))(&__src, a1, v12, v56);
    goto LABEL_48;
  }

  if (v31)
  {
    v13 = *(v39[0] + 24);
    v41 = *(v39[0] + 16);
    v42 = v13;
    if (v13)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_54:
  v28 = 0;
LABEL_55:
  if (v66 != v68)
  {
    free(v66);
  }

LABEL_67:
  v37 = *MEMORY[0x277D85DE8];
  return v28;
}

BOOL mlir::LLVM::AtomicRMWOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(v19, a3, a4))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps9(v25, "ordering", 8, a3, a4))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v28, "syncscope", 9, a3, a4))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v31, a3, a4))
      {
        return 0;
      }
    }
  }

  v32 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 64));
  return (v33 & 1) == 0 || (v34 = v32[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v34, "volatile_", 9, a3, a4);
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps13(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::AtomicBinOpAttr::classof(a1))
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
        v8[0] = "bin_op";
        v8[1] = 6;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<65ul>(v11, "' failed to satisfy constraint: llvm.atomicrmw binary operations");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::LLVM::AtomicRMWOp::inferReturnTypes(uint64_t a1, unint64_t a2, unint64_t **a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = a1;
  v8[1] = a2;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a3, 1uLL);
  if (a2 >= 2)
  {
    v5 = 1;
    **a3 = *(mlir::ValueRange::dereference_iterator(v8, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps7(mlir::Operation *a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v28[25] = *MEMORY[0x277D85DE8];
  v23 = a5;
  if (mlir::LLVM::isCompatibleFloatingPointType(a2) || (v9 = *(*a2 + 136), v9 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id) || v9 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(a2 + 2) >> 30) || !mlir::LLVM::isScalableVectorType(a2))
  {
    v18 = 1;
  }

  else
  {
    v22 = 261;
    v21[0] = a3;
    v21[1] = a4;
    mlir::Operation::emitOpError(a1, v21, &v27);
    if (v27)
    {
      mlir::Diagnostic::operator<<<3ul>(v28, " #");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v27, &v23);
    v11 = v10;
    if (*v10)
    {
      v24 = 3;
      v25 = " must be floating point LLVM type or LLVM pointer type or signless integer or LLVM dialect-compatible fixed-length vector type, but got ";
      v26 = 136;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v10 + 3), &v24, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
      if (*v11)
      {
        v24 = 4;
        v25 = a2;
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v24, 1);
        v16 = v11[3] + 24 * *(v11 + 8);
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++*(v11 + 8);
      }
    }

    v18 = (v11[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::LLVM::AtomicRMWOp::parse(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  v52[0] = v53;
  v52[1] = 1;
  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v49[0] = v50;
  v49[1] = 1;
  v47 = 0;
  v48 = 0;
  v46[0] = &v47;
  v46[1] = 1;
  v44[1] = 1;
  __src = 0;
  v44[0] = &__src;
  if ((*(*a1 + 408))())
  {
    v4 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2) + 64) = v4;
  }

  v42 = 0;
  v43 = 0;
  v59 = v61;
  v60 = 0x400000000;
  v62 = 4;
  v5 = (*(*a1 + 40))(a1);
  memcpy(__dst, &off_2799BE940, sizeof(__dst));
  if ((*(*a1 + 424))(a1, &v42, __dst, 19))
  {
    v6 = v43;
    if (!v43)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v40[0] = 0;
  v31 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v31);
  v33 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v40, NoneType, "bin_op", 6, &v59);
  if ((v33 & 0x100) == 0)
  {
    v55 = "expected string or keyword containing one of the following enum values for attribute 'bin_op' [xchg, add, sub, _and, nand, _or, _xor, max, min, umax, umin, fadd, fsub, fmax, fmin, uinc_wrap, udec_wrap, usub_cond, usub_sat]";
    v57 = 259;
    (*(*a1 + 24))(__dst, a1, v5, &v55);
LABEL_48:
    v30 = (BYTE8(__dst[12]) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
    goto LABEL_50;
  }

  if ((v33 & 1) == 0)
  {
    v30 = 0;
LABEL_50:
    v34 = v59;
    if (v59 == v61)
    {
      goto LABEL_68;
    }

LABEL_51:
    free(v34);
    goto LABEL_68;
  }

  v6 = *(v40[0] + 24);
  v42 = *(v40[0] + 16);
  v43 = v6;
  if (v6)
  {
LABEL_5:
    v7 = mlir::LLVM::symbolizeAtomicBinOp(v42, v6);
    if (v8)
    {
      v9 = v7;
      v10 = (*(*a1 + 32))(a1);
      v11 = mlir::IntegerType::get(*v10, 64, 0);
      v12 = mlir::IntegerAttr::get(v11, v9);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2) + 24) = v12;
      goto LABEL_7;
    }

    v40[0] = "invalid ";
    v41 = 259;
    (*(*a1 + 24))(__dst, a1, v5, v40);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<34ul>(__dst + 8, "bin_op attribute specification: ");
      if (*&__dst[0])
      {
        v57 = 261;
        v55 = v42;
        v56 = v43;
        mlir::Diagnostic::operator<<(__dst + 8, &v55);
        if (*&__dst[0])
        {
          v57 = 264;
          LOBYTE(v55) = 34;
          mlir::Diagnostic::operator<<(__dst + 8, &v55);
        }
      }
    }

    goto LABEL_48;
  }

LABEL_7:
  if (v59 != v61)
  {
    free(v59);
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v53, 1) & 1) == 0)
  {
    goto LABEL_67;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_67;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v50, 1) & 1) == 0)
  {
    goto LABEL_67;
  }

  if ((*(*a1 + 408))(a1, "syncscope", 9))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_67;
    }

    v15 = (*(*a1 + 32))(a1);
    v17 = mlir::NoneType::get(*v15, v16);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v48, v17))
    {
      goto LABEL_67;
    }

    if (v48)
    {
      v18 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2);
      *(v18 + 48) = v48;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v42 = 0;
  v43 = 0;
  v59 = v61;
  v60 = 0x400000000;
  v62 = 4;
  v19 = (*(*a1 + 40))(a1);
  __dst[4] = xmmword_2799BEB20;
  __dst[5] = *&off_2799BEB30;
  __dst[6] = xmmword_2799BEB40;
  __dst[0] = xmmword_2799BEAE0;
  __dst[1] = *&off_2799BEAF0;
  __dst[2] = xmmword_2799BEB00;
  __dst[3] = *&off_2799BEB10;
  if ((*(*a1 + 424))(a1, &v42, __dst, 7))
  {
    v20 = v43;
    if (!v43)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v40[0] = 0;
  v35 = (*(*a1 + 32))(a1);
  v36 = mlir::Builder::getNoneType(v35);
  v37 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v40, v36, "ordering", 8, &v59);
  if ((v37 & 0x100) == 0)
  {
    v55 = "expected string or keyword containing one of the following enum values for attribute 'ordering' [not_atomic, unordered, monotonic, acquire, release, acq_rel, seq_cst]";
    v57 = 259;
    (*(*a1 + 24))(__dst, a1, v19, &v55);
LABEL_61:
    v30 = (BYTE8(__dst[12]) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
    goto LABEL_63;
  }

  if ((v37 & 1) == 0)
  {
    v30 = 0;
LABEL_63:
    v34 = v59;
    if (v59 == v61)
    {
      goto LABEL_68;
    }

    goto LABEL_51;
  }

  v20 = *(v40[0] + 24);
  v42 = *(v40[0] + 16);
  v43 = v20;
  if (v20)
  {
LABEL_20:
    v21 = mlir::LLVM::symbolizeAtomicOrdering(v42, v20);
    if (v22)
    {
      v23 = v21;
      v24 = (*(*a1 + 32))(a1);
      v25 = mlir::LLVM::AtomicOrderingAttr::get(*v24, v23);
      *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::AtomicRMWOpGenericAdaptorBase::Properties>(a2) + 40) = v25;
      goto LABEL_22;
    }

    v40[0] = "invalid ";
    v41 = 259;
    (*(*a1 + 24))(__dst, a1, v19, v40);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<36ul>(__dst + 8, "ordering attribute specification: ");
      if (*&__dst[0])
      {
        v57 = 261;
        v55 = v42;
        v56 = v43;
        mlir::Diagnostic::operator<<(__dst + 8, &v55);
        if (*&__dst[0])
        {
          v57 = 264;
          LOBYTE(v55) = 34;
          mlir::Diagnostic::operator<<(__dst + 8, &v55);
        }
      }
    }

    goto LABEL_61;
  }

LABEL_22:
  if (v59 != v61)
  {
    free(v59);
  }

  v59 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_67;
  }

  v26 = *(a2 + 8);
  *&__dst[0] = a1;
  *(&__dst[0] + 1) = &v59;
  *&__dst[1] = a2;
  if (!mlir::LLVM::AtomicRMWOp::verifyInherentAttrs(v26, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::AtomicRMWOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, __dst))
  {
    goto LABEL_67;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_67;
  }

  if (((*(*a1 + 536))(a1, &v47) & 1) == 0)
  {
    goto LABEL_67;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_67;
  }

  *&__dst[0] = 0;
  if (((*(*a1 + 536))(a1, __dst) & 1) == 0)
  {
    goto LABEL_67;
  }

  v27 = *&__dst[0];
  __src = *&__dst[0];
  v55 = *&__dst[0];
  if (mlir::LLVM::isCompatibleFloatingPointType(*&__dst[0]) || (v28 = *(*v27 + 136), v28 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id) || v28 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v27[2] >> 30) || !mlir::LLVM::isScalableVectorType(v27))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v46);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v52, v46, v13, a2 + 16))
    {
      v30 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v49, v44, v14, a2 + 16);
      goto LABEL_68;
    }

LABEL_67:
    v30 = 0;
    goto LABEL_68;
  }

  v29 = (*(*a1 + 16))(a1);
  v61[8] = 257;
  (*(*a1 + 24))(__dst, a1, v29, &v59);
  if (*&__dst[0])
  {
    mlir::Diagnostic::operator<<<142ul>(__dst + 8);
    if (*&__dst[0])
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(__dst + 8, &v55);
    }
  }

  v30 = (BYTE8(__dst[12]) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
LABEL_68:
  v38 = *MEMORY[0x277D85DE8];
  return v30;
}

void mlir::LLVM::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps8(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v20 = 0;
  if (!mlir::LLVM::isCompatibleOuterType(a2) || ((v8 = *(*a2 + 136), v8 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id) : (v9 = 1), v9))
  {
    v19 = 261;
    v18[0] = a3;
    v18[1] = a4;
    mlir::Operation::emitOpError(a1, v18, &v23);
    if (v23)
    {
      mlir::Diagnostic::operator<<<3ul>(v24, " #");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v20);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<54ul>((v10 + 1), " must be LLVM-compatible non-aggregate type, but got ");
      if (*v11)
      {
        v21 = 4;
        v22 = a2;
        v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v21, 1);
        v13 = v11[3] + 24 * *(v11 + 8);
        v14 = *v12;
        *(v13 + 16) = *(v12 + 16);
        *v13 = v14;
        ++*(v11 + 8);
      }
    }

    v15 = (v11[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  }

  else
  {
    v15 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::LLVM::BitcastOp::parse(uint64_t a1, uint64_t a2)
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

BOOL mlir::LLVM::BrOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
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
        v6[0] = "loop_annotation";
        v6[1] = 15;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::BrOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::LoopAnnotationAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC20CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20CA0))
      {
        qword_27FC20C90 = llvm::detail::getTypeNameImpl<mlir::LLVM::LoopAnnotationAttr>();
        *algn_27FC20C98 = v12;
        __cxa_guard_release(&qword_27FC20CA0);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC20C90;
        v16 = *algn_27FC20C98;
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(mlir::Operation *a1, uint64_t a2, unsigned int a3)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a3;
  if (mlir::LLVM::isCompatibleOuterType(a2))
  {
    v5 = 1;
  }

  else
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
      mlir::Diagnostic::operator<<<60ul>((v6 + 1), " must be variadic of LLVM dialect-compatible type, but got ");
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

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::LLVM::BrOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v14[0] = v15;
  v14[1] = 0x400000000;
  v11 = 0;
  v12[0] = &v13;
  v12[1] = 0x100000000;
  if (((*(*a1 + 800))() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v14, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v12) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    v9[0] = a1;
    v9[1] = &v10;
    v9[2] = a2;
    if (mlir::LLVM::BrOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::BrOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v9))
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v11);
      v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v14, v12, v4, a2 + 16);
      goto LABEL_13;
    }
  }

LABEL_12:
  v6 = 0;
LABEL_13:
  if (v12[0] != &v13)
  {
    free(v12[0]);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::LLVM::CallIntrinsicOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "intrin", 6, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v16, "op_bundle_sizes", 15, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v19, "op_bundle_tags", 14, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 32)
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
          mlir::Diagnostic::operator<<<58ul>(v14, "' failed to satisfy constraint: i32 dense array attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
          mlir::Diagnostic::operator<<<48ul>(v13, "' failed to satisfy constraint: array attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FastmathFlagsAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC20CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20CE0))
      {
        qword_27FC20CD0 = llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsAttr>();
        *algn_27FC20CD8 = v12;
        __cxa_guard_release(&qword_27FC20CE0);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC20CD0;
        v16 = *algn_27FC20CD8;
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

BOOL mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a5;
  if (mlir::LLVM::isCompatibleOuterType(a2))
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
      mlir::Diagnostic::operator<<<48ul>((v10 + 1), " must be LLVM dialect-compatible type, but got ");
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

BOOL mlir::LLVM::CallIntrinsicOp::parse(char *a1, uint64_t a2)
{
  v49[6] = *MEMORY[0x277D85DE8];
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v35 = v37;
  v36 = 0xC00000000;
  v32 = 0;
  v33[0] = &v34;
  v33[1] = 0x100000000;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    v44 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &v44);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v32, v6))
  {
    goto LABEL_30;
  }

  if (v32)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2);
    *(v8 + 8) = v32;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_30;
  }

  v9 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v41, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_30;
  }

  v10 = (*(*a1 + 40))(a1);
  v47 = v49;
  v48 = 0x100000000;
  v44 = &v46;
  v45 = 0x100000000;
  v11 = parseOpBundles(a1, &v47, &v44, &v31);
  if (v11 >= 0x100u)
  {
    if (v11)
    {
      if (v48)
      {
        v13 = v47;
        v2 = &v47[48 * v48];
        do
        {
          llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand const*,void>(&v38, *v13, (*v13 + 32 * *(v13 + 2)));
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v35, *(v13 + 2));
          v13 += 48;
        }

        while (v13 != v2);
      }

      if (v45)
      {
        v14 = v44;
        v2 = &v44[64 * v45];
        do
        {
          llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v33, *v14, (*v14 + 8 * *(v14 + 2)));
          v14 += 64;
        }

        while (v14 != v2);
      }

      v15 = v31;
      if (v31)
      {
        *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2) + 24) = v15;
      }

      v12 = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    LOBYTE(v2) = 1;
  }

  llvm::SmallVector<llvm::SmallVector<mlir::Type,6u>,1u>::~SmallVector(&v44);
  llvm::SmallVector<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,1u>::~SmallVector(&v47);
  if ((v2 & 1) == 0 && !v12)
  {
    goto LABEL_30;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_30;
  }

  v47 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v47))
  {
    goto LABEL_30;
  }

  v16 = *(v47 + 2);
  v17 = *(v47 + 2);
  v29 = v16;
  v30 = v17;
  v27 = *(v47 + 3);
  v28 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_30;
  }

  v18 = *(a2 + 8);
  v44 = a1;
  v45 = &v28;
  v46 = a2;
  if (!mlir::LLVM::CallIntrinsicOp::verifyInherentAttrs(v18, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::CallIntrinsicOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_1>, &v44))
  {
    goto LABEL_30;
  }

  v26 = (v16 + 8 * v17);
  v19 = v42;
  v20 = v39;
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2) + 32) = v19 | (v20 << 32);
  v21 = (*(*a1 + 32))(a1);
  v22 = mlir::detail::DenseArrayAttrImpl<int>::get(*v21, v35, v36);
  *(mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2) + 16) = v22;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v26, &v26[8 * v27]);
  if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, &v41, &v29, v9, a2 + 16))
  {
    v23 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v38, v33, v10, a2 + 16);
  }

  else
  {
LABEL_30:
    v23 = 0;
  }

  if (v33[0] != &v34)
  {
    free(v33[0]);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
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
        v6[0] = "CConv";
        v6[1] = 5;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<70ul>(v9, "' failed to satisfy constraint: LLVM Calling Convention specification");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
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
        v6[0] = "TailCallKind";
        v6[1] = 12;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<70ul>(v9, "' failed to satisfy constraint: LLVM Calling Convention specification");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_3;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

LABEL_3:
  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<63ul>(v16, "' failed to satisfy constraint: Array of dictionary attributes");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
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
        v6[0] = "memory_effects";
        v6[1] = 14;
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

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(void **a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || (*a1)[17] == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
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
          mlir::Diagnostic::operator<<<69ul>(v13, "' failed to satisfy constraint: type attribute of LLVM function type");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::CConvAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC20D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20D20))
      {
        qword_27FC20D10 = llvm::detail::getTypeNameImpl<mlir::LLVM::CConvAttr>();
        *algn_27FC20D18 = v12;
        __cxa_guard_release(&qword_27FC20D20);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC20D10;
        v16 = *algn_27FC20D18;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v4 = v13[1];
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v4[2] == 32)
    {
      *a2 = v13;
LABEL_7:
      v5 = 1;
      goto LABEL_17;
    }
  }

  *a2 = 0;
  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<int>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<int>>();
    *algn_27FC18C88 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<int>>(void)::Name;
    v15 = *algn_27FC18C88;
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
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (((*(*a1 + 56))(a1, &v12) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (!v12)
  {
LABEL_15:
    v7 = 1;
    goto LABEL_16;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id && !v12[3])
  {
    *a2 = v12;
    goto LABEL_15;
  }

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
LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::MemoryEffectsAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC20D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20D50))
      {
        qword_27FC20D40 = llvm::detail::getTypeNameImpl<mlir::LLVM::MemoryEffectsAttr>();
        *algn_27FC20D48 = v12;
        __cxa_guard_release(&qword_27FC20D50);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC20D40;
        v16 = *algn_27FC20D48;
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

uint64_t mlir::LLVM::CallOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(uint64_t *a1)
{
  if ((*(**a1 + 40))(*a1) < 6)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a1[1];

  return mlir::DialectBytecodeReader::readSparseArray<int>(v2, v3, 2uLL);
}

uint64_t mlir::LLVM::CallOp::populateDefaultProperties(uint64_t result, uint64_t *a2)
{
  v3 = *(***(result + 8) + 32);
  if (!a2[8])
  {
    result = mlir::LLVM::FastmathFlagsAttr::get(*(***(result + 8) + 32), 0);
    a2[8] = result;
  }

  if (!*a2)
  {
    result = mlir::LLVM::CConvAttr::get(v3, 0);
    *a2 = result;
  }

  if (!a2[1])
  {
    result = mlir::LLVM::TailCallKindAttr::get(v3, 0);
    a2[1] = result;
  }

  return result;
}

BOOL mlir::LLVM::ComdatOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v8, "sym_name", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ComdatSelectorOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v13, "sym_name", 8, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (mlir::LLVM::comdat::ComdatAttr::classof(a1))
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
        v8[0] = "comdat";
        v8[1] = 6;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<50ul>(v11, "' failed to satisfy constraint: LLVM Comdat Types");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatSelectorOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::LLVM::ComdatSelectorOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v34[9] = *MEMORY[0x277D85DE8];
  v24 = 0;
  if (!mlir::AsmParser::parseSymbolName(a1, &v24))
  {
    goto LABEL_13;
  }

  if (v24)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatSelectorOpGenericAdaptorBase::Properties>(a2);
    *(v4 + 8) = v24;
  }

  v22 = 0;
  v23 = 0;
  v33[0] = v34;
  v33[1] = 0x400000000;
  v34[8] = 4;
  v5 = (*(*a1 + 40))(a1);
  v29 = xmmword_2799BEA90;
  v30 = *&off_2799BEAA0;
  v31 = xmmword_2799BEAB0;
  v27 = xmmword_2799BEA70;
  v28 = *&off_2799BEA80;
  if ((*(*a1 + 424))(a1, &v22, &v27, 5))
  {
    v6 = v23;
    if (!v23)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = mlir::LLVM::comdat::symbolizeComdat(v22, v6);
    if (v8)
    {
      v9 = v7;
      v10 = (*(*a1 + 32))(a1);
      v11 = mlir::IntegerType::get(*v10, 64, 0);
      v12 = mlir::IntegerAttr::get(v11, v9);
      *mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatSelectorOpGenericAdaptorBase::Properties>(a2) = v12;
      goto LABEL_8;
    }

    v20[0] = "invalid ";
    v21 = 259;
    (*(*a1 + 24))(&v27, a1, v5, v20);
    if (v27)
    {
      mlir::Diagnostic::operator<<<34ul>(&v27 + 8, "comdat attribute specification: ");
      if (v27)
      {
        v26 = 261;
        v25[0] = v22;
        v25[1] = v23;
        mlir::Diagnostic::operator<<(&v27 + 8, v25);
        if (v27)
        {
          v26 = 264;
          LOBYTE(v25[0]) = 34;
          mlir::Diagnostic::operator<<(&v27 + 8, v25);
        }
      }
    }

    goto LABEL_23;
  }

  v20[0] = 0;
  v15 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v15);
  v17 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v20, NoneType, "comdat", 6, v33);
  if ((v17 & 0x100) == 0)
  {
    v25[0] = "expected string or keyword containing one of the following enum values for attribute 'comdat' [any, exactmatch, largest, nodeduplicate, samesize]";
    v26 = 259;
    (*(*a1 + 24))(&v27, a1, v5, v25);
LABEL_23:
    v14 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
    goto LABEL_25;
  }

  if (v17)
  {
    v6 = *(v20[0] + 24);
    v22 = *(v20[0] + 16);
    v23 = v6;
    if (!v6)
    {
LABEL_8:
      if (v33[0] != v34)
      {
        free(v33[0]);
      }

      v33[0] = (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        v13 = *(a2 + 8);
        *&v27 = a1;
        *(&v27 + 1) = v33;
        *&v28 = a2;
        if (mlir::LLVM::ComdatSelectorOp::verifyInherentAttrs(v13, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::ComdatSelectorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v27))
        {
          v14 = 1;
          goto LABEL_27;
        }
      }

LABEL_13:
      v14 = 0;
      goto LABEL_27;
    }

    goto LABEL_6;
  }

  v14 = 0;
LABEL_25:
  if (v33[0] != v34)
  {
    free(v33[0]);
  }

LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}