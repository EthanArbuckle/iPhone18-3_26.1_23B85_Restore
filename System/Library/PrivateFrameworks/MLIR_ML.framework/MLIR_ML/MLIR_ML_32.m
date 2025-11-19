uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v12, a2, a3, a4, a5);
  v10 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 4) != 0)
    {
      if ((v13 & 2) != 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v12[0];
      }

      result = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v12[0], v12[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mpsx::VarHandleOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
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
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>(uint64_t a1)
{
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v27;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v22 = v1;
    v28 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v1 = v22;
    a1 = v28;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v23 = v1;
    v29 = a1;
    v18 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v24 = v1;
    v30 = a1;
    v15 = v3;
    v19 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v3 = v15;
    v2 = v19;
    v1 = v24;
    a1 = v30;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v26 = v1;
    v32 = a1;
    v17 = v3;
    v21 = v2;
    v12 = v5;
    v14 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v12;
    v4 = v14;
    v3 = v17;
    v2 = v21;
    v1 = v26;
    a1 = v32;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mpsx::VarHandleOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::mpsx::VarHandleOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

void mlir::Dialect::addAttribute<mlir::mpsx::FusionTypeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mpsx::FusionTypeAttr,mlir::Attribute,mlir::mpsx::detail::FusionTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSD_6detail21FusionTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSC_6detail21FusionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
  v21 = "mpsx.fusion_type";
  v22 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, &v10);
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx14FusionTypeAttrES2_NSC_6detail21FusionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail21FusionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14FusionTypeAttrEJNS2_10FusionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(uint64_t result, unint64_t *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_38;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 < v7)
    {
      if (*(result + 12) < v7)
      {
        *(result + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (!v8)
      {
        v27 = result;
        v8 = 0;
LABEL_35:
        if (v7 != v8)
        {
          memcpy((*v27 + 16 * v8), (*a2 + 16 * v8), 16 * (v7 - v8));
        }

        result = v27;
        *(v27 + 8) = v7;
        goto LABEL_38;
      }

      v12 = *result;
      v13 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v13 >= 9)
      {
        if (v12 >= v2 + 16 * v8 || (v14 = *a2, v2 >= &v12[2 * v8]))
        {
          v28 = v13 + 1;
          v29 = 2 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
          v30 = &v12[v29];
          v14 = (v2 + v29 * 8);
          v31 = (v2 + 32);
          v32 = v12 + 4;
          v33 = v28 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v35 = *(v31 - 2);
            v34 = *(v31 - 1);
            v37 = *v31;
            v36 = v31[1];
            v31 += 4;
            *(v32 - 2) = v35;
            *(v32 - 1) = v34;
            *v32 = v37;
            v32[1] = v36;
            v32 += 4;
            v33 -= 4;
          }

          while (v33);
          v12 = v30;
          if (v28 == (v28 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v14 = *a2;
      }

      v38 = (v2 + 16 * v8);
      do
      {
        *v12 = *v14;
        v12[1] = v14[1];
        v14 += 2;
        v12 += 2;
      }

      while (v14 != v38);
LABEL_34:
      v27 = result;
      goto LABEL_35;
    }

    if (v7)
    {
      v9 = *result;
      v10 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v10 >= 9)
      {
        v15 = v9 >= v2 + 16 * v7 || v2 >= &v9[2 * v7];
        v11 = *a2;
        if (v15)
        {
          v16 = v10 + 1;
          v17 = 2 * (v16 & 0x1FFFFFFFFFFFFFFCLL);
          v18 = &v9[v17];
          v11 = (v2 + v17 * 8);
          v19 = (v2 + 32);
          v20 = v9 + 4;
          v21 = v16 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = *(v19 - 2);
            v22 = *(v19 - 1);
            v25 = *v19;
            v24 = v19[1];
            v19 += 4;
            *(v20 - 2) = v23;
            *(v20 - 1) = v22;
            *v20 = v25;
            v20[1] = v24;
            v20 += 4;
            v21 -= 4;
          }

          while (v21);
          v9 = v18;
          if (v16 == (v16 & 0x1FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v11 = *a2;
      }

      v26 = (v2 + 16 * v7);
      do
      {
        *v9 = *v11;
        v9[1] = v11[1];
        v11 += 2;
        v9 += 2;
      }

      while (v11 != v26);
    }

LABEL_25:
    *(result + 8) = v7;
LABEL_38:
    *v6 = 0;
  }

  return result;
}

void mlir::mpsx::MPSXOpFolderDialectInterface::~MPSXOpFolderDialectInterface(mlir::mpsx::MPSXOpFolderDialectInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

void mlir::Dialect::addType<mlir::mpsx::ListType>(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  {
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
  }

  v2 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  mlir::AbstractType::get<mlir::mpsx::ListType>(a1, v11);
  mlir::Dialect::addType(a1, v2, v11);
  v3 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v4 = v15;
      }

      else
      {
        v4 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1]);
    }
  }

  v5 = v12;
  if (v13)
  {
    v6 = 16 * v13;
    v7 = (v12 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v12;
  }

  if (v5 != &v14)
  {
    free(v5);
  }

  v9 = *(a1 + 32);
  {
    v10 = v9;
    mlir::Dialect::addType<mlir::mpsx::ListType>();
    v9 = v10;
  }

  mlir::MLIRContext::getTypeUniquer(v9);
  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

void mlir::AbstractType::get<mlir::mpsx::ListType>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v16 = 0x300000000;
  *&v12 = mlir::detail::StorageUserBase<mlir::mpsx::ListType,mlir::Type,mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v14 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v15 = v17;
  {
    v9 = a1;
    mlir::Dialect::addType<mlir::mpsx::ListType>();
    a1 = v9;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id;
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v16)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v15);
  }

  v4 = v14;
  *(a2 + 96) = v14;
  if (v4 >= 8)
  {
    if ((v4 & 2) != 0 && (v4 & 4) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 8))(a2 + 72, &v12);
      (*((*(a2 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(&v12);
    }

    else
    {
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
    }
  }

  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx8ListTypeES2_NSD_6detail29TypeWithStaticSubtypesStorageILj1EEENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  *(a2 + 112) = &v11;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_4mpsx8ListTypeES2_NSC_6detail29TypeWithStaticSubtypesStorageILj1EEENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  *(a2 + 128) = &v10;
  *(a2 + 136) = v3;
  *(a2 + 144) = "mpsx.list_type";
  *(a2 + 152) = 14;
  v5 = v15;
  if (v16)
  {
    v6 = 16 * v16;
    v7 = (v15 + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      free(v8);
      v6 -= 16;
    }

    while (v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

BOOL mlir::mpsx::anonymous namespace::qimpl::isFPType(void *a1)
{
  v1 = *(*mlir::getElementTypeOrSelf(a1) + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v1 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v1 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

BOOL mlir::mpsx::anonymous namespace::qimpl::verifyAffineQuant(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v41 = a6;
  v11 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
  {
    v38 = 0;
    v39 = 0;
    return 1;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  v38 = v11;
  v39 = v12;
  if (!v11 || !mlir::ShapedType::hasRank(&v38))
  {
    return 1;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v35 = 0;
    if ((a6 & 0x100000000) == 0)
    {
LABEL_8:
      v42[0] = &v41;
      v42[1] = &v40;
      v42[2] = &v35;
      v43 = &v38;
    }

    mlir::ShapedType::getShape(&v38);
    if (a6 < 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 + a6;
    if ((v26 & 0x80000000) == 0)
    {
      v27 = v26 & 0x7FFFFFFF;
      mlir::ShapedType::getShape(&v38);
      if (v27 <= v28)
      {
        v35 = *(mlir::ShapedType::getShape(&v38) + 8 * v27);
        goto LABEL_8;
      }
    }

    v37 = 259;
    mlir::Operation::emitOpError(v42, a1, v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    v15 = result;
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
      result = v15;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v15;
      }

      v29 = __p;
      if (__p)
      {
        v30 = v48;
        v31 = __p;
        if (v48 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v48 = v29;
        operator delete(v31);
        result = v15;
      }

      v19 = v45;
      if (!v45)
      {
        goto LABEL_54;
      }

      v32 = v46;
      v21 = v45;
      if (v46 == v45)
      {
LABEL_53:
        v46 = v19;
        operator delete(v21);
        result = v15;
LABEL_54:
        if (v43 != &v44)
        {
          free(v43);
          return v15;
        }

        return result;
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

      while (v32 != v19);
LABEL_52:
      v21 = v45;
      goto LABEL_53;
    }
  }

  else
  {
    v36[0] = "input and zeroPoint types must match";
    v37 = 259;
    mlir::Operation::emitOpError(v42, a1, v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    v15 = result;
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
      result = v15;
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v48;
        v18 = __p;
        if (v48 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v48 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v45;
      if (!v45)
      {
        goto LABEL_54;
      }

      v20 = v46;
      v21 = v45;
      if (v46 == v45)
      {
        goto LABEL_53;
      }

      do
      {
        v23 = *--v20;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          MEMORY[0x259C63150](v22, 0x1000C8077774924);
        }
      }

      while (v20 != v19);
      goto LABEL_52;
    }
  }

  return result;
}

uint64_t mlir::mpsx::anonymous namespace::qimpl::verifyAffineQuant(mlir::Operation *,mlir::Value,mlir::Value,mlir::Value,mlir::Value,std::optional<int>)::$_0::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
  }

  v79[0] = v5;
  v79[1] = v6;
  if (*(*a1 + 4) == 1)
  {
    if (mlir::ShapedType::hasRank(v79))
    {
      mlir::ShapedType::getShape(v79);
      if (v7 >= 2)
      {
        v8 = **(a1 + 8);
        v78 = 257;
        mlir::Operation::emitOpError(&v82, v8, v77);
        if (v82)
        {
          mlir::Diagnostic::operator<<(v83, a2);
          if (v82)
          {
            LODWORD(v80) = 3;
            *(&v80 + 1) = " rank must be 0 or 1";
            v81 = 20;
            if (v85 >= v86)
            {
              if (v84 > &v80 || v84 + 24 * v85 <= &v80)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v9 = v84 + 24 * v85;
            v10 = v80;
            *(v9 + 2) = v81;
            *v9 = v10;
            ++v85;
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
        v12 = result;
        if (v82)
        {
          mlir::InFlightDiagnostic::report(&v82);
          result = v12;
        }

        if (v93 == 1)
        {
          if (v92 != &v93)
          {
            free(v92);
            result = v12;
          }

          v13 = __p;
          if (__p)
          {
            v14 = v91;
            v15 = __p;
            if (v91 != __p)
            {
              do
              {
                v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
              }

              while (v14 != v13);
              v15 = __p;
            }

            v91 = v13;
            operator delete(v15);
            result = v12;
          }

          v16 = v88;
          if (!v88)
          {
            goto LABEL_97;
          }

          v17 = v89;
          v18 = v88;
          if (v89 == v88)
          {
LABEL_96:
            v89 = v16;
            operator delete(v18);
            result = v12;
LABEL_97:
            if (v84 != &v87)
            {
              free(v84);
              return v12;
            }

            return result;
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
LABEL_95:
          v18 = v88;
          goto LABEL_96;
        }

        return result;
      }
    }

    if (v79[0] && **(a1 + 16) != 0x8000000000000000 && mlir::ShapedType::hasRank(v79))
    {
      Shape = mlir::ShapedType::getShape(v79);
      if (v33)
      {
        v34 = 8 * v33;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v34 -= 8;
          if (!v34)
          {
            goto LABEL_49;
          }
        }

        return 1;
      }

LABEL_49:
      v35 = mlir::ShapedType::getShape(v79);
      if (mlir::ShapedType::getNumElements(v35, v36) != **(a1 + 16))
      {
        v37 = mlir::ShapedType::getShape(v79);
        result = mlir::ShapedType::getNumElements(v37, v38);
        if (result == 1)
        {
          return result;
        }

        v39 = **(a1 + 8);
        v78 = 257;
        mlir::Operation::emitOpError(&v82, v39, v77);
        if (v82)
        {
          mlir::Diagnostic::append<char const(&)[22]>(v83, "input and ");
          if (v82)
          {
            mlir::Diagnostic::operator<<(v83, a2);
            if (v82)
            {
            }
          }
        }

        v40 = &v82;
        goto LABEL_102;
      }
    }

    return 1;
  }

  if (!v5 || !mlir::ShapedType::hasRank(v79))
  {
    return 1;
  }

  v21 = mlir::ShapedType::getShape(v79);
  if (v22)
  {
    v23 = 8 * v22;
    while (*v21 != 0x8000000000000000)
    {
      ++v21;
      v23 -= 8;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    return 1;
  }

LABEL_33:
  mlir::ShapedType::getShape(v79);
  if (v24 <= 1)
  {
    v25 = mlir::ShapedType::getShape(v79);
    result = mlir::ShapedType::getNumElements(v25, v26);
    if (result == 1)
    {
      return result;
    }

    v27 = **(a1 + 8);
    v78 = 257;
    mlir::Operation::emitOpError(&v82, v27, v77);
    v29 = v28;
    if (*v28)
    {
      mlir::Diagnostic::operator<<((v28 + 1), a2);
      if (*v29)
      {
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v82)
    {
      v30 = result;
      mlir::InFlightDiagnostic::report(&v82);
      result = v30;
    }

    if (v93 != 1)
    {
      return result;
    }

    v31 = result;
    mlir::Diagnostic::~Diagnostic(v83);
    return v31;
  }

  if (mlir::ShapedType::hasRank(*(a1 + 24)))
  {
    mlir::ShapedType::getShape(*(a1 + 24));
    v42 = v41;
    mlir::ShapedType::getShape(v79);
    if (v42 != v43)
    {
      v74 = **(a1 + 8);
      v78 = 257;
      mlir::Operation::emitOpError(&v82, v74, v77);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v82, "ND ");
      if (*v75)
      {
        v76 = v75;
        mlir::Diagnostic::operator<<((v75 + 1), a2);
        v75 = v76;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v75, " rank differs from input rank");
LABEL_102:
      v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
      return v31;
    }
  }

  mlir::ShapedType::getShape(*(a1 + 24));
  if (!v44)
  {
    return 1;
  }

  v45 = 0;
  while (1)
  {
    v47 = 8 * v45;
    v48 = *(mlir::ShapedType::getShape(*(a1 + 24)) + v47);
    v49 = *(mlir::ShapedType::getShape(v79) + v47);
    v50 = v48 == 0x8000000000000000 || v49 == 0x8000000000000000;
    if (!v50 && v48 % v49)
    {
      break;
    }

    ++v45;
    mlir::ShapedType::getShape(*(a1 + 24));
    result = 1;
    if (v45 >= v46)
    {
      return result;
    }
  }

  v51 = **(a1 + 8);
  v78 = 257;
  mlir::Operation::emitOpError(&v82, v51, v77);
  if (v82)
  {
    mlir::Diagnostic::operator<<(v83, a2);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v82, " shape not compatible with input for axis ");
  if (*v52)
  {
    v53 = *(v52 + 24);
    LODWORD(v80) = 5;
    *(&v80 + 1) = v45;
    v54 = *(v52 + 32);
    if (v54 >= *(v52 + 36))
    {
      if (v53 > &v80 || v53 + 24 * v54 <= &v80)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v55 = v53 + 24 * *(v52 + 32);
    v56 = v80;
    *(v55 + 16) = v81;
    *v55 = v56;
    ++*(v52 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v52, ": ");
  if (*v57)
  {
    v58 = *(v57 + 24);
    LODWORD(v80) = 2;
    *(&v80 + 1) = v48;
    v59 = *(v57 + 32);
    if (v59 >= *(v57 + 36))
    {
      if (v58 > &v80 || v58 + 24 * v59 <= &v80)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v60 = v58 + 24 * *(v57 + 32);
    v61 = v80;
    *(v60 + 16) = v81;
    *v60 = v61;
    ++*(v57 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v57, " % ");
  if (*v62)
  {
    v63 = *(v62 + 24);
    LODWORD(v80) = 2;
    *(&v80 + 1) = v49;
    v64 = *(v62 + 32);
    if (v64 >= *(v62 + 36))
    {
      if (v63 > &v80 || v63 + 24 * v64 <= &v80)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v65 = v63 + 24 * *(v62 + 32);
    v66 = v80;
    *(v65 + 16) = v81;
    *v65 = v66;
    ++*(v62 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v62, " != 0");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
  v12 = result;
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
    result = v12;
  }

  if (v93)
  {
    if (v92 != &v93)
    {
      free(v92);
      result = v12;
    }

    v68 = __p;
    if (__p)
    {
      v69 = v91;
      v70 = __p;
      if (v91 != __p)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = __p;
      }

      v91 = v68;
      operator delete(v70);
      result = v12;
    }

    v16 = v88;
    if (!v88)
    {
      goto LABEL_97;
    }

    v71 = v89;
    v18 = v88;
    if (v89 == v88)
    {
      goto LABEL_96;
    }

    do
    {
      v73 = *--v71;
      v72 = v73;
      *v71 = 0;
      if (v73)
      {
        MEMORY[0x259C63150](v72, 0x1000C8077774924);
      }
    }

    while (v71 != v16);
    goto LABEL_95;
  }

  return result;
}

void mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeights(mlir::DictionaryAttr *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = mlir::DictionaryAttr::begin(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v2, (v3 - 16), *(*(*(a1 + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

void mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(mlir::DictionaryAttr *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = mlir::DictionaryAttr::begin(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v2, (v3 - 16), *(*(*(a1 + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

double mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char *__s, uint64_t *a3, char *a4, char *a5, unint64_t *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v15 = *(a1 + 16);
  a1 += 16;
  v14 = v15;
  LODWORD(v26) = 3;
  *(&v26 + 1) = __s;
  v27 = v12;
  v16 = *(a1 + 8);
  if (v16 >= *(a1 + 12))
  {
    if (v14 > &v26 || v14 + 24 * v16 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v14 + 24 * *(v13 + 24);
  v18 = v26;
  *(v17 + 16) = v27;
  *v17 = v18;
  v19 = *(v13 + 28);
  v20 = *(v13 + 24) + 1;
  *(v13 + 24) = v20;
  v21 = *a3;
  LODWORD(v26) = 2;
  *(&v26 + 1) = v21;
  v22 = *(v13 + 16);
  if (v20 >= v19)
  {
    if (v22 > &v26 || v22 + 24 * v20 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v23 = v22 + 24 * *(v13 + 24);
  v24 = v26;
  *(v23 + 16) = v27;
  *v23 = v24;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[47],char const(&)[9],long long &>(v13, a4, a5, a6);
}

double mlir::Diagnostic::append<char const(&)[47],char const(&)[9],long long &>(uint64_t a1, char *__s, char *a3, unint64_t *a4)
{
  v8 = strlen(__s);
  v9 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = v8;
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    if (v9 > &v14 || v9 + 24 * v10 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v9 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  *&result = mlir::Diagnostic::append<char const(&)[9],long long &>(a1, a3, a4).n128_u64[0];
  return result;
}

__n128 mlir::Diagnostic::append<char const(&)[9],long long &>(uint64_t a1, char *__s, unint64_t *a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v9 = *(a1 + 16);
  a1 += 16;
  v8 = v9;
  v19.n128_u32[0] = 3;
  v19.n128_u64[1] = __s;
  v20 = v6;
  v10 = *(a1 + 8);
  if (v10 >= *(a1 + 12))
  {
    if (v8 > &v19 || v8 + 24 * v10 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = (v8 + 24 * *(v7 + 24));
  v12 = v19;
  v11[1].n128_u64[0] = v20;
  *v11 = v12;
  v13 = *(v7 + 28);
  v14 = *(v7 + 24) + 1;
  *(v7 + 24) = v14;
  v15 = *a3;
  v19.n128_u32[0] = 2;
  v19.n128_u64[1] = v15;
  v16 = *(v7 + 16);
  if (v14 >= v13)
  {
    if (v16 > &v19 || v16 + 24 * v14 <= &v19)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = (v16 + 24 * *(v7 + 24));
  result = v19;
  v17[1].n128_u64[0] = v20;
  *v17 = result;
  ++*(v7 + 24);
  return result;
}

void mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeights(mlir::DictionaryAttr *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = mlir::DictionaryAttr::begin(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v2 + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

void mlir::mpsx::QuantizedConv2DOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(mlir::DictionaryAttr *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = mlir::DictionaryAttr::begin(a1);
  v3 = mlir::DictionaryAttr::end(a1);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>((v2 + 64), (v3 - 64), *(*(*(a1 + 1) + 96) + 40));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> * mlir::StorageUniquer::get<mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u>,std::array<mlir::Type,1ul> &>(llvm::function_ref<void ()(mlir::mpsx::detail::TypeWithStaticSubtypesStorage<1u> *)>,mlir::TypeID,std::array<mlir::Type,1ul> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, void *a2)
{
  v2 = *a1;
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
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  Slow[1] = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir4mpsx6detail29TypeWithStaticSubtypesStorageILj1EEEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_8ListTypeEJRNSt3__15arrayINS1_4TypeELm1EEEEEENSE_9enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS6_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::ANEOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::GPUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::mpsx::CPUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

uint64_t *llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mpsx::StitchedOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t *result, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id)
  {
    v2 = *result;
    v3 = *(*result + 8);
    if (v3 >= *(*result + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v2 + 8 * v3) = *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    ++*(v2 + 8);
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), Slow);
  }

  return Slow;
}

void OUTLINED_FUNCTION_10_1(void **a1@<X8>, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, mlir::Operation *);
  v3 = a1;
  LOWORD(v8) = 259;

  mlir::OpState::emitOpError(va1, va, va2);
}

void OUTLINED_FUNCTION_11_0(void **a1@<X8>, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, mlir::Operation *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a2 = a1;
  a6 = 259;

  mlir::OpState::emitOpError(&a12, &a2, &a15);
}

void OUTLINED_FUNCTION_14_1(void **a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v8 = a1;
  LOWORD(v13) = 259;

  mlir::OpState::emitOpError(v6, va, va1);
}

void OUTLINED_FUNCTION_34_1()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  result = *(v0 - 8);
  *(v0 - 8) = 0;
  return result;
}

void OUTLINED_FUNCTION_64_0(void **a1@<X8>, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, mlir::Operation *);
  v3 = a1;
  LOWORD(v8) = 259;

  mlir::OpState::emitOpError(va1, va, va2);
}

void OUTLINED_FUNCTION_69_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(va, 4);
}

void OUTLINED_FUNCTION_70_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(va, 4);
}

void OUTLINED_FUNCTION_71_0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_72_0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_73_0()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_74_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, mlir::Operation *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a13 = 259;

  mlir::OpState::emitOpError(&a19, &a9, &a22);
}

void OUTLINED_FUNCTION_75_0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_91_0()
{

  JUMPOUT(0x259C63150);
}

void OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(va, 5);
}

void OUTLINED_FUNCTION_93_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(va, 5);
}

BOOL mlir::mpsx::isMPSXType(uint64_t a1)
{
  v1 = *(*a1 + 136);
  {
    v6 = v1;
    v7 = a1;
    mlir::mpsx::isMPSXType();
    v1 = v6;
    a1 = v7;
  }

  if (v1 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  v2 = *(*a1 + 136);
  v3 = v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v4 = v3 ? a1 : 0;
  v9 = v4;
  if (!v3)
  {
    return 0;
  }

  ElementType = mlir::TensorType::getElementType(&v9);
  return mlir::Type::isIntOrFloat(&ElementType);
}

uint64_t mlir::mpsx::MPSXDialect::parseType(mlir::mpsx::MPSXDialect *this, mlir::DialectAsmParser *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  if (!mlir::AsmParser::parseKeyword(a2, &v20))
  {
    return 0;
  }

  v4 = (*(*a2 + 16))(a2);
  v5 = (*(*a2 + 48))(a2, v4);
  if (v21 != 4)
  {
    v6 = v20;
    goto LABEL_12;
  }

  v6 = v20;
  if (*v20 != 1953720684)
  {
LABEL_12:
    v26 = 1283;
    v23 = "unknown MPS type: ";
    v25[0] = v6;
    v25[1] = v21;
    mlir::emitError(v5, &v23, v27);
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

      v8 = __p;
      if (__p)
      {
        v9 = v33;
        v10 = __p;
        if (v33 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v33 = v8;
        operator delete(v10);
      }

      v11 = v30;
      if (v30)
      {
        v12 = v31;
        v13 = v30;
        if (v31 != v30)
        {
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
          v13 = v30;
        }

        v31 = v11;
        operator delete(v13);
      }

      if (v28 != &v29)
      {
        free(v28);
      }
    }

    return 0;
  }

  v7 = *(this + 4);
  if (((*(*a2 + 160))(a2) & 1) == 0)
  {
    return 0;
  }

  v23 = v25;
  v24 = 0x100000000;
  do
  {
    v22 = 0;
    if (!mlir::AsmParser::parseType<mlir::Type>(a2, &v22))
    {
      result = 0;
      goto LABEL_38;
    }

    if (v24 >= HIDWORD(v24))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v23 + v24) = v22;
    LODWORD(v24) = v24 + 1;
  }

  while (((*(*a2 + 128))(a2) & 1) != 0);
  v17 = (*(*a2 + 168))(a2);
  v18 = v17;
  result = 0;
  if ((v18 & 1) != 0 && v24 == 1)
  {
    result = mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get(v23, 1, v7);
  }

LABEL_38:
  if (v23 != v25)
  {
    v19 = result;
    free(v23);
    return v19;
  }

  return result;
}

void *mlir::mpsx::MPSXDialect::printType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*a2 + 136);
    {
      v12 = a2;
      mlir::mpsx::isMPSXType();
      a2 = v12;
    }

    if (v4 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*a3 + 16))(a3);
  v7 = v6[4];
  if (v6[3] - v7 > 3uLL)
  {
    *v7 = 1953720684;
    v6[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v6, "list", 4uLL);
  }

  v8 = (*(*a3 + 16))(a3);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, "<", 1uLL);
  }

  else
  {
    *v9 = 60;
    ++v8[4];
  }

  (*(*a3 + 32))(a3, *(v5 + 8));
  result = (*(*a3 + 16))(a3);
  v11 = result[4];
  if (result[3] == v11)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v11 = 62;
    ++result[4];
  }

  return result;
}

BOOL mlir::AsmParser::parseType<mlir::Type>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  *a2 = v18;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::ElementsAttr::getValues<llvm::APInt>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ShapedType = mlir::ElementsAttr::getShapedType(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<llvm::APInt>(a1, v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, a1[1]);
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, ShapedType, v6, v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12[0] & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*@<X0>(uint64_t a1@<X0>, llvm::APInt *a2@<X8>)
{
  v3 = *(a1 + 1) == 0;
  v6 = a1 + 8;
  result = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (*a1 != 1)
  {
    return (*(*result + 24))(result, v7);
  }

  v8 = (result + 16 * v7);
  v9 = *(v8 + 2);
  *(a2 + 2) = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, v8);
  }

  *a2 = *v8;
  return result;
}

void *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(unsigned int *a1, unint64_t a2)
{
  v3 = a1[2];
  v4 = *a1;
  if (v3 >= a1[3])
  {
    if (v4 > a2 || v4 + 32 * v3 <= a2)
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow();
  }

  v5 = v4 + 32 * a1[2];
  v7 = *(a2 + 8);
  v6 = (a2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v7)
  {
    result = llvm::detail::DoubleAPFloat::DoubleAPFloat((v5 + 8), v6);
  }

  else
  {
    result = llvm::detail::IEEEFloat::IEEEFloat((v5 + 8), v6);
  }

  ++a1[2];
  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = *(result + 32);
    *(result + 32) = 0;
    if (v1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
    }
  }

  if ((*result & 1) == 0)
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(v3);
      return v4;
    }
  }

  return result;
}

unsigned int *llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(unsigned int *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v5 = &v2[8 * v3 - 6];
    v6 = -32 * v3;
    do
    {
      if (v4 == *v5)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 = (v7 - 32);
      v6 += 32;
    }

    while (v6);
    v2 = *a1;
  }

  if (v2 != a1 + 4)
  {
    free(v2);
  }

  return a1;
}

void *mlir::createElementsAttr<BOOL>(void *a1, uint64_t a2, size_t a3)
{
  v20[5] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = ((a3 - (a3 != 0)) >> 3) + 1;
  }

  else
  {
    v6 = 0;
  }

  v18 = v20;
  v19 = xmmword_2573695B0;
  if (v6)
  {
    if (v6 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    bzero(v18, v6);
    *&v19 = v6;
  }

  if (a3)
  {
    if (a3 >= 0x29)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    bzero(v16, a3);
    v9 = 0;
    do
    {
      v16[v9] = *(a2 + v9);
      ++v9;
    }

    while (a3 != v9);
    v7 = a3;
    v8 = v18;
    if (a3 == 1)
    {
      if (v16[0])
      {
        v10 = -1;
      }

      else
      {
        v10 = 0;
      }

      *v18 = v10;
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0;
    v8 = v18;
  }

  v11 = v19;
  if (v19)
  {
    v12 = v17;
    do
    {
      if (v7)
      {
        v13 = *(v12 - 3);
        if (v7 > 1)
        {
          v13 |= 2 * *(v12 - 2);
          if (v7 != 2)
          {
            v13 |= 4 * *(v12 - 1);
            if (v7 != 3)
            {
              v13 |= 8 * *v12;
              if (v7 != 4)
              {
                v13 |= 16 * v12[1];
                if (v7 != 5)
                {
                  v13 |= 32 * v12[2];
                  if (v7 != 6)
                  {
                    v13 |= v12[3] << 6;
                    if (v7 != 7)
                    {
                      v13 |= v12[4] << 7;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v13 = 0;
      }

      *v8++ = v13;
      v7 -= 8;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

LABEL_32:
  RawElementsAttr = mlir::createRawElementsAttr(a1, v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }

  return RawElementsAttr;
}

llvm::APInt *llvm::APInt::APInt(llvm::APInt *this, unsigned int a2, uint64_t a3, char a4, int a5)
{
  *(this + 2) = a2;
  if (a2 > 0x40)
  {
    llvm::APInt::initSlowCase(this);
  }

  *this = a3;
  if ((a4 & 1) != 0 || a5)
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
    if (!a2)
    {
      v5 = 0;
    }

    *this = v5 & a3;
  }

  return this;
}

uint64_t llvm::SmallVector<llvm::APInt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 16 * v3 - 8;
    v6 = -v4;
    v7 = v5;
    do
    {
      v8 = *v7;
      v7 -= 4;
      if (v8 >= 0x41)
      {
        v9 = *(v5 - 8);
        if (v9)
        {
          MEMORY[0x259C63150](v9, 0x1000C8000313F17);
        }
      }

      v5 = v7;
      v6 += 16;
    }

    while (v6);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void *mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1) == 0;
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (*a1 == 1)
  {
    v9 = v4 + 32 * v7;
    v11 = *(v9 + 1);
    v10 = (v9 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(v4) == v11)
    {

      return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v10);
    }

    else
    {

      return llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v10);
    }
  }

  else
  {
    v13 = *(*v4 + 24);

    return v13();
  }
}

const char *llvm::getTypeName<mlir::ExternalCanonicalizeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExternalCanonicalizeInterface]";
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

llvm::APFloatBase *llvm::APFloat::Storage::operator=(llvm::APFloatBase *a1, __n128 *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = a2->n128_u64[0];
  if (v5 == v4 || v5 == v6)
  {
    if (v5 == v4)
    {
      if (v4 == v6)
      {
        if (a1 == a2)
        {
          return a1;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
        goto LABEL_16;
      }

      if (a1 == a2)
      {
        return a1;
      }

      v8 = v5;
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    }

    else
    {
      if (a1 == a2)
      {
        return a1;
      }

      v8 = v5;
      llvm::detail::IEEEFloat::~IEEEFloat(a1);
    }

    v9 = a1;
    if (v8 != a2->n128_u64[0])
    {
      llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
      return a1;
    }

LABEL_16:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, a2);
    return a1;
  }

  llvm::detail::IEEEFloat::operator=(a1, a2);
  return a1;
}

uint64_t mlir::ElementsAttr::try_value_begin<llvm::APFloat>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>();
    a1 = v5;
  }

  result = mlir::ElementsAttr::getValuesImpl(a1, mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

const char *llvm::getTypeName<llvm::APFloat>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = llvm::APFloat]";
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

unsigned int *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = llvm::APFloatBase::PPCDoubleDouble(result);
    result = (a2 + 8);
    v7 = 32 * v2;
    v8 = (v5 + 8);
    do
    {
      if (v6 == v8->n128_u64[0])
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(result, v8);
      }

      else
      {
        v9 = llvm::detail::IEEEFloat::IEEEFloat(result, v8);
      }

      result = (v9 + 32);
      v8 += 2;
      v7 -= 32;
    }

    while (v7);
    v10 = v4[2];
    if (v10)
    {
      v11 = 32 * v10;
      result = (v11 + *v4 - 24);
      v12 = -v11;
      do
      {
        if (v6 == *result)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(result);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(result);
        }

        result = (v13 - 32);
        v12 += 32;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t mlir::matchConstantWithIntValue<int>(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v8, v9);
    v3 = SingleInt & 0xFF00000000;
    v4 = SingleInt & 0xFFFFFF00;
    v5 = SingleInt;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v4 = 0;
  }

  return v5 | v3 | v4;
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(unsigned int *a1, unint64_t a2)
{
  v3 = a1[2];
  v4 = *a1;
  if (v3 >= a1[3])
  {
    if (v4 > a2 || v4 + 32 * v3 <= a2)
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow();
  }

  v5 = v4 + 32 * a1[2];
  v7 = *(a2 + 8);
  v6 = (a2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((v5 + 8), v6);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v5 + 8, v6);
  }

  ++a1[2];
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void mlir::RuntimeVerifiableOpInterface::generateErrorMessage(mlir::Block **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = 0;
  v10 = 0;
  v11 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_2868A3EF8;
  v12 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v5, 0, 0, 0);
  mlir::OpPrintingFlags::OpPrintingFlags(v4);
  mlir::OpPrintingFlags::elideLargeElementsAttrs(v4, 16);
  mlir::OpPrintingFlags::printGenericOpForm(v4, 1);
  mlir::OpPrintingFlags::skipRegions(v4, 1);
  mlir::OpPrintingFlags::useLocalScope(v4);
  v3 = v9;
  if ((v8 - v9) > 0x25)
  {
    *v9 = *"ERROR: Runtime op verification failed\n";
    qmemcpy(v3 + 1, "p verification failed\n", 22);
    v9 = (v9 + 38);
  }

  else
  {
    llvm::raw_ostream::write(&v5, "ERROR: Runtime op verification failed\n", 0x26uLL);
  }

  mlir::Operation::print(a1, &v5, v4);
}

uint64_t mlir::transformCFGToSCF(void *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*a1 == a1 || (v3 = a1[1], v3[1] == a1))
  {
    v13 = 1;
  }

  else
  {
    if (v3 == a1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v4 = v3 ? (v3 - 1) : 0;
      if (!*v4 && !mlir::Block::isEntryBlock(v4))
      {
        break;
      }

      v3 = v3[1];
      if (v3 == a1)
      {
        for (i = a1[1]; i != a1; i = i[1])
        {
          v18 = i - 1;
          if (!i)
          {
            v18 = 0;
          }

          v19 = v18[5];
          v20 = v18 + 4;
          while (v19 != v20)
          {
            v21 = v19[1];
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v19);
            v13 = mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<checkTransformationPreconditions(mlir::Region &)::$_0>, &v35, 1);
            v19 = v21;
            if (!v13)
            {
              return (v13 << 8);
            }
          }
        }

LABEL_43:
        v28[0] = 0;
        v28[1] = 0;
        v29 = 0;
        v27[3] = v28;
        v27[4] = a1;
        v27[5] = a2;
        v31[0] = &v32;
        v31[1] = 0x600000000;
        v27[0] = v31;
        v27[1] = a1;
        v27[2] = a2;
        v30[0] = 1;
        v30[1] = -4096;
        v30[3] = -4096;
        v30[5] = -4096;
        v30[7] = -4096;
        v30[9] = a1;
        v30[10] = a2;
        for (j = a1[1]; j != a1; j = j[1])
        {
          if (j)
          {
            v24 = (j - 1);
          }

          else
          {
            v24 = 0;
          }

          if (!mlir::Block::getNumSuccessors(v24))
          {
            Terminator = mlir::Block::getTerminator(v24);
          }
        }

        mlir::detail::DominanceInfoBase<false>::invalidate();
      }
    }

    v5 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v4 + 5));
    v33 = "transformation does not support unreachable blocks";
    v34 = 259;
    mlir::Operation::emitOpError(&v35, v5, &v33);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v41;
        v9 = __p;
        if (v41 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v41 = v7;
        operator delete(v9);
      }

      v10 = v38;
      if (v38)
      {
        v11 = v39;
        v12 = v38;
        if (v39 != v38)
        {
          do
          {
            v16 = *--v11;
            v15 = v16;
            *v11 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v38;
        }

        v39 = v10;
        operator delete(v12);
      }

      if (v36 != &v37)
      {
        free(v36);
      }
    }

    if (v6)
    {
      goto LABEL_43;
    }

    v13 = 0;
  }

  return (v13 << 8);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<checkTransformationPreconditions(mlir::Region &)::$_0>(uint64_t a1, mlir::Operation *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 10))
  {
    return 1;
  }

  if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v32 = 0;
    InterfaceFor = 0;
    goto LABEL_34;
  }

  v32 = a2;
  InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!a2)
  {
LABEL_34:
    v34[0] = "transformation does not support terminators with successors not implementing BranchOpInterface";
    v36 = 259;
    mlir::Operation::emitOpError(v38, a2, v34);
    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 != 1)
    {
      return 0;
    }

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

    v19 = v41;
    if (!v41)
    {
      goto LABEL_68;
    }

    v20 = v42;
    v21 = v41;
    if (v42 == v41)
    {
      goto LABEL_67;
    }

    do
    {
      v23 = *--v20;
      v22 = v23;
      *v20 = 0;
      if (v23)
      {
        MEMORY[0x259C63150](v22, 0x1000C8077774924);
      }
    }

    while (v20 != v19);
    goto LABEL_66;
  }

  if (mlir::isMemoryEffectFree(a2, v3))
  {
    v4 = *(a2 + 10);
    if (v4)
    {
      v5 = 0;
      while (1)
      {
        mlir::BranchOpInterface::getSuccessorOperands(&v32, v5);
        v6 = v34[0];
        if (LODWORD(v34[0]))
        {
          v30 = "transformation does not support operations with operation-produced successor operands";
          v31 = 259;
          mlir::Operation::emitOpError(v38, v32, &v30);
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

            v7 = __p;
            if (__p)
            {
              v8 = v44;
              v9 = __p;
              if (v44 != __p)
              {
                do
                {
                  v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
                }

                while (v8 != v7);
                v9 = __p;
              }

              v44 = v7;
              operator delete(v9);
            }

            v10 = v41;
            if (v41)
            {
              v11 = v42;
              v12 = v41;
              if (v42 != v41)
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
                v12 = v41;
              }

              v42 = v10;
              operator delete(v12);
            }

            if (v39 != v40)
            {
              free(v39);
            }
          }
        }

        if (v35 != &v37)
        {
          free(v35);
        }

        if (v6)
        {
          break;
        }

        if (++v5 == v4)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  v34[0] = "transformation does not support terminators with side effects";
  v36 = 259;
  mlir::Operation::emitOpError(v38, a2, v34);
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

    v24 = __p;
    if (__p)
    {
      v25 = v44;
      v26 = __p;
      if (v44 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v44 = v24;
      operator delete(v26);
    }

    v19 = v41;
    if (!v41)
    {
      goto LABEL_68;
    }

    v27 = v42;
    v21 = v41;
    if (v42 == v41)
    {
LABEL_67:
      v42 = v19;
      operator delete(v21);
LABEL_68:
      if (v39 != v40)
      {
        free(v39);
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

    while (v27 != v19);
LABEL_66:
    v21 = v41;
    goto LABEL_67;
  }

  return 0;
}

void anonymous namespace::ReturnLikeExitCombiner::combineExit(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4)
{
  v30[2] = *MEMORY[0x277D85DE8];
  Context = a2;
  v26 = 0;
  v29[0] = 0;
  v9 = v29[0];
  if (!v8)
  {
    v30[0] = v29[0];
    v11 = *a1;
    v12 = *a1 >> 1;
    if (*a1)
    {
      v13 = 4;
    }

    else
    {
      v13 = *(a1 + 16);
    }

    if (4 * v12 + 4 >= 3 * v13)
    {
      v13 *= 2;
    }

    else if (v13 + ~v12 - *(a1 + 4) > v13 >> 3)
    {
      goto LABEL_9;
    }

    v11 = *a1;
    v9 = v30[0];
LABEL_9:
    *a1 = v11 + 2;
    if (*v9 != -4096)
    {
      --*(a1 + 4);
    }

    *v9 = a2;
    v9[1] = 0;
    operator new();
  }

  if (*v29[0] != a2)
  {
    v10 = v29[0][1];
    v14 = *(a2 + 16);
    Terminator = mlir::Block::getTerminator(v14);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(Terminator);
    Parent = mlir::Block::getParent(v14);
    Context = mlir::Region::getContext(Parent);
    v26 = 0;
    v27 = v14;
    v28 = NodePtr;
    v18 = *(a1 + 80);
    v19 = *(a2 + 24);
    v20 = a3(a4, 0);
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v21 = *(a2 + 72);
      v22 = *(a2 + 68);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    mlir::ValueRange::ValueRange(v29, v21, v22);
    v23 = v29[0];
    v24 = v29[1];
    mlir::BlockRange::BlockRange(v30, 0, 0);
    (*(*v18 + 48))(v18, v19, &Context, v20, 0, 0, v30[0], v30[1], 0, 0, v10, v23, v24);
    mlir::Operation::erase(a2);
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,mlir::Block *,4u,anonymous namespace::ReturnLikeOpEquivalence,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Block *>>,mlir::Operation *,mlir::Block *,anonymous namespace::ReturnLikeOpEquivalence,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Block *>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v12 = 0;
      v7 = 0;
      goto LABEL_19;
    }

    v5 = *(a1 + 8);
  }

  v7 = 1;
  v8 = v6 - 1;
  v11 = (v6 - 1) & mlir::OperationEquivalence::computeHash(*a2, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, llvm::function_ref<llvm::hash_code ()(mlir::Value)>::callback_fn<llvm::hash_code ()(mlir::Value)>, mlir::OperationEquivalence::ignoreHashValue, 1);
  v12 = (v5 + 16 * v11);
  v13 = *a2;
  v14 = *v12;
  if (*a2 != *v12)
  {
    v15 = 0;
    v16 = 1;
    while (1)
    {
      if (v14 != -4096 && v13 != -8192 && v13 != -4096 && v14 != -8192)
      {
        v7 = 1;
        if (mlir::OperationEquivalence::isEquivalentTo(v13, v14, llvm::function_ref<llvm::LogicalResult ()(mlir::Value,mlir::Value)>::callback_fn<llvm::LogicalResult ()(mlir::Value,mlir::Value)>, mlir::OperationEquivalence::ignoreValueEquivalence, 0, v9, 1u, v10, 0, v19))
        {
          goto LABEL_19;
        }

        v14 = *v12;
      }

      if (v14 == -4096)
      {
        break;
      }

      if (v14 == -8192 && v15 == 0)
      {
        v15 = v12;
      }

      v17 = v11 + v16++;
      v11 = v17 & v8;
      v12 = (v5 + 16 * (v17 & v8));
      v13 = *a2;
      v14 = *v12;
      v7 = 1;
      if (*a2 == *v12)
      {
        goto LABEL_19;
      }
    }

    v7 = 0;
    if (v15)
    {
      v12 = v15;
    }
  }

LABEL_19:
  *a3 = v12;
  return v7;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,mlir::Block *,4u,anonymous namespace::ReturnLikeOpEquivalence,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Block *>>,mlir::Operation *,mlir::Block *,anonymous namespace::ReturnLikeOpEquivalence,llvm::detail::DenseMapPair<mlir::Operation *,mlir::Block *>>::grow(uint64_t result, unsigned int a2)
{
  v2 = result;
  v40[6] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v7 = (result + 8);
    v6 = *(result + 8);
    v8 = *(result + 16);
    if (a2 > 4)
    {
      v25 = a2;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      *(v2 + 8) = buffer;
      *(v2 + 16) = v25;
      v27 = *v2;
      v9 = (v6 + 16 * v8);
      *v2 = *v2 & 1;
      if (v27)
      {
        v10 = (v2 + 72);
        v11 = 48;
      }

      else
      {
        v10 = &buffer[2 * v25];
        v7 = buffer;
        v11 = 16 * v25 - 16;
        if (v11 < 0x10)
        {
          v29 = buffer;
          goto LABEL_42;
        }
      }
    }

    else
    {
      v9 = (v6 + 16 * v8);
      *result = 1;
      v10 = (result + 72);
      v11 = 48;
    }

    v28 = (v11 >> 4) + 1;
    v29 = &v7[2 * (v28 & 0x1FFFFFFFFFFFFFFELL)];
    v30 = v7 + 2;
    v31 = v28 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v30 - 2) = -4096;
      *v30 = -4096;
      v30 += 4;
      v31 -= 2;
    }

    while (v31);
    if (v28 == (v28 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_43:
      if (v8)
      {
        v37 = v6;
        do
        {
          if ((*v37 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v39[0] = 0;
            *v39[0] = *v37;
            *v2 += 2;
          }

          v37 += 2;
        }

        while (v37 != v9);
      }

      llvm::deallocate_buffer(v6, (16 * v8));
    }

    do
    {
LABEL_42:
      *v29 = -4096;
      v29 += 2;
    }

    while (v29 != v10);
    goto LABEL_43;
  }

  v12 = result + 8;
  v13 = v39;
  if ((*(result + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v14 = *(result + 24);
    if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v32 = *(result + 16);
    v39[0] = *(result + 8);
    v39[1] = v32;
    v13 = v40;
    v14 = *(result + 24);
    if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v15 = *(result + 40);
      if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  v33 = *(result + 32);
  *v13 = v14;
  v13[1] = v33;
  v13 += 2;
  v15 = *(result + 40);
  if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v16 = *(result + 56);
    if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *v13 = v15;
  v13[1] = *(result + 48);
  v13 += 2;
  v16 = *(result + 56);
  if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v17 = *result;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *v13 = v16;
  v13[1] = *(result + 64);
  v13 += 2;
  v17 = *result;
  if (a2 < 5)
  {
LABEL_13:
    *result = v17 & 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v19 = (v2 + 72);
    v20 = 48;
    goto LABEL_16;
  }

LABEL_30:
  *result = v17 & 0xFFFFFFFE;
  v34 = a2;
  result = llvm::allocate_buffer(16 * a2, 8uLL);
  *(v2 + 8) = result;
  *(v2 + 16) = v34;
  v35 = *v2;
  *v2 = *v2 & 1;
  if (v35)
  {
    goto LABEL_31;
  }

LABEL_14:
  v18 = *(v2 + 16);
  if (!v18)
  {
    goto LABEL_34;
  }

  v12 = *(v2 + 8);
  v19 = (v12 + 16 * v18);
  v20 = v19 - v12 - 16;
  if (v20 < 0x10)
  {
    v22 = *(v2 + 8);
    do
    {
LABEL_33:
      *v22 = -4096;
      v22 += 2;
    }

    while (v22 != v19);
    goto LABEL_34;
  }

LABEL_16:
  v21 = (v20 >> 4) + 1;
  v22 = (v12 + 16 * (v21 & 0x1FFFFFFFFFFFFFFELL));
  v23 = (v12 + 16);
  v24 = v21 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v23 - 2) = -4096;
    *v23 = -4096;
    v23 += 4;
    v24 -= 2;
  }

  while (v24);
  if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (v39 != v13)
  {
    v36 = v39;
    do
    {
      if ((*v36 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v38 = 0;
        *v38 = *v36;
        *v2 += 2;
      }

      v36 += 2;
    }

    while (v36 != v13);
  }

  return result;
}

void createSingleEntryBlock(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v11[6] = *MEMORY[0x277D85DE8];
  v5 = a3 + 16 * a4;
  v9[4] = v11;
  v10 = 0x600000000;
  if (a4 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v6 = v11;
    v7 = a3;
    do
    {
      *v6++ = mlir::Block::getSuccessor(*v7, *(v7 + 8));
      v7 += 16;
    }

    while (v7 != v5);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  LODWORD(v10) = v8 + v4;
  mlir::TypeRange::TypeRange(v9, 0, 0);
}

uint64_t llvm::SetVector<mlir::Block *,llvm::SmallVector<mlir::Block *,4u>,llvm::DenseSet<mlir::Block *,llvm::DenseMapInfo<mlir::Block *,void>>,4u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v15);
    if (v15[16] == 1)
    {
      v4 = *a2;
      v5 = *(a1 + 32);
      if (v5 >= *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a1 + 24) + 8 * v5) = v4;
      ++*(a1 + 32);
      return 1;
    }

    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = v7;
  if (v8)
  {
    v10 = *a2;
    v11 = 8 * v8;
    v9 = *(a1 + 24);
    while (*v9 != v10)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }
  }

  if (v9 != &v7[v8])
  {
    return 0;
  }

  v10 = *a2;
LABEL_13:
  if (v8 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7[v8] = v10;
  v12 = *(a1 + 32) + 1;
  *(a1 + 32) = v12;
  if (v12 >= 5)
  {
    v13 = *(a1 + 24);
    v14 = 8 * v12;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v13++, v15);
      v14 -= 8;
    }

    while (v14);
  }

  return 1;
}

void llvm::scc_iterator<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::GetNextSCC(uint64_t a1)
{
  *(a1 + 64) = *(a1 + 56);
  if (*(a1 + 80) != *(a1 + 88))
  {
    while (1)
    {
      llvm::scc_iterator<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::DFSVisitChildren(a1);
      v3 = *(a1 + 80);
      v2 = *(a1 + 88);
      v40 = *(v2 - 32);
      v4 = *(v2 - 8);
      *(a1 + 88) = v2 - 32;
      if (v3 != v2 - 32 && *(v2 - 40) > v4)
      {
        *(v2 - 40) = v4;
      }

      if (v4 == *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a1 + 8, &v40))
      {
        break;
      }

      if (*(a1 + 80) == *(a1 + 88))
      {
        return;
      }
    }

    v5 = *(a1 + 64);
    while (1)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 72);
      if (v5 >= v13)
      {
        v14 = *(a1 + 56);
        v15 = v5 - v14;
        v16 = (v5 - v14) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v18 = v13 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v20 = v16;
        v21 = (8 * v16);
        v22 = *(v12 - 8);
        v23 = &v21[-v20];
        *v21 = v22;
        v5 = (v21 + 1);
        memcpy(v23, v14, v15);
        *(a1 + 56) = v23;
        *(a1 + 64) = v5;
        *(a1 + 72) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = *(v12 - 8);
        v5 += 8;
      }

      *(a1 + 64) = v5;
      *(a1 + 40) -= 8;
      v24 = *(a1 + 24);
      if (!v24)
      {
        goto LABEL_42;
      }

      v6 = *(a1 + 8);
      v7 = *(v5 - 1);
      v8 = v24 - 1;
      v9 = ((v7 >> 4) ^ (v7 >> 9)) & (v24 - 1);
      v10 = (v6 + 16 * v9);
      v11 = *v10;
      if (v7 != *v10)
      {
        break;
      }

LABEL_10:
      *(v10 + 2) = -1;
      if (v7 == v40)
      {
        return;
      }
    }

    v25 = 0;
    v26 = 1;
    while (v11 != -4096)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v11 == -8192;
      }

      if (v27)
      {
        v25 = v10;
      }

      v28 = v9 + v26++;
      v9 = v28 & v8;
      v10 = (v6 + 16 * (v28 & v8));
      v11 = *v10;
      if (v7 == *v10)
      {
        goto LABEL_10;
      }
    }

    if (v25)
    {
      v10 = v25;
    }

    v29 = *(a1 + 16);
    if (4 * v29 + 4 < 3 * v24)
    {
      if (v24 + ~v29 - *(a1 + 20) > v24 >> 3)
      {
        *(a1 + 16) = v29 + 1;
        if (*v10 == -4096)
        {
LABEL_29:
          *v10 = *(v5 - 1);
          *(v10 + 2) = 0;
          v5 = *(a1 + 64);
          v7 = *(v5 - 1);
          goto LABEL_10;
        }

LABEL_28:
        --*(a1 + 20);
        goto LABEL_29;
      }
    }

    else
    {
LABEL_42:
      v24 *= 2;
    }

    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(a1 + 8, v24);
    v30 = *(a1 + 24);
    if (v30)
    {
      v31 = *(a1 + 8);
      v32 = *(v5 - 1);
      v33 = v30 - 1;
      v34 = ((v32 >> 4) ^ (v32 >> 9)) & (v30 - 1);
      v10 = (v31 + 16 * v34);
      v35 = *v10;
      if (v32 != *v10)
      {
        v36 = 0;
        v37 = 1;
        while (v35 != -4096)
        {
          if (v36)
          {
            v38 = 0;
          }

          else
          {
            v38 = v35 == -8192;
          }

          if (v38)
          {
            v36 = v10;
          }

          v39 = v34 + v37++;
          v34 = v39 & v33;
          v10 = (v31 + 16 * (v39 & v33));
          v35 = *v10;
          if (v32 == *v10)
          {
            goto LABEL_55;
          }
        }

        if (v36)
        {
          v10 = v36;
        }
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_55:
    ++*(a1 + 16);
    if (*v10 == -4096)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }
}

void std::vector<llvm::scc_iterator<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::StackElement,std::allocator<llvm::scc_iterator<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::StackElement>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void *llvm::scc_iterator<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::DFSVisitChildren(int *a1)
{
  v2 = *(a1 + 11);
  while (1)
  {
    result = mlir::SuccessorRange::SuccessorRange(&v18, *(v2 - 32));
    if (*(v2 - 16) == *(&v18 + 1))
    {
      return result;
    }

    v2 = *(a1 + 11);
    v8 = *(v2 - 24);
    v9 = *(v2 - 16);
    *(v2 - 16) = v9 + 1;
    v10 = *(v8 + 32 * v9 + 24);
    v11 = a1[6];
    if (!v11)
    {
      goto LABEL_2;
    }

    v12 = *(a1 + 1);
    v13 = ((v10 >> 4) ^ (v10 >> 9)) & (v11 - 1);
    v14 = *(v12 + 16 * v13);
    if (v14 == v10)
    {
LABEL_6:
      if (v13 == v11)
      {
        goto LABEL_2;
      }

      v15 = *(v12 + 16 * v13 + 8);
      if (*(v2 - 8) > v15)
      {
        *(v2 - 8) = v15;
      }
    }

    else
    {
      v16 = 1;
      while (v14 != -4096)
      {
        v17 = v13 + v16++;
        v13 = v17 & (v11 - 1);
        v14 = *(v12 + 16 * v13);
        if (v14 == v10)
        {
          goto LABEL_6;
        }
      }

LABEL_2:
      v21 = v10;
      v3 = *a1 + 1;
      *a1 = v3;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[]((a1 + 2), &v21) = v3;
      std::vector<mlir::Operation *>::push_back[abi:nn200100]((a1 + 8), &v21);
      v4 = v21;
      mlir::SuccessorRange::SuccessorRange(&v18, v21);
      v5 = v18;
      v6 = *a1;
      *&v18 = v4;
      *(&v18 + 1) = v5;
      v19 = 0;
      v20 = v6;
      std::vector<llvm::scc_iterator<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::StackElement,std::allocator<llvm::scc_iterator<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::StackElement>>::push_back[abi:nn200100]((a1 + 20), &v18);
      v2 = *(a1 + 11);
    }
  }
}

void anonymous namespace::EdgeMultiplexer::redirectEdge(uint64_t a1, mlir::Block *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v45[2] = *MEMORY[0x277D85DE8];
  v45[0] = a4;
  v45[1] = a5;
  Successor = mlir::Block::getSuccessor(this, a3);
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = a1 + 48;
    v10 = 4;
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    if (!v10)
    {
      v11 = 0;
      v12 = 0;
LABEL_4:
      v13 = v9 + 16 * v12;
      v14 = v9 + 16 * v11;
      goto LABEL_17;
    }
  }

  v15 = v10 - 1;
  v16 = (v10 - 1) & ((Successor >> 4) ^ (Successor >> 9));
  v17 = *(v9 + 16 * v16);
  if (v17 == Successor)
  {
LABEL_7:
    v13 = v9 + 16 * v16;
    if ((v8 & 1) == 0)
    {
      v14 = *(a1 + 48) + 16 * *(a1 + 56);
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 1;
    while (v17 != -4096)
    {
      v19 = v16 + v18++;
      v16 = v19 & v15;
      v17 = *(v9 + 16 * v16);
      if (v17 == Successor)
      {
        goto LABEL_7;
      }
    }

    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = v11;
      goto LABEL_4;
    }

    v13 = a1 + 112;
  }

  v14 = a1 + 112;
LABEL_17:
  v20 = *(a1 + 112);
  if (v13 == v14)
  {
    v21 = (a1 + 120);
  }

  else
  {
    v21 = (v13 + 8);
  }

  v22 = *v21;
  getMutableSuccessorOperands(v42, this, a3);
  v23 = *a1;
  v25 = *(*a1 + 48);
  v24 = *(*a1 + 56);
  v26 = (v24 - v25) >> 3;
  v27 = *(a1 + 192);
  v35 = v26 - v5;
  if (v27)
  {
    v28 = v26 - v5 - 1;
  }

  else
  {
    v28 = 0;
  }

  v39 = v41;
  v40 = 0x600000000;
  if (((v24 - v25) >> 3))
  {
    if (((v24 - v25) >> 3) >= 7uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (((v24 - v25) >> 3))
    {
      bzero(v39, 8 * ((v24 - v25) >> 3));
    }

    LODWORD(v40) = (v24 - v25) >> 3;
    v23 = *a1;
    v25 = *(*a1 + 48);
    v24 = *(*a1 + 56);
  }

  if (v25 != v24)
  {
    v29 = v20 + 16 * v22;
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v30 = *v25;
            v31 = *(*v25 + 24);
            v32 = *(v29 + 8);
            if (v32 > v31)
            {
              break;
            }

            v33 = mlir::Block::getSuccessor(this, a3);
            if (v32 + ((*(v33 + 56) - *(v33 + 48)) >> 3) <= v31)
            {
              break;
            }

            *(v39 + v31) = *(mlir::MutableOperandRange::operator[](v42, v31 - *(v29 + 8)) + 24);
            if (++v25 == v24)
            {
              goto LABEL_42;
            }
          }

          if (!v27 || v28 != v31)
          {
            break;
          }

          *(v39 + v31) = (*(a1 + 8))(*(a1 + 16), (v29 - *(a1 + 112)) >> 4);
          if (++v25 == v24)
          {
            goto LABEL_42;
          }
        }

        if (v31 >= v35)
        {
          break;
        }

        *(v39 + v31) = (*(a1 + 24))(*(a1 + 32), *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (++v25 == v24)
        {
          goto LABEL_42;
        }
      }

      *(v39 + v31) = mlir::ValueRange::dereference_iterator(v45, v31 - v35);
      ++v25;
    }

    while (v25 != v24);
LABEL_42:
    v23 = *a1;
  }

  Terminator = mlir::Block::getTerminator(this);
  mlir::Operation::setSuccessor(Terminator, v23, a3);
  mlir::ValueRange::ValueRange(v38, v39, v40);
  mlir::MutableOperandRange::assign(v42, v38[0], v38[1]);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v43 != &v44)
  {
    free(v43);
  }
}

void anonymous namespace::EdgeMultiplexer::createSwitch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void ***this)
{
  v6 = a3;
  v39[6] = *MEMORY[0x277D85DE8];
  v37 = v39;
  v38 = 0x300000000;
  v34 = v36;
  v35 = 0xC00000000;
  v31 = v33;
  v32 = 0x600000000;
  v8 = *(a1 + 120);
  if (v8)
  {
    v10 = 0;
    v11 = *(a1 + 112);
    v12 = &v11[4 * v8];
    do
    {
      while (1)
      {
        v16 = *v11;
        v13 = *this;
        v17 = this[1];
        if (v17 == *this)
        {
          v19 = *(this + 5);
          if (v19)
          {
            v20 = 8 * v19;
            while (*v13 != v16)
            {
              ++v13;
              v20 -= 8;
              if (!v20)
              {
                goto LABEL_3;
              }
            }
          }

          else
          {
LABEL_3:
            v13 = &v17[v19];
          }

          v14 = this[1];
        }

        else
        {
          v13 = llvm::SmallPtrSetImplBase::doFind(this, v16);
          v17 = *this;
          v14 = this[1];
          if (!v13)
          {
            if (v14 == v17)
            {
              v18 = 20;
            }

            else
            {
              v18 = 16;
            }

            v13 = &v14[*(this + v18)];
          }
        }

        v15 = v14 == v17 ? 20 : 16;
        if (v13 == &v14[*(this + v15)])
        {
          break;
        }

        ++v10;
        v11 += 4;
        if (v11 == v12)
        {
          goto LABEL_29;
        }
      }

      if (v35 >= HIDWORD(v35))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v34 + v35) = v10;
      LODWORD(v35) = v35 + 1;
      mlir::ValueRange::ValueRange(&v30, *(*a1 + 48) + 8 * v11[2], ((*(*v11 + 56) - *(*v11 + 48)) >> 3));
      if (v38 >= HIDWORD(v38))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v37[v38] = v30;
      LODWORD(v38) = v38 + 1;
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = *v11;
      LODWORD(v32) = v32 + 1;
      ++v10;
      v11 += 4;
    }

    while (v11 != v12);
LABEL_29:
    LODWORD(v8) = v38;
    v6 = a3;
  }

  v21 = *(a1 + 192);
  if (!v21 || v8 == 1)
  {
    v21 = (*(a1 + 8))(*(a1 + 16), 0, a3, a4, this);
    LODWORD(v8) = v38;
  }

  LODWORD(v35) = v35 - 1;
  v22 = v35;
  v23 = *(v31 + v32 - 1);
  LODWORD(v32) = v32 - 1;
  v24 = &v37[v8];
  v25 = *(v24 - 2);
  v26 = *(v24 - 1);
  LODWORD(v38) = v8 - 1;
  v27 = v34;
  mlir::BlockRange::BlockRange(&v30, v31, v32);
  (*(*a4 + 48))(a4, a2, v6, v21, v27, v22, v30, *(&v30 + 1), v37, v38, v23, v25, v26);
  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 8;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 4;
    v8 = result + 8;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 8);
  }

  v9 = v7 - 1;
  v10 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v11 = v8 + 16 * v10;
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 4;
    }

    else
    {
      v5 = *(result + 8);
      v13 = *(result + 16);
    }

    *a4 = v11;
    *(a4 + 8) = v5 + 16 * v13;
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -4096)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -8192;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = v8 + 16 * (v19 & v9);
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(result + 16);
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - *(result + 4) <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -4096)
  {
    --*(result + 4);
  }

  *v11 = *a2;
  *(v11 + 8) = *a3;
  if (*result)
  {
    v15 = 4;
  }

  else
  {
    v5 = *(result + 8);
    v15 = *(result + 16);
  }

  *a4 = v11;
  *(a4 + 8) = v5 + 16 * v15;
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 16 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 16 * (v13 & v5));
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

int *llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v7 = v21;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7 = v8;
  *(v7 + 2) = *(a1 + 32);
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7 = v10;
    *(v7 + 2) = *(a1 + 64);
    v7 += 2;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7 = v9;
  *(v7 + 2) = *(a1 + 48);
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 18;
    v5 = result + 2;
    v7 = 48;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v17 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 3;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = v13 & ((v17 >> 4) ^ (v17 >> 9));
      v15 = &v12[4 * v14];
      v16 = *v15;
      if (v17 != *v15)
      {
        v18 = 0;
        v19 = 1;
        while (v16 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v16 == -8192;
          }

          if (v20)
          {
            v18 = v15;
          }

          v21 = v14 + v19++;
          v14 = v21 & v13;
          v15 = &v12[4 * (v21 & v13)];
          v16 = *v15;
          if (v17 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v18)
        {
          v15 = v18;
        }
      }

LABEL_15:
      *v15 = v17;
      *(v15 + 2) = *(a2 + 2);
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,unsigned int>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::Block *&&>,std::tuple<unsigned int &&>>(uint64_t a1, uint64_t a2, void **a3, unsigned int **a4)
{
  v4 = **a4;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (*a1 + 16 * v5);
  *v6 = **a3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

unsigned int *llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::swap(unsigned int *result, unsigned int *a2)
{
  v2 = *a2;
  *a2 = *result & 0xFFFFFFFE | *a2 & 1;
  v3 = result[1];
  *result = v2 & 0xFFFFFFFE | *result & 1;
  result[1] = a2[1];
  a2[1] = v3;
  v4 = *a2;
  if ((*result & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      v5 = *(result + 1);
      *(result + 1) = *(a2 + 1);
      *(a2 + 1) = v5;
      LODWORD(v5) = result[4];
      result[4] = a2[4];
      a2[4] = v5;
      return result;
    }

    v4 = *result;
    v6 = result;
    result = a2;
LABEL_7:
    v26 = *(v6 + 2);
    *v6 = v4 | 1;
    v7 = *(result + 1);
    *(v6 + 1) = v7;
    if ((v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v8 = *(result + 3);
      *(v6 + 3) = v8;
      if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6[4] = result[4];
      v15 = *(result + 3);
      *(v6 + 3) = v15;
      if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
LABEL_9:
        v9 = *(result + 5);
        *(v6 + 5) = v9;
        if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }
    }

    v6[8] = result[8];
    v16 = *(result + 5);
    *(v6 + 5) = v16;
    if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v10 = *(result + 7);
      *(v6 + 7) = v10;
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
LABEL_11:
        *result &= ~1u;
        *(result + 2) = v26;
        return result;
      }

LABEL_22:
      v6[16] = result[16];
      goto LABEL_11;
    }

LABEL_21:
    v6[12] = result[12];
    v17 = *(result + 7);
    *(v6 + 7) = v17;
    if ((v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if ((v4 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  v11 = *(result + 1);
  if (v11 == -4096)
  {
    v12 = *(a2 + 1);
    if (v12 == -4096)
    {
      *(result + 1) = -4096;
      *(a2 + 1) = -4096;
      v14 = *(result + 3);
      if (v14 == -4096)
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    *(result + 1) = v12;
    *(a2 + 1) = -4096;
    goto LABEL_30;
  }

  v12 = *(a2 + 1);
  if (v12 == -4096)
  {
    *(result + 1) = -4096;
    *(a2 + 1) = v11;
    if (v11 != -8192)
    {
      goto LABEL_28;
    }

LABEL_32:
    v14 = *(result + 3);
    if (v14 == -4096)
    {
      goto LABEL_44;
    }

    goto LABEL_33;
  }

  if (v11 != -8192 && v12 != -8192)
  {
    v13 = result[4];
    *(result + 1) = v12;
    result[4] = a2[4];
    *(a2 + 1) = v11;
    a2[4] = v13;
    v14 = *(result + 3);
    if (v14 == -4096)
    {
      goto LABEL_44;
    }

LABEL_33:
    v18 = *(a2 + 3);
    if (v18 == -4096)
    {
      *(result + 3) = -4096;
      *(a2 + 3) = v14;
      if (v14 == -8192)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v14 != -8192 && v18 != -8192)
      {
        v19 = result[8];
        *(result + 3) = v18;
        result[8] = a2[8];
        *(a2 + 3) = v14;
        a2[8] = v19;
        v20 = *(result + 5);
        if (v20 != -4096)
        {
          goto LABEL_49;
        }

        goto LABEL_60;
      }

      *(result + 3) = v18;
      *(a2 + 3) = v14;
      if (v14 == -8192)
      {
        goto LABEL_46;
      }
    }

    a2[8] = result[8];
    v20 = *(result + 5);
    if (v20 != -4096)
    {
      goto LABEL_49;
    }

    goto LABEL_60;
  }

  *(result + 1) = v12;
  *(a2 + 1) = v11;
  if (v11 == -8192)
  {
LABEL_30:
    if (v12 != -8192)
    {
      result[4] = a2[4];
    }

    goto LABEL_32;
  }

LABEL_28:
  a2[4] = result[4];
  v14 = *(result + 3);
  if (v14 != -4096)
  {
    goto LABEL_33;
  }

LABEL_44:
  v18 = *(a2 + 3);
  if (v18 != -4096)
  {
    *(result + 3) = v18;
    *(a2 + 3) = v14;
LABEL_46:
    if (v18 != -8192)
    {
      result[8] = a2[8];
    }

LABEL_48:
    v20 = *(result + 5);
    if (v20 != -4096)
    {
      goto LABEL_49;
    }

LABEL_60:
    v21 = *(a2 + 5);
    if (v21 == -4096)
    {
      *(result + 5) = -4096;
      *(a2 + 5) = v20;
      v23 = *(result + 7);
      if (v23 != -4096)
      {
        goto LABEL_65;
      }

LABEL_74:
      v24 = *(a2 + 7);
      if (v24 == -4096)
      {
        *(result + 7) = -4096;
        *(a2 + 7) = v23;
        return result;
      }

      *(result + 7) = v24;
      *(a2 + 7) = v23;
      goto LABEL_76;
    }

    *(result + 5) = v21;
    *(a2 + 5) = v20;
    goto LABEL_62;
  }

  *(result + 3) = -4096;
  *(a2 + 3) = v14;
  v20 = *(result + 5);
  if (v20 == -4096)
  {
    goto LABEL_60;
  }

LABEL_49:
  v21 = *(a2 + 5);
  if (v21 == -4096)
  {
    *(result + 5) = -4096;
    *(a2 + 5) = v20;
    if (v20 != -8192)
    {
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  if (v20 == -8192 || v21 == -8192)
  {
    *(result + 5) = v21;
    *(a2 + 5) = v20;
    if (v20 != -8192)
    {
LABEL_57:
      a2[12] = result[12];
      v23 = *(result + 7);
      if (v23 == -4096)
      {
        goto LABEL_74;
      }

      goto LABEL_65;
    }

LABEL_62:
    if (v21 != -8192)
    {
      result[12] = a2[12];
    }

LABEL_64:
    v23 = *(result + 7);
    if (v23 != -4096)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

  v22 = result[12];
  *(result + 5) = v21;
  result[12] = a2[12];
  *(a2 + 5) = v20;
  a2[12] = v22;
  v23 = *(result + 7);
  if (v23 == -4096)
  {
    goto LABEL_74;
  }

LABEL_65:
  v24 = *(a2 + 7);
  if (v24 == -4096)
  {
    *(result + 7) = -4096;
    *(a2 + 7) = v23;
    if (v23 == -8192)
    {
      return result;
    }

LABEL_72:
    a2[16] = result[16];
    return result;
  }

  if (v23 != -8192 && v24 != -8192)
  {
    v25 = result[16];
    *(result + 7) = v24;
    result[16] = a2[16];
    *(a2 + 7) = v23;
    a2[16] = v25;
    return result;
  }

  *(result + 7) = v24;
  *(a2 + 7) = v23;
  if (v23 != -8192)
  {
    goto LABEL_72;
  }

LABEL_76:
  if (v24 != -8192)
  {
    result[16] = a2[16];
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::Block *,unsigned int>>::operator=(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_19;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v9 = *result;
        v10 = v2 + 16 * v7;
        do
        {
          *v9 = *v2;
          v9[2] = *(v2 + 8);
          v2 += 16;
          v9 += 4;
        }

        while (v2 != v10);
      }

      *(result + 8) = v7;
      goto LABEL_19;
    }

    if (*(result + 12) < v7)
    {
      *(result + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8)
    {
      v11 = v2 + 16 * v8;
      v12 = result;
      v13 = *result;
      do
      {
        *v13 = *v2;
        v13[2] = *(v2 + 8);
        v2 += 16;
        v13 += 4;
      }

      while (v2 != v11);
      v14 = v7 - v8;
      if (v7 == v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = result;
      v8 = 0;
      v14 = *(a2 + 2);
      if (!*(a2 + 2))
      {
        goto LABEL_18;
      }
    }

    memcpy((*v12 + 16 * v8), (*a2 + 16 * v8), 16 * v14);
LABEL_18:
    result = v12;
    *(v12 + 8) = v7;
LABEL_19:
    *v6 = 0;
  }

  return result;
}

void getMutableSuccessorOperands(mlir::Block *a1, mlir::Block *this, uint64_t a3)
{
  v12[3] = *MEMORY[0x277D85DE8];
  Terminator = mlir::Block::getTerminator(this);
  v6 = Terminator;
  if (Terminator)
  {
    Terminator = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
  }

  v8[0] = v6;
  v8[1] = Terminator;
  mlir::BranchOpInterface::getSuccessorOperands(v8, a3);
  *a1 = v9;
  *(a1 + 2) = a1 + 32;
  *(a1 + 3) = 0x100000000;
  if (&v9 != a1)
  {
    v7 = v11;
    if (v11)
    {
      if (v11 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(a1 + 32, __src, 0x18uLL);
      *(a1 + 6) = v7;
    }
  }

  if (__src != v12)
  {
    free(__src);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_41;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != result + 8 * v11);
      }
    }

    if (v3)
    {
      v17 = 0;
      v18 = v11 - 1;
      v19 = v4;
      do
      {
        v28 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = ((v28 >> 4) ^ (v28 >> 9)) & v18;
          v27 = &result->i8[8 * v29];
          v30 = *v27;
          if (v28 != *v27)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v27;
              }

              v34 = v29 + v32++;
              v29 = v34 & v18;
              v27 = &result->i8[8 * (v34 & v18)];
              v30 = *v27;
              if (v28 == *v27)
              {
                goto LABEL_23;
              }
            }

            if (v31)
            {
              v27 = v31;
            }
          }

LABEL_23:
          *v27 = v28;
          *(a1 + 8) = ++v17;
        }

        v19 = (v19 + 8);
      }

      while (v19 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (v20 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 < 3)
    {
      goto LABEL_18;
    }

    v22 = v21 + 1;
    v10 = &result->i8[8 * (v22 & 0x3FFFFFFFFFFFFFFCLL)];
    v23 = result + 1;
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v25 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v23[-1] = v24;
      *v23 = v24;
      v23 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_18:
      v26 = &result->i8[8 * v20];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v26);
    }
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<transformToReduceLoop(mlir::Block *,mlir::Block *,llvm::SmallSetVector<mlir::Block *,4u> const&,llvm::function_ref<mlir::Value ()(mlir::Type)>,mlir::DominanceInfo &)::$_1>(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(a2 + 16) + 16);
  if (*(*a1 + 2))
  {
    v4 = *(v2 + 4);
    if (v4)
    {
      v5 = *v2;
      v6 = (v4 - 1) & ((v3 >> 4) ^ (v3 >> 9));
      v7 = *(v5 + 8 * v6);
      if (v7 == v3)
      {
        return v6 == v4;
      }

      v8 = 1;
      while (v7 != -4096)
      {
        v9 = v6 + v8++;
        v6 = v9 & (v4 - 1);
        v7 = *(v5 + 8 * v6);
        if (v7 == v3)
        {
          return v6 == v4;
        }
      }
    }

    v6 = v4;
    return v6 == v4;
  }

  v10 = v2[3];
  v11 = *(v2 + 8);
  v12 = &v10[v11];
  if (v11)
  {
    v13 = 8 * v11;
    while (*v10 != v3)
    {
      ++v10;
      v13 -= 8;
      if (!v13)
      {
        v10 = v12;
        return v10 == v12;
      }
    }
  }

  return v10 == v12;
}

unint64_t transformToReduceLoop(mlir::Block *,mlir::Block *,llvm::SmallSetVector<mlir::Block *,4u> const&,llvm::function_ref<mlir::Value ()(mlir::Type)>,mlir::DominanceInfo &)::$_2::operator()(unint64_t result, void **a2)
{
  v17[19] = *MEMORY[0x277D85DE8];
  v17[0] = a2;
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    do
    {
      v4 = v2;
      v2 = *v2;
      for (i = *(v4[2] + 16); i; i = *(result + 16))
      {
        Parent = mlir::Block::getParent(i);
        result = mlir::Block::getParent(**v3);
        if (Parent == result)
        {
          break;
        }

        result = mlir::Block::getParentOp(i);
      }

      v7 = *(v3 + 8);
      if (*(v7 + 2))
      {
        v8 = *(v7 + 4);
        if (!v8)
        {
          goto LABEL_22;
        }

        v9 = *v7;
        v10 = ((v8 - 1) & ((i >> 4) ^ (i >> 9)));
        v11 = *(v9 + 8 * v10);
        if (v11 != i)
        {
          v12 = 1;
          while (v11 != -4096)
          {
            v13 = v10 + v12++;
            v10 = (v13 & (v8 - 1));
            v11 = *(v9 + 8 * v10);
            if (v11 == i)
            {
              goto LABEL_21;
            }
          }

LABEL_22:
          mlir::Value::getLoc(v17);
          mlir::Block::addArgument();
        }
      }

      else
      {
        v14 = v7[3];
        v15 = *(v7 + 8);
        if (v15)
        {
          v16 = 8 * v15;
          v10 = v14;
          while (*v10 != i)
          {
            ++v10;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v10 = v14;
        }

        v8 = &v14[v15];
      }

LABEL_21:
      if (v10 == v8)
      {
        goto LABEL_22;
      }
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,BOOL,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>,mlir::Block *,BOOL,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>::try_emplace<BOOL>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 8;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 4;
    v8 = result + 8;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 8);
  }

  v9 = v7 - 1;
  v10 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v11 = v8 + 16 * v10;
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 4;
    }

    else
    {
      v5 = *(result + 8);
      v13 = *(result + 16);
    }

    *a4 = v11;
    *(a4 + 8) = v5 + 16 * v13;
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -4096)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -8192;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = v8 + 16 * (v19 & v9);
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(result + 16);
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - *(result + 4) <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<mlir::Block *,BOOL,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,unsigned int,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -4096)
  {
    --*(result + 4);
  }

  *v11 = *a2;
  *(v11 + 8) = *a3;
  if (*result)
  {
    v15 = 4;
  }

  else
  {
    v5 = *(result + 8);
    v15 = *(result + 16);
  }

  *a4 = v11;
  *(a4 + 8) = v5 + 16 * v15;
  *(a4 + 16) = 1;
  return result;
}

int *llvm::SmallDenseMap<mlir::Block *,BOOL,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>::grow(uint64_t a1, unsigned int a2)
{
  v21[6] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,BOOL,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>,mlir::Block *,BOOL,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v7 = v21;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7 = v8;
  *(v7 + 8) = *(a1 + 32);
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7 = v10;
    *(v7 + 8) = *(a1 + 64);
    v7 += 2;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,BOOL,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>,mlir::Block *,BOOL,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7 = v9;
  *(v7 + 8) = *(a1 + 48);
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,BOOL,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>,mlir::Block *,BOOL,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,BOOL,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>,mlir::Block *,BOOL,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,BOOL>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 18;
    v5 = result + 2;
    v7 = 48;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v17 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 3;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = v13 & ((v17 >> 4) ^ (v17 >> 9));
      v15 = &v12[4 * v14];
      v16 = *v15;
      if (v17 != *v15)
      {
        v18 = 0;
        v19 = 1;
        while (v16 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v16 == -8192;
          }

          if (v20)
          {
            v18 = v15;
          }

          v21 = v14 + v19++;
          v14 = v21 & v13;
          v15 = &v12[4 * (v21 & v13)];
          v16 = *v15;
          if (v17 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v18)
        {
          v15 = v18;
        }
      }

LABEL_15:
      *v15 = v17;
      *(v15 + 8) = *(a2 + 8);
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

void llvm::depth_first<llvm::DomTreeNodeBase<mlir::Block> *>(uint64_t *a1)
{
  v1 = *a1;
  v2 = v6;
  v3 = v6;
  v5 = 0;
  v7 = 0u;
  v4 = 0x100000008;
  v6[8] = 0;
  v6[0] = v1;
  operator new();
}

void llvm::make_range<llvm::df_iterator<llvm::DomTreeNodeBase<mlir::Block> *,llvm::df_iterator_default_set<llvm::DomTreeNodeBase<mlir::Block> *,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> *>>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v11, &v13, 8, a1);
  __p = *(a1 + 96);
  v15 = *(a1 + 112);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v6, &v8, 8, a2);
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3, (a3 + 32), 8, &v11);
  *(a3 + 96) = __p;
  *(a3 + 112) = v15;
  v15 = 0;
  __p = 0uLL;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(a3 + 120, (a3 + 152), 8, &v6);
  *(a3 + 216) = v9;
  *(a3 + 232) = v10;
  v10 = 0;
  v9 = 0uLL;
  if (v7 != v6)
  {
    free(v7);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v12 != v11)
  {
    free(v12);
  }
}

uint64_t llvm::function_ref<mlir::Value ()(unsigned int)>::callback_fn<mlir::transformCFGToSCF(mlir::Region &,mlir::CFGToSCFInterface &,mlir::DominanceInfo &)::$_1>(uint64_t *a1, uint64_t a2)
{
  if (*(*a1 + 8) <= a2 || (result = *(**a1 + 8 * a2)) == 0)
  {
    v5 = *(a1[1] + 8);
    if (v5)
    {
      v6 = (v5 - 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v6 + 5);
    Parent = mlir::Block::getParent(v6);
    v14[0] = mlir::Region::getContext(Parent);
    v14[1] = 0;
    v14[2] = v6;
    v14[3] = v7;
    v9 = *a1;
    v10 = *(*a1 + 8);
    if (v10 <= a2 + 1)
    {
      v11 = (a2 + 1);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < a2 + 1)
    {
      if (*(v9 + 12) < v11)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v10 != v11)
      {
        bzero((*v9 + 8 * v10), 8 * (v11 - v10));
      }

      *(v9 + 8) = v11;
    }

    v12 = a1[2];
    Loc = mlir::Region::getLoc(a1[1]);
    result = (*(*v12 + 40))(v12, Loc, v14, a2);
    *(**a1 + 8 * a2) = result;
  }

  return result;
}

uint64_t llvm::function_ref<mlir::Value ()(mlir::Type)>::callback_fn<mlir::transformCFGToSCF(mlir::Region &,mlir::CFGToSCFInterface &,mlir::DominanceInfo &)::$_0>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  Context = a2;
  v13[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(v4, &Context, v13, &v14);
  if ((v15 & 1) == 0)
  {
    return *(v14 + 8);
  }

  v5 = *(*(a1 + 8) + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 5);
  Parent = mlir::Block::getParent(v6);
  Context = mlir::Region::getContext(Parent);
  v13[0] = 0;
  v13[1] = v6;
  v13[2] = v7;
  v9 = *(a1 + 16);
  Loc = mlir::Region::getLoc(*(a1 + 8));
  result = (*(*v9 + 56))(v9, Loc, &Context, a2);
  *(v14 + 8) = result;
  return result;
}

void SortCommutativeOperands::~SortCommutativeOperands(SortCommutativeOperands *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t SortCommutativeOperands::matchAndRewrite(SortCommutativeOperands *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  {
    SortCommutativeOperands::matchAndRewrite();
  }

  if (!(*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
    v31 = v33;
    v32 = 0x200000000;
    if (v6 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v6)
    {
      v8 = v33;
      v9 = v6;
      v10 = (v5 + 24);
      do
      {
        v11 = *v10;
        v10 += 4;
        *v8++ = v11;
        --v9;
      }

      while (v9);
      v12 = v32;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    LODWORD(v6) = 0;
    v12 = 0;
    v31 = v33;
    HIDWORD(v32) = 2;
  }

  v28 = v30;
  v29 = 0x200000000;
  LODWORD(v32) = v12 + v6;
  if (v12 + v6)
  {
    operator new();
  }

  std::__stable_sort<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(v30, v30, &v25, 0, 0, 0);
  v25 = v27;
  v26 = 0x200000000;
  if (v29)
  {
    LODWORD(v13) = 0;
    v14 = v28;
    v15 = 8 * v29;
    do
    {
      if (v13 >= HIDWORD(v26))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v25 + v13) = **v14;
      v13 = (v26 + 1);
      LODWORD(v26) = v26 + 1;
      ++v14;
      v15 -= 8;
    }

    while (v15);
    if (v13 == v32)
    {
      v16 = v25;
      if (!v13)
      {
LABEL_25:
        v7 = 0;
        if (v25 == v27)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      v17 = 0;
      v18 = 8 * v13;
      while (*(v25 + v17) == *(v31 + v17))
      {
        v17 += 8;
        if (v18 == v17)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else if (!v32)
  {
    v7 = 0;
    v16 = v25;
    if (v25 == v27)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  (*(*a3 + 40))(a3, a2);
  mlir::ValueRange::ValueRange(&v34, v25, v26);
  mlir::Operation::setOperands(a2, v34, v35);
  (*(*a3 + 48))(a3, a2);
  v7 = 1;
  v16 = v25;
  if (v25 != v27)
  {
LABEL_29:
    free(v16);
  }

LABEL_30:
  v19 = v28;
  if (v29)
  {
    v20 = 8 * v29;
    v21 = v28 - 8;
    do
    {
      v22 = *&v21[v20];
      *&v21[v20] = 0;
      if (v22)
      {
        v23 = *(v22 + 80);
        if (v23 != (v22 + 96))
        {
          free(v23);
        }

        llvm::deallocate_buffer(*(v22 + 56), (8 * *(v22 + 72)));
      }

      v20 -= 8;
    }

    while (v20);
    v19 = v28;
  }

  if (v19 != v30)
  {
    free(v19);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  return v7;
}

__n128 CommutativeOperand::refreshKey(CommutativeOperand *this)
{
  if (*(this + 6))
  {
    AncestorKey::AncestorKey(&v6, *(*(*(this + 2) + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 5) & 0x1FFLL)));
    v2 = *(this + 10);
    v3 = *(this + 22);
    if (v3 >= *(this + 23))
    {
      if (v2 <= &v6 && v2 + 24 * v3 > &v6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = (v2 + 24 * *(this + 22));
    result = v6;
    v4[1].n128_u64[0] = v7;
    *v4 = result;
    ++*(this + 22);
  }

  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsCommutative<Empty>]";
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

void AncestorKey::AncestorKey(AncestorKey *this, mlir::Operation *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2)
  {
    {
      v6 = a2;
      AncestorKey::AncestorKey();
      a2 = v6;
    }

    v3 = a2;
    if ((*(**(a2 + 6) + 32))(*(a2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    *this = v4;
    v7 = *(*(v3 + 6) + 8);
    *(this + 1) = mlir::StringAttr::getValue(&v7);
    *(this + 2) = v5;
  }

  else
  {
    *this = 0;
  }
}

uint64_t std::deque<mlir::Operation *>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__stable_sort<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **a1, CommutativeOperand **a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = a2 - 1;
      if (SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a3, a2 - 1, a1))
      {
        v8 = *a1;
        *a1 = *v7;
        *v7 = v8;
      }
    }

    else
    {
      v9 = a4;
      if (a4 <= 0)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(a1, a2, a3);
      }

      else
      {
        v10 = a5;
        v12 = a4 >> 1;
        v13 = &a1[a4 >> 1];
        v14 = a4 - (a4 >> 1);
        if (a4 <= a6)
        {
          std::__stable_sort_move<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(a1, v13, a3, a4 >> 1, a5);
          v18 = &v10[v12];
          std::__stable_sort_move<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(&a1[v9 >> 1], a2, a3, v9 - (v9 >> 1), v18);
          std::__merge_move_assign[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*>(v10, v18, v18, &v10[v9], a1, a3);
          if (v10)
          {
            do
            {
              v19 = *v10;
              *v10 = 0;
              if (v19)
              {
                v20 = *(v19 + 10);
                if (v20 != v19 + 96)
                {
                  free(v20);
                }

                llvm::deallocate_buffer(*(v19 + 7), (8 * *(v19 + 18)));
              }

              ++v10;
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          std::__stable_sort<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(a1, v13, a3, v12, a5, a6);
          std::__stable_sort<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(v13, a2, a3, v14, v10, a6);

          std::__inplace_merge<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(a1, v13, a2, a3, v12, v14, v10, a6);
        }
      }
    }
  }
}

BOOL SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(uint64_t a1, CommutativeOperand **a2, CommutativeOperand **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (**a2 == **a3)
  {
    return 0;
  }

  v7 = 0;
  if (*(v3 + 22))
  {
    goto LABEL_5;
  }

LABEL_3:
  if (!*(v3 + 6))
  {
    return 1;
  }

  CommutativeOperand::popFrontAndPushAdjacentUnvisitedAncestors(v3);
  CommutativeOperand::refreshKey(*a2);
  v4 = *a3;
  while (1)
  {
LABEL_5:
    if (*(v4 + 22) <= v7)
    {
      if (!*(v4 + 6))
      {
        return 0;
      }

      CommutativeOperand::popFrontAndPushAdjacentUnvisitedAncestors(v4);
      CommutativeOperand::refreshKey(*a3);
      v4 = *a3;
    }

    v3 = *a2;
    if (!*(*a2 + 6) || !*(v4 + 6))
    {
      return *(v3 + 22) < *(v4 + 22);
    }

    v8 = *(v3 + 10) + 24 * v7;
    v9 = *(v4 + 10) + 24 * v7;
    if (*v8 < *v9)
    {
      return 1;
    }

    if (*v9 < *v8)
    {
      return 0;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    if (v11 >= v10)
    {
      v12 = *(v8 + 16);
    }

    else
    {
      v12 = *(v9 + 16);
    }

    if (v12 && (v13 = memcmp(*(v8 + 8), *(v9 + 8), v12)) != 0)
    {
      if (v13 < 0)
      {
        return 1;
      }
    }

    else if (v10 < v11)
    {
      return 1;
    }

    v14 = *(v9 + 16);
    v15 = *(v8 + 16);
    if (v15 >= v14)
    {
      v16 = *(v9 + 16);
    }

    else
    {
      v16 = *(v8 + 16);
    }

    if (v16 && (v17 = memcmp(*(v9 + 8), *(v8 + 8), v16)) != 0)
    {
      if (v17 < 0)
      {
        return 0;
      }
    }

    else if (v14 < v15)
    {
      return 0;
    }

    if (*(v3 + 22) <= ++v7)
    {
      goto LABEL_3;
    }
  }
}

CommutativeOperand **std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **result, CommutativeOperand **a2, uint64_t a3)
{
  if (result != a2)
  {
    v22[11] = v3;
    v22[12] = v4;
    v6 = result;
    v7 = result + 1;
    if (result + 1 != a2)
    {
      v9 = result;
      do
      {
        v10 = v7;
        result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a3, v7, v9);
        if (result)
        {
          v11 = *v10;
          *v10 = 0;
          v22[0] = v11;
          v12 = v9;
          v13 = *v9;
          *v9 = 0;
          *v10 = v13;
          while (v12 != v6)
          {
            v15 = v12 - 1;
            result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a3, v22, v12 - 1);
            if ((result & 1) == 0)
            {
              goto LABEL_15;
            }

            v16 = *v12;
            v17 = v12--;
            v18 = *v15;
            *v15 = 0;
            *v17 = v18;
            if (v16)
            {
              v14 = *(v16 + 10);
              if (v14 != v16 + 96)
              {
                free(v14);
              }

              llvm::deallocate_buffer(*(v16 + 7), (8 * *(v16 + 18)));
            }
          }

          v12 = v6;
LABEL_15:
          v19 = v22[0];
          v22[0] = 0;
          v20 = *v12;
          *v12 = v19;
          if (v20)
          {
            v21 = *(v20 + 10);
            if (v21 != v20 + 96)
            {
              free(v21);
            }

            llvm::deallocate_buffer(*(v20 + 7), (8 * *(v20 + 18)));
          }
        }

        v7 = v10 + 1;
        v9 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

CommutativeOperand **std::__stable_sort_move<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **result, CommutativeOperand **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7 = result;
    if (a4 == 2)
    {
      v10 = a2 - 1;
      result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a3, a2 - 1, result);
      if (result)
      {
        v11 = *v10;
        *v10 = 0;
        *a5 = v11;
        v12 = *v7;
        *v7 = 0;
      }

      else
      {
        v13 = *v7;
        *v7 = 0;
        *a5 = v13;
        v12 = *v10;
        *v10 = 0;
      }

      *(a5 + 8) = v12;
    }

    else
    {
      if (a4 == 1)
      {
        v8 = *result;
        *result = 0;
        *a5 = v8;
        return result;
      }

      if (a4 > 8)
      {
        v14 = a4 >> 1;
        v15 = a4 >> 1;
        v16 = &result[v15];
        std::__stable_sort<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(result, &result[v15], a3, v14, a5, v14);
        result = std::__stable_sort<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(&v7[v15], a2, a3, a4 - v14, a5 + v15 * 8, a4 - v14);
        v19 = (a5 + 16);
        v20 = v7;
        v21 = v16;
        do
        {
          while (1)
          {
            if (v21 == a2)
            {
              if (v20 == v16)
              {
                return result;
              }

              v27 = (v19 - 1);
              v28 = &v7[v14] - v20 - 8;
              if (v28 >= 0x78)
              {
                if (v20 >= (v19 + (v28 & 0xFFFFFFFFFFFFFFF8) - 8) || v27 >= (v20 + (v28 & 0xFFFFFFFFFFFFFFF8) + 8))
                {
                  v31 = (v28 >> 3) + 1;
                  v32 = v31 & 0x3FFFFFFFFFFFFFFCLL;
                  v27 = (v19 + v32 * 8 - 16);
                  v29 = &v20[v32];
                  v33 = (v20 + 2);
                  v34 = v31 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v35 = *(v33 - 1);
                    v36 = *v33;
                    *(v33 - 1) = 0uLL;
                    *v33 = 0uLL;
                    *(v19 - 1) = v35;
                    *v19 = v36;
                    v33 += 2;
                    v19 += 2;
                    v34 -= 4;
                  }

                  while (v34);
                  if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
                  {
                    return result;
                  }
                }

                else
                {
                  v29 = v20;
                }
              }

              else
              {
                v29 = v20;
              }

              do
              {
                v37 = *v29;
                *v29++ = 0;
                *v27++ = v37;
              }

              while (v29 != v16);
              return result;
            }

            result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a3, v21, v20);
            if (result)
            {
              break;
            }

            v22 = *v20;
            *v20++ = 0;
            *(v19 - 2) = v22;
            v19 = (v19 + 8);
            if (v20 == v16)
            {
              goto LABEL_19;
            }
          }

          v23 = *v21;
          *v21++ = 0;
          *(v19 - 2) = v23;
          v19 = (v19 + 8);
        }

        while (v20 != v16);
LABEL_19:
        if (v21 == a2)
        {
          return result;
        }

        v24 = (v19 - 1);
        v25 = a2 - v21 - 8;
        if (v25 < 0x68)
        {
          v26 = v21;
          goto LABEL_42;
        }

        if (v21 < (v19 + (v25 & 0xFFFFFFFFFFFFFFF8) - 8) && v24 < (v21 + (v25 & 0xFFFFFFFFFFFFFFF8) + 8))
        {
          v26 = v21;
          do
          {
LABEL_42:
            v46 = *v26;
            *v26++ = 0;
            *v24++ = v46;
          }

          while (v26 != a2);
          return result;
        }

        v38 = 0;
        v39 = (v25 >> 3) + 1;
        v40 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        v24 = (v19 + v40 * 8 - 16);
        v26 = &v21[v40];
        v41 = (v21 + 2);
        v42 = v39 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = &v19[v38];
          v44 = *(v41 - 1);
          v45 = *v41;
          *(v41 - 1) = 0uLL;
          *v41 = 0uLL;
          *(v43 - 1) = v44;
          *v43 = v45;
          v41 += 2;
          v38 += 2;
          v42 -= 4;
        }

        while (v42);
        if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_42;
        }
      }

      else
      {

        return std::__insertion_sort_move[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(result, a2, a5, a3);
      }
    }
  }

  return result;
}

CommutativeOperand **std::__merge_move_assign[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **result, CommutativeOperand **a2, CommutativeOperand **a3, CommutativeOperand **a4, CommutativeOperand **a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_18:
    while (a3 != a4)
    {
      v18 = *a3;
      *a3 = 0;
      v19 = *a5;
      *a5 = v18;
      if (v19)
      {
        v20 = *(v19 + 10);
        if (v20 != v19 + 96)
        {
          free(v20);
        }

        llvm::deallocate_buffer(*(v19 + 7), (8 * *(v19 + 18)));
      }

      ++a3;
      ++a5;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a6, a3, v11);
      if (result)
      {
        v12 = *a3;
        *a3 = 0;
        v13 = *a5;
        *a5 = v12;
        if (v13)
        {
          v14 = *(v13 + 10);
          if (v14 != v13 + 96)
          {
            free(v14);
          }

          llvm::deallocate_buffer(*(v13 + 7), (8 * *(v13 + 18)));
        }

        ++a3;
        ++a5;
        if (v11 == a2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = *v11;
        *v11 = 0;
        v16 = *a5;
        *a5 = v15;
        if (v16)
        {
          v17 = *(v16 + 10);
          if (v17 != v16 + 96)
          {
            free(v17);
          }

          llvm::deallocate_buffer(*(v16 + 7), (8 * *(v16 + 18)));
        }

        ++v11;
        ++a5;
        if (v11 == a2)
        {
          goto LABEL_18;
        }
      }
    }

    while (v11 != a2)
    {
      v21 = *v11;
      *v11 = 0;
      v22 = *a5;
      *a5 = v21;
      if (v22)
      {
        v23 = *(v22 + 10);
        if (v23 != v22 + 96)
        {
          free(v23);
        }

        llvm::deallocate_buffer(*(v22 + 7), (8 * *(v22 + 18)));
      }

      ++v11;
      ++a5;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **a1, CommutativeOperand **a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v46 = a6;
  if (a6)
  {
    while (1)
    {
      if (v46 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(a1, a2, a3, a4, a5, v46, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = &a1[v15];
        if (SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a4, a2, &a1[v15]))
        {
          break;
        }

        ++v16;
        ++v15;
        if (a5 == v16)
        {
          return;
        }
      }

      v18 = a5 - v16;
      v19 = v46;
      v44 = a3;
      v45 = a8;
      if (a5 - v16 >= v46)
      {
        if (a5 - 1 == v16)
        {
          v41 = a1[v16];
          a1[v16] = *a2;
          *a2 = v41;
          return;
        }

        v24 = v18 / 2;
        v23 = (&a1[v18 / 2] + v15 * 8);
        if (a3 == a2)
        {
          v21 = a2;
        }

        else
        {
          v43 = v18 / 2;
          v25 = (a3 - a2) >> 3;
          v21 = a2;
          do
          {
            v26 = &v21[v25 >> 1];
            v27 = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(&v47, v26, v23);
            if (v27)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v27)
            {
              v21 = v26 + 1;
            }
          }

          while (v25);
          v24 = v43;
          v19 = v46;
        }

        v20 = v21 - a2;
        a3 = v21;
        if (v23 != a2)
        {
LABEL_31:
          a3 = v23;
          if (a2 != v21)
          {
            v28 = *v23;
            *v23 = *a2;
            a3 = (v23 + 1);
            *a2 = v28;
            for (i = a2 + 1; i != v21; ++i)
            {
              if (a3 == a2)
              {
                a2 = i;
              }

              v30 = *a3;
              *a3++ = *i;
              *i = v30;
            }

            if (a3 != a2)
            {
              v31 = a3;
              v32 = a2;
              while (1)
              {
                v33 = *v31;
                *v31++ = *a2;
                *a2++ = v33;
                v34 = v31 == v32;
                if (a2 == v21)
                {
                  if (v31 == v32)
                  {
                    goto LABEL_48;
                  }

                  a2 = v32 + 1;
                  v35 = v31;
                  while (1)
                  {
                    v36 = *v31;
                    *v35++ = *v32;
                    *v32 = v36;
                    v34 = v35 == v32;
                    if (a2 != v21)
                    {
                      break;
                    }

                    v31 = v35;
                    if (v35 == v32)
                    {
                      goto LABEL_48;
                    }
                  }

                  ++v31;
                }

                if (v34)
                {
                  v32 = a2;
                }
              }
            }

            a3 = a2;
          }
        }
      }

      else
      {
        v20 = v46 / 2;
        v21 = &a2[v46 / 2];
        if (v17 == a2)
        {
          v23 = &a1[v15];
          v24 = 0;
          a3 = &a2[v46 / 2];
        }

        else
        {
          v42 = &a1[v15];
          v22 = (a2 - a1 - v15 * 8) >> 3;
          v23 = v17;
          do
          {
            if (SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a4, v21, &v23[v22 >> 1]))
            {
              v22 >>= 1;
            }

            else
            {
              v23 += (v22 >> 1) + 1;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v20 = v46 / 2;
          v19 = v46;
          v24 = v23 - v42;
          a3 = &a2[v46 / 2];
          if (v23 != a2)
          {
            goto LABEL_31;
          }
        }
      }

LABEL_48:
      v37 = a5 - v24 - v16;
      v38 = v19 - v20;
      if (v24 + v20 >= v19 + a5 - (v24 + v20) - v16)
      {
        a5 = v24;
        v39 = v20;
        std::__inplace_merge<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(a3, v21, v44, a4, v37, v19 - v20, a7, v45);
        v40 = v23;
        v46 = v39;
        a1 = v17;
        a2 = v40;
        a8 = v45;
        if (!v39)
        {
          return;
        }
      }

      else
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(v17, v23, a3, a4, v24, v20, a7, v45);
        a5 = v37;
        v46 = v38;
        a1 = a3;
        a2 = v21;
        a3 = v44;
        a8 = v45;
        if (!v38)
        {
          return;
        }
      }
    }
  }
}

CommutativeOperand **std::__insertion_sort_move[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **result, CommutativeOperand **a2, CommutativeOperand **a3, uint64_t a4)
{
  if (result != a2)
  {
    v6 = *result;
    *result = 0;
    v7 = result + 1;
    *a3 = v6;
    if (result + 1 != a2)
    {
      v9 = a3;
      do
      {
        v11 = v9++;
        result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a4, v7, v11);
        if (result)
        {
          v12 = *v11;
          *v11 = 0;
          v11[1] = v12;
          v13 = a3;
          if (v11 == a3)
          {
LABEL_16:
            v18 = *v7;
            *v7 = 0;
            v19 = *v13;
            *v13 = v18;
            if (v19)
            {
              goto LABEL_19;
            }
          }

          else
          {
            do
            {
              v14 = v11 - 1;
              result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a4, v7, v11 - 1);
              if (!result)
              {
                v13 = v11;
                goto LABEL_16;
              }

              v15 = *(v11 - 1);
              v16 = *v11;
              *(v11 - 1) = 0;
              *v11 = v15;
              if (v16)
              {
                v17 = *(v16 + 10);
                if (v17 != v16 + 96)
                {
                  free(v17);
                }

                llvm::deallocate_buffer(*(v16 + 7), (8 * *(v16 + 18)));
              }

              --v11;
            }

            while (v14 != a3);
            v20 = *v7;
            *v7 = 0;
            v19 = *a3;
            *a3 = v20;
            if (v19)
            {
LABEL_19:
              v21 = *(v19 + 10);
              if (v21 != v19 + 96)
              {
                free(v21);
              }

              llvm::deallocate_buffer(*(v19 + 7), (8 * *(v19 + 18)));
            }
          }
        }

        else
        {
          v10 = *v7;
          *v7 = 0;
          *v9 = v10;
        }

        ++v7;
      }

      while (v7 != a2);
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **a1, CommutativeOperand **a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a5 > a6)
  {
    if (a2 == a3)
    {
      v25 = 0;
      v15 = a7;
      goto LABEL_29;
    }

    v10 = a3 - a2 - 8;
    if (v10 <= 0x47 || ((v11 = (v10 & 0xFFFFFFFFFFFFFFF8) + 8, (a7 + v11) > a2) ? (v12 = (a2 + v11) > a7) : (v12 = 0), v12))
    {
      v25 = 0;
      v15 = a7;
      v16 = a2;
    }

    else
    {
      v13 = (v10 >> 3) + 1;
      v14 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      v15 = &a7[v14];
      v16 = &a2[v14];
      v17 = (a2 + 2);
      v18 = a7 + 2;
      v19 = vdupq_n_s64(1uLL);
      v20 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      v21 = 0uLL;
      v22 = 0uLL;
      do
      {
        v23 = *(v17 - 1);
        v24 = *v17;
        *(v17 - 1) = 0uLL;
        *v17 = 0uLL;
        *(v18 - 1) = v23;
        *v18 = v24;
        v22 = vaddq_s64(v22, v19);
        v21 = vaddq_s64(v21, v19);
        v17 += 2;
        v18 += 2;
        v20 -= 4;
      }

      while (v20);
      v25 = vaddvq_s64(vpaddq_s64(v21, v22));
      if (v13 == (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_29:
        v46 = a4;
        std::__half_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,std::__invert<SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>>(v15, v15, a7, a7, a2, a2, a1, a1, a3, a3, &v46);
        if (!a7)
        {
          return;
        }

        goto LABEL_33;
      }
    }

    do
    {
      v41 = *v16;
      *v16++ = 0;
      *v15++ = v41;
      ++v25;
    }

    while (v16 != a3);
    goto LABEL_29;
  }

  if (a1 == a2)
  {
    v25 = 0;
    v31 = a7;
    goto LABEL_32;
  }

  v26 = a2 - a1 - 8;
  if (v26 <= 0x47 || ((v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + 8, (a7 + v27) > a1) ? (v28 = (a1 + v27) > a7) : (v28 = 0), v28))
  {
    v25 = 0;
    v31 = a7;
    v32 = a1;
    do
    {
LABEL_26:
      v42 = *v32;
      *v32++ = 0;
      *v31++ = v42;
      ++v25;
    }

    while (v32 != a2);
    goto LABEL_32;
  }

  v29 = (v26 >> 3) + 1;
  v30 = v29 & 0x3FFFFFFFFFFFFFFCLL;
  v31 = &a7[v30];
  v32 = &a1[v30];
  v33 = (a1 + 2);
  v34 = a7 + 2;
  v35 = vdupq_n_s64(1uLL);
  v36 = v29 & 0x3FFFFFFFFFFFFFFCLL;
  v37 = 0uLL;
  v38 = 0uLL;
  do
  {
    v39 = *(v33 - 1);
    v40 = *v33;
    *(v33 - 1) = 0uLL;
    *v33 = 0uLL;
    *(v34 - 1) = v39;
    *v34 = v40;
    v38 = vaddq_s64(v38, v35);
    v37 = vaddq_s64(v37, v35);
    v33 += 2;
    v34 += 2;
    v36 -= 4;
  }

  while (v36);
  v25 = vaddvq_s64(vpaddq_s64(v37, v38));
  if (v29 != (v29 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_26;
  }

LABEL_32:
  std::__half_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*>(a7, v31, a2, a3, a1, a4);
  if (!a7)
  {
    return;
  }

LABEL_33:
  if (v25)
  {
    for (i = 0; i < v25; ++i)
    {
      v44 = a7[i];
      a7[i] = 0;
      if (v44)
      {
        v45 = *(v44 + 80);
        if (v45 != (v44 + 96))
        {
          free(v45);
        }

        llvm::deallocate_buffer(*(v44 + 56), (8 * *(v44 + 72)));
      }
    }
  }
}

CommutativeOperand **std::__half_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*,std::unique_ptr<CommutativeOperand>*>(CommutativeOperand **result, CommutativeOperand **a2, CommutativeOperand **a3, CommutativeOperand **a4, CommutativeOperand **a5, uint64_t a6)
{
  if (result != a2)
  {
    v11 = result;
    while (a3 != a4)
    {
      result = SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(a6, a3, v11);
      if (result)
      {
        v12 = *a3;
        *a3 = 0;
        v13 = *a5;
        *a5 = v12;
        if (v13)
        {
          v14 = *(v13 + 10);
          if (v14 != v13 + 96)
          {
            free(v14);
          }

          llvm::deallocate_buffer(*(v13 + 7), (8 * *(v13 + 18)));
        }

        ++a3;
        ++a5;
        if (v11 == a2)
        {
          return result;
        }
      }

      else
      {
        v15 = *v11;
        *v11 = 0;
        v16 = *a5;
        *a5 = v15;
        if (v16)
        {
          v17 = *(v16 + 10);
          if (v17 != v16 + 96)
          {
            free(v17);
          }

          llvm::deallocate_buffer(*(v16 + 7), (8 * *(v16 + 18)));
        }

        ++v11;
        ++a5;
        if (v11 == a2)
        {
          return result;
        }
      }
    }

    do
    {
      v18 = *v11;
      *v11 = 0;
      v19 = *a5;
      *a5 = v18;
      if (v19)
      {
        v20 = *(v19 + 10);
        if (v20 != v19 + 96)
        {
          free(v20);
        }

        llvm::deallocate_buffer(*(v19 + 7), (8 * *(v19 + 18)));
      }

      ++v11;
      ++a5;
    }

    while (v11 != a2);
  }

  return result;
}

void std::__half_inplace_merge[abi:nn200100]<std::_ClassicAlgPolicy,std::__invert<SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1} &>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>,std::reverse_iterator<std::unique_ptr<CommutativeOperand>*>>(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    while (a6 != a8)
    {
      v17 = (a6 - 8);
      v16 = v14 - 1;
      --a10;
      if (SortCommutativeOperands::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)const::{lambda(std::unique_ptr<CommutativeOperand> const&,std::unique_ptr<CommutativeOperand> const&)#1}::operator()(*a11, v14 - 1, (a6 - 8)))
      {
        v18 = *v17;
        *v17 = 0;
        v19 = *a10;
        *a10 = v18;
        if (v19)
        {
          v20 = *(v19 + 80);
          if (v20 != (v19 + 96))
          {
            goto LABEL_13;
          }

          goto LABEL_3;
        }

        a6 -= 8;
        v16 = v14;
      }

      else
      {
        v21 = *v16;
        *v16 = 0;
        v19 = *a10;
        *a10 = v21;
        if (v19)
        {
          v20 = *(v19 + 80);
          if (v20 != (v19 + 96))
          {
LABEL_13:
            free(v20);
          }

LABEL_3:
          llvm::deallocate_buffer(*(v19 + 56), (8 * *(v19 + 72)));
        }
      }

      v14 = v16;
      if (v16 == a4)
      {
        return;
      }
    }

    if (a4 != v14)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
      do
      {
        v23 = *--v14;
        *v14 = 0;
        v24 = a10[v22];
        a10[v22] = v23;
        if (v24)
        {
          v25 = *(v24 + 80);
          if (v25 != (v24 + 96))
          {
            free(v25);
          }

          llvm::deallocate_buffer(*(v24 + 56), (8 * *(v24 + 72)));
        }

        --v22;
      }

      while (v14 != a4);
    }
  }
}

uint64_t mlir::controlFlowSink(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = 0;
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = mlir::RegionRange::dereference_iterator(&v11, v3);
      if (*v4 != v4)
      {
        v5 = v4;
        mlir::Region::OpIterator::OpIterator(&v9, v4, 0);
        mlir::Region::OpIterator::OpIterator(&v7 + 1, v5, 1);
        if (v10 != v8)
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
          operator new();
        }
      }

      v3 = v12 + 1;
      v12 = v3;
    }

    while (v3 != a2);
  }

  return 0;
}

void mlir::detail::ConversionPatternRewriterImpl::applyRewrites(mlir::detail::ConversionPatternRewriterImpl *this)
{
  v1 = *(*(this + 47) + 32);
  v11[1] = *(this + 2);
  v11[2] = v1;
  v11[3] = 0;
  v11[4] = 0;
  v11[0] = &unk_28685B570;
  v2 = *(this + 46);
  if (v2)
  {
    v4 = *(this + 22);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      (*(*v6 + 24))(v6, v11);
      v5 -= 8;
    }

    while (v5);
    v7 = *(this + 46);
    if (v7)
    {
      v8 = *(this + 22);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        (*(*v10 + 32))(v10, this + 24);
        v9 -= 8;
      }

      while (v9);
    }
  }

  mlir::RewriterBase::~RewriterBase(v11);
}

void mlir::detail::ConversionPatternRewriterImpl::undoRewrites(mlir::detail::ConversionPatternRewriterImpl *this, unsigned int a2)
{
  v2 = (this + 176);
  v3 = *(this + 46);
  if (v3 != a2)
  {
    v6 = a2;
    v7 = 8 * a2;
    v8 = 8 * v3;
    v9 = v7 - v8;
    v10 = (v8 + *(this + 22) - 8);
    do
    {
      v11 = *v10--;
      (*(*v11 + 16))(v11);
      v9 += 8;
    }

    while (v9);
    v12 = *(this + 46);
    if (v12 != a2)
    {
      if (v12 <= a2)
      {
        if (*(this + 47) < a2)
        {
          llvm::SmallVectorBase<unsigned int>::mallocForGrow();
        }

        if (v6 != v12)
        {
          bzero((*v2 + 8 * v12), 8 * (v6 - v12));
        }
      }

      else
      {
        v13 = 8 * v12;
        v14 = v7 - v13;
        v15 = (v13 + *v2 - 8);
        do
        {
          v16 = *v15;
          *v15 = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }

          --v15;
          v14 += 8;
        }

        while (v14);
      }

      *(this + 46) = a2;
    }
  }
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::remapValues(uint64_t *a1, mlir::detail::OpResultImpl *a2, mlir::detail::OpResultImpl *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v44 = *MEMORY[0x277D85DE8];
  if (a8 > *(a9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v41 = 0;
  v42 = a7;
  v43 = 0;
  if (a8)
  {
    v12 = 0;
    for (i = 0; i != a8; v43 = i)
    {
      v16 = mlir::ValueRange::dereference_iterator(&v42, i);
      v37 = v16;
      v17 = *(v16 + 1);
      Loc = a4;
      if ((a5 & 1) == 0)
      {
        Loc = mlir::Value::getLoc(&v37);
      }

      v19 = a1[43];
      if (!v19)
      {
        v15 = *(a9 + 8);
        if (v15 >= *(a9 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a9 + 8 * v15) = v14;
        ++*(a9 + 8);
        goto LABEL_7;
      }

      v20 = (v17 & 0xFFFFFFFFFFFFFFF8);
      v38 = &v40;
      v39 = 0x100000000;
      if (mlir::TypeConverter::convertType(v19, v20, &v38))
      {
        if (v39 == 1)
        {
          v21 = *v38;
          v23 = v22;
          v35 = v22;
          if (v21 != (*(v22 + 1) & 0xFFFFFFFFFFFFFFF8))
          {
            v36[0] = v22;
            ParentBlock = mlir::Value::getParentBlock(v36);
            v25 = (ParentBlock + 40);
            if (v36[0] && (*(v36[0] + 1) & 7) != 7)
            {
              v25 = (mlir::detail::OpResultImpl::getOwner(v36[0]) + 8);
            }

            v23 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 1, ParentBlock, *v25, Loc, &v35, 1, v21);
            v36[0] = v35;
            *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[]((a1 + 13), v36) = v23;
            v35 = v23;
          }

          v26 = *(a9 + 8);
          if (v26 >= *(a9 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v27 = 0;
          *(*a9 + 8 * v26) = v23;
          ++*(a9 + 8);
          v28 = v38;
          if (v38 != &v40)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v30 = *(a9 + 8);
          if (v30 >= *(a9 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a9 + 8 * v30) = v29;
          ++*(a9 + 8);
          v27 = 3;
          v28 = v38;
          if (v38 != &v40)
          {
LABEL_22:
            free(v28);
          }
        }
      }

      else
      {
        v36[0] = a2;
        v36[1] = a3;
        v36[2] = v12;
        v36[3] = v16;
        v36[4] = v20;
        (*(*a1 + 88))(a1, Loc, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::remapValues(llvm::StringRef,std::optional<mlir::Location>,mlir::PatternRewriter &,mlir::ValueRange,llvm::SmallVectorImpl<mlir::Value> &)::$_0>, v36);
        v27 = 1;
        v28 = v38;
        if (v38 != &v40)
        {
          goto LABEL_22;
        }
      }

      if (v27 != 3 && v27)
      {
        return 0;
      }

LABEL_7:
      v12 = (v41 + 1);
      i = v43 + 1;
      ++v41;
    }
  }

  return 1;
}

unint64_t anonymous namespace::ConversionValueMapping::lookupOrDefault(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    if (a3 && (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
    {
      return a2;
    }

    goto LABEL_28;
  }

  v4 = *a1;
  v5 = v3 - 1;
  v6 = a2;
  if (!a3)
  {
    while (1)
    {
      a2 = v6;
      v18 = HIDWORD(v6);
      v19 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
      v16 = v5 & (-348639895 * ((((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 32) >> 15) ^ (-348639895 * (v18 ^ (v19 >> 47) ^ v19))));
      v17 = *(v4 + 16 * v16);
      if (v17 != a2)
      {
        break;
      }

LABEL_21:
      if (v16 == v3)
      {
        v7 = a2;
        goto LABEL_23;
      }

      v6 = *(v4 + 16 * v16 + 8);
      v7 = a2;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    v14 = 1;
    while (v17 != -4096)
    {
      v15 = v16 + v14++;
      v16 = v15 & v5;
      v17 = *(v4 + 16 * v16);
      if (v17 == a2)
      {
        goto LABEL_21;
      }
    }

LABEL_28:
    if (a2)
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  a2 = 0;
  while (1)
  {
    v7 = v6;
    if ((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) == a3)
    {
      a2 = v6;
    }

    v8 = 0x9DDFEA08EB382D69 * ((8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6));
    v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v8 >> 47) ^ v8);
    v10 = v5 & (-348639895 * ((v9 >> 47) ^ v9));
    v11 = *(v4 + 16 * v10);
    if (v11 != v7)
    {
      break;
    }

LABEL_7:
    if (v10 != v3)
    {
      v6 = *(v4 + 16 * v10 + 8);
      if (v6)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  v12 = 1;
  while (v11 != -4096)
  {
    v13 = v10 + v12++;
    v10 = v13 & v5;
    v11 = *(v4 + 16 * v10);
    if (v11 == v7)
    {
      goto LABEL_7;
    }
  }

LABEL_23:
  if (a2)
  {
    return a2;
  }

  else
  {
    return v7;
  }
}

BOOL mlir::TypeConverter::convertType(uint64_t a1, void *a2, uint64_t *a3)
{
  v56[2] = *MEMORY[0x277D85DE8];
  v53 = a2;
  Context = mlir::Type::getContext(&v53);
  isMultithreadingEnabled = mlir::MLIRContext::isMultithreadingEnabled(Context);
  if (isMultithreadingEnabled)
  {
    llvm::sys::RWMutexImpl::lock_shared((a1 + 520));
  }

  v7 = *(a1 + 488);
  if (v7)
  {
    v8 = *(a1 + 472);
    v9 = ((v53 >> 4) ^ (v53 >> 9)) & (v7 - 1);
    v10 = *(v8 + 16 * v9);
    if (v53 == v10)
    {
LABEL_5:
      if (v9 != v7)
      {
        v18 = v8 + 16 * v9;
        v21 = *(v18 + 8);
        v19 = (v18 + 8);
        v20 = v21;
        if (v21)
        {
          v22 = *(a3 + 2);
          if (v22 >= *(a3 + 3))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a3 + 8 * v22) = v20;
          ++*(a3 + 2);
          v20 = *v19 != 0;
        }

        v23 = 0;
        if (isMultithreadingEnabled)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v51 = 1;
      while (v10 != -4096)
      {
        v52 = v9 + v51++;
        v9 = v52 & (v7 - 1);
        v10 = *(v8 + 16 * v9);
        if (v53 == v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v11 = *(a1 + 496);
  v12 = *(a1 + 512);
  if (v12)
  {
    v13 = ((v53 >> 4) ^ (v53 >> 9)) & (v12 - 1);
    v14 = v11 + 40 * v13;
    v15 = *v14;
    if (v53 == *v14)
    {
      goto LABEL_18;
    }

    v16 = 1;
    while (v15 != -4096)
    {
      v17 = v13 + v16++;
      v13 = v17 & (v12 - 1);
      v14 = v11 + 40 * v13;
      v15 = *v14;
      if (v53 == *v14)
      {
        goto LABEL_18;
      }
    }
  }

  v14 = v11 + 40 * v12;
LABEL_18:
  if (v14 == v11 + 40 * v12)
  {
    v23 = 1;
    v20 = 1;
    if (isMultithreadingEnabled)
    {
LABEL_24:
      llvm::sys::RWMutexImpl::unlock_shared((a1 + 520));
    }
  }

  else
  {
    v24 = *(v14 + 16);
    v25 = *(a3 + 2);
    if (v25 + v24 > *(a3 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v24)
    {
      memcpy((*a3 + 8 * v25), *(v14 + 8), 8 * v24);
      LODWORD(v25) = *(a3 + 2);
    }

    v23 = 0;
    *(a3 + 2) = v25 + v24;
    v20 = 1;
    if (isMultithreadingEnabled)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (!v23)
  {
    return v20;
  }

  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v27 = *(a3 + 2);
  v28 = 32 * v26;
  v29 = *(a1 + 8) - 8;
  while (1)
  {
    v54 = v53;
    v30 = *(v29 + v28);
    if (!v30)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    v31 = (*(*v30 + 48))(v30, &v54, a3);
    if ((v31 & 0x100) != 0)
    {
      break;
    }

    v28 -= 32;
    if (!v28)
    {
      return 0;
    }
  }

  v33 = v31;
  v34 = mlir::Type::getContext(&v53);
  v35 = mlir::MLIRContext::isMultithreadingEnabled(v34);
  if (v35)
  {
    llvm::sys::RWMutexImpl::lock((a1 + 520));
    if ((v33 & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>(a1 + 472, &v53, &v54);
      v20 = 0;
LABEL_64:
      llvm::sys::RWMutexImpl::unlock((a1 + 520));
      return v20;
    }
  }

  else if ((v33 & 1) == 0)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<decltype(nullptr)>(a1 + 472, &v53, &v54);
    return 0;
  }

  v36 = *a3;
  v37 = *(a3 + 2);
  v38 = v37 - v27;
  if (v37 - v27 == 1)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>,mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::try_emplace<mlir::Type const&>(a1 + 472, &v53, (v36 + 8 * v27), &v54);
    v20 = 1;
    if (!v35)
    {
      return v20;
    }

    goto LABEL_64;
  }

  v54 = v56;
  v55 = 0x200000000;
  if (v38 >= 3)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v37 == v27)
  {
    v39 = 0;
  }

  else
  {
    memcpy(v56, (v36 + 8 * v27), 8 * v38);
    v39 = v55;
  }

  LODWORD(v55) = v39 + v38;
  v40 = *(a1 + 512);
  if (v40)
  {
    v41 = *(a1 + 496);
    v42 = v40 - 1;
    v43 = ((v53 >> 4) ^ (v53 >> 9)) & v42;
    v44 = (v41 + 40 * v43);
    v45 = *v44;
    if (v53 == *v44)
    {
      goto LABEL_61;
    }

    v46 = 0;
    v47 = 1;
    while (v45 != -4096)
    {
      if (v46)
      {
        v48 = 0;
      }

      else
      {
        v48 = v45 == -8192;
      }

      if (v48)
      {
        v46 = v44;
      }

      v49 = v43 + v47++;
      v43 = v49 & v42;
      v44 = (v41 + 40 * v43);
      v45 = *v44;
      if (v53 == *v44)
      {
        goto LABEL_61;
      }
    }

    if (v46)
    {
      v50 = v46;
    }

    else
    {
      v50 = v44;
    }
  }

  else
  {
    v50 = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::InsertIntoBucket<mlir::Type const&,llvm::SmallVector<mlir::Type,2u>>((a1 + 496), v50, &v53, &v54);
LABEL_61:
  if (v54 != v56)
  {
    free(v54);
  }

  v20 = 1;
  if (v35)
  {
    goto LABEL_64;
  }

  return v20;
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a6;
  v14[1] = a7;
  v13 = a8;
  if (a7 != 1 || (*(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8) != a8)
  {
    v12[0] = mlir::Type::getContext(&v13);
    v12[1] = 0;
    v12[2] = a3;
    v12[3] = a4;
    mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(v12, a5, &v13, v14);
    operator new();
  }

  return mlir::ValueRange::dereference_iterator(v14, 0);
}

uint64_t mlir::detail::ConversionPatternRewriterImpl::isOpIgnored(mlir::detail::ConversionPatternRewriterImpl *this, Operation *a2)
{
  v2 = *(this + 74);
  if (v2)
  {
    v3 = *(this + 35);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v3 + 8 * v5);
    if (v6 == a2)
    {
      return 1;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 8 * (v9 & v4));
      v10 = 1;
      if (v6 == a2)
      {
        return v10;
      }
    }
  }

  v10 = *(this + 64);
  if (v10)
  {
    v11 = *(this + 30);
    v12 = v10 - 1;
    v13 = (v10 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v14 = *(v11 + 8 * v13);
    if (v14 == a2)
    {
      return 1;
    }

    v15 = 1;
    do
    {
      v10 = v14 != -4096;
      if (v14 == -4096)
      {
        break;
      }

      v16 = v13 + v15++;
      v13 = v16 & v12;
      v14 = *(v11 + 8 * (v16 & v12));
      v10 = 1;
    }

    while (v14 != a2);
  }

  return v10;
}

BOOL mlir::detail::ConversionPatternRewriterImpl::wasOpReplaced(mlir::detail::ConversionPatternRewriterImpl *this, Operation *a2)
{
  v2 = *(this + 74);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 35);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 8 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 8 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

mlir::Block *mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(mlir::detail::ConversionPatternRewriterImpl *this, mlir::ConversionPatternRewriter *a2, mlir::Region *a3, const mlir::TypeConverter *a4, mlir::TypeConverter::SignatureConversion *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = a3;
  *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](this + 352, &v22) = a4;
  v9 = v22;
  if (*v22 == v22)
  {
    return 0;
  }

  for (i = *(*(v22 + 1) + 8); i != v9; i = v11)
  {
    v11 = *(i + 1);
    v12 = (i - 8);
    mlir::TypeConverter::convertBlockSignature(a4, (i - 8), v23);
    if (v27 != 1)
    {
      return 0;
    }

    mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(this, a2, v12, a4, v23);
    if (v27)
    {
      if (v25 != v26)
      {
        free(v25);
      }

      if (v23[0] != v24)
      {
        free(v23[0]);
      }
    }
  }

  if (a5)
  {
    v14 = *(v22 + 1);
    if (v14)
    {
      v15 = (v14 - 8);
    }

    else
    {
      v15 = 0;
    }

    return mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(this, a2, v15, a4, a5);
  }

  else
  {
    v16 = *(v22 + 1);
    if (v16)
    {
      v17 = (v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    mlir::TypeConverter::convertBlockSignature(a4, v17, v23);
    if (v27 == 1)
    {
      v18 = *(v22 + 1);
      if (v18)
      {
        v19 = (v18 - 8);
      }

      else
      {
        v19 = 0;
      }

      result = mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(this, a2, v19, a4, v23);
      if (v27)
      {
        if (v25 != v26)
        {
          v20 = result;
          free(v25);
          result = v20;
        }

        if (v23[0] != v24)
        {
          v21 = result;
          free(v23[0]);
          return v21;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::TypeConverter::convertBlockSignature(mlir::TypeConverter *this@<X0>, mlir::Block *a2@<X1>, uint64_t a3@<X8>)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 7) - *(a2 + 6);
  __src = v22;
  v21 = 0x400000000;
  if ((v5 >> 3))
  {
    v6 = (v5 >> 3);
    if ((v5 >> 3) >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if ((v5 >> 3))
    {
      v7 = v22;
      if (32 * v6 == 32)
      {
        goto LABEL_35;
      }

      v8 = ((32 * v6 - 32) >> 5) + 1;
      v7 = &v22[2 * (v8 & 0xFFFFFFFFFFFFFFELL)];
      v9 = &v23;
      v10 = v8 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v9 - 32) = 0;
        *v9 = 0;
        *(v9 - 8) = 0;
        *(v9 + 24) = 0;
        v9 += 8;
        v10 -= 2;
      }

      while (v10);
      if (v8 != (v8 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_35:
        do
        {
          *v7 = 0;
          *(v7 + 24) = 0;
          v7 += 2;
        }

        while (v7 != &v22[2 * v6]);
      }
    }

    LODWORD(v21) = v5 >> 3;
  }

  v24 = v26;
  v25 = 0x400000000;
  ArgumentTypes = mlir::Block::getArgumentTypes(a2);
  mlir::ValueRange::ValueRange(v27, ArgumentTypes, (v12 - ArgumentTypes) >> 3);
  mlir::TypeRange::TypeRange(&v18, v27[0], v27[1]);
  if (mlir::TypeConverter::convertSignatureArgs(this, v18, v19, &__src, 0))
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x400000000;
    v13 = v21;
    if (v21 && &__src != a3)
    {
      if (__src == v22)
      {
        if (v21 >= 5)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a3, __src, 32 * v21);
        *(a3 + 8) = v13;
      }

      else
      {
        *a3 = __src;
        v14 = HIDWORD(v21);
        *(a3 + 8) = v13;
        *(a3 + 12) = v14;
        __src = v22;
        HIDWORD(v21) = 0;
      }

      LODWORD(v21) = 0;
    }

    *(a3 + 144) = a3 + 160;
    *(a3 + 152) = 0x400000000;
    v15 = 1;
    if (&__src != a3)
    {
      v16 = v25;
      if (v25)
      {
        if (v24 == v26)
        {
          if (v25 >= 5)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(*(a3 + 144), v24, 8 * v25);
          *(a3 + 152) = v16;
        }

        else
        {
          *(a3 + 144) = v24;
          v17 = HIDWORD(v25);
          *(a3 + 152) = v16;
          *(a3 + 156) = v17;
          v24 = v26;
          HIDWORD(v25) = 0;
        }

        LODWORD(v25) = 0;
        v15 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
    *a3 = 0;
  }

  *(a3 + 192) = v15;
  if (v24 != v26)
  {
    free(v24);
  }

  if (__src != v22)
  {
    free(__src);
  }
}

mlir::Block *mlir::detail::ConversionPatternRewriterImpl::applySignatureConversion(mlir::detail::ConversionPatternRewriterImpl *this, mlir::ConversionPatternRewriter *a2, mlir::Block *a3, const mlir::TypeConverter *a4, mlir::TypeConverter::SignatureConversion *a5)
{
  v37[3] = *MEMORY[0x277D85DE8];
  v6 = (a2 + 24);
  v34 = *(a2 + 24);
  v8 = *(a3 + 6);
  v7 = *(a3 + 7);
  v9 = *(a5 + 18);
  v10 = *(a5 + 38);
  ArgumentTypes = mlir::Block::getArgumentTypes(a3);
  v13 = 8 * v10;
  if ((v12 - ArgumentTypes) != v13)
  {
    goto LABEL_14;
  }

  if (v10)
  {
    if (v12 != ArgumentTypes)
    {
      v14 = v13 - 8;
      v15 = v9;
      while (*v15 == (*(*ArgumentTypes + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        ArgumentTypes += 8;
        ++v15;
        if (ArgumentTypes != v12)
        {
          v16 = v14;
          v14 -= 8;
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      goto LABEL_14;
    }

    v15 = v9;
LABEL_10:
    if (ArgumentTypes != v12)
    {
LABEL_14:
      v17 = v7 - v8;
      UnknownLoc = mlir::Builder::getUnknownLoc(v6 - 2, v12);
      if (v10 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (!v10)
      {
LABEL_33:
        if ((v17 & 0x7FFFFFFF8) != 0)
        {
          v25 = 0;
          do
          {
            v26 = *a5 + 32 * v25;
            if ((*(v26 + 24) & 1) != 0 && !*(v26 + 16))
            {
              v27 = *(v26 + 8);
              if (v27)
              {
                v28 = *v26;
                v29 = *(*(*(a3 + 6) + 8 * v25) + 32);
                v30 = v28;
                v31 = 1;
                do
                {
                  v36[v30++] = v29;
                }

                while (v27 > v31++);
              }
            }

            ++v25;
          }

          while (v25 != (v17 >> 3));
        }

        mlir::Block::getParent(a3);
        mlir::TypeRange::TypeRange(v37, v9, v10);
        mlir::OpBuilder::createBlock();
      }

      v19 = vdupq_n_s64(v10 - 1);
      v20 = v10 + 1;
      v21 = vmovn_s64(vcgeq_u64(v19, xmmword_2573686A0));
      if (v21.i8[0])
      {
        v36[0] = UnknownLoc;
        v22 = v20 & 0xE;
        if ((v21.i8[4] & 1) == 0)
        {
LABEL_19:
          if (v22 == 2)
          {
            goto LABEL_33;
          }

LABEL_23:
          v23 = vmovn_s64(vcgtq_u64(v19, xmmword_2573686B0));
          if (v23.i8[0])
          {
            v36[2] = UnknownLoc;
            if ((v23.i8[4] & 1) == 0)
            {
LABEL_25:
              if (v22 == 4)
              {
                goto LABEL_33;
              }

              goto LABEL_29;
            }
          }

          else if ((v23.i8[4] & 1) == 0)
          {
            goto LABEL_25;
          }

          v36[3] = UnknownLoc;
          if (v22 == 4)
          {
            goto LABEL_33;
          }

LABEL_29:
          v24 = vmovn_s64(vcgtq_u64(v19, xmmword_2573686C0));
          if (v24.i8[0])
          {
            v36[4] = UnknownLoc;
          }

          if (v24.i8[4])
          {
            v36[5] = UnknownLoc;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v22 = v20 & 0xE;
        if ((v21.i8[4] & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v36[1] = UnknownLoc;
      if (v22 == 2)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v15 = v9;
    if (ArgumentTypes != v12)
    {
      goto LABEL_14;
    }
  }

  if (v15 != (v9 + v13))
  {
    goto LABEL_14;
  }

  if (v34)
  {
    *v6 = v34;
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
  }

  return a3;
}

uint64_t mlir::TypeConverter::convertType(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = v6;
  v5 = 0x100000000;
  v2 = 0;
  if (mlir::TypeConverter::convertType(a1, a2, &v4) && v5 == 1)
  {
    v2 = *v4;
  }

  if (v4 != v6)
  {
    free(v4);
  }

  return v2;
}

void mlir::ConversionPatternRewriter::eraseBlock(mlir::detail::ConversionPatternRewriterImpl **this, mlir::Block *a2)
{
  v3 = *(a2 + 5);
  if (v3 != (a2 + 32))
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v3);
    mlir::ConversionPatternRewriter::eraseOp(this, ValuePtr);
  }

  mlir::detail::ConversionPatternRewriterImpl::notifyBlockIsBeingErased(this[5], a2);
}

void mlir::detail::ConversionPatternRewriterImpl::notifyOperationInserted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 + 32 != a4)
    {
      llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(a4);
    }

    operator new();
  }

  operator new();
}

void mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 36);
  v7 = a2 - 16;
  v31 = a3;
  v32 = 0;
  if (!v6)
  {
    v7 = 0;
  }

  v33 = v7;
  v34 = 0;
  if (!a4 || !v6)
  {
LABEL_29:
    operator new();
  }

  v9 = 0;
  while (1)
  {
    v13 = mlir::ValueRange::dereference_iterator(&v31, v9);
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, v34);
    v29 = NextResultAtOffset;
    if (!v13)
    {
      if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id)
      {
        v17 = a2;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = *(a1 + 336);
        if (v18)
        {
          v19 = *(a1 + 320);
          v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
          v21 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v20 >> 47) ^ v20);
          v22 = v18 - 1;
          v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
          v24 = *(v19 + 16 * v23);
          if (v24 == v17)
          {
            goto LABEL_8;
          }

          v25 = 1;
          while (v24 != -4096)
          {
            v26 = v23 + v25++;
            v23 = v26 & v22;
            v24 = *(v19 + 16 * v23);
            if (v24 == v17)
            {
              goto LABEL_8;
            }
          }
        }
      }

      v30[0] = NextResultAtOffset;
      ParentBlock = mlir::Value::getParentBlock(v30);
      if (v30[0])
      {
        v28 = (*(v30[0] + 1) & 7) == 7;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v10 = (ParentBlock + 40);
      }

      else
      {
        v10 = (mlir::detail::OpResultImpl::getOwner(v30[0]) + 8);
      }

      v11 = *v10;
      Loc = mlir::Value::getLoc(&v29);
      mlir::ValueRange::ValueRange(v30, 0, 0);
      v13 = mlir::detail::ConversionPatternRewriterImpl::buildUnresolvedMaterialization(a1, 2, ParentBlock, v11, Loc, v30[0], v30[1], *(v29 + 1) & 0xFFFFFFFFFFFFFFF8);
      NextResultAtOffset = v29;
    }

    v30[0] = NextResultAtOffset;
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a1 + 104, v30) = v13;
LABEL_8:
    v9 = v32 + 1;
    v15 = v34 + 1;
    v32 = v9;
    ++v34;
    if (v9 == a4 || v15 == v6)
    {
      goto LABEL_29;
    }
  }
}

void mlir::detail::ConversionPatternRewriterImpl::notifyBlockInserted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    operator new();
  }

  operator new();
}

void mlir::ConversionPatternRewriter::ConversionPatternRewriter(void *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *a1 = &unk_286865DC8;
  operator new();
}

{
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *a1 = &unk_286865DC8;
  operator new();
}

void mlir::ConversionPatternRewriter::~ConversionPatternRewriter(mlir::ConversionPatternRewriter *this)
{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  mlir::RewriterBase::~RewriterBase(this);
}

{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  mlir::RewriterBase::~RewriterBase(this);
}

{
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  mlir::RewriterBase::~RewriterBase(this);

  JUMPOUT(0x259C63180);
}