uint64_t llvm::SmallVectorImpl<mlir::TypedAttr>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      v7 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
      goto LABEL_17;
    }

    v7 = (a2 + 8);
    v8 = *(a2 + 8);
    v9 = *(a1 + 8);
    if (v9 >= v8)
    {
      if (v8)
      {
        memmove(*a1, v4, 16 * v8);
      }

      goto LABEL_16;
    }

    if (*(a1 + 12) >= v8)
    {
      if (v9)
      {
        memmove(*a1, v4, 16 * v9);
        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    }

    v9 = 0;
LABEL_14:
    v10 = *v7 - v9;
    if (v10)
    {
      memcpy((*a1 + 16 * v9), (*a2 + 16 * v9), 16 * v10);
    }

LABEL_16:
    *(a1 + 8) = v8;
LABEL_17:
    *v7 = 0;
  }

  return a1;
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::ParamConstantAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v22, v5, v4);
  v6 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
  *v6 = 0;
  v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  v8 = v23;
  if (v23)
  {
    v9 = v22;
    v10 = v23;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[16 * (v10 >> 1)];
      v14 = *v12;
      v13 = (v12 + 2);
      v10 += ~(v10 >> 1);
      if (v14 < v7)
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

  else
  {
    v8 = 0;
    v9 = v22;
  }

  if (v9 != &v22[16 * v8] && *v9 == v7)
  {
    v15 = *(v9 + 1);
  }

  else
  {
    v15 = 0;
  }

  *v6 = v15;
  v16 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(&v22, v16, v6);
  *&v20 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v21 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, &v22, &v20, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSF_6detail24ParamConstantAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v19, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSE_6detail24ParamConstantAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v18, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id, "coreml.param.constant", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v20);
  mlir::detail::InterfaceMap::~InterfaceMap(&v22);
  v17 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ODIE::Compiler::ParamAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ODIE::Compiler::ParamAttrInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  return v2 == a1 || v3 == a1;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSF_6detail24ParamConstantAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENSE_18ParamAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v7 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v8 = a5;
    a3(a4);
    a5 = v8;
  }

  if (v7)
  {

    a5(a6, v7);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ParamConstantAttrES2_NSE_6detail24ParamConstantAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENSD_18ParamAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 16);
  if (!*(a2 + 8))
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v6, v7);
  }

  v6 = *a3;
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *a5;
  return mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v6, v7);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::IntentAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::IntentAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10IntentAttrES2_NSF_6detail17IntentAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10IntentAttrES2_NSE_6detail17IntentAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id, "coreml.intent", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSF_6detail21TargetSpecAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSE_6detail21TargetSpecAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TargetSpecAttr,void>::id, "coreml.target_spec", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSF_6detail21TargetSpecAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 48);
  if (*(a2 + 40))
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14TargetSpecAttrES2_NSE_6detail21TargetSpecAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = a2[1];
  if (a2[5])
  {
    v8 = a3 + 1;
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  if (a2[6])
  {
    v12 = *v8;
  }

  else
  {
    v12 = 0;
  }

  return mlir::ODIE::Compiler::CoreML::TargetSpecAttr::get(*(**a2 + 32), v10, a2[2], a2[3], a2[4], v11, v12, a8, a2[7], a2[8]);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ApproximateAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ApproximateAttrES2_NSF_6detail22ApproximateAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ApproximateAttrES2_NSE_6detail22ApproximateAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id, "coreml.approximate", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15PaddingModeAttrES2_NSF_6detail22PaddingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15PaddingModeAttrES2_NSE_6detail22PaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PaddingModeAttr,void>::id, "coreml.padding_mode", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML21InterpolationModeAttrES2_NSF_6detail28InterpolationModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML21InterpolationModeAttrES2_NSE_6detail28InterpolationModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr,void>::id, "coreml.interpolation_mode", 25);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16SamplingModeAttrES2_NSF_6detail23SamplingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16SamplingModeAttrES2_NSE_6detail23SamplingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SamplingModeAttr,void>::id, "coreml.sampling_mode", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ScatterModeAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ScatterModeAttrES2_NSF_6detail22ScatterModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML15ScatterModeAttrES2_NSE_6detail22ScatterModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterModeAttr,void>::id, "coreml.scatter_mode", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::FileResourceAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::ODIE::Compiler::CoreML::FileResourceAttr>::getType;
  v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::FileResourceAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSF_6detail23FileResourceAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSE_6detail23FileResourceAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FileResourceAttr,void>::id, "coreml.file_resource", 20);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::FileResourceAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
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

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSF_6detail23FileResourceAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16FileResourceAttrES2_NSE_6detail23FileResourceAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v8 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  v19.i64[0] = a3;
  v19.i64[1] = a4;
  v18.i64[0] = a5;
  v18.i64[1] = a6;
  v12 = mlir::AttrTypeSubElementHandler<mlir::ShapedType,void>::replace(v7, v8, &v19, &v18);
  if (!v10)
  {
    v14 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    return mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(*(**a2 + 32), v12, v11, v14, v16);
  }

  v13 = v19.i64[0];
  v19 = vaddq_s64(v19, xmmword_25D0A0600);
  v14 = *v13;
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = v19.i64[0];
  v19 = vaddq_s64(v19, xmmword_25D0A0600);
  v16 = *v15;
  return mlir::ODIE::Compiler::CoreML::FileResourceAttr::get(*(**a2 + 32), v12, v11, v14, v16);
}

void mlir::AbstractAttribute::get<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,mlir::Attribute,mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ComputeTargetAttrES2_NSF_6detail24ComputeTargetAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML17ComputeTargetAttrES2_NSE_6detail24ComputeTargetAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id, "coreml.compute_target", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::OpaqueType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::OpaqueType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::OpaqueType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TypeType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::TypeType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::TypeType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::SymbolType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::SymbolType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::SymbolType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::ArrayType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::ArrayType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::ParamRefType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::ParamRefType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::SymbolRefType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::SymbolRefType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::HandleType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::HandleType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id);
}

uint64_t mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TokenType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::TokenType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::TokenType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::AsyncValueType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::AsyncValueType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id);
}

void mlir::Dialect::addType<mlir::ODIE::Compiler::CoreML::TypedPointerType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::TypedPointerType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::OpaqueType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::OpaqueType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10OpaqueTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10OpaqueTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OpaqueType,void>::id, "coreml.opaque", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::OpaqueType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10OpaqueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10OpaqueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::TypeType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TypeType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML8TypeTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML8TypeTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypeType,void>::id, "coreml.type", 11);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::TypeType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::SymbolType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10SymbolTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10SymbolTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id, "coreml.symbol", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::SymbolType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10SymbolTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML10SymbolTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::ArrayType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ArrayType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSF_6detail16ArrayTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSE_6detail16ArrayTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, "coreml.array", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

void _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSF_6detail16ArrayTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 24);
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

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9ArrayTypeES2_NSE_6detail16ArrayTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v18.i64[0] = a3;
  v18.i64[1] = a4;
  v9 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v5, v6, &v18);
  v11 = v10;
  v12 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v7, v8, &v18);
  v20 = *(**a2 + 32);
  v13 = *v20;
  v19[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id;
  v19[1] = &v20;
  v24[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJNS1_9TypedAttrESF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v24[1] = v19;
  v22[0] = v9;
  v22[1] = v11;
  v23[0] = v12;
  v23[1] = v14;
  memset(v26, 0, sizeof(v26));
  memset(__dst, 0, sizeof(__dst));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr,mlir::TypedAttr>(__dst, __dst, v26, v9, v23);
  v21 = v22;
  *&__dst[0] = v22;
  *(&__dst[0] + 1) = v24;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v13 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArrayType,void>::id, v15, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::ParamRefType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSF_6detail19ParamRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSE_6detail19ParamRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, "coreml.param_ref", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSF_6detail19ParamRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML12ParamRefTypeES2_NSE_6detail19ParamRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v10.i64[0] = a3;
  v10.i64[1] = a4;
  v7 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v4, v5, &v10);
  v8 = *(**v7 + 32);

  return mlir::ODIE::Compiler::CoreML::ParamRefType::get(v8, v7, v6);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::SymbolRefType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::SymbolRefType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSF_6detail20SymbolRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSE_6detail20SymbolRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, "coreml.symbol_ref", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSF_6detail20SymbolRefTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML13SymbolRefTypeES2_NSE_6detail20SymbolRefTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v6 = a2[2];
  v13.i64[0] = a3;
  v13.i64[1] = a4;
  v7 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v5, v6, &v13);
  v15 = *(**a2 + 32);
  v8 = *v15;
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id;
  v14[1] = &v15;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v18[1] = v14;
  v17[0] = v7;
  v17[1] = v9;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr>(v19, 0, v19, v20, v7);
  v16 = v17;
  *&v19[0] = v17;
  *(&v19[0] + 1) = v18;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolRefType,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::HandleType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::HandleType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSF_6detail17HandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSE_6detail17HandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, "coreml.handle", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSF_6detail17HandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML10HandleTypeES2_NSE_6detail17HandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  v6 = *(**a2 + 32);
  v8 = v5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::HandleType,mlir::Type>(v6, &v8);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::TokenType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TokenType,mlir::Type,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9TokenTypeES2_NS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML9TokenTypeES2_NS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id, "coreml.token", 12);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::ODIE::Compiler::CoreML::TokenType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML9TokenTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_4ODIE8Compiler6CoreML9TokenTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::AsyncValueType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSF_6detail21AsyncValueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSE_6detail21AsyncValueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, "coreml.async.value", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSF_6detail21AsyncValueTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML14AsyncValueTypeES2_NSE_6detail21AsyncValueTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[1];
  if (v5)
  {
    v5 = *a5;
  }

  v6 = *(**a2 + 32);
  v8 = v5;
  return mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::Type>(v6, &v8);
}

void mlir::AbstractType::get<mlir::ODIE::Compiler::CoreML::TypedPointerType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::ODIE::Compiler::CoreML::TypedPointerType,mlir::Type,mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16TypedPointerTypeES2_NSF_6detail23TypedPointerTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16TypedPointerTypeES2_NSE_6detail23TypedPointerTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id, "coreml.pointer", 14);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16TypedPointerTypeES2_NSF_6detail23TypedPointerTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 8))
  {
    return a3(a4);
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4ODIE8Compiler6CoreML16TypedPointerTypeES2_NSE_6detail23TypedPointerTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v6 = a2[2];
  v13.i64[0] = a3;
  v13.i64[1] = a4;
  v7 = mlir::AttrTypeSubElementHandler<mlir::TypedAttr,void>::replace(v5, v6, &v13);
  v15 = *(**a2 + 32);
  v8 = *v15;
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id;
  v14[1] = &v15;
  v18[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23TypedPointerTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_16TypedPointerTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v18[1] = v14;
  v17[0] = v7;
  v17[1] = v9;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr>(v19, 0, v19, v20, v7);
  v16 = v17;
  *&v19[0] = v17;
  *(&v19[0] + 1) = v18;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v8 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TypedPointerType,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::printSingleBinding(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 136);
  if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = *(**(a2 + 8) + 136);
    v6 = *a1;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v8 = *(v6 + 48);

      return v8();
    }

    else
    {
      (*(v6 + 40))(a1);
      v11 = (*(*a1 + 16))(a1);
      v12 = *(v11 + 4);
      if ((*(v11 + 3) - v12) > 2)
      {
        *(v12 + 2) = 32;
        *v12 = 14880;
        *(v11 + 4) += 3;
      }

      else
      {
        llvm::raw_ostream::write(v11, " : ", 3uLL);
      }

      v13 = *(a2 + 16);
      v14 = *(*a1 + 32);

      return v14(a1, v13);
    }
  }

  else if (a2 && v4 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {

    return mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a1, a2);
  }

  else
  {
    v10 = *(*a1 + 40);

    return v10();
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::parseSingleBinding(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v4 = (*(*a1 + 552))(a1, &v19);
  if ((v4 & 0x100) != 0)
  {
    if (v4)
    {
      v12 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v19);
LABEL_7:
      v13 = v12;
      if (v12)
      {
        v14 = *v12;
        v15 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v9 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
      }

      else
      {
        v9 = 0;
      }

      v10 = a2;
      v11 = v13;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if (mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v18))
    {
      v5 = v18;
      v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v18);
      if (v6)
      {
        v8 = v6;
        v9 = v7;
        v10 = a2;
        v11 = v8;
LABEL_11:
        llvm::SmallVectorTemplateBase<mlir::TypedAttr,true>::push_back(v10, v11, v9);
        return 1;
      }

      if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        if (((*(*a1 + 112))(a1) & 1) == 0)
        {
          return 0;
        }

        v17 = 0;
        if (((*(*a1 + 536))(a1, &v17) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_18;
      }

      v17 = 0;
      if ((*(*a1 + 576))(a1, &v17))
      {
LABEL_18:
        v12 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v5, v17);
        goto LABEL_7;
      }
    }
  }

  return 0;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, unsigned int *a5, unsigned int **a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v33, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  v11 = *a5;
  v34 = v33;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v34, v10, a3, (v11 >> 4) ^ (v11 >> 9));
  v16 = *a6;
  v15 = a6[1];
  v35 = v34;
  if (v15)
  {
    v17 = 0;
    v18 = 16 * v15;
    v19 = &v16[4 * v15];
    while (v17 <= 0x38)
    {
      v20 = v17 + 8;
      v21 = *v16;
      v16 += 4;
      *&__src[v17] = (v21 >> 4) ^ (v21 >> 9);
      v17 += 8;
      v18 -= 16;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    v36[0] = xmmword_25D0A0610;
    v36[1] = xmmword_25D0A0620;
    v36[2] = xmmword_25D0A0630;
    v37 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v36, __src, v12, v13);
    if (v18)
    {
      v23 = 64;
      do
      {
        v24 = 0;
        do
        {
          v25 = *v16;
          v16 += 4;
          v26 = v24 + 8;
          *&__src[v24] = (v25 >> 4) ^ (v25 >> 9);
          if (v16 == v19)
          {
            break;
          }

          v27 = v24 >= 0x31;
          v24 += 8;
        }

        while (!v27);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v26], &v39);
        llvm::hashing::detail::hash_state::mix(v36, __src, v28, v29);
        v23 += v26;
      }

      while (v16 != v19);
    }

    else
    {
      v23 = 64;
    }

    v22 = llvm::hashing::detail::hash_state::finalize(v36, v23);
  }

  else
  {
    v20 = 0;
LABEL_7:
    v22 = llvm::hashing::detail::hash_short(__src, v20, 0xFF51AFD7ED558CCDLL);
  }

  v30 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v35, v14, a3, v22);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v35, v30, a3);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage::operator==(void *a1, void *a2)
{
  if (a1[1] != *a2)
  {
    return 0;
  }

  if (a1[2] != a2[1])
  {
    return 0;
  }

  v2 = a1[4];
  if (v2 != a2[3])
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a1[3];
  v4 = a2[2];
  v5 = 16 * v2 - 16;
  do
  {
    v7 = *v4;
    v4 += 2;
    v6 = v7;
    v8 = *v3;
    v3 += 2;
    result = v8 == v6;
    v10 = v8 != v6 || v5 == 0;
    v5 -= 16;
  }

  while (!v10);
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute,mlir::Type,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

__n128 mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage::construct(unint64_t *a1, __n128 *a2)
{
  v11 = *a2;
  v3 = a2[1].n128_u64[1];
  if (v3)
  {
    v4 = a2[1].n128_u64[0];
    v5 = 16 * v3;
    v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 16 * v3, 3);
    v7 = v6;
    do
    {
      v8 = *v4++;
      *v7++ = v8;
      v5 -= 16;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 40, 3);
  *v9 = 0;
  result = v11;
  *(v9 + 8) = v11;
  *(v9 + 24) = v6;
  *(v9 + 32) = v3;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJNS1_9AttributeENS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESN_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSP_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &,llvm::ArrayRef<mlir::TypedAttr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::CoreML::detail::ParamBindAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamBindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamBindAttrEJRNS1_9AttributeERNS1_4TypeERNS_8ArrayRefINS1_9TypedAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESP_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSR_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::ParamRefType,mlir::TypedAttr &>(void *a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id;
  v6[1] = &v7;
  v7 = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_;
  v10[1] = v6;
  v9 = *a2;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr>(v11, 0, v11, v12, v9);
  v8 = &v9;
  *&v11[0] = &v9;
  *(&v11[0] + 1) = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, unsigned int a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (a5 >> 4) ^ (a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_12ParamRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<47ul>(uint64_t a1, char *__s)
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

void llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<std::reverse_iterator<mlir::FlatSymbolRefAttr*>,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v8 = a3 - a5;
  v9 = *(a1 + 8);
  v10 = v9 + ((a3 - a5) >> 3);
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    LODWORD(v9) = *(a1 + 8);
  }

  if (v6 != a5)
  {
    v11 = (*a1 + 8 * v9);
    do
    {
      v12 = *(v6 - 8);
      v6 -= 8;
      *v11++ = v12;
    }

    while (v6 != a5);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + (v8 >> 3);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::StringAttr>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(*a5, (*a5 + 8 * *(a5 + 8)), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::StringAttr const*>(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v7 = 0;
LABEL_7:
    result = llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v5 = a1;
    v6 = 0;
    while (v6 <= 0x38)
    {
      v7 = v6 + 8;
      v8 = *v5;
      v5 += 2;
      *&__src[v6] = (v8 >> 4) ^ (v8 >> 9);
      v6 += 8;
      if (v5 == a2)
      {
        goto LABEL_7;
      }
    }

    v18[0] = xmmword_25D0A0610;
    v18[1] = xmmword_25D0A0620;
    v18[2] = xmmword_25D0A0630;
    v19 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v18, __src, a3, a4);
    v10 = 64;
    while (v5 != a2)
    {
      v11 = 0;
      do
      {
        v12 = *v5;
        v5 += 2;
        v13 = v11 + 8;
        *&__src[v11] = (v12 >> 4) ^ (v12 >> 9);
        if (v5 == a2)
        {
          break;
        }

        v14 = v11 >= 0x31;
        v11 += 8;
      }

      while (!v14);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v21);
      llvm::hashing::detail::hash_state::mix(v18, __src, v15, v16);
      v10 += v13;
    }

    result = llvm::hashing::detail::hash_state::finalize(v18, v10);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
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
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::StringAttr>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<mlir::StringAttr>(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 8 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * a3, 3);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 8;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
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
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::StringAttr>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail30TorchLocationExtrasAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_23TorchLocationExtrasAttrEJRNS_8ArrayRefINS1_10StringAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::StringAttr,6u>,llvm::SmallVector<mlir::StringAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(*a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::StringAttr,true>::push_back(a1[1], v2);
  return 1;
}

void llvm::SmallVectorTemplateBase<mlir::StringAttr,true>::push_back(uint64_t a1, uint64_t a2)
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

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 8) != **a1 || *(a2 + 16) != v2[1])
  {
    return 0;
  }

  v4 = *(v2 + 24);
  v5 = *(a2 + 32);
  result = v5 == v4;
  if (v5 == v4 && v5 != 0)
  {
    return *(a2 + 24) == v2[2];
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ODIELocationFrameAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::StringAttr,std::optional<mlir::Attribute> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v4 = *(*a1 + 3);
  v8 = **a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0;
  *(v5 + 8) = v8;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28ODIELocationFrameAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21ODIELocationFrameAttrEJNS1_10StringAttrESF_NSt3__18optionalINS1_9AttributeEEEEEENSG_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::StringAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 440))(a1, &v13, a3))
  {
    v7 = v13;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v7 = 0;
    }

    *a2 = v7;
    v8 = 1;
    if (!v7)
    {
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v6, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ExternAttrStorage *)>,mlir::TypeID,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17ExternAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10ExternAttrEJNS_9StringRefEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<int const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage,llvm::ArrayRef<int>>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TensorEncodingAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::StorageUniquer::StorageAllocator::copyInto<int>(a2, **a1, *(*a1 + 8));
  v6 = v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v7 = 0;
  v7[1] = v4;
  v7[2] = v6;
  v8 = *(a1 + 8);
  if (*v8)
  {
    (*v8)(*(v8 + 8), v7);
  }

  return v7;
}

unint64_t mlir::StorageUniquer::StorageAllocator::copyInto<int>(unint64_t *a1, int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 4 * a3;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 4 * a3, 2);
  v6 = result;
  do
  {
    v7 = *a2++;
    *v6++ = v7;
    v4 -= 4;
  }

  while (v4);
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25TensorEncodingAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18TensorEncodingAttrEJNS_8ArrayRefIiEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<int,12u>,llvm::SmallVector<int,12u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v5 = 0;
  v3 = mlir::AsmParser::parseInteger<int>(v2, &v5);
  result = 0;
  if (v3)
  {
    llvm::SmallVectorTemplateBase<int,true>::push_back(a1[1], v5);
    return 1;
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  v12 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type,mlir::Attribute>(a1, v12, v10, a3, a5, a6);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr,mlir::Type,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJNS1_10StringAttrENS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type &,mlir::Attribute>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type &,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrERNS1_4TypeENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamDeclAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Type,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v3 = *(*a1 + 2);
  v7 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v7;
  *(v4 + 24) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20ParamDeclAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_13ParamDeclAttrEJRNS1_10StringAttrENS1_4TypeERNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESM_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSO_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
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
  v4 = *(*a1 + 8);
  if (v4)
  {
    v5 = **a1;
    v6 = 8 * v4;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v4, 3);
    v8 = v7;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v10 = 0;
  v10[1] = v7;
  v10[2] = v4;
  v11 = *(a1 + 8);
  if (*v11)
  {
    (*v11)(*(v11 + 8), v10);
  }

  return v10;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail25ParamDeclArrayAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_18ParamDeclArrayAttrEJNS_8ArrayRefINS4_13ParamDeclAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::FieldParser<llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>,llvm::SmallVector<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,6u>>::parse(mlir::AsmParser &)::{lambda(void)#1}>(uint64_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*(**a1 + 32))(*a1);
  mlir::MLIRContext::getOrLoadDialect(*v3, "coreml", 6uLL, v4);
  v5 = (*(*v2 + 40))(v2);
  v12 = 0;
  v13[0] = v2;
  if (((*(*v2 + 448))(v2, &v12, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_, v13) & 1) == 0)
  {
    goto LABEL_4;
  }

  v6 = v12;
  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,void>::id)
  {
LABEL_6:
    llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(a1[1], v6);
    result = 1;
    goto LABEL_7;
  }

  v10 = "invalid kind of attribute specified";
  v11 = 259;
  (*(*v2 + 24))(v13, v2, v5, &v10);
  v7 = v14;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  if ((v7 & 1) == 0)
  {
    v6 = 0;
    goto LABEL_6;
  }

LABEL_4:
  result = 0;
LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML13ParamDeclAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(uint64_t *a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::ParamDeclAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::ODIE::Compiler::CoreML::ParamDeclAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12[0] = a2;
  v12[1] = a3;
  v10 = a4;
  v11 = a5;
  memset(v14, 0, sizeof(v14));
  v15 = 0xFF51AFD7ED558CCDLL;
  v13 = ((a4 >> 4) ^ (a4 >> 9));
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(&v13, 0, v14, &v14[3] + 8, &v11);
  v9 = &v10;
  v13 = &v10;
  *&v14[0] = v12;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage,mlir::StringAttr,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamRefAttrStorage *)>,mlir::TypeID,mlir::StringAttr,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail19ParamRefAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_12ParamRefAttrEJNS1_10StringAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute,mlir::Type>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, _DWORD *a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(a1, v10, v8, a3, a5);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypeAttr,mlir::ODIE::Compiler::CoreML::TypeType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJNS1_8TypeAttrENS4_8TypeTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::SymbolRefAttr &,mlir::ODIE::Compiler::CoreML::SymbolType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_13SymbolRefAttrENS4_10SymbolTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::TypedAttr &,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9TypedAttrENS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage,mlir::Attribute &,mlir::Type &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ParamConstantAttrStorage *)>,mlir::TypeID,mlir::Attribute &,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ParamConstantAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ParamConstantAttrEJRNS1_9AttributeERNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage,mlir::ODIE::Compiler::CoreML::Intent>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::IntentAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Intent &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17IntentAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_10IntentAttrEJNS4_6IntentEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *a2, unint64_t *a3, llvm::hashing::detail::hash_state *a4, uint64_t a5, uint64_t a6, unsigned int *a7, unsigned int *a8, uint64_t a9)
{
  v28 = 0;
  v15 = llvm::hashing::detail::hash_combine_range_impl<char const>(a4, a4 + a5, a3, a4);
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v28, a2, a3, v15);
  v17 = *a6;
  v18 = *(a6 + 8);
  v29 = v28;
  v21 = llvm::hashing::detail::hash_combine_range_impl<char const>(v17, v17 + v18, v19, v20);
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v29, v16, a3, v21);
  v23 = *a7;
  v30 = v29;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v30, v22, a3, (v23 >> 4) ^ (v23 >> 9));
  v25 = *a8;
  v31 = v30;
  v26 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v31, v24, a3, (v25 >> 4) ^ (v25 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::StringRef>(a1, v31, v26, a3, a9);
}

BOOL mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 && memcmp(*(a1 + 8), *a2, v2))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5 != *(a2 + 24) || v5 && memcmp(*(a1 + 24), *(a2 + 16), v5))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 40))
  {
    return 0;
  }

  v6 = *(a1 + 64);
  if (v6 != *(a2 + 56))
  {
    return 0;
  }

  if (v6)
  {
    return memcmp(*(a1 + 56), *(a2 + 48), v6) == 0;
  }

  return 1;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef,llvm::StringRef,mlir::DictionaryAttr,mlir::DictionaryAttr,llvm::StringRef &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

__n128 mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(unint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v18 = *(a2 + 32);
  v7 = mlir::StorageUniquer::StorageAllocator::copyInto(a1, *a2, *(a2 + 8));
  v9 = v8;
  v10 = mlir::StorageUniquer::StorageAllocator::copyInto(a1, v3, v4);
  v12 = v11;
  v13 = mlir::StorageUniquer::StorageAllocator::copyInto(a1, v5, v6);
  v15 = v14;
  v16 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 72, 3);
  *v16 = 0;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  result = v18;
  *(v16 + 40) = v18;
  *(v16 + 56) = v13;
  *(v16 + 64) = v15;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJNS_9StringRefESF_NS1_14DictionaryAttrESG_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage,llvm::StringRef &,llvm::StringRef &,mlir::DictionaryAttr &,mlir::DictionaryAttr &,llvm::StringRef &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage *)>,mlir::TypeID,llvm::StringRef &,llvm::StringRef &,mlir::DictionaryAttr &,mlir::DictionaryAttr &,llvm::StringRef &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = mlir::ODIE::Compiler::CoreML::detail::TargetSpecAttrStorage::construct(a2, *a1);
  v5 = v3;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21TargetSpecAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_14TargetSpecAttrEJRNS_9StringRefESG_RNS1_14DictionaryAttrESI_SG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESL_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSN_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *mlir::InFlightDiagnostic::append<llvm::StringRef &>(void *a1, void *a2)
{
  if (*a1)
  {
    v6 = 261;
    v3 = a2[1];
    v5[0] = *a2;
    v5[1] = v3;
    mlir::Diagnostic::operator<<((a1 + 1), v5);
  }

  return a1;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage,mlir::ODIE::Compiler::CoreML::Approximate>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ApproximateAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::Approximate &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ApproximateAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ApproximateAttrEJNS4_11ApproximateEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage,mlir::ODIE::Compiler::CoreML::PaddingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15PaddingModeAttrEJNS4_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage,mlir::ODIE::Compiler::CoreML::InterpolationMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::InterpolationModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::InterpolationMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail28InterpolationModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_21InterpolationModeAttrEJNS4_17InterpolationModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage,mlir::ODIE::Compiler::CoreML::SamplingMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16SamplingModeAttrEJNS4_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage,mlir::ODIE::Compiler::CoreML::ScatterMode>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_15ScatterModeAttrEJNS4_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::FileResourceAttrStorage *)>,mlir::TypeID,mlir::ShapedType,mlir::StringAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v8 = *(*a1 + 1);
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  *(v5 + 24) = v8;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23FileResourceAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_16FileResourceAttrEJNS1_10ShapedTypeENS1_10StringAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 440))(a1, &v13, a3))
  {
    v7 = v13;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v7 = 0;
    }

    *a2 = v7;
    v8 = 1;
    if (!v7)
    {
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v6, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage,mlir::ODIE::Compiler::CoreML::ComputeTarget>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ComputeTargetAttrStorage *)>,mlir::TypeID,mlir::ODIE::Compiler::CoreML::ComputeTarget &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(*(v5 + 1), v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail24ComputeTargetAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS4_17ComputeTargetAttrEJNS4_13ComputeTargetEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL std::__is_permutation[abi:nn200100]<std::_ClassicAlgPolicy,llvm::detail::SafeIntIterator<long long,false>,llvm::detail::SafeIntIterator<long long,false>,int const*,int const*,std::__identity &,std::__identity &,std::__equal_to &>(unint64_t a1, uint64_t a2, int *a3, int *a4)
{
  if (a1 != a2 && a3 != a4)
  {
    while (a1 == *a3)
    {
      v4 = a1 + 1;
      ++a3;
      if (a2 - 1 != a1)
      {
        ++a1;
        if (a3 != a4)
        {
          continue;
        }
      }

      goto LABEL_8;
    }
  }

  v4 = a1;
LABEL_8:
  result = a3 == a4 && a2 == v4;
  v6 = a2 - v4;
  if (a2 != v4 && a3 != a4)
  {
    if (v6 == a4 - a3)
    {
      v7 = 0;
      v8 = ~v4 + a2;
      do
      {
        v9 = 0;
        v10 = a3;
        do
        {
          v11 = *v10++;
          if (v4 == v11)
          {
            ++v9;
          }
        }

        while (v10 != a4);
        if (!v9)
        {
          break;
        }

        v12 = v4 + 1;
        if (v4 + 1 == a2)
        {
          return v9 == 1;
        }

        v13 = vaddq_s64(vdupq_n_s64(v12), xmmword_25D0A0500);
        v14 = vdupq_n_s64(v8 - v7 - 1);
        v15 = vdupq_n_s64(v4);
        v16 = 2;
        v17 = xmmword_25D0A0780;
        do
        {
          v18 = v17;
          v17 = vsubq_s64(v17, vceqq_s64(v15, v13));
          v13 = vaddq_s64(v13, vdupq_n_s64(2uLL));
          v16 -= 2;
        }

        while ((v6 & 0xFFFFFFFFFFFFFFFELL) + v16 != 2);
        v19 = vaddvq_s64(vbslq_s8(vcgtq_u64(vorrq_s8(vdupq_n_s64(-v16), xmmword_25D0A0500), v14), v18, v17));
        ++v7;
        --v6;
        v4 = v12;
      }

      while (v19 == v9);
    }

    return 0;
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr,mlir::TypedAttr>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, void *a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::TypedAttr>(a1, v10, v8, a3, *a5);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = (*a1)[1];
  v7 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v3 = 0;
  *(v3 + 24) = v6;
  *(v3 + 8) = v7;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJNS1_9TypedAttrESF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage,mlir::TypedAttr &,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::ArrayTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = (*a1)[1];
  v7 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v3 = 0;
  *(v3 + 24) = v6;
  *(v3 + 8) = v7;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail16ArrayTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_9ArrayTypeEJRNS1_9TypedAttrESG_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::SymbolRefTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail20SymbolRefTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_13SymbolRefTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::HandleType,mlir::Type>(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *a2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = v3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v12, 0, v12, v13, &v10);
  v9 = &v10;
  *&v12[0] = &v10;
  *(&v12[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::HandleTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail17HandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_10HandleTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeUniquer::get<mlir::ODIE::Compiler::CoreML::AsyncValueType,mlir::Type>(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *a2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_;
  v11[1] = v7;
  v10 = v3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v12, 0, v12, v13, &v10);
  v9 = &v10;
  *&v12[0] = &v10;
  *(&v12[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage,mlir::Type>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::AsyncValueTypeStorage *)>,mlir::TypeID,mlir::Type &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail21AsyncValueTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_14AsyncValueTypeEJNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage,mlir::TypedAttr>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23TypedPointerTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_16TypedPointerTypeEJNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage * mlir::StorageUniquer::get<mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage,mlir::TypedAttr &>(llvm::function_ref<void ()(mlir::ODIE::Compiler::CoreML::detail::TypedPointerTypeStorage *)>,mlir::TypeID,mlir::TypedAttr &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v5 = 0;
  v5[1] = v3;
  v5[2] = v4;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4ODIE8Compiler6CoreML6detail23TypedPointerTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS4_16TypedPointerTypeEJRNS1_9TypedAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS7_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyResultAndOperandHaveSameShapeOrUnknown(mlir::ODIE::Compiler::CoreML *this, mlir::Operation *a2, unsigned int a3)
{
  v5 = this - 24 * (a2 - 5) - 96;
  if (a2 <= 5)
  {
    v5 = this - 16 * (a2 + 1);
  }

  v6 = (*(v5 + 1) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  v10 = (*(v9 + 24))(v9, v6);
  v12 = v11;
  v13 = (*(*(*(this + 9) + 32 * a3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  v17 = (*(v16 + 24))(v16, v13);
  if (v12 != v18)
  {
    return 0;
  }

  if (!v12)
  {
    return 1;
  }

  v19 = 8 * v12 - 8;
  do
  {
    v20 = v19;
    v21 = *v17;
    v23 = *v10 == 0x8000000000000000 || *v10 == v21 || v21 == 0x8000000000000000;
    v24 = v23;
    if (!v23)
    {
      break;
    }

    ++v10;
    ++v17;
    v19 = v20 - 8;
  }

  while (v20);
  return v24;
}

unint64_t mlir::ODIE::Compiler::CoreML::EqualOp::fold(uint64_t *a1)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  if (v2 != *(v1 + 56) || (v6 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id))
  {
LABEL_2:
    v3 = 0;
    goto LABEL_3;
  }

  v8 = v6[2];
  if (v8)
  {
    v9 = v6[1];
    v10 = 8 * v8;
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_2;
  }

LABEL_9:
  LOBYTE(__src) = 1;
  v24 = v26;
  v25 = xmmword_25D0A0550;
  llvm::SmallVectorImpl<BOOL>::append<BOOL const*,void>(&v24, &__src, &__src + 1);
  v11 = *a1;
  v12 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v15 = mlir::IntegerType::get(*(***(v11 + 24) + 32), 1, 0);
  *&__src = v13;
  *(&__src + 1) = v14;
  v21 = 0;
  v22 = v15;
  v16 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v15 + 32), &__src, &v22, &v21);
  v17 = v16;
  if (v16)
  {
    v18 = *v16;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
  }

  else
  {
    v20 = 0;
  }

  v3 = mlir::DenseElementsAttr::get(v17, v20, v24, v25) & 0xFFFFFFFFFFFFFFFBLL;
  if (v24 != v26)
  {
    free(v24);
  }

LABEL_3:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReshapeOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  v3 = *(v2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_7;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = v4[1];
    v7 = 8 * v5;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    v10 = *(v1 + 56);
    if ((~*(v10 + 8) & 7) == 0)
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = *(v10 + 8) & 7;
    if (v11 == 6)
    {
      v12 = v10 + 24 * *(v10 + 16) + 120;
      if (!v12)
      {
LABEL_16:
        if (v4 != v3)
        {
          return 0;
        }

        v13 = v4[2];
        if (!v13)
        {
          return 0;
        }

        v14 = 0;
        v15 = v4[1];
        v16 = 8 * v13;
        do
        {
          v17 = *v15++;
          if (v17 == 0x8000000000000000)
          {
            ++v14;
          }

          v16 -= 8;
        }

        while (v16);
        v8 = v2 | 4;
        v9 = v14 == 1;
        goto LABEL_23;
      }
    }

    else
    {
      v12 = v10 + 16 * v11 + 16;
    }

    if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id && *(*(v12 + 72) + 24) == v2)
    {
      return v2 | 4;
    }

    goto LABEL_16;
  }

LABEL_6:
  v8 = v2 | 4;
  v9 = v4 == v3;
LABEL_23:
  if (v9)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ReshapeOp::inferReturnTypes(uint64_t a1, void *a2, _BOOL8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v73[2] = *MEMORY[0x277D85DE8];
  v73[0] = a4;
  v73[1] = a5;
  if (a5 != 2)
  {
    v14 = *MEMORY[0x277D85DE8];
    v15 = "expected exactly 2 operands";
    v16 = a2;
    v17 = a3;

    return mlir::emitOptionalError<char const(&)[28]>(v16, v17, v15);
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2 && v13)
    {
      v13 = v13[3];
    }
  }

  else
  {
    v13 = *v13;
  }

  v19 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = *MEMORY[0x277D85DE8];
    v21 = "input must be a ranked tensor";
LABEL_13:

    return mlir::emitOptionalError<char const(&)[30]>(a2, a3, v21);
  }

  v22 = *(mlir::ValueRange::dereference_iterator(v73, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if (*(v22 + 16) != 1)
    {
      v30 = *MEMORY[0x277D85DE8];
      v21 = "new_shape must be a 1D tensor";
      goto LABEL_13;
    }

    v24 = **(v22 + 8);
    v25 = mlir::ValueRange::dereference_iterator(v73, 1);
    v67 = 0;
    v68 = 0;
    *&v71 = &v67;
    if ((~*(v25 + 8) & 7) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (!v26)
    {
      goto LABEL_50;
    }

    v27 = *(v26 + 8) & 7;
    if (v27 == 6)
    {
      v28 = v26 + 24 * *(v26 + 16);
      v29 = v28 + 120;
      if (v28 == -120)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v29 = v26 + 16 * v27 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v71, v29))
    {
LABEL_50:
      v67 = v69;
      v68 = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(&v67, v24, 0x8000000000000000);
      v46 = v19[3];
      *&v71 = v67;
      *(&v71 + 1) = v68;
      v63 = 0;
      v64 = v46;
      v47 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v46 + 32), &v71, &v64, &v63);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v47);
      if (v67 != v69)
      {
        free(v67);
      }

      a3 = 1;
LABEL_53:
      v48 = *MEMORY[0x277D85DE8];
      return a3;
    }

    v31 = mlir::ValueRange::dereference_iterator(v73, 1);
    mlir::ODIE::Compiler::extract1DIntVector<int>(v31, &v67);
    if (v70)
    {
      *&v71 = v72;
      *(&v71 + 1) = 0xC00000000;
      if (!v68 || (llvm::SmallVectorImpl<int>::operator=(&v71, &v67), (v70 & 1) != 0))
      {
        if (v67 != v69)
        {
          free(v67);
        }
      }

      v67 = v69;
      v68 = 0x600000000;
      llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v67, DWORD2(v71));
      v32 = v67;
      if (DWORD2(v71))
      {
        v33 = v71;
        v34 = 4 * DWORD2(v71);
        v35 = v67;
        do
        {
          v37 = *v33++;
          v36 = v37;
          if (v37 < 0)
          {
            v36 = 0x8000000000000000;
          }

          *v35++ = v36;
          v34 -= 4;
        }

        while (v34);
      }

      v38 = v68;
      if (v68)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 8 * v68;
        v43 = 1;
        do
        {
          v44 = v32[v41];
          v45 = v44 == 0x8000000000000000;
          if (v44 == 0x8000000000000000)
          {
            v44 = 1;
          }

          v43 *= v44;
          if (v45)
          {
            v40 = v41;
            ++v39;
          }

          ++v41;
          v42 -= 8;
        }

        while (v42);
        if (v39 > 1)
        {
          a3 = mlir::emitOptionalError<char const(&)[43]>(a2, a3, "new_shape cannot contains more than two -1");
LABEL_74:
          if (v67 != v69)
          {
            free(v67);
          }

          if (v71 != v72)
          {
            free(v71);
          }

          goto LABEL_53;
        }

        if (v39 == 1)
        {
          v49 = v19[1];
          v50 = v19[2];
          if (!v50)
          {
            goto LABEL_61;
          }

          v51 = 0;
          v52 = 8 * v50;
          v53 = v19[1];
          do
          {
            v54 = *v53++;
            if (v54 == 0x8000000000000000)
            {
              ++v51;
            }

            v52 -= 8;
          }

          while (v52);
          if (!v51)
          {
LABEL_61:
            v64 = v66;
            v65 = 0x600000000;
            llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v64, v49, &v49[8 * v50]);
            v55 = v64;
            if (v65)
            {
              v56 = 8 * v65;
              v57 = 1;
              v58 = v64;
              do
              {
                v59 = *v58++;
                v57 *= v59;
                v56 -= 8;
              }

              while (v56);
            }

            else
            {
              v57 = 1;
            }

            v60 = v57 / v43;
            v61 = v57 % v43;
            if (v61)
            {
              a3 = mlir::emitOptionalError<char const(&)[48]>(a2, a3, "new_shape which contains -1 cannot be resolved.");
              v55 = v64;
            }

            else
            {
              *(v67 + v40) = v60;
            }

            if (v55 != v66)
            {
              free(v55);
            }

            if (v61)
            {
              goto LABEL_74;
            }

            v32 = v67;
            v38 = v68;
          }
        }
      }

      v62 = mlir::RankedTensorType::get(v32, v38, v19[3], 0);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v62);
      a3 = 1;
      goto LABEL_74;
    }

    v16 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::emitOptionalError<char const(&)[28]>(v16, v17, v15);
  }

  v23 = *MEMORY[0x277D85DE8];

  return mlir::emitOptionalError<char const(&)[34]>(a2, a3, "new_shape must be a ranked tensor");
}

BOOL mlir::emitOptionalError<char const(&)[28]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<28ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[30]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<30ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[34]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<34ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[43]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<43ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[48]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<48ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::ReshapeOp::refineReturnTypes(uint64_t a1, void *a2, _BOOL8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::ReshapeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[38]>(a2, v11, "fails to infer the type of reshape op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::emitOptionalError<char const(&)[38]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<38ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::fold(uint64_t a1)
{
  v1 = *(*a1 - 8);
  v2 = v1 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v3 = *(*(*a1 + 72) + 24);
  v4 = *(v3 + 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v2 + 8);
    v7 = 8 * v5;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v8 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v8 + 8);
    v11 = 8 * v9;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if ((v4 ^ v1) <= 7)
  {
    return v3 | 4;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verify(mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp *this)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = (*(v1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = v3;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v4 = v2[1];
    v5 = v2[2];
    if (v5)
    {
      v6 = 8 * v5;
      v7 = v2[1];
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v8 = v3[2];
        if (v8)
        {
          v9 = v3[1];
          v10 = 8 * v8;
          v11 = v10;
          v12 = v9;
          while (*v12 != 0x8000000000000000)
          {
            ++v12;
            v11 -= 8;
            if (!v11)
            {
              if (!v5)
              {
                break;
              }

              v13 = v10 - 8;
              v14 = 8 * v5 - 8;
              v15 = 1;
              while (*v4 <= *v9)
              {
                if (v14)
                {
                  ++v4;
                  ++v9;
                  v16 = v13;
                  v13 -= 8;
                  v14 -= 8;
                  if (v16)
                  {
                    continue;
                  }
                }

                goto LABEL_18;
              }

              v22[16] = 257;
              mlir::Operation::emitError(&v26, v1, v22);
              if (v26)
              {
                mlir::Diagnostic::operator<<<67ul>(v27, "broadcast_in_dims op is decreasing number of elements. Input type ");
                if (v26)
                {
                  v24 = 4;
                  v25 = v2;
                  v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v28, &v24, 1);
                  v20 = v28 + 24 * v29;
                  v21 = *v19;
                  *(v20 + 16) = *(v19 + 16);
                  *v20 = v21;
                  ++v29;
                  if (v26)
                  {
                    mlir::Diagnostic::operator<<<14ul>(v27, " output type ");
                    if (v26)
                    {
                      mlir::Diagnostic::operator<<<mlir::TensorType &>(v27, &v23);
                    }
                  }
                }
              }

              v15 = (v30 & 1) == 0;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  v15 = 1;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::fold(uint64_t a1)
{
  v1 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = *(*(*a1 + 72) + 24);
  v3 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::ODIE::Compiler::CoreML::canCompareTensorTypes(v1, v3) && v1 == v3)
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::canCompareTensorTypes(void *a1, void *a2)
{
  v2 = *(*a1 + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v3 = a1[2];
  if (v3)
  {
    v4 = a1[1];
    v5 = 8 * v3;
    while (*v4 != 0x8000000000000000)
    {
      ++v4;
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
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v6 = a2[2];
      if (!v6)
      {
        return 1;
      }

      v7 = a2[1];
      v8 = 8 * v6;
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          return 1;
        }
      }
    }
  }

  return v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && (v10 = a1[4]) != 0 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && (v11 = a2[4]) != 0 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastToOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55[2] = *MEMORY[0x277D85DE8];
  v55[0] = a4;
  v55[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = *MEMORY[0x277D85DE8];
      v18 = "input must be a ranked tensor";
LABEL_15:

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, v18);
    }

    v19 = mlir::ValueRange::dereference_iterator(v55, 1);
    v20 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v20)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = *MEMORY[0x277D85DE8];
      v18 = "shape must be a ranked tensor";
      goto LABEL_15;
    }

    v22 = v19;
    v23 = *v20[1];
    v52 = v54;
    v53 = 0x600000000;
    v46 = 0uLL;
    v49 = &v46;
    if ((~*(v19 + 8) & 7) != 0)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v25 = *(v24 + 8) & 7;
      if (v25 == 6)
      {
        v26 = v24 + 24 * *(v24 + 16);
        v27 = v26 + 120;
        if (v26 == -120)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v27 = v24 + 16 * v25 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v49, v27))
      {
        mlir::ODIE::Compiler::extract1DIntVector<int>(v22, &v46);
        if ((v48 & 1) == 0)
        {
          v44 = std::__throw_bad_optional_access[abi:nn200100]();
          return mlir::ODIE::Compiler::CoreML::BroadcastToOp::refineReturnTypes(v44);
        }

        v49 = v51;
        v50 = 0xC00000000;
        if (!DWORD2(v46) || (llvm::SmallVectorImpl<int>::operator=(&v49, &v46), (v48 & 1) != 0))
        {
          if (v46 != v47)
          {
            free(v46);
          }
        }

        v28 = v49;
        if (v50)
        {
          v29 = 4 * v50;
          do
          {
            v30 = *v28;
            v28 = (v28 + 4);
            llvm::SmallVectorTemplateBase<long long,true>::push_back(&v52, v30);
            v29 -= 4;
          }

          while (v29);
          v28 = v49;
        }

        if (v28 == v51)
        {
          goto LABEL_52;
        }

        v31 = v28;
        goto LABEL_51;
      }
    }

LABEL_38:
    if ((~*(v22 + 8) & 7) != 0)
    {
      v32 = v22;
    }

    else
    {
      v32 = 0;
    }

    if (!v32)
    {
LABEL_47:
      if (v23 >= 1)
      {
        do
        {
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&v52, 0x8000000000000000);
          --v23;
        }

        while (v23);
      }

      goto LABEL_52;
    }

    v33 = *(v32 + 8) & 7;
    if (v33 == 6)
    {
      v34 = v32 + 24 * *(v32 + 16) + 120;
      if (!v34)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v34 = v32 + 16 * v33 + 16;
    }

    if (*(*(v34 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
    {
      goto LABEL_47;
    }

    v35 = (*(*(*(v34 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v36 = *v35;
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v38 = mlir::detail::InterfaceMap::lookup(v36 + 8, v37);
    v39 = (*(v38 + 24))(v38, v35);
    *&v46 = v47;
    *(&v46 + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v46, v39, &v39[8 * v40]);
    llvm::SmallVectorImpl<long long>::operator=(&v52, &v46);
    v31 = v46;
    if (v46 == v47)
    {
LABEL_52:
      v41 = v16[3];
      *&v46 = v52;
      *(&v46 + 1) = v53;
      v49 = v41;
      v45 = 0;
      v42 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v41 + 32), &v46, &v49, &v45);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v42);
      if (v52 != v54)
      {
        free(v52);
      }

      v43 = *MEMORY[0x277D85DE8];
      return 1;
    }

LABEL_51:
    free(v31);
    goto LABEL_52;
  }

  v14 = *MEMORY[0x277D85DE8];

  return mlir::emitOptionalError<char const(&)[48]>(a2, a3, "expected exactly 2 operands for broadcast_to op");
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastToOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::BroadcastToOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[43]>(a2, a3, "fails to infer the type of broadcast_to op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 72);
  v2 = *(v1 + 24);
  v3 = *(v1 + 56);
  if (!**((*(v2 + 8) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
    v18 = v3 | 4;
    goto LABEL_25;
  }

  if (!**((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8) || v2 == v3)
  {
    v18 = v2 | 4;
    goto LABEL_25;
  }

  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v35, v2);
  mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v31, v3);
  if (v38 == 1 && v34 == 1)
  {
    v28 = v30;
    v29 = 0x600000000;
    BroadcastedShape = mlir::OpTrait::util::getBroadcastedShape(v35, v36, v31, v32, &v28);
    v6 = v28;
    if (BroadcastedShape)
    {
      if (!v29)
      {
LABEL_11:
        v25 = v27;
        v26 = 0xC00000000;
        llvm::SmallVectorImpl<int>::resizeImpl<false>(&v25, v29);
        if (v29)
        {
          v8 = v28;
          v9 = v25;
          v10 = 8 * v29;
          do
          {
            v11 = *v8++;
            *v9++ = v11;
            v10 -= 8;
          }

          while (v10);
        }

        v24 = v26;
        v12 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 1);
        *&v23 = &v24;
        *(&v23 + 1) = 1;
        v21 = 0;
        v22 = v12;
        v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v12 + 32), &v23, &v22, &v21);
        v14 = v13;
        if (v13)
        {
          v15 = *v13;
          v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        }

        else
        {
          v17 = 0;
        }

        v18 = mlir::DenseIntOrFPElementsAttr::getRaw(v14, v17, v25, 4 * v26) & 0xFFFFFFFFFFFFFFFBLL;
        if (v25 != v27)
        {
          free(v25);
        }

        v6 = v28;
        goto LABEL_31;
      }

      v7 = 0;
      while (*(v28 + v7) != 0x8000000000000000)
      {
        v7 += 8;
        if (8 * v29 == v7)
        {
          goto LABEL_11;
        }
      }
    }

    v18 = 0;
LABEL_31:
    if (v6 != v30)
    {
      free(v6);
    }

    goto LABEL_19;
  }

  v18 = 0;
LABEL_19:
  if (v34 == 1 && v31 != &v33)
  {
    free(v31);
  }

  if (v38 == 1 && v35 != &v37)
  {
    free(v35);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::fold(mlir::ODIE::Compiler::CoreML::BroadcastShapesOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = 0;
  v30 = &v26;
  v4 = *(a2 + 8) & 7;
  if (v4 == 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
LABEL_24:
    if (v4 == 7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    if (!v15)
    {
      goto LABEL_33;
    }

    v16 = *(v15 + 8) & 7;
    if (v16 == 6)
    {
      v17 = v15 + 24 * *(v15 + 16) + 120;
      if (!v17)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = v15 + 16 * v16 + 16;
    }

    if (*(*(v17 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
    {
LABEL_33:
      *a1 = 0;
      *(a1 + 64) = 0;
LABEL_39:
      v24 = *MEMORY[0x277D85DE8];
      return;
    }

    v18 = (*(*(*(v17 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v18;
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v21 = mlir::detail::InterfaceMap::lookup(v19 + 8, v20);
    v22 = (*(v21 + 24))(v21, v18);
    v9 = v28;
    v26 = v28;
    v27 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v26, v22, &v22[8 * v23]);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v27)
    {
      llvm::SmallVectorImpl<long long>::operator=(a1, &v26);
    }

    *(a1 + 64) = 1;
    v14 = v26;
LABEL_37:
    if (v14 != v9)
    {
      free(v14);
    }

    goto LABEL_39;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v30, v8))
  {
    v4 = *(a2 + 8) & 7;
    goto LABEL_24;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(a2, &v26);
  if (v29)
  {
    v9 = v32;
    v30 = v32;
    v31 = 0xC00000000;
    if (!v27 || (llvm::SmallVectorImpl<int>::operator=(&v30, &v26), (v29 & 1) != 0))
    {
      if (v26 != v28)
      {
        free(v26);
      }
    }

    v26 = v28;
    v27 = 0x600000000;
    llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v26, v31);
    if (v31)
    {
      v10 = v30;
      v11 = v26;
      v12 = 4 * v31;
      do
      {
        v13 = *v10;
        v10 = (v10 + 4);
        *v11++ = v13;
        v12 -= 4;
      }

      while (v12);
    }

    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (v27)
    {
      llvm::SmallVectorImpl<long long>::operator=(a1, &v26);
    }

    *(a1 + 64) = 1;
    if (v26 != v28)
    {
      free(v26);
    }

    v14 = v30;
    goto LABEL_37;
  }

  v25 = std::__throw_bad_optional_access[abi:nn200100]();
  mlir::ODIE::Compiler::CoreML::XorOp::fold(v25);
}

unint64_t mlir::ODIE::Compiler::CoreML::XorOp::fold(uint64_t *a1)
{
  v1 = *a1;
  if (*(*(*a1 + 72) + 24) != *(*(*a1 + 72) + 56))
  {
    return 0;
  }

  v2 = *(v1 + 36);
  v3 = v1 - 16;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = v4[1];
    v7 = 8 * v5;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v8 = v4[3];
  if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  v13 = mlir::IntegerAttr::get(v8, 0);
  v10 = *v4;
  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  return mlir::DenseElementsAttr::get(v4, v12, &v13, 1uLL) & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::ODIE::Compiler::CoreML::StackOp::build(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = a3;
  __src[0] = a4;
  if (a5)
  {
    for (i = 0; i != a5; *(&__src[0] + 1) = ++i)
    {
      a1 = mlir::ValueRange::dereference_iterator(__src, i);
      if (*(*(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_18;
      }
    }
  }

  *&__src[0] = &v41;
  if ((~*(a3 + 8) & 7) != 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
LABEL_18:
    v19 = llvm::errs(a1);
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 > 0x67uLL)
    {
      qmemcpy(v20, "Custom builder for Stack Op requires all tensors to be ranked and the axis to be compile time constant.\n", 104);
      *(v19 + 4) += 104;
    }

    else
    {
      llvm::raw_ostream::write(v19, "Custom builder for Stack Op requires all tensors to be ranked and the axis to be compile time constant.\n", 0x68uLL);
    }

    goto LABEL_51;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = v10 + 16 * v11 + 16;
  }

  a1 = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(__src, v13);
  if (!a1)
  {
    goto LABEL_18;
  }

  __src[0] = a4;
  v14 = (*(mlir::ValueRange::dereference_iterator(__src, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[2];
  v16 = v15 + 1;
  std::vector<long long>::vector[abi:nn200100]<long long const*,0>(&__p, v14[1], v14[1] + 8 * v15);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v41, __src);
  v43[0] = __src[0];
  v43[1] = __src[1];
  v17 = mlir::DenseElementsAttr::IntElementIterator::operator*(v43, __src);
  if (DWORD2(__src[0]) > 0x40)
  {
    v18 = **&__src[0];
    v17 = MEMORY[0x25F891010]();
  }

  else if (DWORD2(__src[0]))
  {
    v18 = (*&__src[0] << -BYTE8(__src[0])) >> -BYTE8(__src[0]);
  }

  else
  {
    v18 = 0;
  }

  v21 = (v16 & (v18 >> 63)) + v18;
  if (v21 >= 0 && v21 <= v14[2])
  {
    v24 = v39;
    v25 = (__p + 8 * v21);
    if (v39 >= v40)
    {
      v28 = ((v39 - __p) >> 3) + 1;
      if (v28 >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v29 = v40 - __p;
      if ((v40 - __p) >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__p, v30);
      }

      v31 = (8 * v21);
      if (!v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__p, 1uLL);
      }

      *v31 = a5;
      memcpy(v31 + 1, v25, v39 - v25);
      v32 = v31 + v39 - v25 + 8;
      v39 = v25;
      v33 = v25 - __p;
      v34 = v31 - (v25 - __p);
      memcpy(v34, __p, v33);
      v35 = __p;
      __p = v34;
      v39 = v32;
      v40 = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else if (v25 == v39)
    {
      *v39 = a5;
      v39 = v24 + 8;
    }

    else
    {
      v26 = (v25 + 1);
      if (v39 < 8)
      {
        v27 = v39;
      }

      else
      {
        *v39 = *(v39 - 1);
        v27 = v24 + 8;
      }

      v39 = v27;
      if (v24 != v26)
      {
        memmove(v25 + 1, v25, v24 - v26);
      }

      *v25 = a5;
    }

    v36 = v14[3];
    *&__src[0] = __p;
    *(&__src[0] + 1) = (v39 - __p) >> 3;
    *&v43[0] = v36;
    v44 = 0;
    *&__src[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v36 + 32), __src, v43, &v44);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v42, 0, &v42, 1);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8);
  }

  else
  {
    v22 = llvm::errs(v17);
    v23 = *(v22 + 4);
    if (*(v22 + 3) - v23 > 0x57uLL)
    {
      qmemcpy(v23, "Custom builder for Stack Op requires axis to be [-input_rank-1, input_rank](inclusive).\n", 88);
      *(v22 + 4) += 88;
    }

    else
    {
      llvm::raw_ostream::write(v22, "Custom builder for Stack Op requires axis to be [-input_rank-1, input_rank](inclusive).\n", 0x58uLL);
    }
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

LABEL_51:
  v37 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::StackOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v64[6] = a6;
  LOBYTE(v65) = 0;
  v66 = 0;
  v67 = a9;
  v68 = a10;
  if (a6)
  {
    mlir::OperationName::OperationName(&v65, "coreml.stack", 0xC, *(**a6 + 32));
    v66 = 1;
  }

  v69 = a4;
  v70 = a5;
  *&v60 = a4;
  *(&v60 + 1) = 1;
  v14 = mlir::ValueRange::offset_base(&v60, 1);
  v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 6) != 0 || !v15)
  {
    if ((v14 & 6) == 2 && v15)
    {
      v15 = v15[3];
    }
  }

  else
  {
    v15 = *v15;
  }

  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v15[1] & 0xFFFFFFFFFFFFFFF8));
  if (!v16)
  {
    v25 = mlir::emitOptionalError<char const(&)[46]>(a2, a3, "expected a ShapedType for all inputs to stack");
    goto LABEL_60;
  }

  v18 = v16;
  v19 = v17;
  v20 = (*(v17 + 24))(v17, v16);
  v62 = v64;
  v63 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v62, v20, &v20[8 * v21]);
  (*(v19 + 24))(v19, v18);
  v23 = v22;
  v56 = v70;
  *&v60 = v69;
  *(&v60 + 1) = 1;
  mlir::ValueRange::offset_base(&v60, 1);
  v24 = (*(v19 + 8))(v19, v18);
  v25 = v70;
  *&v60 = v69;
  *(&v60 + 1) = 1;
  v26 = v70 - 1;
  *&v71 = mlir::ValueRange::offset_base(&v60, 1);
  *(&v71 + 1) = 1;
  if (v25 == 2)
  {
LABEL_11:
    v27 = a4 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 6) != 0 || !v27)
    {
      if ((a4 & 6) == 2 && v27)
      {
        v27 = *(v27 + 24);
      }
    }

    else
    {
      v27 = *v27;
    }

    v60 = 0uLL;
    *&v71 = &v60;
    if ((~*(v27 + 8) & 7) != 0)
    {
      v42 = v27;
    }

    else
    {
      v42 = 0;
    }

    if (!v42)
    {
      goto LABEL_51;
    }

    v43 = *(v42 + 8) & 7;
    if (v43 == 6)
    {
      v44 = v42 + 24 * *(v42 + 16);
      v45 = v44 + 120;
      if (v44 == -120)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v45 = v42 + 16 * v43 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v71, v45))
    {
      mlir::ODIE::Compiler::extract1DIntVector<int>(v27, &v60);
      if ((v61[48] & 1) == 0)
      {
        v53 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::emitOptionalError<char const(&)[46]>(v53, v54, v55);
      }

      v46 = *v60;
      if (v60 != v61)
      {
        free(v60);
      }

      v47 = ((v23 + 1) & (v46 >> 31)) + v46;
      if (v47 < 0 || v23 < v47)
      {
        v48 = mlir::emitOptionalError<char const(&)[27]>(a2, a3, "invalid dim  for stack op.");
        goto LABEL_57;
      }

      *&v60 = v56 - 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v62, v62 + 8 * v47, &v60);
      *&v60 = v62;
      *(&v60 + 1) = v63;
      *&v71 = v24;
      v59 = 0;
      v52 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v60, &v71, &v59);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v52);
LABEL_53:
      v25 = 1;
      goto LABEL_58;
    }

LABEL_51:
    *&v60 = v61;
    *(&v60 + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&v60, v23 + 1, 0x8000000000000000);
    *&v71 = v60;
    *(&v71 + 1) = DWORD2(v60);
    v58 = 0;
    v59 = v24;
    v49 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v24 + 32), &v71, &v59, &v58);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v49);
    if (v60 != v61)
    {
      free(v60);
    }

    goto LABEL_53;
  }

  v28 = 1;
  while (1)
  {
    v29 = mlir::ValueRange::dereference_iterator(&v71, v28);
    v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v29 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (!v30)
    {
      v48 = mlir::emitOptionalError<char const(&)[46]>(a2, a3, "expected a ShapedType for all inputs to stack");
      goto LABEL_57;
    }

    v32 = v30;
    v33 = v31;
    if ((*(v31 + 8))(v31, v30) != v24)
    {
      v48 = mlir::emitOptionalError<char const(&)[55]>(a2, a3, "expected the same element type for all inputs to stack");
      goto LABEL_57;
    }

    (*(v33 + 24))(v33, v32);
    if (v34 != v23)
    {
      break;
    }

    v35 = (*(v33 + 24))(v33, v32);
    *&v60 = v61;
    *(&v60 + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v60, v35, &v35[8 * v36]);
    v37 = v60;
    if (!v23)
    {
      goto LABEL_25;
    }

    if (*v62 == *v60)
    {
      v38 = 1;
      while (v23 != v38)
      {
        v39 = *(v62 + v38);
        v40 = *(v60 + 8 * v38++);
        if (v39 != v40)
        {
          v41 = v38 - 1 < v23;
          goto LABEL_27;
        }
      }

LABEL_25:
      v41 = 0;
      goto LABEL_28;
    }

    v41 = 1;
LABEL_27:
    v25 = mlir::emitOptionalError<char const(&)[55]>(a2, a3, "expected all input shapes to be the same for stack op.");
    v37 = v60;
LABEL_28:
    if (v37 != v61)
    {
      free(v37);
    }

    if (v41)
    {
      goto LABEL_58;
    }

    *(&v71 + 1) = ++v28;
    if (v28 == v26)
    {
      goto LABEL_11;
    }
  }

  v48 = mlir::emitOptionalError<char const(&)[47]>(a2, a3, "expected the same rank for all inputs to stack");
LABEL_57:
  v25 = v48;
LABEL_58:
  if (v62 != v64)
  {
    free(v62);
  }

LABEL_60:
  v50 = *MEMORY[0x277D85DE8];
  return v25;
}

BOOL mlir::emitOptionalError<char const(&)[46]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<46ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[55]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<55ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[47]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<47ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[27]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<27ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::StackOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = *MEMORY[0x277D85DE8];
  v33[0] = a4;
  v33[1] = a5;
  v16 = mlir::ValueRange::dereference_iterator(v33, 1);
  v34 = 0;
  v35[0] = 0;
  __src = &v34;
  if ((~*(v16 + 8) & 7) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = *(v17 + 8) & 7;
  if (v18 == 6)
  {
    v19 = v17 + 24 * *(v17 + 16);
    v20 = v19 + 120;
    if (v19 == -120)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = v17 + 16 * v18 + 16;
  }

  v21 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__src, v20);
  if (!v21)
  {
LABEL_13:
    v27 = 1;
    goto LABEL_14;
  }

  __src = v32;
  v31 = 0x600000000;
  if (mlir::ODIE::Compiler::CoreML::StackOp::inferReturnTypes(v21, a2, a3, a4, a5, a6, v22, v23, a9, a10, &__src))
  {
    v24 = *(a11 + 8);
    v34 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v35[0] = v24;
    v37[0] = __src & 0xFFFFFFFFFFFFFFF9 | 2;
    v37[1] = v31;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v34, v37))
    {
      v25 = __src;
      v26 = __src + 8 * v31;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v25, v26);
      v27 = 1;
    }

    else if (a3)
    {
      v38 = 257;
      emitDiag(a2, 2, v37, &v34);
      if (v34)
      {
        mlir::Diagnostic::operator<<<68ul>(v35, "inferred return types did not match actual return types of stack op");
      }

      v27 = (v36 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = mlir::emitOptionalError<char const(&)[36]>(a2, a3, "fails to infer the type of stack op");
  }

  if (__src != v32)
  {
    free(__src);
  }

LABEL_14:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

BOOL mlir::emitOptionalError<char const(&)[36]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<36ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

__n128 mlir::ODIE::Compiler::CoreML::IfOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(*a1 + 36);
    v6 = (*a1 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
    if (!v5)
    {
      v6 = 4;
    }

    v19 = 0;
    v20 = v6;
    v21 = v5;
  }

  else
  {
    v7 = *(*a1 + 40);
    v8 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8;
    v20 = 0;
    v21 = 0;
    v19 = v8 + 32 * v7;
    v9 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v19, 1);
    v10 = *a3 + 24 * *(a3 + 8);
    v11 = *v9;
    *(v10 + 16) = *(v9 + 16);
    *v10 = v11;
    ++*(a3 + 8);
    v12 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v14 = *(v12 + 24);
    v13 = v12 + 24;
    if (v14 == v13)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = v13;
    }
  }

  v15 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a3, &v19, 1);
  v16 = (*a3 + 24 * *(a3 + 8));
  result = *v15;
  v16[1].n128_u64[0] = v15[1].n128_u64[0];
  *v16 = result;
  ++*(a3 + 8);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOp::getEntrySuccessorRegions(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(a4, v13);
  v6 = *a1;
  v7 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v9 = *(v7 + 24);
  v8 = v7 + 24;
  if (v9 == v8)
  {
    v11 = *(v6 + 36);
    v12 = v6 - 16;
    if (!v11)
    {
      v12 = 0;
    }

    v13[0] = v12;
    v13[1] = v11;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a4, v13);
  }

  else
  {
    v13[0] = v8;
    return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(a4, v13);
  }
}

uint64_t llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(a1, a2);
  }

  v3 = (*a1 + 24 * v2);
  v4 = *a2;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v4;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 24 * v3 - 24;
}

uint64_t llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a1, a2);
  }

  v3 = (*a1 + 24 * v2);
  v4 = a2[1];
  v5 = *a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  *v3 = 0;
  v3[1] = v5;
  v3[2] = v4;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 24 * v3 - 24;
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOp::getSuccessorRegions(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    v8 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
    v18 = v8;
    if (*v8 != v8)
    {
      v7 = v8[1];
      goto LABEL_11;
    }

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v5 = *a1;
  v6 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (v6 + 3 != a2)
  {
    v9 = *(v5 + 36);
    v10 = v5 - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v16 = v10;
    v17 = v9;
    llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::ResultRange>(a3, &v16);
    v11 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v18 = v11 + 24;
    if (*(v11 + 24) != v11 + 24)
    {
      v7 = *(v11 + 32);
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v18 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  if (*v6 == v6)
  {
    goto LABEL_14;
  }

  v7 = v6[1];
LABEL_11:
  v12 = v7 - 8;
  if (!v7)
  {
    v12 = 0;
  }

  v13 = *(v12 + 48);
  v14 = (*(v12 + 56) - v13) >> 3;
LABEL_15:
  v16 = v13;
  v17 = v14;
  return llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a3, &v18, &v16);
}

uint64_t llvm::SmallVectorImpl<mlir::RegionSuccessor>::emplace_back<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a1, a2, a3);
  }

  v4 = (*a1 + 24 * v3);
  v5 = a3[1];
  v6 = *a3 & 0xFFFFFFFFFFFFFFF9;
  *v4 = *a2;
  v4[1] = v6;
  v4[2] = v5;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 24 * v4 - 24;
}

BOOL mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4[1] == 1)
  {
    v9 = *a4 & 6;
    v10 = (*a4 & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
      v12 = *a4 < 0;
    }

    if (v11)
    {
      if (v9 == 2)
      {
        v13 = v10 == 0;
        v12 = *a4 < 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v10 = v10[3];
      }
    }

    else
    {
      v10 = *v10;
    }

    v16 = (v10[1] & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    v18 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
    v20 = (*(v19 + 24))(v19, v16);
    v23[0] = v24;
    v23[1] = 0x300000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(v23, v20, &v20[8 * v21]);
    v24[3] = 0;
    v24[4] = 0;
    v25 = 1;
    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::push_back(a9, v23);
    if (v23[0] != v24)
    {
      free(v23[0]);
    }

    v22 = *MEMORY[0x277D85DE8];
    return 1;
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

__n128 llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<mlir::ShapedTypeComponents,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>>(a1, a2, 1);
  v4 = *a1 + (*(a1 + 8) << 6);
  *v4 = v4 + 16;
  *(v4 + 8) = 0x300000000;
  if (*(v3 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(v4, v3);
  }

  result = *(v3 + 40);
  *(v4 + 56) = *(v3 + 56);
  *(v4 + 40) = result;
  ++*(a1 + 8);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::fold(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*(*a1 + 72) + 24);
  if ((~*(v2 + 8) & 7) != 0)
  {
    v3 = *(*(*a1 + 72) + 24);
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16) + 120;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = v3 + 16 * v4 + 16;
  }

  if (*(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
  {
    v6 = *(*(v5 + 72) + 24);
    if ((*(v1 - 8) ^ *(v6 + 8)) <= 7)
    {
      return v6 | 4;
    }
  }

LABEL_12:
  v8 = *(v1 - 8) ^ *(v2 + 8);
  v9 = v2 | 4;
  if (v8 >= 8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::decomposeComplexOperation(mlir::ODIE::Compiler::CoreML::CastOp *this, mlir::OpBuilder *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v42 = 0;
  if (mlir::ODIE::Compiler::CoreML::hasComplexInputs(v4, &v42, 1))
  {
    v5 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = *v5;
    v39 = v5;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
    v9 = *((*(v8 + 8))(v8, v5) + 8);
    PartsOfComplex = mlir::ODIE::Compiler::CoreML::getPartsOfComplex(a2, *(*(*this + 72) + 24), *(*this + 24));
    v38 = v11;
    v12 = (*(PartsOfComplex - 1) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
    v16 = *v15;
    LOBYTE(v42) = 0;
    LOBYTE(v44) = 0;
    v36 = v16(v15, v12, &v42, v9);
    v17 = *(*this + 24);
    v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a2, *(**v17 + 32));
    v42 = v17;
    v43 = v18;
    v44 = v46;
    v45 = 0x400000000;
    v47 = v49;
    v48 = 0x400000000;
    v50 = v52;
    v51 = 0x400000000;
    v53 = 4;
    v54 = &v56;
    v55 = 0x100000000;
    v57 = &v59;
    v58 = 0x100000000;
    v60 = 0;
    v61 = 0;
    v62 = &mlir::detail::TypeIDResolver<void,void>::id;
    v63 = 0;
    v64 = 0;
    v40 = PartsOfComplex - 16;
    __src = v36;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v44, &v40, 0, &v40, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v47, &__src, &v42);
    v19 = mlir::Operation::create(&v42);
    mlir::OpBuilder::insert(a2, v19);
    v20 = *(*(v19 + 6) + 16);
    mlir::OperationState::~OperationState(&v42);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v37 = v21;
    v22 = *(*this + 24);
    v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a2, *(**v22 + 32));
    v42 = v22;
    v43 = v23;
    v44 = v46;
    v45 = 0x400000000;
    v47 = v49;
    v48 = 0x400000000;
    v50 = v52;
    v51 = 0x400000000;
    v53 = 4;
    v54 = &v56;
    v55 = 0x100000000;
    v57 = &v59;
    v58 = 0x100000000;
    v60 = 0;
    v61 = 0;
    v62 = &mlir::detail::TypeIDResolver<void,void>::id;
    v63 = 0;
    v64 = 0;
    v40 = (v38 - 16);
    __src = v36;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v44, &v40, 0, &v40, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v47, &__src, &v42);
    v24 = mlir::Operation::create(&v42);
    mlir::OpBuilder::insert(a2, v24);
    v25 = *(*(v24 + 6) + 16);
    mlir::OperationState::~OperationState(&v42);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
    {
      v24 = 0;
    }

    v26 = *(*this + 24);
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a2, *(**v26 + 32));
    v42 = v26;
    v43 = Complex;
    v44 = v46;
    v45 = 0x400000000;
    v47 = v49;
    v48 = 0x400000000;
    v50 = v52;
    v51 = 0x400000000;
    v53 = 4;
    v54 = &v56;
    v55 = 0x100000000;
    v57 = &v59;
    v58 = 0x100000000;
    v60 = 0;
    v61 = 0;
    v62 = &mlir::detail::TypeIDResolver<void,void>::id;
    v63 = 0;
    v64 = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(Complex, &v42, v39, (v37 - 16), (v24 - 16));
    v28 = mlir::Operation::create(&v42);
    mlir::OpBuilder::insert(a2, v28);
    v29 = *(*(v28 + 6) + 16);
    mlir::OperationState::~OperationState(&v42);
    if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    v31 = (*this - 16);
    v32 = *(v30 + 9);
    v33 = (v30 - 16);
    if (!v32)
    {
      v33 = 0;
    }

    v42 = v33;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v31, &v42);
  }

  v34 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::hasComplexInputs(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = 8 * a3 - 8;
  do
  {
    v6 = (*(*(*(a1 + 72) + 32 * *a2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
    v9 = v7;
    if (v7)
    {
      v7 = (*(v8 + 8))(v8, v7);
    }

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v11 = *(*v10 + 136);
    result = v11 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    v13 = v11 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || v5 == 0;
    v5 -= 8;
    a2 += 2;
  }

  while (!v13);
  return result;
}

char *mlir::ODIE::Compiler::CoreML::getPartsOfComplex(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v5 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = *v5;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *((*(v8 + 8))(v8, v5) + 8);
  v10 = *v8;
  LOBYTE(v15[0]) = 0;
  v16 = 0;
  v15[0] = v10(v8, v5, v15, v9);
  v15[1] = v11;
  v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, v15, &v14);
  mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(a1, a3, v15, &v14);
  return v12;
}

unint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::fold(uint64_t a1)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v1 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_8:
    v13 = 0;
    goto LABEL_12;
  }

  v3 = v1[1];
  v4 = v1[2];
  if (v4)
  {
    v5 = 8 * v4;
    v6 = v1[1];
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_8;
  }

LABEL_6:
  v20 = v22;
  v21 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v20, v3, &v3[8 * v4]);
  v19 = v1[2];
  v7 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 32, 1);
  *&v18 = &v19;
  *(&v18 + 1) = 1;
  v16 = 0;
  v17 = v7;
  v8 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v7 + 32), &v18, &v17, &v16);
  v9 = v8;
  if (v8)
  {
    v10 = *v8;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v12, v20, 4 * v21) & 0xFFFFFFFFFFFFFFFBLL;
  if (v20 != v22)
  {
    free(v20);
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::GetShapeOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a5 == 1)
  {
    mlir::ODIE::Compiler::CoreML::detail::GetShapeOpGenericAdaptorBase::GetShapeOpGenericAdaptorBase(v26, a6, &v24, a9, a10);
    v27 = a4;
    v28 = 1;
    v15 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v15)
    {
      if ((a4 & 6) == 2 && v15)
      {
        v15 = v15[3];
      }
    }

    else
    {
      v15 = *v15;
    }

    v17 = (v15[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v25 = v17[2];
      v18 = 1;
      v19 = mlir::IntegerType::get(a1, 32, 1);
      *&v24 = &v25;
      *(&v24 + 1) = 1;
      v22 = 0;
      v23 = v19;
      v20 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v19 + 32), &v24, &v23, &v22);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v20);
    }

    else
    {
      v18 = mlir::emitOptionalError<char const(&)[37]>(a2, a3, "expected operand to be ranked tensor");
    }

    v21 = *MEMORY[0x277D85DE8];
    return v18;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

BOOL mlir::emitOptionalError<char const(&)[37]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<37ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
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

void mlir::ODIE::Compiler::CoreML::printNamedRegionOp(unsigned int *a1, uint64_t (**a2)(void, unsigned int *), _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v10 = (*(*a5 + 16))(a5);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, " ", 1uLL);
  }

  else
  {
    *v11 = 32;
    ++*(v10 + 4);
  }

  v12 = (*a2)(a2, a1);
  (*(*a5 + 88))(a5, *(v12 + 16), *(v12 + 24));
  v19 = v21;
  v20 = 0x300000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v19, a3, &a3[16 * a4]);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (v13)
  {
    (*(v14 + 32))(v14, v13, a5);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "param_decls", 11);
  }

  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "sym_name", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  (*(*a5 + 200))(a5, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
  v16 = (*(*a5 + 16))(a5);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, " ", 1uLL);
  }

  else
  {
    *v17 = 32;
    ++*(v16 + 4);
  }

  (*(*a5 + 224))(a5, ((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10], 0, 0, 0);
  if (v19 != v21)
  {
    free(v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::parseNamedRegionOp(int a1, mlir::OperationState *this)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = 0;
  mlir::OperationState::addRegion(this);
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuleOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    v9 = *a1;
    v10 = *a1 + 64;
    v20 = v22;
    v21 = 0x600000000;
    v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v11 + 8);
      v14 = 8 * v12;
      do
      {
        v15 = *v13;
        if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24)))
        {
          llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v20, v15);
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
      v16 = v20;
      v17 = v21;
    }

    else
    {
      v17 = 0;
      v16 = v22;
    }

    *(v10 + 16 * ((*(v9 + 44) >> 23) & 1)) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
    if (v20 != v22)
    {
      free(v20);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v12[0] = a1;
  v12[1] = a2;
  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v13 = &unk_286E80538;
  v14 = a3;
  v16 = &v13;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::emplace_back<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(v9, &v13);
  std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](&v13);
  v13 = v12;
  v14 = v9;
  v15 = a4;
  v6 = mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::StringMap<mlir::Attribute,llvm::MallocAllocator> const&,llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::PendingSpecialization> &)::$_1>, &v13, 0) != 0;
  MEMORY[0x25F891030](v10, 8);
  v13 = &v9[1] + 1;
  std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = v9;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::ODIE::Compiler::CoreML::ModuleOp::readProperties(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if (v5)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v8 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(a2);
  if (v10)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v8))
    {
      return 0;
    }
  }

  else
  {
    *v8 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***a2 + 32), 0, 0, v7);
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v8 + 1);
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
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

      if ((atomic_load_explicit(&qword_27FC1E308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E308))
      {
        qword_27FC1E2F8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>();
        unk_27FC1E300 = v12;
        __cxa_guard_release(&qword_27FC1E308);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC1E2F8;
        v16 = unk_27FC1E300;
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

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::print(uint64_t *a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  result = (*(*a2 + 40))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80));
  v7 = *a1;
  v8 = (*(*a1 + 44) >> 23) & 1;
  if (*(*(*a1 + 16 * v8 + 80) + 8) != *(*a1 + 16 * v8 + 72))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 3uLL)
    {
      *v10 = 544432416;
      *(v9 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v9, " as ", 4uLL);
    }

    v11 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
    result = (*(*a2 + 88))(a2, *(v11 + 16), *(v11 + 24));
    v7 = *a1;
    v8 = (*(*a1 + 44) >> 23) & 1;
  }

  v12 = *(v7 + 16 * v8 + 64);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if ((*(v15 + 3) - v16) > 5)
    {
      *(v16 + 4) = 8301;
      *v16 = 1869768224;
      *(v15 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v15, " from ", 6uLL);
    }

    v17 = *(*a2 + 80);

    return v17(a2, v13, v14);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(a2);
  v13 = 0;
  if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v13, 0))
  {
    return 0;
  }

  v3[2] = v13;
  if ((*(*a1 + 408))(a1, "as", 2))
  {
    v9[0] = 0;
    if (!mlir::AsmParser::parseSymbolName(a1, v9))
    {
      return 0;
    }

    v4 = v9[0];
  }

  else
  {
    v4 = *(v13 + 8);
  }

  v3[1] = v4;
  if (((*(*a1 + 408))(a1, "from", 4) & 1) == 0)
  {
    return 1;
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v5 = mlir::AsmParser::parseString(a1, __p);
  if (v5)
  {
    v6 = (*(*a1 + 32))(a1);
    v10 = 260;
    v9[0] = __p;
    *v3 = mlir::StringAttr::get(*v6, v9, v7);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 1;
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 440))(a1, &v13, a3))
  {
    v7 = v13;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v7 = 0;
    }

    *a2 = v7;
    v8 = 1;
    if (!v7)
    {
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v6, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::AsmParser::parseSymbolName(mlir::AsmParser *this, mlir::StringAttr *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*this + 528))(this, a2))
  {
    v3 = 1;
  }

  else
  {
    v4 = (*(*this + 40))(this);
    v7[16] = 257;
    (*(*this + 24))(&v8, this, v4, v7);
    if (v8)
    {
      mlir::Diagnostic::operator<<<46ul>(v9, "expected valid '@'-identifier for symbol name");
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

void mlir::ODIE::Compiler::CoreML::ClassOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getValue@<X0>(mlir::ODIE::Compiler::CoreML::MemberOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  if (v3)
  {
    v4 = *v3;
    v5 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
    *a2 = v3;
    *(a2 + 8) = result;
    v7 = 1;
  }

  else
  {
    result = 0;
    v7 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v7;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    v9 = *a1;
    v10 = *a1 + 64;
    v20 = v22;
    v21 = 0x600000000;
    v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v11 + 8);
      v14 = 8 * v12;
      do
      {
        v15 = *v13;
        if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24)))
        {
          llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v20, v15);
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
      v16 = v20;
      v17 = v21;
    }

    else
    {
      v17 = 0;
      v16 = v22;
    }

    *(v10 + 16 * ((*(v9 + 44) >> 23) & 1)) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
    if (v20 != v22)
    {
      free(v20);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::print(mlir::ODIE::Compiler::CoreML::MemberOp *this, mlir::OpAsmPrinter *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  (*(*a2 + 88))(a2, *(v6 + 16), *(v6 + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if ((*(v7 + 3) - v8) > 2)
  {
    *(v8 + 2) = 32;
    *v8 = 14880;
    *(v7 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v7, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 8));
  mlir::ODIE::Compiler::CoreML::MemberOp::getValue(this, &v25);
  if (v26 == 1)
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if ((*(v9 + 3) - v10) > 2)
    {
      *(v10 + 2) = 32;
      *v10 = 15648;
      *(v9 + 4) += 3;
    }

    else
    {
      llvm::raw_ostream::write(v9, " = ", 3uLL);
    }

    if (v25 && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
    {
      mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, v25);
    }

    else
    {
      (*(*a2 + 48))(a2);
    }
  }

  v11 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v11)
  {
    if (*(v11 + 24) > 0x40u)
    {
      operator new[]();
    }

    v12 = *(v11 + 16);
    v13 = (*(*a2 + 16))(a2);
    v14 = *(v13 + 4);
    if (*(v13 + 3) - v14 > 0xCuLL)
    {
      qmemcpy(v14, " alignInBits(", 13);
      *(v13 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v13, " alignInBits(", 0xDuLL);
    }

    v15 = (*(*a2 + 16))(a2);
    write_unsigned<unsigned long long>(v15, v12, 0, 0, 0);
    v16 = (*(*a2 + 16))(a2);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, ")", 1uLL);
    }

    else
    {
      *v17 = 41;
      ++*(v16 + 4);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v19 = *(AttrDictionary + 8);
  v20 = *(AttrDictionary + 16);
  v21 = *(*(*this + 48) + 96);
  v22 = *(v21[3] + 16);
  v25 = *(v21[1] + 16);
  v26 = v22;
  v27 = *(*v21 + 16);
  v28 = *(v21[2] + 16);
  result = (*(*a2 + 200))(a2, v19, v20, &v25, 4);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  if (!mlir::AsmParser::parseSymbolName(a1, &v14) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 536))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), v14);
  v4 = *(*(*(a2 + 8) + 96) + 16);
  v5 = mlir::TypeAttr::get(v13);
  mlir::NamedAttrList::push_back(a2 + 112, v4, v5);
  if ((*(*a1 + 144))(a1))
  {
    v12[0] = 0;
    v12[1] = 0;
    if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, v12) & 1) == 0)
    {
      return 0;
    }

    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 24), v12[0]);
  }

  if (((*(*a1 + 408))(a1, "alignInBits", 11) & 1) == 0)
  {
    return (*(*a1 + 496))(a1, a2 + 112) & 1;
  }

  v12[0] = 0;
  if ((*(*a1 + 280))(a1) & 1) != 0 && (mlir::AsmParser::parseInteger<unsigned long long>(a1, v12) & 1) != 0 && ((*(*a1 + 296))(a1))
  {
    v6 = **(*(a2 + 8) + 96);
    v7 = (*(*a1 + 32))(a1);
    v8 = (*(*a1 + 32))(a1);
    v9 = mlir::IntegerType::get(*v8, 64, 2);
    IntegerAttr = mlir::Builder::getIntegerAttr(v7, v9, v12[0]);
    mlir::NamedAttrList::push_back(a2 + 112, v6, IntegerAttr);
    return (*(*a1 + 496))(a1, a2 + 112) & 1;
  }

  return 0;
}

uint64_t mlir::AsmParser::parseInteger<unsigned long long>(uint64_t a1, uint64_t **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v10[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned long long>(unsigned long long &)::{lambda(llvm::APInt &)#1}>(a1, a2, v10);
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

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verify(mlir::ODIE::Compiler::CoreML::MemberOp *this)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::MemberOp::getValue(this, &v9);
  if (v11 == 1 && (v2 = (*v10)(v10, v9), v3 = *this, v2 != *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 8)))
  {
    v8 = 257;
    mlir::Operation::emitError(&v12, v3, v7);
    if (v12)
    {
      mlir::Diagnostic::operator<<<46ul>(v13, "default value type and member type must match");
    }

    v4 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  else
  {
    v4 = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::print(mlir::ODIE::Compiler::CoreML::GetMemberOp **this, mlir::OpAsmPrinter *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8233;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ") ", 2uLL);
  }

  MemberAttr = mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
  v9 = MemberAttr;
  v10 = *(*MemberAttr + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v9 = MemberAttr[1];
  }

  else if (MemberAttr && v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, MemberAttr);
    goto LABEL_13;
  }

  (*(*a2 + 40))(a2, v9);
LABEL_13:
  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 2)
  {
    *(v12 + 2) = 32;
    *v12 = 14880;
    *(v11 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v11, " : ", 3uLL);
  }

  mlir::OpAsmPrinter::printFunctionalType(a2, *this);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v14 = *(AttrDictionary + 8);
  v15 = *(AttrDictionary + 16);
  v18 = *(**(*(*this + 6) + 96) + 16);
  result = (*(*a2 + 200))(a2, v14, v15, &v18, 1);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(mlir::ODIE::Compiler::CoreML::GetMemberOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::parse(uint64_t a1, uint64_t a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x100000000;
  if (((*(*a1 + 720))(a1, &v24, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_20;
  }

  v19 = 0;
  v20 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v21 = 0;
    if (!mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &v21) || ((*(*a1 + 168))(a1) & 1) == 0)
    {
      goto LABEL_20;
    }

    v4 = v21;
    if (v21)
    {
      v5 = *v21;
      v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
      v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
    }

    else
    {
      v7 = 0;
    }

    v19 = v4;
    v20 = v7;
  }

  else if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v19) & 1) == 0)
  {
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v18 = 0;
  if (!mlir::AsmParser::parseColonType<mlir::FunctionType>(a1, &v18) || ((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v23;
  v22 = 0x600000000;
  if (v25 && (v8 = *(v18 + 8), v8))
  {
    v9 = *(v18 + 16);
    v10 = v24;
    v11 = 8 * v8 - 8;
    v12 = 32 * v25 - 32;
    while (((*(*a1 + 728))(a1, v10, *v9, &v21) & 1) != 0)
    {
      if (v12)
      {
        v10 += 32;
        ++v9;
        v13 = v11;
        v11 -= 8;
        v12 -= 32;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v15 = 0;
  }

  else
  {
LABEL_19:
    mlir::NamedAttrList::push_back(a2 + 112, **(*(a2 + 8) + 96), v19);
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v21 & 0xFFFFFFFFFFFFFFF9, 0, v21 & 0xFFFFFFFFFFFFFFF9, v22);
    v14 = (*(v18 + 16) + 8 * *(v18 + 8));
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v14, &v14[8 * *(v18 + 12)]);
    v15 = 1;
  }

  if (v21 != v23)
  {
    free(v21);
  }

LABEL_21:
  if (v24 != v26)
  {
    free(v24);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 440))(a1, &v11, 0))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of attribute specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::AsmParser::parseColonType<mlir::FunctionType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 576))(a1, &v11))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of type specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::ODIE::Compiler::CoreML::GetMemberOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::GetMemberOp **this, mlir::SymbolTableCollection *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  MemberAttr = mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
  v5 = *(*MemberAttr + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  v6 = *this;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = MemberAttr;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = *mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
    v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v8 + 8, v9))
    {
      v34 = 257;
      mlir::Operation::emitError(&v37, *this, v33);
      if (v37)
      {
        mlir::Diagnostic::operator<<<61ul>(&v38, "expected a parameter attribute if the callee is not resolved");
      }

LABEL_29:
      v17 = (v42 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
      goto LABEL_30;
    }

LABEL_24:
    v17 = 1;
    goto LABEL_30;
  }

  while (1)
  {
    v10 = *(v6 + 2);
    if (!v10)
    {
      break;
    }

    v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      break;
    }

    v6 = *(v11 + 16);
    if (!v6 || *(*(v6 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:
  v12 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7);
  if (!v12 || ((v13 = v12, v14 = *(*(v12 + 48) + 16), v15 = v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id, v14 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id) ? (v16 = 0) : (v16 = v12), v32 = v16, !v15))
  {
    if (!mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7[1]))
    {
      v34 = 257;
      mlir::Operation::emitError(&v37, *this, v33);
      if (v37)
      {
        mlir::Diagnostic::operator<<<19ul>(&v38, "could not resolve ");
        if (v37)
        {
          v35 = 0;
          v36 = v7;
          v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v35, 1);
          v19 = v40 + 24 * v41;
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          ++v41;
          if (v37)
          {
            mlir::Diagnostic::operator<<<22ul>(&v38, " to a class or import");
          }
        }
      }

      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v23 = mlir::ODIE::Compiler::CoreML::GetMemberOp::getMemberAttr(*this);
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v25 = v23[3];
    v24 = v23[4];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = *(v13 + 24);
  v27 = *(*this + 3);
  v28 = mlir::Operation::getParentOfType<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(v13);
  (*(v29 + 16))(&v37, v29, v28);
  v30 = *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 80) + 8);
  v33[0] = this;
  v33[1] = &v32;
  v17 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v26, v27, v37, v38, v25, v24, v30, v31, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<mlir::ODIE::Compiler::CoreML::GetMemberOp::verifySymbolUses(mlir::SymbolTableCollection &)::$_0>, v33);
  if (v37 != &v39)
  {
    free(v37);
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t (*a9)(uint64_t, void *), uint64_t a10)
{
  v50 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v42 = a4;
  v39 = a5;
  v40 = a6;
  v38 = 0;
  v37 = 0u;
  memset(v36, 0, sizeof(v36));
  v47 = &unk_286E805C8;
  v48[0] = &v41;
  v48[1] = &v39;
  v48[2] = &v47;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::emplace_back<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>(v36, &v47);
  std::__function::__value_func<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>::~__value_func[abi:nn200100](&v47);
  if (v40 && v42)
  {
    v13 = v41;
    v14 = 8 * v42 - 8;
    v15 = (v39 + 8);
    v16 = 16 * v40 - 16;
    do
    {
      v17 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(v36, *(*v13 + 16));
      v18 = *(v15 - 1);
      if (v17 != (**v15)())
      {
        v49 = 257;
        emitDiag(a2, 2, &v47, &v43);
        if (v43)
        {
          mlir::Diagnostic::operator<<<21ul>(v44, "got binding of type ");
        }

        v22 = *(v15 - 1);
        v23 = (**v15)();
        if (v43)
        {
          LODWORD(v47) = 4;
          v48[0] = v23;
          v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v45, &v47, 1);
          v25 = v45 + 24 * v46;
          v26 = *v24;
          *(v25 + 16) = *(v24 + 16);
          *v25 = v26;
          ++v46;
          if (v43)
          {
            mlir::Diagnostic::operator<<<11ul>(v44, " for decl ");
            if (v43)
            {
              v27 = *(*v13 + 8);
              LODWORD(v47) = 0;
              v48[0] = v27;
              v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v45, &v47, 1);
              v29 = v45 + 24 * v46;
              v30 = *v28;
              *(v29 + 16) = *(v28 + 16);
              *v29 = v30;
              ++v46;
              if (v43)
              {
                mlir::Diagnostic::operator<<<10ul>(v44, " of type ");
                if (v43)
                {
                  LODWORD(v47) = 4;
                  v48[0] = v17;
                  v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v45, &v47, 1);
                  v32 = v45 + 24 * v46;
                  v33 = *v31;
                  *(v32 + 16) = *(v31 + 16);
                  *v32 = v33;
                  ++v46;
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v47, &v43);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
        mlir::Diagnostic::attachNote(v48, a1, 1);
      }

      if (!v16)
      {
        break;
      }

      v13 += 8;
      v19 = v14;
      v14 -= 8;
      v15 += 2;
      v16 -= 16;
    }

    while (v19);
  }

  v20 = mlir::AttrTypeReplacer::cachedReplaceImpl<mlir::Type>(v36, a7);
  v21 = a9(a10, v20);
  MEMORY[0x25F891030](v37, 8);
  v47 = &v36[1] + 1;
  std::vector<std::function<std::optional<std::pair<mlir::Type,mlir::WalkResult>> ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](&v47);
  v47 = v36;
  std::vector<std::function<std::optional<std::pair<mlir::Attribute,mlir::WalkResult>> ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](&v47);
  v34 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::print(mlir::ODIE::Compiler::CoreML::SetMemberOp **this, mlir::OpAsmPrinter *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 1uLL)
  {
    *v7 = 8236;
    *(v6 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v6, ", ", 2uLL);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 1uLL)
  {
    *v9 = 8233;
    *(v8 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, ") ", 2uLL);
  }

  MemberAttr = mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
  v11 = MemberAttr;
  v12 = *(*MemberAttr + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v11 = MemberAttr[1];
  }

  else if (MemberAttr && v12 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, MemberAttr);
    goto LABEL_16;
  }

  (*(*a2 + 40))(a2, v11);
LABEL_16:
  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if ((*(v13 + 3) - v14) > 2)
  {
    *(v14 + 2) = 32;
    *v14 = 14880;
    *(v13 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v13, " : ", 3uLL);
  }

  v15 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v16 = *(v15 + 17);
    if (v16)
    {
      v17 = *(v15 + 9);
      (*(*a2 + 32))(a2, *(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v16 != 1)
      {
        v18 = v16 - 1;
        v19 = (v17 + 56);
        do
        {
          v20 = (*(*a2 + 16))(a2);
          v21 = *(v20 + 4);
          if (*(v20 + 3) - v21 > 1uLL)
          {
            *v21 = 8236;
            *(v20 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v20, ", ", 2uLL);
          }

          v22 = *v19;
          v19 += 4;
          (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v18;
        }

        while (v18);
      }
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v24 = *(AttrDictionary + 8);
  v25 = *(AttrDictionary + 16);
  v28 = *(**(*(*this + 6) + 96) + 16);
  result = (*(*a2 + 200))(a2, v24, v25, &v28, 1);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(mlir::ODIE::Compiler::CoreML::SetMemberOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::parse(uint64_t a1, uint64_t a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x100000000;
  if (((*(*a1 + 720))(a1, &v24, 1, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = 0;
  v17 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v18 = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &v18) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v4 = v18;
      if (v18)
      {
        v5 = *v18;
        v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
      }

      else
      {
        v7 = 0;
      }

      v16 = v4;
      v17 = v7;
      goto LABEL_14;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v16) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v21 = v23;
  v22 = 0x200000000;
  if ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &v21) & 1) != 0 && ((*(*a1 + 496))(a1, a2 + 112))
  {
    v18 = v20;
    v19 = 0x600000000;
    if (v25 && v22)
    {
      v11 = v24;
      v12 = v21;
      v13 = 8 * v22 - 8;
      v14 = 32 * v25 - 32;
      while (((*(*a1 + 728))(a1, v11, *v12, &v18) & 1) != 0)
      {
        if (v14)
        {
          v11 += 32;
          ++v12;
          v15 = v13;
          v13 -= 8;
          v14 -= 32;
          if (v15)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v8 = 0;
    }

    else
    {
LABEL_23:
      mlir::NamedAttrList::push_back(a2 + 112, **(*(a2 + 8) + 96), v16);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v18 & 0xFFFFFFFFFFFFFFF9, 0, v18 & 0xFFFFFFFFFFFFFFF9, v19);
      v8 = 1;
    }

    if (v18 != v20)
    {
      free(v18);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v21 != v23)
  {
    free(v21);
  }

LABEL_9:
  if (v24 != v26)
  {
    free(v24);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::ODIE::Compiler::CoreML::SetMemberOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::SetMemberOp **this, mlir::SymbolTableCollection *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  MemberAttr = mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
  v5 = *(*MemberAttr + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    MemberAttr = MemberAttr[1];
    v5 = *(*MemberAttr + 136);
  }

  v6 = *this;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v7 = MemberAttr;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = *mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
    v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v8 + 8, v9))
    {
      v34 = 257;
      mlir::Operation::emitError(&v37, *this, v33);
      if (v37)
      {
        mlir::Diagnostic::operator<<<61ul>(&v38, "expected a parameter attribute if the callee is not resolved");
      }

LABEL_29:
      v17 = (v42 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
      goto LABEL_30;
    }

LABEL_24:
    v17 = 1;
    goto LABEL_30;
  }

  while (1)
  {
    v10 = *(v6 + 2);
    if (!v10)
    {
      break;
    }

    v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      break;
    }

    v6 = *(v11 + 16);
    if (!v6 || *(*(v6 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      goto LABEL_18;
    }
  }

  v6 = 0;
LABEL_18:
  v12 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7);
  if (!v12 || ((v13 = v12, v14 = *(*(v12 + 48) + 16), v15 = v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id, v14 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MemberOp,void>::id) ? (v16 = 0) : (v16 = v12), v32 = v16, !v15))
  {
    if (!mlir::SymbolTableCollection::lookupSymbolIn(a2, v6, v7[1]))
    {
      v34 = 257;
      mlir::Operation::emitError(&v37, *this, v33);
      if (v37)
      {
        mlir::Diagnostic::operator<<<19ul>(&v38, "could not resolve ");
        if (v37)
        {
          v35 = 0;
          v36 = v7;
          v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v35, 1);
          v19 = v40 + 24 * v41;
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          ++v41;
          if (v37)
          {
            mlir::Diagnostic::operator<<<22ul>(&v38, " to a class or import");
          }
        }
      }

      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v23 = mlir::ODIE::Compiler::CoreML::SetMemberOp::getMemberAttr(*this);
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v25 = v23[3];
    v24 = v23[4];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = *(v13 + 24);
  v27 = *(*this + 3);
  v28 = mlir::Operation::getParentOfType<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>(v13);
  (*(v29 + 16))(&v37, v29, v28);
  v30 = *(*(v13 + 16 * ((*(v13 + 44) >> 23) & 1) + 80) + 8);
  v33[0] = this;
  v33[1] = &v32;
  v17 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v26, v27, v37, v38, v25, v24, v30, v31, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<mlir::ODIE::Compiler::CoreML::SetMemberOp::verifySymbolUses(mlir::SymbolTableCollection &)::$_0>, v33);
  if (v37 != &v39)
  {
    free(v37);
  }

LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = ((*this)[11] >> 23) & 1;
  *&v12 = *&(*this)[4 * v5 + 18];
  BYTE8(v12) = v12 != 0;
  if (v12)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) == v7)
    {
      llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++*(v6 + 4);
    }

    mlir::ODIE::Compiler::detail::KeywordPrintableAttrTrait<mlir::ODIE::Compiler::CoreML::ExternAttr>::printAsKeyword(&v12, a2);
    v4 = *this;
    v5 = ((*this)[11] >> 23) & 1;
  }

  if (*&v4[4 * v5 + 22])
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 8)
    {
      *(v9 + 8) = 101;
      *v9 = *" noinline";
      *(v8 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v8, " noinline", 9uLL);
    }

    v4 = *this;
  }

  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
  v12 = *(*(*(*(*this + 6) + 96) + 8) + 16);
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v4, InterfaceFor, &v12, 1, a2);
  v11 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(unsigned int *a1, uint64_t a2, _BYTE *__src, uint64_t a4, uint64_t a5)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v28 = v30;
  v29 = 0x300000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v28, __src, &__src[16 * a4]);
  v8 = (*(*a5 + 16))(a5);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, " ", 1uLL);
  }

  else
  {
    *v9 = 32;
    ++*(v8 + 4);
  }

  v10 = (**(a2 + 40))();
  (*(*a5 + 88))(a5, *(v10 + 16), *(v10 + 24));
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v28, "sym_name", 8);
  v11 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::Operation *,void>>::doCastIfPossible(a1);
  if (v11)
  {
    (*(v12 + 32))(v12, v11, a5);
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v28, "param_decls", 11);
  }

  v13 = (*a2)(a2, a1);
  v14 = *(v13 + 16);
  v15 = *(v13 + 8);
  v16 = *(v13 + 12);
  v17 = v14 + 8 * v15;
  v18 = v14 & 0xFFFFFFFFFFFFFFF9;
  v19 = (*(*(a2 + 48) + 24))();
  v20 = (*(*(a2 + 48) + 32))();
  mlir::call_interface_impl::printFunctionSignature(a5, v18 | 2, v15, v19, 0, v17 & 0xFFFFFFFFFFFFFFF9 | 2, v16, v20, (((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]), 0);
  __srca[0] = xmmword_2799BDAD8;
  __srca[1] = *&off_2799BDAE8;
  __srca[2] = xmmword_2799BDAF8;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v28, __srca, v27);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  (*(*a5 + 200))(a5, *(AttrDictionary + 8), *(AttrDictionary + 16), v28, v29);
  v22 = (*(*a5 + 16))(a5);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, " ", 1uLL);
  }

  else
  {
    *v23 = 32;
    ++*(v22 + 4);
  }

  v24 = (((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
  if (*v24 != v24)
  {
    (*(*a5 + 224))(a5);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v8 = 0;
  v4 = mlir::ODIE::Compiler::detail::KeywordPrintableAttrTrait<mlir::ODIE::Compiler::CoreML::ExternAttr>::parseAsKeyword(&v8, a1);
  if ((v4 & 0x100) != 0)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }

    mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 1) + 96) + 8), v8);
  }

  if ((*(*a1 + 408))(a1, "noinline", 8))
  {
    v5 = *(*(*(a2 + 1) + 96) + 24);
    v6 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v5, *(**v6 + 608));
  }

  return mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(a1, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList);
}

uint64_t mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(mlir::AsmParser *a1, mlir::OperationState *a2, uint64_t (*a3)(uint64_t, mlir::AsmParser *, mlir::OperationState *), uint64_t a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v8 = (*(*a1 + 40))(a1);
  if (mlir::AsmParser::parseSymbolName(a1, &v36))
  {
    mlir::OperationState::addAttribute(a2, "sym_name", 8, v36);
    v9 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(*(a2 + 1) + 32, v9) && (a3(a4, a1, a2) & 1) == 0)
    {
      v31 = 0;
    }

    else
    {
      v52 = v54;
      v53 = 0x100000000;
      v35 = 0;
      v49 = v51;
      v50 = 0x600000000;
      v46 = v48;
      v47 = 0x600000000;
      v10 = (*(*a1 + 40))(a1);
      if (mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, 0, &v52, &v35, &v49, &v46))
      {
        v11 = (*(*a1 + 32))(a1);
        v34 = v52;
        v12 = v53;
        v13 = v46;
        v14 = v47;
        v15 = *(*(*a1 + 32))(a1);
        v56 = 262;
        *&v55[0] = "arg_attrs";
        *(&v55[0] + 1) = 9;
        v17 = mlir::StringAttr::get(v15, v55, v16);
        v18 = *(*(*a1 + 32))(a1);
        v41 = 262;
        *&__src = "res_attrs";
        *(&__src + 1) = 9;
        v20 = mlir::StringAttr::get(v18, &__src, v19);
        mlir::call_interface_impl::addArgAndResultAttrs(v11, a2, v34, v12, v13, v14, v17, v20);
        v43 = v45;
        v44 = 0x600000000;
        v21 = v53;
        if (v53 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v45, v53, 8);
          v21 = v53;
        }

        if (v21)
        {
          v22 = v21 << 6;
          v23 = v52 + 4;
          do
          {
            v24 = *v23;
            v23 += 8;
            llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v43, v24);
            v22 -= 64;
          }

          while (v22);
        }

        v25 = *(*(*a1 + 32))(a1);
        *&v55[0] = v43 & 0xFFFFFFFFFFFFFFF9 | 2;
        *(&v55[0] + 1) = v44;
        *&__src = v49 & 0xFFFFFFFFFFFFFFF9 | 2;
        *(&__src + 1) = v50;
        v26 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v25, v55, &__src);
        if (v26)
        {
          v27 = mlir::TypeAttr::get(v26);
          mlir::OperationState::addAttribute(a2, "function_type", 0xD, v27);
          *&__src = v40;
          *(&__src + 1) = 0x400000000;
          v42 = 4;
          v28 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 496))(a1, &__src))
          {
            v29 = __src;
            v30 = (__src + 16 * DWORD2(__src));
            *(a2 + 24) = 0;
            llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, v29, v30);
            mlir::OperationState::addRegion(a2);
          }

          v38 = 257;
          (*(*a1 + 24))(v55, a1, v28, v37);
          if (*&v55[0])
          {
            mlir::Diagnostic::operator<<<41ul>(v55 + 8, "failed to parse the attribute dictionary");
          }

          v31 = v57 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
          if (__src != v40)
          {
            free(__src);
          }
        }

        else
        {
          v41 = 257;
          (*(*a1 + 24))(v55, a1, v10, &__src);
          if (*&v55[0])
          {
            mlir::Diagnostic::operator<<<34ul>(v55 + 8, "failed to construct function type");
          }

          v31 = v57 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
        }

        if (v43 != v45)
        {
          free(v43);
        }
      }

      else
      {
        v41 = 257;
        (*(*a1 + 24))(v55, a1, v10, &__src);
        if (*&v55[0])
        {
          mlir::Diagnostic::operator<<<39ul>(v55 + 8, "failed to parse the function signature");
        }

        v31 = v57 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
      }

      if (v46 != v48)
      {
        free(v46);
      }

      if (v49 != v51)
      {
        free(v49);
      }

      if (v52 != v54)
      {
        free(v52);
      }
    }
  }

  else
  {
    v41 = 257;
    (*(*a1 + 24))(v55, a1, v8, &__src);
    if (*&v55[0])
    {
      mlir::Diagnostic::operator<<<28ul>(v55 + 8, "expected valid symbol name.");
    }

    v31 = v57 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v55);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    v9 = *a1;
    v10 = *a1 + 64;
    v20 = v22;
    v21 = 0x600000000;
    v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v11 + 8);
      v14 = 8 * v12;
      do
      {
        v15 = *v13;
        if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24)))
        {
          llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v20, v15);
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
      v16 = v20;
      v17 = v21;
    }

    else
    {
      v17 = 0;
      v16 = v22;
    }

    *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
    if (v20 != v22)
    {
      free(v20);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getInputIntents(mlir::ODIE::Compiler::CoreML::FuncOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getInputIntentsForFunctionLike(a2, v5, InterfaceFor, a3);
}

void mlir::ODIE::Compiler::CoreML::getInputIntentsForFunctionLike(mlir::ODIE::Compiler::CoreML *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v24 = a3;
  (*(*(a3 + 48) + 8))();
  v30 = v32;
  v31 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v30, v7, 0);
  (*(*(a3 + 48) + 8))();
  if (v8)
  {
    for (i = 0; i < v11; ++i)
    {
      ArgAttr = mlir::FunctionOpInterface::getArgAttr(&v23, i, "coreml.intent", 0xDuLL);
      if (ArgAttr && *(*ArgAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
      {
        *(v30 + i) = ArgAttr;
      }

      (*(*(v24 + 48) + 8))();
    }
  }

  v28[0] = v29;
  v28[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(v28, v31, 0);
  v12 = v23;
  v13 = (((v23 + 16 * ((*(v23 + 44) >> 23) & 1) + ((*(v23 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v23 + 40));
  if (*v13 != v13)
  {
    v14 = v13[1];
    if (v14)
    {
      v15 = (v14 - 8);
    }

    else
    {
      v15 = 0;
    }

    mlir::ODIE::Compiler::CoreML::deriveInputIntentsForBlock(a1, v15, v25);
    if (v27 == 1)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v28, v25);
      if ((v27 & 1) != 0 && v25[0] != &v26)
      {
        free(v25[0]);
      }
    }

    v12 = v23;
  }

  v16 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(v12 + 24) + 32), 3uLL);
  v17 = v31;
  if (v31)
  {
    v18 = v30;
    v19 = v28[0];
    do
    {
      if (!*v18)
      {
        v20 = *v19;
        if (!*v19)
        {
          v20 = v16;
        }

        *v18 = v20;
      }

      ++v19;
      ++v18;
      --v17;
    }

    while (v17);
    v21 = v31;
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
    if (v21)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a4, &v30);
    }
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
  }

  *(a4 + 64) = 1;
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::FuncOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::FuncOp *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getOutputIntentsForFunctionLike(v4, InterfaceFor, a2);
}

void mlir::ODIE::Compiler::CoreML::getOutputIntentsForFunctionLike(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32[6] = *MEMORY[0x277D85DE8];
  (*(*(a2 + 48) + 16))();
  v30 = v32;
  v31 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v30, v6, 0);
  (*(*(a2 + 48) + 16))();
  if (v7)
  {
    for (i = 0; i < v14; ++i)
    {
      v9 = (*(*(a2 + 48) + 32))();
      if (v9)
      {
        v10 = *(*(v9 + 8) + 8 * i);
        if (v10)
        {
          v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v10 + 8), *(v10 + 8) + 16 * *(v10 + 16), "coreml.intent", 0xDuLL);
          if (v12)
          {
            v13 = *(v11 + 8);
            if (v13)
            {
              if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
              {
                *(v30 + i) = v13;
              }
            }
          }
        }
      }

      (*(*(a2 + 48) + 16))();
    }
  }

  v28[0] = v29;
  v28[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(v28, v31, 0);
  v15 = (((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  if (*v15 != v15)
  {
    v16 = v15[1];
    v17 = v16 ? (v16 - 8) : 0;
    mlir::ODIE::Compiler::CoreML::deriveOutputIntentsForBlock(v17, v25);
    if (v27 == 1)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v28, v25);
      if ((v27 & 1) != 0 && v25[0] != &v26)
      {
        free(v25[0]);
      }
    }
  }

  v18 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(a1 + 24) + 32), 0);
  v19 = v31;
  if (v31)
  {
    v20 = v30;
    v21 = v28[0];
    do
    {
      if (!*v20)
      {
        v22 = *v21;
        if (!*v21)
        {
          v22 = v18;
        }

        *v20 = v22;
      }

      ++v21;
      ++v20;
      --v19;
    }

    while (v19);
    v23 = v31;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v23)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a3, &v30);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }

  *(a3 + 64) = 1;
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::GraphOp::print(unsigned int **this, mlir::OpAsmPrinter *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = ((*this)[11] >> 23) & 1;
  if (*&(*this)[4 * v5 + 26])
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 7uLL)
    {
      *v7 = 0x6574617669727020;
      *(v6 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v6, " private", 8uLL);
    }

    v4 = *this;
    v5 = ((*this)[11] >> 23) & 1;
  }

  if (*&v4[4 * v5 + 18])
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 0xB)
    {
      *(v9 + 8) = 1702521196;
      *v9 = *" externalize";
      *(v8 + 4) += 12;
    }

    else
    {
      llvm::raw_ostream::write(v8, " externalize", 0xCuLL);
    }

    v4 = *this;
    v5 = ((*this)[11] >> 23) & 1;
  }

  if (*&v4[4 * v5 + 22])
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if ((*(v10 + 3) - v11) > 8)
    {
      *(v11 + 8) = 101;
      *v11 = *" noinline";
      *(v10 + 4) += 9;
    }

    else
    {
      llvm::raw_ostream::write(v10, " noinline", 9uLL);
    }

    v4 = *this;
  }

  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
  v13 = *(*(*this + 6) + 96);
  v15[0] = *(v13[5] + 16);
  v15[1] = *(v13[1] + 16);
  v15[2] = *(v13[3] + 16);
  v16 = "sym_visibility";
  v17 = 14;
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v4, InterfaceFor, v15, 4, a2);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::parse(mlir::AsmParser *a1, mlir::OperationState *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v14 = xmmword_2799BDAA8;
  v15 = *&off_2799BDAB8;
  for (i = xmmword_2799BDAC8; ((*(*a1 + 424))(a1, &v12, &v14, 3) & 1) != 0; i = xmmword_2799BDAC8)
  {
    v4 = *(*(a2 + 1) + 96);
    if (v13 == 11)
    {
      if (*v12 == 0x6C616E7265747865 && *(v12 + 3) == 0x657A696C616E7265)
      {
        v6 = v4 + 1;
        goto LABEL_19;
      }
    }

    else if (v13 == 8)
    {
      if (*v12 == 0x656E696C6E696F6ELL)
      {
        v6 = v4 + 3;
        goto LABEL_19;
      }
    }

    else if (v13 == 7 && *v12 == 1986622064 && *(v12 + 3) == 1702125942)
    {
      v6 = v4 + 5;
LABEL_19:
      v8 = *v6;
      goto LABEL_20;
    }

    v8 = 0;
LABEL_20:
    v9 = (*(*a1 + 32))(a1);
    mlir::NamedAttrList::push_back(a2 + 112, v8, *(**v9 + 608));
    v14 = xmmword_2799BDAA8;
    v15 = *&off_2799BDAB8;
  }

  result = mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(a1, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, int a8, char a9, char a10, uint64_t a11, uint64_t a12)
{
  v26 = 261;
  v25[0] = a3;
  v25[1] = a4;
  v18 = mlir::StringAttr::get(*a1, v25, a3);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 56) = v18;
  v19 = mlir::TypeAttr::get(a5);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 16) = v19;
  v21 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a6, a7, v20);
  *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 32) = v21;
  if (a8)
  {
    v22 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 40) = v22;
  }

  if (a9)
  {
    v23 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 8) = v23;
  }

  if (a10)
  {
    v24 = *(**a1 + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 24) = v24;
  }

  if (a11)
  {
    *mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) = a11;
  }

  if (a12)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2) + 48) = a12;
  }

  mlir::OperationState::addRegion(a2);
}

uint64_t *mlir::ODIE::Compiler::CoreML::GraphOp::setVisibility(uint64_t *result, int a2)
{
  if (a2 == 2)
  {
    llvm::report_fatal_error("GraphOp has no concept of 'nested' visibility", 1);
  }

  v2 = *result;
  if (a2 == 1)
  {
    v3 = *(**(***(v2 + 24) + 32) + 608);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 16 * ((*(*result + 44) >> 23) & 1) + 104) = v3;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(uint64_t *a1, uint64_t a2)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v19 = a2;
  v20 = v2;
  v3 = *(*(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 80) + 8);
  mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getAllParamDecls(&v20, &v28);
  CalleeAttr = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(&v19);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = CalleeAttr;
    v8 = CalleeAttr[4];
    if (v8 != v29)
    {
      v13 = *(v19 + 24);
      v27 = 257;
      emitDiag(v13, 2, &v25, &v21);
      if (v21)
      {
        mlir::Diagnostic::operator<<<35ul>(v22, "not enough parameters provided by ");
        if (v21)
        {
          LODWORD(v25) = 0;
          v26[0] = v7;
          v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v25, 1);
          v15 = v23 + 24 * v24;
          v16 = *v14;
          *(v15 + 16) = *(v14 + 16);
          *v15 = v16;
          ++v24;
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v25, &v21);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
      mlir::Diagnostic::attachNote(v26, *(v20 + 24), 1);
    }

    v9 = CalleeAttr[3];
    v10 = *(v20 + 24);
    v11 = *(v19 + 24);
    v25 = &v19;
    v26[0] = &v20;
    v12 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v10, v11, v28, v8, v9, v8, v3, v5, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<llvm::LogicalResult mlir::ODIE::Compiler::CoreML::verifyMatchForParametricOp<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::InvokeOp>(mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::InvokeOp)::{lambda(mlir::Type)#1}>, &v25);
  }

  else
  {
    if (v29)
    {
      v6 = *(v19 + 24);
      v27 = 257;
      emitDiag(v6, 2, &v25, &v21);
      if (v21)
      {
        mlir::Diagnostic::operator<<<21ul>(v22, "no bindings provided");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v25, &v21);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
      mlir::Diagnostic::attachNote(v26, *(v20 + 24), 1);
    }

    v12 = 1;
  }

  if (v28 != v30)
  {
    free(v28);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verify(void ***this)
{
  v83 = *MEMORY[0x277D85DE8];
  if (mlir::Operation::hasAttr(*this, "sym_visibility", 0xEuLL))
  {
    LOWORD(v63) = 257;
    mlir::Operation::emitError(&v80, *this, v62);
    if (v80)
    {
      mlir::Diagnostic::operator<<<55ul>(v81, "graphs do not allow the default symbol visibility attr");
    }

LABEL_21:
    v15 = v82 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
    goto LABEL_22;
  }

  v2 = *this;
  v3 = *(*this + 11);
  v4 = &(*this)[2 * ((v3 >> 23) & 1) + 8];
  if (*(v4 + 40))
  {
    if (*(v4 + 8))
    {
      LOWORD(v63) = 257;
      mlir::Operation::emitError(&v80, v2, v62);
      if (v80)
      {
        mlir::Diagnostic::operator<<<48ul>(v81, "graphs marked 'externalize' must not be private");
      }

      goto LABEL_21;
    }

    v6 = *(v2 + 10);
    v5 = (v3 >> 21) & 0x7F8;
  }

  else
  {
    v5 = (v3 >> 21) & 0x7F8;
    v6 = *(v2 + 10);
    v7 = (((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v6);
    if (*v7 == v7)
    {
      LOWORD(v63) = 257;
      mlir::Operation::emitError(&v80, v2, v62);
      if (v80)
      {
        mlir::Diagnostic::operator<<<36ul>(v81, "non-private graphs must have a body");
      }

      goto LABEL_21;
    }
  }

  v8 = (((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v6);
  if (*v8 == v8)
  {
    v15 = 1;
    goto LABEL_22;
  }

  v9 = v8[1];
  if (v9)
  {
    v10 = v9 - 8;
  }

  else
  {
    v10 = 0;
  }

  v13 = *(v10 + 32);
  v12 = (v10 + 32);
  v11 = v13;
  if (v13 == v12 || !mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>((v11 + 6)) || (v14 = *v12, *(*(*v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id))
  {
    LOWORD(v63) = 257;
    mlir::Operation::emitError(&v80, *this, v62);
    if (v80)
    {
      mlir::Diagnostic::operator<<<40ul>(v81, "expected the 'coreml.output' terminator");
    }

    goto LABEL_21;
  }

  if ((*(v14 + 46) & 0x80) != 0)
  {
    v18 = *(v14 + 72);
    v19 = *(v14 + 68);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = v79;
  v77 = v79;
  v78 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,void>(&v77, v18, 0, v18, v19);
  v21 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 10] + 1);
  v22 = *(v21 + 16);
  v24 = *(v21 + 8);
  v23 = *(v21 + 12);
  v25 = v76;
  v74 = v76;
  v75 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v74, (v22 + 8 * v24), (v22 + 8 * v24 + 8 * v23));
  v26 = v78;
  v27 = v75;
  if (v78 != v75)
  {
    LOWORD(v63) = 257;
    mlir::Operation::emitError(&v80, *this, v62);
    if (v80)
    {
      mlir::Diagnostic::operator<<<10ul>(v81, "expected ");
    }

    v61[0] = v27;
    v49 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v80, v61);
    v50 = v49;
    if (*v49)
    {
      mlir::Diagnostic::operator<<<15ul>((v49 + 1), " results, got ");
    }

    v60[0] = v26;
    v51 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v50, v60);
    goto LABEL_65;
  }

  if (!v78)
  {
LABEL_53:
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    memset(v62, 0, sizeof(v62));
    goto LABEL_66;
  }

  v28 = v77;
  v29 = v74;
  v58 = v14;
  v59 = (v77 + 8 * v78);
  while (1)
  {
    v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(*v28);
    v32 = v31;
    v61[0] = v30;
    v61[1] = v31;
    v33 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(*v29);
    v60[0] = v33;
    v60[1] = v34;
    if (v30)
    {
      v35 = v33 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35 || (v36 = v33, *(*v30 + 136) != *(*v33 + 136)))
    {
      if (*v28 != *v29)
      {
        LOWORD(v63) = 257;
        mlir::Operation::emitError(&v80, *this, v62);
        if (v80)
        {
          mlir::Diagnostic::operator<<<15ul>(v81, "expected type ");
          if (v80)
          {
            mlir::Diagnostic::operator<<<mlir::Type const&>(v81, v29);
            if (v80)
            {
              mlir::Diagnostic::operator<<<7ul>(v81, ", got ");
              if (v80)
              {
                mlir::Diagnostic::operator<<<mlir::Type const&>(v81, v28);
              }
            }
          }
        }

        goto LABEL_64;
      }

      goto LABEL_35;
    }

    v37 = v34;
    (*(v32 + 24))(v32, v30);
    v38 = v25;
    v39 = v20;
    v41 = v40;
    (*(v37 + 24))(v37, v36);
    v35 = v41 == v42;
    v20 = v39;
    v25 = v38;
    v14 = v58;
    if (!v35)
    {
      goto LABEL_54;
    }

    v43 = (*(v32 + 24))(v32, v30);
    v45 = v44;
    v46 = (*(v37 + 24))(v37, v36);
    if (v45)
    {
      break;
    }

LABEL_35:
    ++v28;
    ++v29;
    if (v28 == v59)
    {
      goto LABEL_53;
    }
  }

  v47 = 8 * v45;
  while (*v46 == 0x8000000000000000 || *v46 == *v43)
  {
    ++v43;
    ++v46;
    v47 -= 8;
    if (!v47)
    {
      goto LABEL_35;
    }
  }

LABEL_54:
  LOWORD(v63) = 257;
  mlir::Operation::emitError(&v80, *this, v62);
  if (v80)
  {
    mlir::Diagnostic::operator<<<10ul>(v81, "expected ");
    if (v80)
    {
      mlir::Diagnostic::operator<<<mlir::ShapedType &>(v81, v60);
      if (v80)
      {
        mlir::Diagnostic::operator<<<7ul>(v81, ", got ");
        if (v80)
        {
          mlir::Diagnostic::operator<<<mlir::ShapedType &>(v81, v61);
        }
      }
    }
  }

LABEL_64:
  v51 = &v80;
LABEL_65:
  mlir::InFlightDiagnostic::InFlightDiagnostic(v62, v51);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
LABEL_66:
  v52 = BYTE8(v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v62);
  if (v52)
  {
    v15 = 0;
    goto LABEL_78;
  }

  v53 = *((*this)[2 * ((*(*this + 11) >> 23) & 1) + 10] + 1);
  if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(*(v53 + 16) & 0xFFFFFFFFFFFFFFF9 | 2, *(v53 + 8), (*(v53 + 16) + 8 * *(v53 + 8)) & 0xFFFFFFFFFFFFFFF9 | 2, *(v53 + 12)))
  {
    Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(this);
    if ((*(v14 + 46) & 0x80) != 0)
    {
      v56 = *(v14 + 68);
      v57 = *(v14 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
    }

    else
    {
      v56 = 0;
      v57 = 2;
    }

    if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(Arguments & 0xFFFFFFFFFFFFFFF9, v55, v57, v56))
    {
      v15 = 1;
      goto LABEL_78;
    }

    LOWORD(v63) = 257;
    mlir::Operation::emitError(&v80, *this, v62);
    if (v80)
    {
      mlir::Diagnostic::operator<<<61ul>(v81, "order of token outputs does not match order of handle inputs");
    }
  }

  else
  {
    LOWORD(v63) = 257;
    mlir::Operation::emitError(&v80, *this, v62);
    if (v80)
    {
      mlir::Diagnostic::operator<<<59ul>(v81, "number of handle inputs must match number of token outputs");
    }
  }

  v15 = v82 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
LABEL_78:
  if (v74 != v25)
  {
    free(v74);
  }

  if (v77 != v20)
  {
    free(v77);
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = 0;
    for (i = 0; i != a2; ++i)
    {
      if (*(*mlir::TypeRange::dereference_iterator(a1, i) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        ++v8;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
  if (a4)
  {
    v11 = 0;
    do
    {
      if (*(*mlir::TypeRange::dereference_iterator(a3, v11) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        ++v10;
      }

      ++v11;
    }

    while (a4 != v11);
  }

  return v8 == v10;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v18 = a1;
  *&v19 = a1;
  *(&v19 + 1) = a2;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v18);
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_0,std::bidirectional_iterator_tag>::findNextValid(&v28);
  v21 = v18;
  v22 = v19;
  v23 = v20;
  v8 = *(&v28 + 1);
  v28 = a3;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_1,std::bidirectional_iterator_tag>::findNextValid(&v28);
  v24 = a3;
  v25 = a4;
  v26 = a3;
  v27 = a4;
  llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_1,std::bidirectional_iterator_tag>::findNextValid(&v24);
  v20 = v30;
  v18 = v28;
  v19 = v29;
  v9 = v25;
  v31[0] = v21;
  v31[1] = v22;
  v32 = v23;
  v34 = v30;
  v33[0] = v28;
  v33[1] = v29;
  for (i = *(&v21 + 1); *(&v31[0] + 1) != v8; i = *(&v31[0] + 1))
  {
    v11 = *(&v33[0] + 1);
    if (*(&v33[0] + 1) == v9)
    {
      break;
    }

    v12 = mlir::ValueRange::dereference_iterator(v31, i);
    v13 = mlir::ValueRange::dereference_iterator(v33, v11);
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v13);
    if (HandleForToken)
    {
      v15 = HandleForToken == v12;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      result = 0;
      goto LABEL_10;
    }

    *(&v31[0] + 1) = i + 1;
    llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_0,std::bidirectional_iterator_tag>::findNextValid(v31);
    ++*(&v33[0] + 1);
    llvm::filter_iterator_base<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(mlir::ValueRange,mlir::ValueRange)::$_1,std::bidirectional_iterator_tag>::findNextValid(v33);
  }

  result = 1;
LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getInputIntents(mlir::ODIE::Compiler::CoreML::GraphOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getInputIntentsForFunctionLike(a2, v5, InterfaceFor, a3);
}

void mlir::ODIE::Compiler::CoreML::GraphOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::GraphOp *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  }

  else
  {
    InterfaceFor = 0;
  }

  mlir::ODIE::Compiler::CoreML::getOutputIntentsForFunctionLike(v4, InterfaceFor, a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::specialize(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  if (mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v6, InterfaceFor, a2, a3))
  {
    v9 = *a1;
    v10 = *a1 + 64;
    v20 = v22;
    v21 = 0x600000000;
    v11 = *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v11 + 8);
      v14 = 8 * v12;
      do
      {
        v15 = *v13;
        if (*a2 + 8 * *(a2 + 8) == llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(a2, *(*(*v13 + 8) + 16), *(*(*v13 + 8) + 24)))
        {
          llvm::SmallVectorTemplateBase<mlir::ODIE::Compiler::CoreML::ParamDeclAttr,true>::push_back(&v20, v15);
        }

        ++v13;
        v14 -= 8;
      }

      while (v14);
      v16 = v20;
      v17 = v21;
    }

    else
    {
      v17 = 0;
      v16 = v22;
    }

    *(v10 + 16 * ((*(v9 + 44) >> 23) & 1) + 32) = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***(v9 + 24) + 32), v16, v17, v8);
    if (v20 != v22)
    {
      free(v20);
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::readProperties(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if (v5)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  v7 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v7) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v7 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v7 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v7 + 3))
  {
    return 0;
  }

  if (v10)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v7 + 4))
    {
      return 0;
    }
  }

  else
  {
    v7[4] = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*(***a2 + 32), 0, 0, v8);
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v7 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v7 + 6))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v7 + 7);
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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
        llvm::getTypeName<mlir::ArrayAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ArrayAttr>();
        *algn_27FC187E8 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::ArrayAttr>(void)::Name;
        v16 = *algn_27FC187E8;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(uint64_t a1, void *a2)
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
    if (v5 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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
        llvm::getTypeName<mlir::UnitAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::UnitAttr>();
        unk_27FC18800 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::UnitAttr>(void)::Name;
        v16 = unk_27FC18800;
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

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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
        llvm::getTypeName<mlir::TypeAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypeAttr>();
        *algn_27FC18818 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::TypeAttr>(void)::Name;
        v16 = *algn_27FC18818;
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

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getModuleSymbolRef(mlir::ODIE::Compiler::CoreML::GraphOp *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v22 = mlir::SymbolRefAttr::get(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 120), 0, 0, a4);
  v23 = v25;
  v24 = 0x600000000;
  llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<mlir::FlatSymbolRefAttr const*,void>(&v23, &v22, &v23);
  v6 = *this;
  while (1)
  {
    v7 = *(v6 + 16);
    if (!v7)
    {
      break;
    }

    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v8)
    {
      break;
    }

    v6 = *(v8 + 16);
    if (!v6)
    {
      break;
    }

    if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
    {
LABEL_6:
      v9 = mlir::SymbolRefAttr::get(*(v6 + 16 * ((*(v6 + 44) >> 23) & 1) + 72), 0, 0, v5);
      llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v23, v9);
      while (1)
      {
        v10 = *(v6 + 16);
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = *(v10 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v11)
        {
          goto LABEL_12;
        }

        v6 = *(v11 + 16);
        if (!v6)
        {
          goto LABEL_12;
        }

        if (*(*(v6 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ModuleOp,void>::id)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_12:
  v12 = v23;
  v13 = v24;
  v14 = v23 + 8 * v24 - 8;
  if (v24)
  {
    v15 = v14 > v23;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = v23 + 8;
    do
    {
      v17 = *(v16 - 1);
      *(v16 - 1) = *v14;
      *v14 = v17;
      v14 -= 8;
      v18 = v16 >= v14;
      v16 += 8;
    }

    while (!v18);
    v12 = v23;
    v13 = v24;
  }

  v19 = mlir::SymbolRefAttr::get(*(*v12 + 8), v12 + 2, (8 * v13 - 8) >> 3, v5);
  if (v23 != v25)
  {
    free(v23);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verify(void ***this)
{
  v49 = *MEMORY[0x277D85DE8];
  v1 = (((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    goto LABEL_51;
  }

  v2 = v1[1];
  v3 = v2 - 8;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if (v4 == v3 + 32 || !mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(v4 + 48))
  {
    goto LABEL_51;
  }

  v6 = *(((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7[4];
  if ((*(v8 + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 68);
    v10 = *(v8 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v9 = 0;
    v10 = 2;
  }

  if ((mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(v7[6] & 0xFFFFFFFFFFFFFFF9, (v7[7] - v7[6]) >> 3, v10, v9) & 1) == 0)
  {
    LOWORD(v43) = 257;
    mlir::Operation::emitError(&v47, *this, v40);
    if (v47)
    {
      mlir::Diagnostic::operator<<<61ul>(v48, "order of token outputs does not match order of handle inputs");
    }

    goto LABEL_32;
  }

  v11 = *(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getArgAttrs(*this) + 16);
  v12 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v13 = *(v12 + 17);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getResAttrs(v12) + 16);
  v15 = *this;
  v16 = *(*this + 9);
  if (!v11 || v11 == v13)
  {
    if (v14 && v14 != v16)
    {
      LOWORD(v43) = 257;
      mlir::Operation::emitError(&v47, v15, v40);
      if (v47)
      {
        mlir::Diagnostic::operator<<<34ul>(v48, "expected number of result attrs (");
      }

      mlir::InFlightDiagnostic::operator<<<unsigned long const&>(&v47, v14);
      if (v47)
      {
        mlir::Diagnostic::operator<<<31ul>(v48, ") to match number of outputs (");
      }

      v17 = v16;
      goto LABEL_30;
    }

    ArgAttrs = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getArgAttrs(v15);
    v20 = *(ArgAttrs + 8);
    v21 = v20 + 8 * *(ArgAttrs + 16);
    ResAttrs = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getResAttrs(*this);
    v23 = *(ResAttrs + 8);
    v24 = v23 + 8 * *(ResAttrs + 16);
    v40[0] = v20;
    v40[1] = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    v41 = v23;
    v42 = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    v43 = v21;
    v44 = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    v45 = v24;
    v46 = mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke;
    while (v20 != v21 || v23 != v24 || v43 != v21 || v45 != v24)
    {
      v26 = &unk_286E806D8;
      do
      {
        v27 = *(v26 - 1);
        v28 = (v40 + (*v26 >> 1));
        if (*v26)
        {
          v27 = *(*v28 + v27);
        }

        v26 += 2;
        v29 = v27(v28);
      }

      while ((v30 & 1) == 0);
      mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v29 + 8), *(v29 + 8) + 16 * *(v29 + 16), "coreml.intent", 0xDuLL);
      if (v31)
      {
        v39[16] = 257;
        mlir::Operation::emitError(&v47, *this, v39);
        if (v47)
        {
          mlir::Diagnostic::operator<<<90ul>(v48, "intents cannot be supplied on IsolatedGroupOp; intents are derived from the contained ops");
        }

        goto LABEL_32;
      }

      v32 = &unk_286E806B8;
      v33 = 16;
      do
      {
        v34 = v33;
        v35 = *(v32 - 1);
        v36 = (v40 + (*v32 >> 1));
        if (*v32)
        {
          v35 = *(*v36 + v35);
        }

        if (v35(v36))
        {
          break;
        }

        v32 += 2;
        v33 = v34 - 16;
      }

      while (v34);
      v20 = v40[0];
      v23 = v41;
    }

LABEL_51:
    v18 = 1;
    goto LABEL_52;
  }

  LOWORD(v43) = 257;
  mlir::Operation::emitError(&v47, v15, v40);
  if (v47)
  {
    mlir::Diagnostic::operator<<<36ul>(v48, "expected number of argument attrs (");
  }

  mlir::InFlightDiagnostic::operator<<<unsigned long const&>(&v47, v11);
  if (v47)
  {
    mlir::Diagnostic::operator<<<30ul>(v48, ") to match number of inputs (");
  }

  v17 = v13;
LABEL_30:
  mlir::InFlightDiagnostic::operator<<<unsigned long const&>(&v47, v17);
  if (v47)
  {
    mlir::Diagnostic::operator<<<2ul>(v48, ")");
  }

LABEL_32:
  v18 = v48[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
LABEL_52:
  v37 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getArgAttrs(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this)
{
  if (*(this + 2 * ((*(this + 11) >> 23) & 1) + 8))
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  }

  else
  {
    return mlir::ArrayAttr::get(*(***(this + 3) + 32), 0, 0);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getResAttrs(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this)
{
  if (*(this + 2 * ((*(this + 11) >> 23) & 1) + 10))
  {
    return *(this + 2 * ((*(this + 11) >> 23) & 1) + 10);
  }

  else
  {
    return mlir::ArrayAttr::get(*(***(this + 3) + 32), 0, 0);
  }
}

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned long const&>(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v7 = 5;
    v8 = a2;
    v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v7, 1);
    v4 = *(a1 + 24) + 24 * *(a1 + 32);
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
    ++*(a1 + 32);
  }

  return a1;
}

void mlir::ODIE::Compiler::CoreML::deriveInputIntentsForBlock(mlir::ODIE::Compiler::CoreML *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = ((*(a2 + 7) - *(a2 + 6)) >> 3);
  v37 = v39;
  v38 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v37, v7, 0);
  v8 = *(a2 + 6);
  for (i = *(a2 + 7); v8 != i; ++v8)
  {
    v10 = *v8;
    v11 = **v8;
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = v11[2];
        v14 = llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,void>>::doCastIfPossible(v13);
        if (v14)
        {
          (*v15)(&v44, v15, v14, this);
          v16 = *(v13 + 72);
          v17 = *(v13 + 68);
          if (v17)
          {
            v18 = 32 * v17;
            v19 = v16 + 32 * v17;
            while (*(v16 + 24) != v10)
            {
              v16 += 32;
              v18 -= 32;
              if (!v18)
              {
                v16 = v19;
                break;
              }
            }
          }

          v20 = *(v16 + 16);
          v21 = (*(v20 + 46) & 0x80) != 0 ? *(v20 + 72) : 0;
          if (v46 == 1)
          {
            v22 = ((v16 - v21) >> 5);
            if (v12)
            {
              if (v12 != v44[v22])
              {
                v32 = "Expected operand ";
                v33 = 259;
                mlir::Operation::emitError(&v40, v13, &v32);
                if (v40)
                {
                  mlir::Diagnostic::operator<<(v41, *(*(v13 + 72) + 32 * v22 + 24));
                  if (v40)
                  {
                    mlir::Diagnostic::operator<<<17ul>(v41, " to have intent ");
                    if (v40)
                    {
                      v24 = *(v12 + 8);
                      if (v24 > 3)
                      {
                        v25 = 0;
                        v26 = &str_56;
                      }

                      else
                      {
                        v25 = qword_25D09F678[v24];
                        v26 = off_2799BDB08[v24];
                      }

                      v36 = 261;
                      v34 = v26;
                      v35 = v25;
                      mlir::Diagnostic::operator<<(v41, &v34);
                      if (v40)
                      {
                        mlir::Diagnostic::operator<<<10ul>(v41, " but got ");
                        if (v40)
                        {
                          v27 = v44[v22];
                          LODWORD(v34) = 0;
                          v35 = v27;
                          v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v42, &v34, 1);
                          v29 = v42 + 24 * v43;
                          v30 = *v28;
                          *(v29 + 16) = *(v28 + 16);
                          *v29 = v30;
                          ++v43;
                          if (v40)
                          {
                            mlir::Diagnostic::operator<<<2ul>(v41, ".");
                          }
                        }
                      }
                    }
                  }
                }

                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
                if ((v46 & 1) != 0 && v44 != v45)
                {
                  free(v44);
                }

                v23 = 0;
                *a3 = 0;
                goto LABEL_42;
              }
            }

            else
            {
              v12 = v44[v22];
            }

            if (v44 != v45)
            {
              free(v44);
            }
          }
        }

        v11 = *v11;
      }

      while (v11);
      if (v12)
      {
        *(v37 + *(*v8 + 6)) = v12;
      }
    }
  }

  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  if (v38)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a3, &v37);
  }

  v23 = 1;
LABEL_42:
  *(a3 + 64) = v23;
  if (v37 != v39)
  {
    free(v37);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::deriveOutputIntentsForBlock(mlir::SymbolTableCollection *a1@<X1>, uint64_t a2@<X8>)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 4);
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 68);
  }

  else
  {
    v6 = 0;
  }

  v35 = v37;
  v36 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v35, v6, 0);
  if ((*(v5 + 46) & 0x80) == 0)
  {
    goto LABEL_48;
  }

  v7 = *(v5 + 68);
  if (!v7)
  {
    goto LABEL_48;
  }

  v8 = *(v5 + 72);
  v9 = v8 + 32 * v7;
  do
  {
    v10 = *(v8 + 24);
    if ((~*(v10 + 8) & 7) == 0)
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_45;
    }

    v11 = *(v10 + 8) & 7;
    if (v11 == 6)
    {
      v12 = v10 + 24 * *(v10 + 16);
      v13 = v12 + 120;
      if (v12 == -120)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = v10 + 16 * v11 + 16;
    }

    if (!llvm::DefaultDoCastIfPossible<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,llvm::CastInfo<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::Operation *,void>>::doCastIfPossible(v13))
    {
      goto LABEL_45;
    }

    v15 = *(v13 + 36);
    v16 = v13 - 16;
    if (v15)
    {
      v17 = v13 - 16;
    }

    else
    {
      v17 = 0;
    }

    if (!v15)
    {
      v17 = 0;
      goto LABEL_36;
    }

    v18 = 0;
    v19 = *(v8 + 24);
    v20 = v13 - 16;
    do
    {
      if (!v18)
      {
        if (v17 == v19)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      v21 = *(v13 - 8) & 7;
      v22 = v13 - 16;
      v23 = v18;
      if (v21 != 6)
      {
        v24 = (5 - v21);
        v25 = v20;
        v23 = v18 - v24;
        if (v18 <= v24)
        {
          goto LABEL_25;
        }

        v22 = v16 - 16 * v24;
      }

      v25 = v22 - 24 * v23;
LABEL_25:
      if (v25 == v19)
      {
        goto LABEL_30;
      }

LABEL_28:
      ++v18;
      v20 -= 16;
    }

    while (v15 != v18);
    v18 = *(v13 + 36);
LABEL_30:
    v26 = *(v13 - 8) & 7;
    if (v26 == 6)
    {
LABEL_33:
      v17 = v16 - 24 * v18;
    }

    else
    {
      v27 = (5 - v26);
      if (v18 > v27)
      {
        v16 -= 16 * v27;
        v18 -= v27;
        goto LABEL_33;
      }

      v17 = v16 - 16 * v18;
    }

LABEL_36:
    (*(v14 + 8))(&v32);
    if (v34 == 1)
    {
      v28 = *(v17 + 8) & 7;
      if (v17 && v28 == 6)
      {
        v28 = (*(v17 + 16) + 6);
      }

      v29 = *(v8 + 16);
      if ((*(v29 + 46) & 0x80) != 0)
      {
        v30 = *(v29 + 72);
      }

      else
      {
        v30 = 0;
      }

      *(v35 + ((v8 - v30) >> 5)) = *(v32 + v28);
      if ((v34 & 1) != 0 && v32 != &v33)
      {
        free(v32);
      }
    }

LABEL_45:
    v8 += 32;
  }

  while (v8 != v9);
LABEL_48:
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v36)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v35);
  }

  *(a2 + 64) = 1;
  if (v35 != v37)
  {
    free(v35);
  }

  v31 = *MEMORY[0x277D85DE8];
}