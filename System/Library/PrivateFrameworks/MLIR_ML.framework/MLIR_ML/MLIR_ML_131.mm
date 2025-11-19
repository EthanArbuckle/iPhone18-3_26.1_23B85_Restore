void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::tensor::UnPackOp::setInherentAttr(v5 + 64, Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::tensor::UnPackOp::populateInherentAttrs(Context, v6, a3);
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::tensor::UnPackOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] == a2[1])
  {
    return a3[2] == a2[2];
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::UnPackOp>,mlir::OpTrait::OneResult<mlir::tensor::UnPackOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::UnPackOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::UnPackOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::tensor::UnPackOp>,mlir::OpTrait::OpInvariants<mlir::tensor::UnPackOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::DestinationStyleOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::UnPackOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::tensor::UnPackOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::UnPackOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::writeProperties;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneResult<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneOperand<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CollapseShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CollapseShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CollapseShapeOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v2);
  v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v4 = v3;
  *v3 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmResultNames;
  v3[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmBlockArgumentNames;
  v3[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmBlockNames;
  v3[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDefaultDialect;
  {
    v14 = v3;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CastOp>,mlir::OpTrait::OneResult<mlir::tensor::CastOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CastOp>,mlir::OpTrait::OneOperand<mlir::tensor::CastOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CastOp>,mlir::CastOpInterface::Trait<mlir::tensor::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CastOp>>();
    v4 = v14;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v6 = v5;
  *v5 = mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDpsInitsMutable;
  {
    v15 = v5;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::InsertOp>,mlir::OpTrait::OneResult<mlir::tensor::InsertOp>,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::InsertOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::tensor::InsertOp>,mlir::OpTrait::OpInvariants<mlir::tensor::InsertOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::InsertOp>,mlir::DestinationStyleOpInterface::Trait<mlir::tensor::InsertOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::InsertOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::InsertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::InsertOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::InsertOp>>();
    v6 = v15;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id, v6);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v8 = v7;
  *v7 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::tensor::UnPackOp>::getSpeculatability;
  {
    v16 = v7;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v8 = v16;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v10 = v9;
  *v9 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getEffects;
  {
    v17 = v9;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v10 = v17;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v10);
  v11 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v11 = mlir::detail::ReifyRankedShapedTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::reifyResultShapes;
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ReifyRankedShapedTypeOpInterface,mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp,mlir::tensor::PadOp>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id, v11);
  v12 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v12 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::inferReturnTypes;
  v12[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::refineReturnTypes;
  v12[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::DimOp>,mlir::OpTrait::OneResult<mlir::tensor::DimOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::DimOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::tensor::DimOp>,mlir::OpTrait::OpInvariants<mlir::tensor::DimOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::DimOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::DimOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::DimOp>,mlir::ShapedDimOpInterface::Trait<mlir::tensor::DimOp>,mlir::InferTypeOpInterface::Trait<mlir::tensor::DimOp>>();
  }

  v13 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v12);
}

mlir::MutableOperandRange *mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDpsInitsMutable@<X0>(uint64_t a1@<X1>, mlir::MutableOperandRange *a2@<X8>)
{
  v5 = a1;
  ODSOperandIndexAndLength = mlir::tensor::UnPackOp::getODSOperandIndexAndLength(&v5, 1u);
  return mlir::MutableOperandRange::MutableOperandRange(a2, (*(v5 + 72) + 32 * ODSOperandIndexAndLength));
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 - 1;
  do
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, v6);
    v9 = v8 == mlir::TypeRange::dereference_iterator(a3, v6);
    result = v9;
    if (!v9)
    {
      break;
    }

    v9 = v7 == v6++;
  }

  while (!v9);
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::tensor::UnPackOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x400000000;
  if (mlir::tensor::UnPackOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v24))
  {
    mlir::TypeRange::TypeRange(&v22, v24, v25);
    mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
    v13 = v23;
    if (v23 == v21[1])
    {
      if (!v23)
      {
LABEL_7:
        v18 = 1;
        v19 = v24;
        if (v24 == v26)
        {
          return v18;
        }

        goto LABEL_10;
      }

      v14 = 0;
      v15 = v22;
      v16 = v21[0];
      while (1)
      {
        v17 = mlir::TypeRange::dereference_iterator(v15, v14);
        if (v17 != mlir::TypeRange::dereference_iterator(v16, v14))
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }
    }

    v22 = "tensor.unpack";
    v23 = 13;
    v18 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v24, " are incompatible with return type(s) of operation ", a11);
    v19 = v24;
    if (v24 == v26)
    {
      return v18;
    }

LABEL_10:
    free(v19);
    return v18;
  }

  v18 = 0;
  v19 = v24;
  if (v24 != v26)
  {
    goto LABEL_10;
  }

  return v18;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::tensor::detail::UnPackOpGenericAdaptorBase::UnPackOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::tensor::UnPackOp::fold(&v12, v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a5 + 8 * v10) = v9;
  ++*(a5 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v94 = v1;
  v107 = a1;
  v71 = v3;
  v82 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v95 = v1;
  v108 = a1;
  v72 = v3;
  v83 = v2;
  v62 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v96 = v1;
  v109 = a1;
  v73 = v3;
  v84 = v2;
  v54 = v5;
  v63 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v97 = v1;
  v110 = a1;
  v74 = v3;
  v85 = v2;
  v55 = v5;
  v64 = v4;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v98 = v1;
  v111 = a1;
  v75 = v3;
  v86 = v2;
  v56 = v5;
  v65 = v4;
  v41 = v7;
  v48 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v99 = v1;
  v112 = a1;
  v76 = v3;
  v87 = v2;
  v57 = v5;
  v66 = v4;
  v42 = v7;
  v49 = v6;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v100 = v1;
  v113 = a1;
  v77 = v3;
  v88 = v2;
  v58 = v5;
  v67 = v4;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  v1 = v100;
  a1 = v113;
  v10 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

LABEL_65:
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
    v12 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_66;
  }

LABEL_64:
  v101 = v1;
  v114 = a1;
  v78 = v3;
  v89 = v2;
  v59 = v5;
  v68 = v4;
  v44 = v7;
  v51 = v6;
  v33 = v9;
  v38 = v8;
  v29 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v10 = v29;
  v9 = v33;
  v8 = v38;
  v7 = v44;
  v6 = v51;
  v5 = v59;
  v4 = v68;
  v3 = v78;
  v2 = v89;
  v1 = v101;
  a1 = v114;
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_66:
  v103 = v1;
  v116 = a1;
  v80 = v3;
  v91 = v2;
  v61 = v5;
  v70 = v4;
  v46 = v7;
  v53 = v6;
  v35 = v9;
  v40 = v8;
  v28 = v11;
  v31 = v10;
  v26 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v12 = v26;
  v11 = v28;
  v10 = v31;
  v9 = v35;
  v8 = v40;
  v7 = v46;
  v6 = v53;
  v5 = v61;
  v4 = v70;
  v3 = v80;
  v2 = v91;
  v1 = v103;
  a1 = v116;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::tensor::UnPackOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2))
  {
    v6 = a1;
    if (mlir::tensor::UnPackOp::verifyInvariantsImpl(&v6))
    {
      v6 = a1;
      mlir::tensor::UnPackOp::verify(&v6);
    }
  }

  return 0;
}

uint64_t mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    return mlir::detail::verifyInferredResultTypes(a1, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_28685E580;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  a5(v19, a6);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "this operation does not support properties";
    v18 = 42;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v20 + 24 * v21;
    v7 = v17;
    *(v6 + 2) = v18;
    *v6 = v7;
    ++v21;
    if (v19[0])
    {
      mlir::InFlightDiagnostic::report(v19);
    }
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::YieldOp>,mlir::OpTrait::ZeroResults<mlir::tensor::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::YieldOp>,mlir::OpTrait::OneOperand<mlir::tensor::YieldOp>,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::tensor::YieldOp>,mlir::OpTrait::OpInvariants<mlir::tensor::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::tensor::YieldOp>,mlir::OpTrait::ReturnLike<mlir::tensor::YieldOp>,mlir::OpTrait::IsTerminator<mlir::tensor::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::tensor::YieldOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getMutableSuccessorOperands;
  v5[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getSuccessorRegions;
  {
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::tensor::GenerateOp, mlir::tensor::PadOp>::Impl<Empty>]";
  v6 = 134;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::YieldOp::print(&v7, a3);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::tensor::YieldOp>,mlir::OpTrait::ZeroResults<mlir::tensor::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::YieldOp>,mlir::OpTrait::OneOperand<mlir::tensor::YieldOp>,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::tensor::YieldOp>,mlir::OpTrait::OpInvariants<mlir::tensor::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::tensor::YieldOp>,mlir::OpTrait::ReturnLike<mlir::tensor::YieldOp>,mlir::OpTrait::IsTerminator<mlir::tensor::YieldOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::tensor::YieldOp>::verifyTrait(a1) & 1) != 0 && (v8 = a1, (mlir::tensor::YieldOp::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    return mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::tensor::YieldOp>::verifyTrait(mlir::Block **a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(a1[2]);
    a1 = v1;
    if (ParentOp)
    {
      v3 = *(*(ParentOp + 48) + 16);
      if (v3 == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
      {
        return 1;
      }
    }
  }

  v23 = 257;
  mlir::Operation::emitOpError(&v29, a1, &v22);
  if (!v29)
  {
    goto LABEL_17;
  }

  LODWORD(v26) = 3;
  *(&v26 + 1) = "expects parent op ";
  *&v27 = 18;
  if (v32 >= v33)
  {
    if (v31 > &v26 || v31 + 24 * v32 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = v31 + 24 * v32;
  v7 = v26;
  *(v6 + 2) = v27;
  *v6 = v7;
  v8 = ++v32;
  if (v29)
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "to be one of '";
    *&v27 = 14;
    if (v8 >= v33)
    {
      if (v31 > &v26 || v31 + 24 * v8 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v31 + 24 * v32;
    v10 = v26;
    *(v9 + 2) = v27;
    *v9 = v10;
    ++v32;
    v26 = xmmword_27983AD58;
    v27 = *&off_27983AD68;
    if (v29)
    {
      *&v24 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v26, &v28, v30, v30, &v24);
      if (v29)
      {
        LODWORD(v24) = 3;
        *(&v24 + 1) = "'";
        v25 = 1;
        if (v32 >= v33)
        {
          if (v31 > &v24 || v31 + 24 * v32 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v31 + 24 * v32;
        v12 = v24;
        *(v11 + 2) = v25;
        *v11 = v12;
        ++v32;
      }
    }
  }

  else
  {
LABEL_17:
    v26 = xmmword_27983AD58;
    v27 = *&off_27983AD68;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
  if (v29)
  {
    mlir::InFlightDiagnostic::report(&v29);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v38;
      v15 = __p;
      if (v38 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v38 = v13;
      operator delete(v15);
    }

    v16 = v35;
    if (v35)
    {
      v17 = v36;
      v18 = v35;
      if (v36 != v35)
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
        v18 = v35;
      }

      v36 = v16;
      operator delete(v18);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v5;
}

void anonymous namespace::TensorInlinerInterface::~TensorInlinerInterface(_anonymous_namespace_::TensorInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::TensorInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

const char *llvm::getTypeName<mlir::transform::FindPayloadReplacementOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::FindPayloadReplacementOpInterface]";
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

const char *llvm::getTypeName<mlir::TilingInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TilingInterface]";
  v6 = 71;
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

uint64_t mlir::tensor::TensorDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  if (!result)
  {
    if (mlir::complex::ConstantOp::isBuildableWith(a3, a4))
    {
      v10 = a3;
      return mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(a2, a5, &v11, &v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::complex::ConstantOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

unint64_t mlir::tensor::getMixedSize(mlir::IndexType **a1, uint64_t a2, uint64_t a3, mlir::OperationState *a4)
{
  v4 = a4;
  v19[1] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  v12 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v17;
  v16 = 0x600000000;
  if (*(mlir::RankedTensorType::getShape(&v12) + 8 * a4) != 0x8000000000000000)
  {
    Shape = mlir::RankedTensorType::getShape(&v12);
    v8 = mlir::Builder::getIndexAttr(a1, *(Shape + 8 * v4)) & 0xFFFFFFFFFFFFFFFBLL;
    v9 = v15;
    if (v15 == v17)
    {
      return v8;
    }

LABEL_7:
    free(v9);
    return v8;
  }

  v18[0] = v19;
  v18[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a1, v18, a2, &v14, &v13);
  v7 = *v18[0];
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v8 = v7 | 4;
  v9 = v15;
  if (v15 != v17)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t mlir::tensor::getMixedSizes@<X0>(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  result = mlir::RankedTensorType::getShape(&v14);
  if (v9 >= 1)
  {
    for (i = 0; i < v13; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a1, a2, a3, i);
      v12 = *(a4 + 8);
      if (v12 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v12) = MixedSize;
      ++*(a4 + 8);
      result = mlir::RankedTensorType::getShape(&v14);
    }
  }

  return result;
}

unint64_t mlir::tensor::getOrCreateDestination(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[6] = *MEMORY[0x277D85DE8];
  v43 = a3;
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*v5 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v42 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v43);
  v9 = DefiningOp;
  if (DefiningOp)
  {
    if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(DefiningOp))
    {
      v40 = 0;
      v41 = 0;
LABEL_19:
      v14 = a1 + 16;
      v39 = *(a1 + 16);
      v15 = mlir::Value::getDefiningOp(&v43);
      v16 = *(v15 + 16);
      NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v15);
      *(a1 + 16) = v16;
      *(a1 + 24) = NodePtr;
      __dst = v50;
      v49 = 0x600000000;
      if (mlir::TensorType::hasRank(&v42))
      {
        Shape = mlir::TensorType::getShape(&v42);
        if (!v19)
        {
LABEL_24:
          v21 = mlir::TensorType::getShape(&v42);
          if (v22)
          {
            v23 = v21;
            v24 = 8 * v22;
            do
            {
              IndexAttr = mlir::Builder::getIndexAttr(a1, *v23);
              if (v49 >= HIDWORD(v49))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(__dst + v49) = IndexAttr & 0xFFFFFFFFFFFFFFFBLL;
              LODWORD(v49) = v49 + 1;
              ++v23;
              v24 -= 8;
            }

            while (v24);
          }

          goto LABEL_55;
        }

        v20 = 8 * v19;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v20 -= 8;
          if (!v20)
          {
            goto LABEL_24;
          }
        }
      }

      ElementType = v46;
      v45 = 0x100000000;
      v26 = mlir::Value::getDefiningOp(&v43);
      v27 = mlir::reifyResultShapes(a1, v26);
      if (v27)
      {
        v28 = *(v43 + 8) & 7;
        if (v43 && v28 == 6)
        {
          v28 = (*(v43 + 16) + 6);
        }

        v29 = (ElementType + 64 * v28);
        if (&__dst != v29)
        {
          v30 = *(v29 + 2);
          v31 = v49;
          if (v49 >= v30)
          {
            if (v30)
            {
              memmove(__dst, *v29, 8 * v30);
            }
          }

          else
          {
            if (HIDWORD(v49) < v30)
            {
              LODWORD(v49) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v49)
            {
              memmove(__dst, *v29, 8 * v49);
            }

            else
            {
              v31 = 0;
            }

            v32 = *(v29 + 2) - v31;
            if (v32)
            {
              memcpy(__dst + 8 * v31, *v29 + 8 * v31, 8 * v32);
            }
          }

          LODWORD(v49) = v30;
        }
      }

      v33 = ElementType;
      if (v45)
      {
        v34 = (ElementType + 64 * v45 - 64);
        v35 = -64 * v45;
        do
        {
          if (v34 + 2 != *v34)
          {
            free(*v34);
          }

          v34 -= 8;
          v35 += 64;
        }

        while (v35);
        v33 = ElementType;
      }

      if (v33 != v46)
      {
        free(v33);
      }

      if ((v27 & 1) == 0)
      {
        LOBYTE(v12) = 0;
        v37 = v39;
        v38 = __dst;
        if (__dst == v50)
        {
LABEL_57:
          if (v37)
          {
            *v14 = v37;
          }

          else
          {
            *v14 = 0;
            *(v14 + 8) = 0;
          }

          return v12 | (a1 << 8);
        }

LABEL_56:
        free(v38);
        v37 = v39;
        goto LABEL_57;
      }

LABEL_55:
      ElementType = mlir::TensorType::getElementType(&v42);
      v36 = mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(a1, a2, &__dst, &ElementType);
      LOBYTE(v12) = v36 - 16;
      a1 = (v36 - 16) >> 8;
      v37 = v39;
      v38 = __dst;
      if (__dst == v50)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    DefiningOp = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
  }

  v40 = v9;
  v41 = DefiningOp;
  if (!v9)
  {
    goto LABEL_19;
  }

  if (v43 && (*(v43 + 8) & 7) == 6)
  {
    v10 = *(v43 + 16) + 6;
  }

  else
  {
    v10 = *(v43 + 8) & 7;
  }

  mlir::DestinationStyleOpInterface::getDpsInitsMutable(&ElementType, &v40);
  v11 = mlir::MutableOperandRange::operator[](&ElementType, v10);
  if (v46[0] != &v47)
  {
    free(v46[0]);
  }

  v12 = *(v11 + 24);
  a1 = v12 >> 8;
  return v12 | (a1 << 8);
}

uint64_t mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x277D85DE8];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::EmptyOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::Type>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::tensor::EmptyOp::build(v11, v18, *a3, *(a3 + 8), *a4, 0);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
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

uint64_t mlir::tensor::getOrCreateDestinations(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 36);
  if (v4)
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  if (!v4)
  {
    return 1;
  }

  v9 = 0;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v9);
    v11 = *(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_7;
    }

    Destination = mlir::tensor::getOrCreateDestination(a1, a2, NextResultAtOffset);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = *(a4 + 8);
    if (v15 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v15) = Destination;
    ++*(a4 + 8);
LABEL_7:
    if (v4 == ++v9)
    {
      return 1;
    }
  }
}

BOOL mlir::tensor::isSameTypeWithoutEncoding(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v12 = v2;
  if (!v2)
  {
    return a1 == a2;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v11 = v3;
  if (!v3)
  {
    return 0;
  }

  Shape = mlir::RankedTensorType::getShape(&v12);
  v6 = v5;
  v7 = mlir::RankedTensorType::getShape(&v11);
  if (v6 != v8 || memcmp(Shape, v7, 8 * v6))
  {
    return 0;
  }

  ElementType = mlir::RankedTensorType::getElementType(&v12);
  return ElementType == mlir::RankedTensorType::getElementType(&v11);
}

BOOL mlir::tensor::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v22[3] = v4;
    v22[4] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v21 = v13;
    v14 = *(*v10 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v20 = v16;
    if (v13)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    v7 = !v17 && (v22[0] = mlir::TensorType::getElementType(&v21), IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v22), v22[0] = mlir::TensorType::getElementType(&v20), IntOrFloatBitWidth == mlir::Type::getIntOrFloatBitWidth(v22)) && mlir::verifyCompatibleShape(v21, v20);
  }

  return v7;
}

uint64_t mlir::tensor::preservesStaticInformation(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v21 = v2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v20 = v3;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  ElementType = mlir::RankedTensorType::getElementType(&v21);
  if (ElementType == mlir::RankedTensorType::getElementType(&v20))
  {
    mlir::RankedTensorType::getShape(&v21);
    v9 = v8;
    mlir::RankedTensorType::getShape(&v20);
    if (v9 == v10)
    {
      Encoding = mlir::RankedTensorType::getEncoding(&v21);
      if (Encoding == mlir::RankedTensorType::getEncoding(&v20))
      {
        Shape = mlir::RankedTensorType::getShape(&v21);
        v14 = v13;
        v15 = mlir::RankedTensorType::getShape(&v20);
        v5 = 1;
        if (v14 && v16)
        {
          v17 = 8 * v16 - 8;
          v18 = 8 * v14 - 8;
          while (*Shape == 0x8000000000000000 || *v15 != 0x8000000000000000)
          {
            v5 = 1;
            if (v18)
            {
              ++Shape;
              ++v15;
              v19 = v17;
              v17 -= 8;
              v18 -= 8;
              if (v19)
              {
                continue;
              }
            }

            return v5;
          }

          return 0;
        }

        return v5;
      }
    }
  }

  return 0;
}

uint64_t mlir::tensor::canFoldIntoConsumerOp(uint64_t result)
{
  if (result)
  {
    return mlir::tensor::preservesStaticInformation(*(result - 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(result + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  return result;
}

uint64_t mlir::tensor::canFoldIntoProducerOp(uint64_t result)
{
  if (result)
  {
    return mlir::tensor::preservesStaticInformation(*(*(*(result + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(result - 8) & 0xFFFFFFFFFFFFFFF8);
  }

  return result;
}

BOOL mlir::tensor::CastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v21[3] = v4;
    v21[4] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v21[0] = v13;
    v14 = *(*v10 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v20 = v16;
    if (v13)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    v7 = !v17 && (ElementType = mlir::TensorType::getElementType(v21), ElementType == mlir::TensorType::getElementType(&v20)) && mlir::verifyCompatibleShape(v21[0], v20);
  }

  return v7;
}

uint64_t mlir::tensor::ConcatOp::inferResultType(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v38 = v40;
  v39 = 0x400000000;
  if (a3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v40[i] = mlir::TypeRange::dereference_iterator(a2, i);
    }

    v8 = v39;
    v9 = v38;
  }

  else
  {
    v8 = 0;
    v9 = v40;
  }

  LODWORD(v39) = v8 + a3;
  mlir::RankedTensorType::getShape(v9);
  v35 = v37;
  v36 = 0x600000000;
  if (v10)
  {
    v11 = v10;
    if (v10 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v35, 8 * v10);
    LODWORD(v36) = v11;
    if (v11 >= 1)
    {
      for (j = 0; j != v11; ++j)
      {
        if (j != a1)
        {
          if (v39)
          {
            v27 = 0;
            v28 = v38;
            v29 = 8 * v39;
            v30 = 1;
            do
            {
              v34 = *v28;
              Shape = mlir::RankedTensorType::getShape(&v34);
              v32 = *(Shape + 8 * j);
              if (v30)
              {
                if (v32 != 0x8000000000000000)
                {
                  v30 = 0;
                  v27 = *(Shape + 8 * j);
                }
              }

              else if (v32 != 0x8000000000000000 && v27 != v32)
              {
                v30 = 0;
                v27 = v3;
              }

              v28 = (v28 + 8);
              v3 = v27;
              v29 -= 8;
            }

            while (v29);
            if (v30)
            {
              v26 = 0x8000000000000000;
            }

            else
            {
              v26 = v27;
            }

            v3 = v27;
          }

          else
          {
            v26 = 0x8000000000000000;
          }

          *(v35 + j) = v26;
        }
      }
    }
  }

  v12 = v38;
  if (v39)
  {
    v13 = 0;
    v14 = 0;
    v15 = 8 * v39;
    do
    {
      v16 = *v12;
      v12 = (v12 + 8);
      v34 = v16;
      v17 = *(mlir::RankedTensorType::getShape(&v34) + 8 * a1);
      v18 = v17 == 0x8000000000000000;
      v19 = v17 + v14;
      v13 |= v18;
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v19;
      }

      v15 -= 8;
    }

    while (v15);
    v12 = v38;
    if (v13)
    {
      v19 = 0x8000000000000000;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v35;
  *(v35 + a1) = v19;
  v21 = v36;
  ElementType = mlir::RankedTensorType::getElementType(v12);
  v23 = mlir::RankedTensorType::get(v20, v21, ElementType, 0);
  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  return v23;
}

uint64_t mlir::tensor::ConcatOp::build(uint64_t **a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v15.n128_u64[0] = a4;
  v15.n128_u64[1] = a5;
  mlir::ValueRange::getTypes(&v15, &v13);
  v9 = v13.n128_u64[1];
  v8 = v13.n128_u64[0];
  v10 = v14;
  v16 = v13;
  if (v13.n128_u64[1])
  {
    v8 = mlir::ValueRange::offset_base(&v16, v13.n128_i64[1]);
    v9 = v16.n128_u64[1];
  }

  mlir::TypeRange::TypeRange(v16.n128_u64, v8, v10 - v9);
  v11 = mlir::tensor::ConcatOp::inferResultType(a3, v16.n128_i64[0], v16.n128_u64[1]);
  return mlir::tensor::ConcatOp::build(a1, a2, v11, a3, v15.n128_i64[0], v15.n128_u64[1]);
}

uint64_t mlir::tensor::ConcatOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  IntegerType = mlir::Builder::getIntegerType(a1, 64);
  result = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
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

uint64_t mlir::tensor::ConcatOp::verify(mlir::Operation **this)
{
  v123[6] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0 || (v3 = *(v2 + 17), !v3))
  {
    mlir::tensor::ConcatOp::verify(this, &v109);
    return v109;
  }

  v4 = 0;
  v121 = v123;
  v122 = 0x600000000;
  v5 = *(v2 + 9) + 24;
  do
  {
    if (v4 >= HIDWORD(v122))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v121[v4] = *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8;
    v4 = v122 + 1;
    LODWORD(v122) = v122 + 1;
    v5 += 32;
    --v3;
  }

  while (v3);
  if (*(*this + 9))
  {
    v6 = *this - 16;
  }

  else
  {
    v6 = 0;
  }

  v102 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 9))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  v109 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&v109);
  v9 = v8;
  if (v122)
  {
    v10 = v121;
    v11 = 8 * v122;
    while (1)
    {
      v109 = *v10;
      mlir::RankedTensorType::getShape(&v109);
      if (v12 != v9)
      {
        break;
      }

      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v105 = "rank of concatenated inputs must match result rank";
    v108 = 259;
    mlir::OpState::emitOpError(this, &v105, &v109);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
    if (v109)
    {
      mlir::InFlightDiagnostic::report(&v109);
    }

    if (v120 != 1)
    {
      goto LABEL_80;
    }

    if (v119 != &v120)
    {
      free(v119);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v118;
      v29 = __p;
      if (v118 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v118 = v27;
      operator delete(v29);
    }

    v22 = v115;
    if (v115)
    {
      v30 = v116;
      v24 = v115;
      if (v116 != v115)
      {
        do
        {
          v32 = *--v30;
          v31 = v32;
          *v30 = 0;
          if (v32)
          {
            MEMORY[0x259C63150](v31, 0x1000C8077774924);
          }
        }

        while (v30 != v22);
        goto LABEL_76;
      }

LABEL_77:
      v116 = v22;
      operator delete(v24);
    }

LABEL_78:
    v39 = v111;
    if (v111 == v114)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_18:
  ElementType = mlir::RankedTensorType::getElementType(&v102);
  if (v122)
  {
    v14 = ElementType;
    v15 = v121;
    v16 = 8 * v122;
    while (1)
    {
      v109 = *v15;
      if (v14 != mlir::RankedTensorType::getElementType(&v109))
      {
        break;
      }

      ++v15;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_22;
      }
    }

    v105 = "inputs and result element type must match";
    v108 = 259;
    mlir::OpState::emitOpError(this, &v105, &v109);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
    if (v109)
    {
      mlir::InFlightDiagnostic::report(&v109);
    }

    if (v120 != 1)
    {
      goto LABEL_80;
    }

    if (v119 != &v120)
    {
      free(v119);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v118;
      v35 = __p;
      if (v118 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v118 = v33;
      operator delete(v35);
    }

    v22 = v115;
    if (!v115)
    {
      goto LABEL_78;
    }

    v36 = v116;
    v24 = v115;
    if (v116 == v115)
    {
      goto LABEL_77;
    }

    do
    {
      v38 = *--v36;
      v37 = v38;
      *v36 = 0;
      if (v38)
      {
        MEMORY[0x259C63150](v37, 0x1000C8077774924);
      }
    }

    while (v36 != v22);
    goto LABEL_76;
  }

LABEL_22:
  v105 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(&v105, &v109);
  if (v110 > 0x40)
  {
    v17 = *v109;
    MEMORY[0x259C63150]();
    if (v17 >= v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v17 = v109;
    if (v109 >= v9)
    {
LABEL_24:
      v105 = "concatenation dim must be less than the tensor rank";
      v108 = 259;
      mlir::OpState::emitOpError(this, &v105, &v109);
      v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
      if (v109)
      {
        mlir::InFlightDiagnostic::report(&v109);
      }

      if (v120 != 1)
      {
        goto LABEL_80;
      }

      if (v119 != &v120)
      {
        free(v119);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v118;
        v21 = __p;
        if (v118 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v118 = v19;
        operator delete(v21);
      }

      v22 = v115;
      if (!v115)
      {
        goto LABEL_78;
      }

      v23 = v116;
      v24 = v115;
      if (v116 == v115)
      {
        goto LABEL_77;
      }

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
LABEL_76:
      v24 = v115;
      goto LABEL_77;
    }
  }

  v105 = v107;
  v106 = 0x600000000;
  if (v9)
  {
    if (v9 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v105, 8 * v9);
    LODWORD(v106) = v9;
    for (i = 0; i != v9; i = (i + 1))
    {
      if (i != v17)
      {
        if (v122)
        {
          v43 = 0;
          v44 = v121;
          v45 = 8 * v122;
          v46 = 1;
          while (1)
          {
            v101 = *v44;
            Shape = mlir::RankedTensorType::getShape(&v101);
            v48 = *(Shape + 8 * i);
            if (v46)
            {
              if (v48 != 0x8000000000000000)
              {
                v43 = *(Shape + 8 * i);
                v46 = 0;
              }
            }

            else if (v48 != 0x8000000000000000 && v43 != v48)
            {
              v99[0] = "static concatenation size mismatch along ";
              v100 = 259;
              mlir::OpState::emitOpError(this, v99, &v109);
              if (v109)
              {
                LODWORD(v103) = 3;
                *(&v103 + 1) = "non-concatenated dimension ";
                v104 = 27;
                if (v112 >= v113)
                {
                  if (v111 > &v103 || v111 + 24 * v112 <= &v103)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v58 = v111 + 24 * v112;
                v59 = v103;
                *(v58 + 2) = v104;
                *v58 = v59;
                v60 = ++v112;
                if (v109)
                {
                  LODWORD(v103) = 2;
                  *(&v103 + 1) = i;
                  if (v60 >= v113)
                  {
                    if (v111 > &v103 || v111 + 24 * v60 <= &v103)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v61 = v111 + 24 * v112;
                  v62 = v103;
                  *(v61 + 2) = v104;
                  *v61 = v62;
                  ++v112;
                }
              }

              v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
              if (v109)
              {
                mlir::InFlightDiagnostic::report(&v109);
              }

              if (v120)
              {
                if (v119 != &v120)
                {
                  free(v119);
                }

                v63 = __p;
                if (__p)
                {
                  v64 = v118;
                  v65 = __p;
                  if (v118 != __p)
                  {
                    do
                    {
                      v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
                    }

                    while (v64 != v63);
                    v65 = __p;
                  }

                  v118 = v63;
                  operator delete(v65);
                }

                v66 = v115;
                if (v115)
                {
                  v67 = v116;
                  v68 = v115;
                  if (v116 != v115)
                  {
                    do
                    {
                      v70 = *--v67;
                      v69 = v70;
                      *v67 = 0;
                      if (v70)
                      {
                        MEMORY[0x259C63150](v69, 0x1000C8077774924);
                      }
                    }

                    while (v67 != v66);
                    v68 = v115;
                  }

                  v116 = v66;
                  operator delete(v68);
                }

                v98 = v111;
                if (v111 != v114)
                {
                  goto LABEL_171;
                }
              }

              goto LABEL_172;
            }

            ++v44;
            v45 -= 8;
            if (!v45)
            {
              if (v46)
              {
                v42 = 0x8000000000000000;
              }

              else
              {
                v42 = v43;
              }

              goto LABEL_87;
            }
          }
        }

        v42 = 0x8000000000000000;
LABEL_87:
        v105[i] = v42;
      }
    }
  }

  v50 = v121;
  if (v122)
  {
    v51 = 0;
    v52 = 0;
    v53 = 8 * v122;
    do
    {
      v54 = *v50;
      v50 = (v50 + 8);
      v109 = v54;
      v55 = *(mlir::RankedTensorType::getShape(&v109) + 8 * v17);
      v56 = v55 == 0x8000000000000000;
      v57 = &v51[v55];
      v52 |= v56;
      if (v52)
      {
        v51 = 0;
      }

      else
      {
        v51 = v57;
      }

      v53 -= 8;
    }

    while (v53);
    v50 = v121;
    if (v52)
    {
      v57 = 0x8000000000000000;
    }
  }

  else
  {
    v57 = 0;
  }

  v71 = v105;
  v105[v17] = v57;
  v72 = v106;
  v73 = mlir::RankedTensorType::getElementType(v50);
  v101 = mlir::RankedTensorType::get(v71, v72, v73, 0);
  v74 = mlir::RankedTensorType::getShape(&v101);
  v76 = v75;
  v77 = mlir::RankedTensorType::getShape(&v102);
  if (v76)
  {
    v78 = 8 * v76;
    while (*v74 == 0x8000000000000000 || *v77 == 0x8000000000000000 || *v74 == *v77)
    {
      ++v74;
      ++v77;
      v78 -= 8;
      if (!v78)
      {
        goto LABEL_167;
      }
    }

    v99[0] = "result type ";
    v100 = 259;
    mlir::OpState::emitOpError(this, v99, &v109);
    if (v109)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v103, v102);
      if (v112 >= v113)
      {
        if (v111 > &v103 || v111 + 24 * v112 <= &v103)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v80 = v111 + 24 * v112;
      v81 = v103;
      *(v80 + 2) = v104;
      *v80 = v81;
      v82 = ++v112;
      if (v109)
      {
        LODWORD(v103) = 3;
        *(&v103 + 1) = "does not match inferred shape ";
        v104 = 30;
        if (v82 >= v113)
        {
          if (v111 > &v103 || v111 + 24 * v82 <= &v103)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v83 = v111 + 24 * v112;
        v84 = v103;
        *(v83 + 2) = v104;
        *v83 = v84;
        ++v112;
        if (v109)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v103, v101);
          if (v112 >= v113)
          {
            if (v111 > &v103 || v111 + 24 * v112 <= &v103)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v85 = v111 + 24 * v112;
          v86 = v103;
          *(v85 + 2) = v104;
          *v85 = v86;
          v87 = ++v112;
          if (v109)
          {
            LODWORD(v103) = 3;
            *(&v103 + 1) = " static sizes";
            v104 = 13;
            if (v87 >= v113)
            {
              if (v111 > &v103 || v111 + 24 * v87 <= &v103)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v88 = v111 + 24 * v112;
            v89 = v103;
            *(v88 + 2) = v104;
            *v88 = v89;
            ++v112;
          }
        }
      }
    }

    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v109);
    if (v109)
    {
      mlir::InFlightDiagnostic::report(&v109);
    }

    if (v120)
    {
      if (v119 != &v120)
      {
        free(v119);
      }

      v90 = __p;
      if (__p)
      {
        v91 = v118;
        v92 = __p;
        if (v118 != __p)
        {
          do
          {
            v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
          }

          while (v91 != v90);
          v92 = __p;
        }

        v118 = v90;
        operator delete(v92);
      }

      v93 = v115;
      if (v115)
      {
        v94 = v116;
        v95 = v115;
        if (v116 != v115)
        {
          do
          {
            v97 = *--v94;
            v96 = v97;
            *v94 = 0;
            if (v97)
            {
              MEMORY[0x259C63150](v96, 0x1000C8077774924);
            }
          }

          while (v94 != v93);
          v95 = v115;
        }

        v116 = v93;
        operator delete(v95);
      }

      v98 = v111;
      if (v111 != v114)
      {
LABEL_171:
        free(v98);
      }
    }
  }

  else
  {
LABEL_167:
    v18 = 1;
  }

LABEL_172:
  v39 = v105;
  if (v105 == v107)
  {
    goto LABEL_80;
  }

LABEL_79:
  free(v39);
LABEL_80:
  if (v121 != v123)
  {
    free(v121);
  }

  return v18;
}

uint64_t *mlir::tensor::ConcatOp::getDim(mlir::tensor::ConcatOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, mlir::OperationState **a4)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v18[0] = *a4;
  v12 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, v19[0], v18);
  mlir::tensor::DimOp::build(a1, v19, v11, v12 - 16);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::tensor::ConcatOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "concat", 6);
}

uint64_t mlir::tensor::DimOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "dim", 3);
}

void mlir::tensor::DimOp::build(mlir::IndexType **a1, uint64_t *a2, uint64_t a3, mlir::OperationState *a4)
{
  v8 = a4;
  v7 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, *a2, &v8);
  mlir::tensor::DimOp::build(a1, a2, a3, v7 - 16);
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(mlir::IndexType **a1, uint64_t a2, mlir::OperationState **a3)
{
  v15[38] = *MEMORY[0x277D85DE8];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantIndexOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (!mlir::arith::ConstantIndexOp::classof(v9, v10))
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v9;
}

void mlir::tensor::DimOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
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

  v15 = v6;
  IndexType = mlir::Builder::getIndexType(&v15, v8);
  v10 = __src;
  *__src = IndexType;
  v11 = v19;
  v12 = *(a2 + 72);
  if (v12 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v19);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::tensor::DimOp::getSpeculatability(mlir::tensor::DimOp *this)
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(*this + 72) + 56) | 4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = 0;
  }

  v8 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = ConstantIntValue;
  mlir::RankedTensorType::getShape(&v8);
  return v6 > v5;
}

mlir::IndexType *mlir::tensor::DimOp::fold(mlir::tensor **a1, uint64_t a2)
{
  v2 = *(*(a2 + 40) + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v2 = 0;
  }

  v29 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(*(*a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = 0;
  }

  v28 = v3;
  if (!v3)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v29);
  if (Int < 0)
  {
    return 0;
  }

  v6 = Int;
  mlir::RankedTensorType::getShape(&v28);
  if (v6 >= v7)
  {
    return 0;
  }

  v8 = mlir::IntegerAttr::getInt(&v29);
  if (*(mlir::RankedTensorType::getShape(&v28) + 8 * v8) != 0x8000000000000000)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    Shape = mlir::RankedTensorType::getShape(&v28);
    v13 = mlir::IntegerAttr::getInt(&v29);
    return (mlir::Builder::getIndexAttr(&Context, *(Shape + 8 * v13)) & 0xFFFFFFFFFFFFFFFBLL);
  }

  Context = *(*(*a1 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  v10 = DefiningOp;
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
  {
    mlir::tensor::DimOp::fold(DefiningOp, &v29, &Context);
    return Context;
  }

  mlir::IntegerAttr::getValue(&v29, &Context);
  if (v27 > 0x40)
  {
    MEMORY[0x259C63150]();
  }

  if (v10)
  {
    v15 = *(*(v10 + 48) + 16);
    v16 = v15 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    v17 = v15 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v10 : 0;
    v25 = v17;
    if (v16)
    {
      v18 = *(v10 + 36) ? v10 - 16 : 0;
      v24 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::RankedTensorType::getShape(&v24);
      v20 = v19;
      v21 = v25;
      v23 = *(*(*(v25 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::RankedTensorType::getShape(&v23);
      if (v20 == v11)
      {
        Context = *(v21 + 16 * ((*(v21 + 44) >> 23) & 1) + 72);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
      }
    }
  }

  if ((mlir::tensor::foldTensorCast(*a1, v11) & 1) == 0)
  {
    return 0;
  }

  if (*(*a1 + 9))
  {
    v22 = *a1 - 16;
  }

  else
  {
    v22 = 0;
  }

  return (mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) | 4);
}

uint64_t mlir::tensor::EmptyOp::build(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v16, 0, 0);
  v11 = v16[0];
  v12 = v16[1];
  v13 = mlir::RankedTensorType::get(a3, a4, a5, a6);
  result = mlir::OperationState::addOperands(a2, v11, v12);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v15) = v13;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::tensor::EmptyOp::build(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v11 = mlir::RankedTensorType::get(a3, a4, a5, a8);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (v13 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v13) = v11;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::tensor::EmptyOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::tensor::EmptyOp::build(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x600000000;
  v16 = v18;
  v17 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, &v16, &v19);
  v9 = v19;
  v10 = v20;
  mlir::ValueRange::ValueRange(v15, v16, v17);
  v11 = v15[0];
  v12 = v15[1];
  v13 = mlir::RankedTensorType::get(v9, v10, a5, a6);
  mlir::OperationState::addOperands(a2, v11, v12);
  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = v13;
  ++*(a2 + 72);
  if (v16 != v18)
  {
    free(v16);
  }

  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::tensor::EmptyOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, unsigned int *a3)
{
  v29[6] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v26 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v26);
  v27 = v29;
  v28 = 0x600000000;
  if (v7)
  {
    v8 = v7;
    if (v7 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v27, 8 * v7);
    LODWORD(v28) = v8;
  }

  v9 = a3[2];
  if (!v9)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v9, &v27);
LABEL_15:
    v13 = v27;
    if (v27 == v29)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9 == 1)
  {
    goto LABEL_15;
  }

  v10 = v9 << 6;
  v11 = (v10 + *a3 - 64);
  v12 = 64 - v10;
  do
  {
    if (v11 + 2 != *v11)
    {
      free(*v11);
    }

    v11 -= 8;
    v12 += 64;
  }

  while (v12);
  a3[2] = 1;
  v13 = v27;
  if (v27 != v29)
  {
LABEL_16:
    free(v13);
  }

LABEL_17:
  if (*(*a1 + 36))
  {
    v14 = *a1 - 16;
  }

  else
  {
    v14 = 0;
  }

  v27 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&v27);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (*(*a1 + 36))
      {
        v22 = *a1 - 16;
      }

      else
      {
        v22 = 0;
      }

      v27 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::RankedTensorType::getShape(&v27) + 8 * v17) == 0x8000000000000000)
      {
        v18 = v16++;
        v19 = *(*(*a1 + 72) + 32 * v18 + 24) | 4;
      }

      else
      {
        if (*(*a1 + 36))
        {
          v23 = *a1 - 16;
        }

        else
        {
          v23 = 0;
        }

        v27 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        Shape = mlir::RankedTensorType::getShape(&v27);
        v19 = mlir::Builder::getIndexAttr(a2, *(Shape + 8 * v17)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * v17++) = v19;
      if (*(*a1 + 36))
      {
        v20 = *a1 - 16;
      }

      else
      {
        v20 = 0;
      }

      v27 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::RankedTensorType::getShape(&v27);
    }

    while (v17 < v21);
  }

  return 1;
}

uint64_t mlir::tensor::EmptyOp::getDynamicSize(mlir::tensor::EmptyOp *this, unsigned int a2)
{
  if (a2)
  {
    v3 = 0;
    LODWORD(v4) = 0;
    v5 = 8 * a2;
    do
    {
      if (*(*this + 36))
      {
        v6 = *this - 16;
      }

      else
      {
        v6 = 0;
      }

      v8 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(mlir::RankedTensorType::getShape(&v8) + v3) == 0x8000000000000000)
      {
        v4 = (v4 + 1);
      }

      else
      {
        v4 = v4;
      }

      v3 += 8;
    }

    while (v5 != v3);
  }

  else
  {
    v4 = 0;
  }

  return *(*(*this + 72) + 32 * v4 + 24);
}

uint64_t mlir::tensor::EmptyOp::getMixedSizes@<X0>(mlir::tensor::EmptyOp *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v19[0] = mlir::Attribute::getContext((*this + 24));
  memset(&v19[1], 0, 24);
  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::RankedTensorType::getShape(&v18);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (*(*this + 36))
      {
        v14 = *this - 16;
      }

      else
      {
        v14 = 0;
      }

      v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(mlir::RankedTensorType::getShape(&v18) + 8 * v8) == 0x8000000000000000)
      {
        v9 = *(*(*this + 72) + 32 * v7 + 24);
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        ++v7;
        v11 = v9 | 4;
      }

      else
      {
        if (*(*this + 36))
        {
          v15 = *this - 16;
        }

        else
        {
          v15 = 0;
        }

        v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        Shape = mlir::RankedTensorType::getShape(&v18);
        IndexAttr = mlir::Builder::getIndexAttr(v19, *(Shape + 8 * v8));
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = IndexAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(*a2 + 8 * v10) = v11;
      ++*(a2 + 8);
      ++v8;
      if (*(*this + 36))
      {
        v12 = *this - 16;
      }

      else
      {
        v12 = 0;
      }

      v18 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      result = mlir::RankedTensorType::getShape(&v18);
    }

    while (v8 < v13);
  }

  return result;
}

uint64_t mlir::tensor::ExtractOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "extracted", 9);
}

unint64_t mlir::tensor::ExtractOp::fold(uint64_t a1, uint64_t a2)
{
  v49[9] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = *v4;
  if (*v4)
  {
    if (mlir::DenseElementsAttr::classof(*v4))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v48[0] = v6;
    if (v6)
    {
      isSplat = mlir::DenseElementsAttr::isSplat(v48);
      v8 = isSplat ? v5 : 0;
      v46 = v8;
      if (isSplat)
      {
        mlir::DenseElementsAttr::getType(&v46);
        mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(v48, v46, 0);
        v9 = v46;
        NumElements = mlir::DenseElementsAttr::getNumElements(&v46);
        mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v39, v9, NumElements);
        return mlir::DenseElementsAttr::AttributeElementIterator::operator*(v48) & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v4 = *(a2 + 40);
  }

  v48[0] = v49;
  v48[1] = 0x800000000;
  v12 = 8 * *(a2 + 48);
  v13 = v12 - 8;
  if (v12 == 8)
  {
LABEL_13:
    v39 = *(*(*a1 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v39);
    if (DefiningOp && ((v15 = *(*(DefiningOp + 48) + 16), v15 != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id) ? (v16 = 0) : (v16 = DefiningOp), v15 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id))
    {
      v39 = *(DefiningOp - 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::RankedTensorType::getShape(&v39);
      v28 = 0;
      if (v27 - 1 >= 0)
      {
        v29 = 8 * (v27 - 1);
        LODWORD(v30) = 1;
        do
        {
          v28 += *(v48[0] + v29) * v30;
          v30 = *(mlir::RankedTensorType::getShape(&v39) + v29) * v30;
          v29 -= 8;
        }

        while (v29 != -8);
      }

      if ((*(v16 + 46) & 0x80) != 0)
      {
        v11 = 0;
        if ((v28 & 0x80000000) == 0 && v28 < *(v16 + 68))
        {
          v11 = *(*(v16 + 72) + 32 * v28 + 24) | 4;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v17 = **(a2 + 40);
      if (v17)
      {
        v18 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
        v45[0] = v18;
        v45[1] = v19;
        if (v18)
        {
          if (mlir::ElementsAttr::isValidIndex(v18, v19, v48[0], LODWORD(v48[1])))
          {
            mlir::ElementsAttr::getValues<mlir::Attribute>(v45, &v39);
            FlattenedIndex = mlir::ElementsAttr::getFlattenedIndex(v44, v48[0]);
            v21 = FlattenedIndex;
            LOWORD(v46) = v39;
            v22 = BYTE1(v39);
            if (v39 == 1)
            {
              v23 = v40;
              v47[0] = v40;
              v24 = v41 + FlattenedIndex;
            }

            else
            {
              (*(*v40 + 16))(v47);
              v22 = BYTE1(v46);
              v24 = v41 + v21;
              v47[1] = v41 + v21;
              if ((v46 & 1) == 0)
              {
                v36 = v47[0];
                v47[0] = 0;
                if ((v46 & 0x100) != 0)
                {
                  v37 = 0;
                }

                else
                {
                  v37 = v41 + v21;
                }

                v33 = (*(*v36 + 24))(v36, v37);
                (*(*v36 + 8))(v36);
                if ((v46 & 1) == 0)
                {
                  v38 = v47[0];
                  v47[0] = 0;
                  if (v38)
                  {
                    (*(*v38 + 8))(v38);
                  }
                }

                goto LABEL_47;
              }

              v23 = v47[0];
            }

            if (v22)
            {
              v32 = 0;
            }

            else
            {
              v32 = v24;
            }

            v33 = *(v23 + 8 * v32);
LABEL_47:
            if ((v42 & 1) == 0)
            {
              v34 = v43;
              v43 = 0;
              if (v34)
              {
                (*(*v34 + 8))(v34);
              }
            }

            v11 = v33 & 0xFFFFFFFFFFFFFFFBLL;
            if ((v39 & 1) == 0)
            {
              v35 = v40;
              v40 = 0;
              if (v35)
              {
                (*(*v35 + 8))(v35);
              }
            }

            goto LABEL_38;
          }
        }
      }
    }
  }

  else
  {
    v25 = (v4 + 1);
    while (*v25 && *(**v25 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v39 = *v25;
      Int = mlir::IntegerAttr::getInt(&v39);
      if (LODWORD(v48[1]) >= HIDWORD(v48[1]))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v48[0] + LODWORD(v48[1])) = Int;
      ++LODWORD(v48[1]);
      ++v25;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = 0;
LABEL_38:
  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  return v11;
}

uint64_t mlir::tensor::FromElementsOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "from_elements", 13);
}

uint64_t mlir::tensor::FromElementsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v9 = a4;
  v5 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v6 = mlir::RankedTensorType::get(&v9, 1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, 0);
  result = mlir::OperationState::addOperands(a2, v10, v11);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = v6;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::tensor::FromElementsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::tensor::FromElementsOp::fold(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v4 = 8 * v3;
    v5 = *(a2 + 40);
    while (*v5)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = *(a2 + 40);
  }

  if (v5 != (*(a2 + 40) + 8 * v3))
  {
    return 0;
  }

LABEL_9:
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v9);
  return mlir::DenseElementsAttr::get(v7, v8, *(a2 + 40), *(a2 + 48)) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::tensor::GatherOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "gather", 6);
}

uint64_t mlir::tensor::GatherOp::inferResultType(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v54[6] = *MEMORY[0x277D85DE8];
  v42 = a2;
  v43 = a1;
  Shape = mlir::RankedTensorType::getShape(&v42);
  v52 = v54;
  v53 = 0x600000000;
  if (((8 * (v8 - 1)) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = 0;
  v10 = v8 - 1;
  if (v8 != 1)
  {
    memcpy(v52, Shape, 8 * (v8 - 1));
    v11 = v53;
  }

  v12 = (v11 + v10);
  LODWORD(v53) = v11 + v10;
  mlir::RankedTensorType::getShape(&v43);
  if (v13 + v12 > HIDWORD(v53))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  mlir::RankedTensorType::getShape(&v43);
  if (v14)
  {
    v15 = v14;
    v16 = &a3[a4];
    v17 = (8 * a4) >> 3;
    if (a5)
    {
      for (i = 0; i != v15; ++i)
      {
        v20 = a3;
        if (a4)
        {
          v21 = (8 * a4) >> 3;
          do
          {
            v22 = v21 >> 1;
            v23 = &v20[v21 >> 1];
            v25 = *v23;
            v24 = v23 + 1;
            v21 += ~(v21 >> 1);
            if (v25 < i)
            {
              v20 = v24;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
        }

        if (v20 == v16 || i < *v20)
        {
          v19 = *(mlir::RankedTensorType::getShape(&v43) + 8 * i);
          if (v53 >= HIDWORD(v53))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v52 + v53) = v19;
          LODWORD(v53) = v53 + 1;
        }
      }
    }

    else if (a4)
    {
      for (j = 0; j != v15; ++j)
      {
        v27 = a3;
        v28 = v17;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[v28 >> 1];
          v32 = *v30;
          v31 = v30 + 1;
          v28 += ~(v28 >> 1);
          if (v32 < j)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
        if (v27 == v16 || j < *v27)
        {
          v33 = *(mlir::RankedTensorType::getShape(&v43) + 8 * j);
          v34 = v53;
          if (v53 >= HIDWORD(v53))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v34 = v53;
          v33 = 1;
          if (v53 >= HIDWORD(v53))
          {
LABEL_36:
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }
        }

        *(v52 + v34) = v33;
        LODWORD(v53) = v53 + 1;
      }
    }

    else
    {
      for (k = 0; k != v15; ++k)
      {
        v36 = *(mlir::RankedTensorType::getShape(&v43) + 8 * k);
        if (v53 >= HIDWORD(v53))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v52 + v53) = v36;
        LODWORD(v53) = v53 + 1;
      }
    }
  }

  v44 = v43;
  v45 = mlir::RankedTensorType::getShape(&v44);
  v46 = v37;
  v47 = v49;
  v48 = 0x600000000;
  ElementType = mlir::RankedTensorType::getElementType(&v44);
  Encoding = mlir::RankedTensorType::getEncoding(&v44);
  v51 = Encoding;
  v45 = v52;
  v46 = v53;
  LODWORD(v48) = 0;
  if (v53)
  {
    v39 = v52;
  }

  else
  {
    v39 = v47;
  }

  v40 = mlir::RankedTensorType::get(v39, v53, ElementType, Encoding);
  if (v47 != v49)
  {
    free(v47);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  return v40;
}

void mlir::tensor::GatherOp::verify(mlir::tensor::GatherOp *this)
{
  v2[26] = *MEMORY[0x277D85DE8];
  v2[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(v2);
  v2[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

uint64_t verifyGatherOrScatterDims(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v80 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 <= a6)
    {
      if (a5 && *(a4 + 8 * a5 - 8) == a3)
      {
        v30 = 8 * a3;
        for (i = a2; (*i & 0x8000000000000000) == 0; ++i)
        {
          if (*i >= a6)
          {
            v64 = 261;
            *&v62 = a7;
            *(&v62 + 1) = a8;
            mlir::Operation::emitOpError(&v68, a1, &v62);
            if (v68)
            {
              LODWORD(v65) = 3;
              *(&v65 + 1) = "_dims value must be smaller than ";
              v66 = 33;
              if (v71 >= v72)
              {
                if (v70 > &v65 || v70 + 24 * v71 <= &v65)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v50 = v70 + 24 * v71;
              v51 = v65;
              *(v50 + 2) = v66;
              *v50 = v51;
              ++v71;
              if (v68)
              {
                v67 = 261;
                v65 = a9;
                mlir::Diagnostic::operator<<(v69, &v65);
                if (v68)
                {
                  LODWORD(v65) = 3;
                  *(&v65 + 1) = " rank";
                  v66 = 5;
                  if (v71 >= v72)
                  {
                    if (v70 > &v65 || v70 + 24 * v71 <= &v65)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v52 = v70 + 24 * v71;
                  v53 = v65;
                  *(v52 + 2) = v66;
                  *v52 = v53;
                  ++v71;
                }
              }
            }

            v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
            if (v68)
            {
              mlir::InFlightDiagnostic::report(&v68);
            }

            if (v79 != 1)
            {
              return v13;
            }

            if (v78 != &v79)
            {
              free(v78);
            }

            v54 = __p;
            if (__p)
            {
              v55 = v77;
              v56 = __p;
              if (v77 != __p)
              {
                do
                {
                  v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
                }

                while (v55 != v54);
                v56 = __p;
              }

              v77 = v54;
              operator delete(v56);
            }

            v17 = v74;
            if (!v74)
            {
              goto LABEL_117;
            }

            v57 = v75;
            v19 = v74;
            if (v75 == v74)
            {
              goto LABEL_116;
            }

            do
            {
              v59 = *--v57;
              v58 = v59;
              *v57 = 0;
              if (v59)
              {
                MEMORY[0x259C63150](v58, 0x1000C8077774924);
              }
            }

            while (v57 != v17);
            goto LABEL_115;
          }

          v30 -= 8;
          if (!v30)
          {
            if (a3 < 2)
            {
              return 1;
            }

            v32 = a3 - 1;
            v33 = a2 + 1;
            v13 = 1;
            while (*(v33 - 1) < *v33)
            {
              ++v33;
              if (!--v32)
              {
                return v13;
              }
            }

            v67 = 261;
            *&v65 = a7;
            *(&v65 + 1) = a8;
            mlir::Operation::emitOpError(&v68, a1, &v65);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v68, "_dims values must be strictly increasing");
            v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v68);
            return v13;
          }
        }

        v67 = 261;
        *&v65 = a7;
        *(&v65 + 1) = a8;
        mlir::Operation::emitOpError(&v68, a1, &v65);
        if (v68)
        {
          LODWORD(v62) = 3;
          *(&v62 + 1) = "_dims value must be non-negative";
          v63 = 32;
          if (v71 >= v72)
          {
            if (v70 > &v62 || v70 + 24 * v71 <= &v62)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v42 = v70 + 24 * v71;
          v43 = v62;
          *(v42 + 2) = v63;
          *v42 = v43;
          ++v71;
        }

        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
        if (v68)
        {
          mlir::InFlightDiagnostic::report(&v68);
        }

        if (v79 != 1)
        {
          return v13;
        }

        if (v78 != &v79)
        {
          free(v78);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v77;
          v46 = __p;
          if (v77 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v77 = v44;
          operator delete(v46);
        }

        v17 = v74;
        if (!v74)
        {
          goto LABEL_117;
        }

        v47 = v75;
        v19 = v74;
        if (v75 == v74)
        {
          goto LABEL_116;
        }

        do
        {
          v49 = *--v47;
          v48 = v49;
          *v47 = 0;
          if (v49)
          {
            MEMORY[0x259C63150](v48, 0x1000C8077774924);
          }
        }

        while (v47 != v17);
        goto LABEL_115;
      }

      v67 = 261;
      *&v65 = a7;
      *(&v65 + 1) = a8;
      mlir::Operation::emitOpError(&v68, a1, &v65);
      if (v68)
      {
        LODWORD(v62) = 3;
        *(&v62 + 1) = "_dims length must match the size of last dimension of indices";
        v63 = 61;
        if (v71 >= v72)
        {
          if (v70 > &v62 || v70 + 24 * v71 <= &v62)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v34 = v70 + 24 * v71;
        v35 = v62;
        *(v34 + 2) = v63;
        *v34 = v35;
        ++v71;
      }

      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
      if (v68)
      {
        mlir::InFlightDiagnostic::report(&v68);
      }

      if (v79 == 1)
      {
        if (v78 != &v79)
        {
          free(v78);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v77;
          v38 = __p;
          if (v77 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v77 = v36;
          operator delete(v38);
        }

        v17 = v74;
        if (!v74)
        {
          goto LABEL_117;
        }

        v39 = v75;
        v19 = v74;
        if (v75 == v74)
        {
          goto LABEL_116;
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
        goto LABEL_115;
      }
    }

    else
    {
      v64 = 261;
      *&v62 = a7;
      *(&v62 + 1) = a8;
      mlir::Operation::emitOpError(&v68, a1, &v62);
      if (v68)
      {
        LODWORD(v65) = 3;
        *(&v65 + 1) = "_dims overflow ";
        v66 = 15;
        if (v71 >= v72)
        {
          if (v70 > &v65 || v70 + 24 * v71 <= &v65)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v70 + 24 * v71;
        v10 = v65;
        *(v9 + 2) = v66;
        *v9 = v10;
        ++v71;
        if (v68)
        {
          v67 = 261;
          v65 = a9;
          mlir::Diagnostic::operator<<(v69, &v65);
          if (v68)
          {
            LODWORD(v65) = 3;
            *(&v65 + 1) = " rank";
            v66 = 5;
            if (v71 >= v72)
            {
              if (v70 > &v65 || v70 + 24 * v71 <= &v65)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v11 = v70 + 24 * v71;
            v12 = v65;
            *(v11 + 2) = v66;
            *v11 = v12;
            ++v71;
          }
        }
      }

      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
      if (v68)
      {
        mlir::InFlightDiagnostic::report(&v68);
      }

      if (v79 == 1)
      {
        if (v78 != &v79)
        {
          free(v78);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v77;
          v16 = __p;
          if (v77 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v77 = v14;
          operator delete(v16);
        }

        v17 = v74;
        if (!v74)
        {
          goto LABEL_117;
        }

        v18 = v75;
        v19 = v74;
        if (v75 == v74)
        {
LABEL_116:
          v75 = v17;
          operator delete(v19);
LABEL_117:
          if (v70 != &v73)
          {
            free(v70);
          }

          return v13;
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
LABEL_115:
        v19 = v74;
        goto LABEL_116;
      }
    }
  }

  else
  {
    v67 = 261;
    *&v65 = a7;
    *(&v65 + 1) = a8;
    mlir::Operation::emitOpError(&v68, a1, &v65);
    if (v68)
    {
      LODWORD(v62) = 3;
      *(&v62 + 1) = "_dims must be non-empty";
      v63 = 23;
      if (v71 >= v72)
      {
        if (v70 > &v62 || v70 + 24 * v71 <= &v62)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v70 + 24 * v71;
      v23 = v62;
      *(v22 + 2) = v63;
      *v22 = v23;
      ++v71;
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
    if (v68)
    {
      mlir::InFlightDiagnostic::report(&v68);
    }

    if (v79 == 1)
    {
      if (v78 != &v79)
      {
        free(v78);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v77;
        v26 = __p;
        if (v77 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v77 = v24;
        operator delete(v26);
      }

      v17 = v74;
      if (!v74)
      {
        goto LABEL_117;
      }

      v27 = v75;
      v19 = v74;
      if (v75 == v74)
      {
        goto LABEL_116;
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
      goto LABEL_115;
    }
  }

  return v13;
}

unint64_t mlir::tensor::GatherOp::fold(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *v3;
  if (*v3 && !mlir::DenseElementsAttr::classof(*v3))
  {
    v4 = 0;
  }

  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

unint64_t reshapeConstantSource(unint64_t result, void *a2, uint64_t a3, char a4)
{
  v13 = a2;
  v14 = result;
  if (result)
  {
    if (!mlir::DenseElementsAttr::isSplat(&v14) || !mlir::TensorType::hasRank(&v13))
    {
      return 0;
    }

    Shape = mlir::TensorType::getShape(&v13);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    if (a4)
    {
      mlir::DenseElementsAttr::getType(&v14);
      mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v16, v14, 0);
      v9 = v14;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
      mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v15, v9, NumElements);
      if (mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v16) != a3)
      {
        return 0;
      }
    }

    v11 = mlir::TensorType::operator mlir::ShapedType(&v13);
    return mlir::DenseElementsAttr::resizeSplat(&v14, v11, v12) & 0xFFFFFFFFFFFFFFFBLL;
  }

  return result;
}

uint64_t mlir::tensor::InsertOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "inserted", 8);
}

unint64_t mlir::tensor::InsertOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *v2;
  v3 = v2[1];
  if (*v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (!mlir::DenseElementsAttr::classof(v2[1]) ? (v6 = 0) : (v6 = v3), (*&v14 = v6) != 0 && ((isSplat = mlir::DenseElementsAttr::isSplat(&v14)) == 0 ? (v8 = 0) : (v8 = v3), (v12 = v8, isSplat) && (mlir::DenseElementsAttr::getType(&v12), mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v14, v12, 0), v9 = v12, NumElements = mlir::DenseElementsAttr::getNumElements(&v12), mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v13, v9, NumElements), v4 == mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v14)))))
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::GenerateOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "generated", 9);
}

uint64_t mlir::tensor::GenerateOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, unsigned int *a3)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v21 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v21);
  v22 = v24;
  v23 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero(v22, 8 * v6);
    LODWORD(v23) = v7;
  }

  v8 = a3[2];
  if (!v8)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v8, &v22);
LABEL_12:
    v12 = v22;
    if (v22 == v24)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8 == 1)
  {
    goto LABEL_12;
  }

  v9 = v8 << 6;
  v10 = (v9 + *a3 - 64);
  v11 = 64 - v9;
  do
  {
    if (v10 + 2 != *v10)
    {
      free(*v10);
    }

    v10 -= 8;
    v11 += 64;
  }

  while (v11);
  a3[2] = 1;
  v12 = v22;
  if (v22 != v24)
  {
LABEL_13:
    free(v12);
  }

LABEL_14:
  v22 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::RankedTensorType::getShape(&v22);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v22 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::RankedTensorType::getShape(&v22) + 8 * i) == 0x8000000000000000)
      {
        v17 = v15++;
        v18 = *(*(*a1 + 72) + 32 * v17 + 24) | 4;
      }

      else
      {
        v22 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
        Shape = mlir::RankedTensorType::getShape(&v22);
        v18 = mlir::Builder::getIndexAttr(a2, *(Shape + 8 * i)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v18;
    }
  }

  return 1;
}

BOOL mlir::tensor::GenerateOp::verifyRegions(mlir::Operation **this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v40 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  ArgumentTypes = mlir::Region::getArgumentTypes((((v2 + 16 * ((*(v2 + 11) >> 23) & 1) + ((*(v2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10)));
  if (ArgumentTypes == v4)
  {
LABEL_5:
    v7 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
    if (*v7 == v7)
    {
      mlir::RankedTensorType::getShape(&v40);
      if (!v16)
      {
LABEL_10:
        v12 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
        if (v12)
        {
          v13 = (v12 - 8);
        }

        else
        {
          v13 = 0;
        }

        v14 = *(*(*(mlir::Block::getTerminator(v13) + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v14 == mlir::RankedTensorType::getElementType(&v40))
        {
          return 1;
        }

        v39 = 259;
        mlir::OpState::emitOpError(this, v38, v41);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
        if (v41[0])
        {
          mlir::InFlightDiagnostic::report(v41);
        }

        if (v49 != 1)
        {
          return v15;
        }

        if (v48 != &v49)
        {
          free(v48);
        }

        v31 = __p;
        if (__p)
        {
          v32 = v47;
          v33 = __p;
          if (v47 != __p)
          {
            do
            {
              v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
            }

            while (v32 != v31);
            v33 = __p;
          }

          v47 = v31;
          operator delete(v33);
        }

        v20 = v44;
        if (!v44)
        {
          goto LABEL_66;
        }

        v34 = v45;
        v22 = v44;
        if (v45 == v44)
        {
LABEL_65:
          v45 = v20;
          operator delete(v22);
LABEL_66:
          if (v42 != &v43)
          {
            free(v42);
          }

          return v15;
        }

        do
        {
          v36 = *--v34;
          v35 = v36;
          *v34 = 0;
          if (v36)
          {
            MEMORY[0x259C63150](v35, 0x1000C8077774924);
          }
        }

        while (v34 != v20);
LABEL_64:
        v22 = v44;
        goto LABEL_65;
      }
    }

    else
    {
      v8 = v7[1];
      if (v8)
      {
        v9 = v8 - 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = ((*(v9 + 56) - *(v9 + 48)) >> 3);
      mlir::RankedTensorType::getShape(&v40);
      if (v11 == v10)
      {
        goto LABEL_10;
      }
    }

    v38[0] = "must have one body argument per input dimension";
    v39 = 259;
    mlir::OpState::emitError(this, v38, v41);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 != 1)
    {
      return v15;
    }

    if (v48 != &v49)
    {
      free(v48);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v47;
      v19 = __p;
      if (v47 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v47 = v17;
      operator delete(v19);
    }

    v20 = v44;
    if (!v44)
    {
      goto LABEL_66;
    }

    v21 = v45;
    v22 = v44;
    if (v45 == v44)
    {
      goto LABEL_65;
    }

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
    goto LABEL_64;
  }

  v5 = ArgumentTypes;
  v6 = v4;
  while (1)
  {
    v41[0] = *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (!mlir::Type::isIndex(v41))
    {
      break;
    }

    v5 += 8;
    if (v5 == v6)
    {
      goto LABEL_5;
    }
  }

  v38[0] = "all body arguments must be index";
  v39 = 259;
  mlir::OpState::emitError(this, v38, v41);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v47;
      v27 = __p;
      if (v47 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v47 = v25;
      operator delete(v27);
    }

    v20 = v44;
    if (!v44)
    {
      goto LABEL_66;
    }

    v28 = v45;
    v22 = v44;
    if (v45 == v44)
    {
      goto LABEL_65;
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

    while (v28 != v20);
    goto LABEL_64;
  }

  return v15;
}

void mlir::tensor::GenerateOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a4, a5);
  mlir::OperationState::addRegion(a2);
}

{
  mlir::OperationState::addOperands(a2, a4, a5);
  mlir::OperationState::addRegion(a2);
}

void *mlir::tensor::RankOp::fold(uint64_t a1)
{
  result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v8[0] = result;
  v8[1] = v3;
  if (result)
  {
    if (mlir::ShapedType::hasRank(v8))
    {
      Context = mlir::Attribute::getContext((*a1 + 24));
      v6 = mlir::IndexType::get(Context, v5);
      mlir::ShapedType::getShape(v8);
      return (mlir::IntegerAttr::get(v6, v7) & 0xFFFFFFFFFFFFFFFBLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::tensor::ReshapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "reshape", 7);
}

BOOL mlir::tensor::ReshapeOp::verify(mlir::Operation **this)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v72 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v71 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v72);
  if (ElementType != mlir::TensorType::getElementType(&v71))
  {
    v69[0] = "element types of source and destination tensor types should be the same";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v80;
        v15 = __p;
        if (v80 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v80 = v13;
        operator delete(v15);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v17 = v78;
      v18 = v77;
      if (v78 == v77)
      {
        goto LABEL_92;
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
      goto LABEL_91;
    }

    return v12;
  }

  v73 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *mlir::RankedTensorType::getShape(&v73);
  v8 = v71;
  v9 = v72;
  v10 = *(*v71 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = 0;
  }

  v68 = v8;
  v11 = *(*v72 + 136);
  if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = 0;
  }

  v67 = v9;
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 1;
  }

  if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && mlir::TensorType::hasRank(&v68))
  {
    Shape = mlir::RankedTensorType::getShape(&v68);
    if (v22)
    {
      v23 = 8 * v22;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_57;
    }

LABEL_33:
    if (!mlir::TensorType::hasRank(&v67))
    {
      goto LABEL_57;
    }

    v24 = mlir::RankedTensorType::getShape(&v67);
    if (v25)
    {
      v26 = 8 * v25;
      while (*v24 != 0x8000000000000000)
      {
        ++v24;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_57;
    }

LABEL_38:
    v73 = mlir::TensorType::operator mlir::ShapedType(&v67);
    v74 = v27;
    v28 = mlir::ShapedType::getShape(&v73);
    if (!v29)
    {
      v38 = 1;
      goto LABEL_47;
    }

    v30 = (v29 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v30)
    {
      v31 = v30 + 1;
      v32 = (v30 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v33 = (v28 + 8 * v32);
      v34 = (v28 + 8);
      v35 = 1;
      v36 = v32;
      v37 = 1;
      do
      {
        v35 *= *(v34 - 1);
        v37 *= *v34;
        v34 += 2;
        v36 -= 2;
      }

      while (v36);
      v38 = v37 * v35;
      if (v31 == v32)
      {
LABEL_47:
        v73 = mlir::TensorType::operator mlir::ShapedType(&v68);
        v74 = v40;
        v41 = mlir::ShapedType::getShape(&v73);
        if (!v42)
        {
          v51 = 1;
          goto LABEL_56;
        }

        v43 = (v42 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v43)
        {
          v44 = v43 + 1;
          v45 = (v43 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v46 = (v41 + 8 * v45);
          v47 = (v41 + 8);
          v48 = 1;
          v49 = v45;
          v50 = 1;
          do
          {
            v48 *= *(v47 - 1);
            v50 *= *v47;
            v47 += 2;
            v49 -= 2;
          }

          while (v49);
          v51 = v50 * v48;
          if (v44 == v45)
          {
LABEL_56:
            if (v38 != v51)
            {
              v69[0] = "source and destination tensor should have the same number of elements";
              v70 = 259;
              mlir::OpState::emitOpError(this, v69, &v73);
              v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v73);
              return v12;
            }

            goto LABEL_57;
          }
        }

        else
        {
          v51 = 1;
          v46 = v41;
        }

        do
        {
          v52 = *v46++;
          v51 *= v52;
        }

        while (v46 != (v41 + 8 * v42));
        goto LABEL_56;
      }
    }

    else
    {
      v38 = 1;
      v33 = v28;
    }

    do
    {
      v39 = *v33++;
      v38 *= v39;
    }

    while (v33 != (v28 + 8 * v29));
    goto LABEL_47;
  }

LABEL_57:
  if (v7 == 0x8000000000000000)
  {
    v69[0] = "cannot use shape operand with dynamic length to reshape to statically-ranked tensor type";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v80;
        v55 = __p;
        if (v80 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v80 = v53;
        operator delete(v55);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v56 = v78;
      v18 = v77;
      if (v78 == v77)
      {
LABEL_92:
        v78 = v16;
        operator delete(v18);
LABEL_93:
        if (v75 != &v76)
        {
          free(v75);
        }

        return v12;
      }

      do
      {
        v58 = *--v56;
        v57 = v58;
        *v56 = 0;
        if (v58)
        {
          MEMORY[0x259C63150](v57, 0x1000C8077774924);
        }
      }

      while (v56 != v16);
LABEL_91:
      v18 = v77;
      goto LABEL_92;
    }
  }

  else
  {
    mlir::RankedTensorType::getShape(&v68);
    if (v7 == v59)
    {
      return 1;
    }

    v69[0] = "length of shape operand differs from the result's tensor rank";
    v70 = 259;
    mlir::OpState::emitOpError(this, v69, &v73);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v73);
    if (v73)
    {
      mlir::InFlightDiagnostic::report(&v73);
    }

    if (v82 == 1)
    {
      if (v81 != &v82)
      {
        free(v81);
      }

      v60 = __p;
      if (__p)
      {
        v61 = v80;
        v62 = __p;
        if (v80 != __p)
        {
          do
          {
            v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
          }

          while (v61 != v60);
          v62 = __p;
        }

        v80 = v60;
        operator delete(v62);
      }

      v16 = v77;
      if (!v77)
      {
        goto LABEL_93;
      }

      v63 = v78;
      v18 = v77;
      if (v78 == v77)
      {
        goto LABEL_92;
      }

      do
      {
        v65 = *--v63;
        v64 = v65;
        *v63 = 0;
        if (v65)
        {
          MEMORY[0x259C63150](v64, 0x1000C8077774924);
        }
      }

      while (v63 != v16);
      goto LABEL_91;
    }
  }

  return v12;
}

unint64_t mlir::tensor::ReshapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *v3;
  if (*v3 && !mlir::DenseElementsAttr::classof(*v3))
  {
    v4 = 0;
  }

  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    v40 = *(*(*a1 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v40);
    if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
    {
      v16 = *a1;
      v17 = *(*a1 + 72);
      v18 = *(*(DefiningOp + 72) + 24);
      v19 = v17[1];
      if (v19)
      {
        v20 = *v17;
        *v19 = *v17;
        if (v20)
        {
          *(v20 + 8) = v19;
        }
      }

      v17[3] = v18;
      v17[1] = v18;
      v21 = *v18;
      *v17 = *v18;
      if (v21)
      {
        *(v21 + 8) = v17;
      }

      *v18 = v17;
      v22 = *(v16 + 36);
      v23 = v16 - 16;
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      return mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0) | 4;
    }

    else
    {
      v9 = *a1;
      v10 = *(*(*a1 + 72) + 24);
      v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v11 = 0;
      }

      v40 = v11;
      v12 = *(v9 - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13 && v11 == v12)
      {
        mlir::RankedTensorType::getShape(&v40);
        if (v15 == 1)
        {
          return v10 | 4;
        }

        else
        {
          v39 = *(*(*a1 + 72) + 56);
          result = mlir::Value::getDefiningOp(&v39);
          if (result)
          {
            if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
            {
              if ((*(result + 46) & 0x80) != 0)
              {
                v25 = *(result + 68);
                v26 = *(result + 72);
                mlir::RankedTensorType::getShape(&v40);
                v28 = v27 == v25;
                if (v25 >= 1 && v27 == v25)
                {
                  v29 = 0;
                  v30 = (v26 + 24);
                  while (1)
                  {
                    v39 = *v30;
                    ConstantIntValue = mlir::getConstantIntValue(v39 | 4);
                    if (v32)
                    {
                      v28 = ConstantIntValue == *(mlir::RankedTensorType::getShape(&v40) + 8 * v29);
                    }

                    else
                    {
                      v33 = mlir::Value::getDefiningOp(&v39);
                      if (!v33 || *(*(v33 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
                      {
                        return 0;
                      }

                      v34 = *(v33 + 72);
                      v35 = *(v34 + 24) == v10;
                      v36 = mlir::getConstantIntValue(*(v34 + 56) | 4);
                      v28 = v35 & v37;
                      if (v29 != v36)
                      {
                        v28 = 0;
                      }
                    }

                    if (++v29 < v25)
                    {
                      v30 += 4;
                      if (v28)
                      {
                        continue;
                      }
                    }

                    break;
                  }
                }
              }

              else
              {
                mlir::RankedTensorType::getShape(&v40);
                v28 = v38 == 0;
              }

              if (v28)
              {
                return v10 | 4;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "collapsed", 9);
}

uint64_t mlir::tensor::ExpandShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "expanded", 8);
}

uint64_t mlir::tensor::ExpandShapeOp::getCorrespondingSourceDim(mlir::tensor::ExpandShapeOp *this, uint64_t a2)
{
  v22[16] = *MEMORY[0x277D85DE8];
  mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &v17);
  v20 = v22;
  v21 = 0x400000000;
  if (v18)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v20, &v17);
    v3 = v17;
    if (!v18)
    {
      goto LABEL_8;
    }

    v4 = v17 + 32 * v18 - 16;
    v5 = -32 * v18;
    do
    {
      v6 = *(v4 - 2);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
  }

  v3 = v17;
LABEL_8:
  if (v3 != &v19)
  {
    free(v3);
  }

  v7 = v20;
  if (!v21)
  {
    v8 = 0;
    if (v20 == v22)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v8 = 0;
  v9 = v20;
  while (1)
  {
    v11 = *(v9 + 2);
    if (v11)
    {
      v12 = 8 * v11;
      v10 = *v9;
      while (*v10 != a2)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v10 = *v9;
    }

    if (v10 != &(*v9)[v11])
    {
      break;
    }

LABEL_14:
    ++v8;
    v9 += 4;
    if (v9 == (v20 + 32 * v21))
    {
      v8 = ((v21 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      break;
    }
  }

  v13 = v20 + 32 * v21 - 16;
  v14 = -32 * v21;
  do
  {
    v15 = *(v13 - 2);
    if (v13 != v15)
    {
      free(v15);
    }

    v13 -= 32;
    v14 += 32;
  }

  while (v14);
  v7 = v20;
  if (v20 != v22)
  {
LABEL_28:
    free(v7);
  }

  return v8;
}

void mlir::tensor::ExpandShapeOp::getReassociationIndices(mlir::tensor::ExpandShapeOp *this@<X0>, uint64_t a2@<X8>)
{
  v23[2] = *MEMORY[0x277D85DE8];
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v19 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::ArrayAttr::getValue(&v19);
  v4 = mlir::ArrayAttr::getValue(&v19);
  for (i = (v4 + 8 * v5); Value != i; ++Value)
  {
    v18 = *Value;
    v7 = mlir::ArrayAttr::getValue(&v18);
    v8 = mlir::ArrayAttr::getValue(&v18);
    v10 = (v8 + 8 * v9);
    v21 = v23;
    v22 = 0x200000000;
    v11 = v10 - v7;
    if (((v10 - v7) >> 3) >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = 0;
    if (v10 != v7)
    {
      v13 = v21;
      do
      {
        v14 = *v7;
        v7 += 8;
        v20 = v14;
        *v13++ = mlir::IntegerAttr::getInt(&v20);
      }

      while (v7 != v10);
      v12 = v22;
    }

    LODWORD(v22) = v12 + (v11 >> 3);
    v15 = *(a2 + 8);
    v16 = *a2;
    if (v15 >= *(a2 + 12))
    {
      if (v16 > &v21 || v16 + 32 * v15 <= &v21)
      {
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow();
    }

    v17 = (v16 + 32 * *(a2 + 8));
    *v17 = v17 + 2;
    v17[1] = 0x200000000;
    if (v22)
    {
      llvm::SmallVectorImpl<long long>::operator=(v17, &v21);
    }

    ++*(a2 + 8);
    if (v21 != v23)
    {
      free(v21);
    }
  }
}

uint64_t llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 32 * v3;
    v5 = v2 + v4 - 16;
    v6 = -v4;
    do
    {
      v7 = *(v5 - 16);
      if (v5 != v7)
      {
        free(v7);
      }

      v5 -= 32;
      v6 += 32;
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

void mlir::tensor::ExpandShapeOp::inferOutputShape(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v15 = mlir::TensorType::operator mlir::ShapedType(&v19);
  mlir::inferExpandShapeOutputShape(a1, a2, v15, v16, a4, a5, a6, a7, &__src);
  if (v23 != 1)
  {
    *a8 = 0;
    *(a8 + 64) = 0;
    return;
  }

  *a8 = a8 + 16;
  *(a8 + 8) = 0x600000000;
  if (&__src == a8 || (v17 = v21) == 0)
  {
    *(a8 + 64) = 1;
LABEL_9:
    if (__src != &v22)
    {
      free(__src);
    }

    return;
  }

  if (v21 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  memcpy((a8 + 16), __src, 8 * v21);
  *(a8 + 8) = v17;
  v18 = v23;
  *(a8 + 64) = 1;
  if (v18)
  {
    goto LABEL_9;
  }
}

void mlir::tensor::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x600000000;
  if (((8 * a8) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v14 = 0;
  v15 = 8 * a8;
  if (a8)
  {
    memcpy(v17, a7, v15);
    v14 = v18;
  }

  LODWORD(v18) = v14 + (v15 >> 3);
  mlir::decomposeMixedValues(&v17, v20);
  if (v17 != v19)
  {
    free(v17);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  mlir::ValueRange::ValueRange(&v17, v20[8], v21);
  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, ReassociationIndicesAttribute, v17, v18);
}

{
  v16 = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a5, a6, &v14);
  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, v14, v15, a7, a8);
}

void mlir::tensor::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v11 = *(a2 + 256);
  if (!v11)
  {
    operator new();
  }

  *v11 = a5;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::ExpandShapeOp::build(mlir::IndexType **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v12 = *a2;
  __src = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = v24;
  v23 = 0x600000000;
  mlir::RankedTensorType::getShape(&__src);
  if (v13 >= 1)
  {
    for (i = 0; i < v16; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a1, v12, a4, i);
      if (v23 >= HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v22 + v23) = MixedSize;
      LODWORD(v23) = v23 + 1;
      mlir::RankedTensorType::getShape(&__src);
    }
  }

  mlir::tensor::ExpandShapeOp::inferOutputShape(a1, *a2, a3, a5, a6, v22, v23, &__src);
  if (v21 == 1)
  {
    v17 = v20;
    if (v20)
    {
      if (v20 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v18, __src, 8 * v20);
    }
  }

  else
  {
    v17 = 0;
  }

  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, a5, a6, v18, v17);
}

{
  v12 = *MEMORY[0x277D85DE8];
  mlir::convertReassociationMapsToIndices(a5, a6, &v10);
  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, v10, v11);
}

void mlir::tensor::CollapseShapeOp::getReassociationMaps(mlir::tensor::CollapseShapeOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[16] = *MEMORY[0x277D85DE8];
  mlir::tensor::CollapseShapeOp::getReassociationExprs(this, &v7);
  mlir::getSymbolLessAffineMaps(v7, v8, a2);
  v3 = v7;
  if (v8)
  {
    v4 = v7 + 32 * v8 - 16;
    v5 = -32 * v8;
    do
    {
      v6 = *(v4 - 2);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v3 = v7;
  }

  if (v3 != v9)
  {
    free(v3);
  }
}

void mlir::tensor::CollapseShapeOp::getReassociationExprs(mlir::tensor::CollapseShapeOp *this@<X0>, void *a2@<X8>)
{
  v18[8] = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &v13);
  mlir::convertReassociationIndicesToExprs(Context, v13, v14, &v16);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v17)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(a2, &v16);
    v5 = v16;
    if (!v17)
    {
      goto LABEL_8;
    }

    v6 = &v16[4 * v17 - 2];
    v7 = -32 * v17;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
  }

  v5 = v16;
LABEL_8:
  if (v5 != v18)
  {
    free(v5);
  }

  v9 = v13;
  if (v14)
  {
    v10 = v13 + 32 * v14 - 16;
    v11 = -32 * v14;
    do
    {
      v12 = *(v10 - 2);
      if (v10 != v12)
      {
        free(v12);
      }

      v10 -= 32;
      v11 += 32;
    }

    while (v11);
    v9 = v13;
  }

  if (v9 != &v15)
  {
    free(v9);
  }
}

void mlir::tensor::ExpandShapeOp::getReassociationMaps(mlir::tensor::ExpandShapeOp *this@<X0>, uint64_t a2@<X8>)
{
  v9[16] = *MEMORY[0x277D85DE8];
  mlir::tensor::ExpandShapeOp::getReassociationExprs(this, &v7);
  mlir::getSymbolLessAffineMaps(v7, v8, a2);
  v3 = v7;
  if (v8)
  {
    v4 = v7 + 32 * v8 - 16;
    v5 = -32 * v8;
    do
    {
      v6 = *(v4 - 2);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v3 = v7;
  }

  if (v3 != v9)
  {
    free(v3);
  }
}

void mlir::tensor::ExpandShapeOp::getReassociationExprs(mlir::tensor::ExpandShapeOp *this@<X0>, void *a2@<X8>)
{
  v18[8] = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::tensor::ExpandShapeOp::getReassociationIndices(this, &v13);
  mlir::convertReassociationIndicesToExprs(Context, v13, v14, &v16);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v17)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(a2, &v16);
    v5 = v16;
    if (!v17)
    {
      goto LABEL_8;
    }

    v6 = &v16[4 * v17 - 2];
    v7 = -32 * v17;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
  }

  v5 = v16;
LABEL_8:
  if (v5 != v18)
  {
    free(v5);
  }

  v9 = v13;
  if (v14)
  {
    v10 = v13 + 32 * v14 - 16;
    v11 = -32 * v14;
    do
    {
      v12 = *(v10 - 2);
      if (v10 != v12)
      {
        free(v12);
      }

      v10 -= 32;
      v11 += 32;
    }

    while (v11);
    v9 = v13;
  }

  if (v9 != &v15)
  {
    free(v9);
  }
}

uint64_t mlir::tensor::CollapseShapeOp::inferCollapsedType(uint64_t a1, uint64_t a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v11 = a1;
  Context = mlir::Type::getContext(&v11);
  mlir::convertReassociationIndicesToExprs(Context, *a2, *(a2 + 8), &v12);
  mlir::getSymbolLessAffineMaps(v12, v13, &v15);
  v5 = mlir::tensor::CollapseShapeOp::inferCollapsedType(a1, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  v6 = v12;
  if (v13)
  {
    v7 = v12 + 32 * v13 - 16;
    v8 = -32 * v13;
    do
    {
      v9 = *(v7 - 2);
      if (v7 != v9)
      {
        free(v9);
      }

      v7 -= 32;
      v8 += 32;
    }

    while (v8);
    v6 = v12;
  }

  if (v6 != &v14)
  {
    free(v6);
  }

  return v5;
}

uint64_t mlir::tensor::CollapseShapeOp::inferCollapsedType(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v28 = a1;
  Shape = mlir::RankedTensorType::getShape(&v28);
  v29 = v31;
  v30 = 0x400000000;
  if (a3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    v6 = 0;
    v7 = &a2[a3];
    while (1)
    {
      v27 = *a2;
      NumResults = mlir::AffineMap::getNumResults(&v27);
      if (NumResults)
      {
        v9 = 8 * NumResults;
        v10 = (Shape + 8 * v6);
        while (*v10 != 0x8000000000000000)
        {
          ++v10;
          v9 -= 8;
          if (!v9)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v10 = (Shape + 8 * v6);
      }

      v11 = Shape + 8 * v6 + 8 * NumResults;
      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0x8000000000000000;
      }

      if (v10 != v11 || NumResults == 0)
      {
        goto LABEL_23;
      }

LABEL_18:
      if (NumResults >= 2)
      {
        v14 = 0;
        if (!__CFADD__(v6, NumResults - 1))
        {
          v12 = 1;
          if (!((NumResults - 1) >> 32))
          {
            v14 = NumResults & 0xFFFFFFFE;
            v18 = v6;
            v19 = v14;
            v20 = 1;
            v21 = 1;
            do
            {
              v20 *= *(Shape + 8 * v18);
              v21 *= *(Shape + 8 * (v18 + 1));
              v18 += 2;
              v19 -= 2;
            }

            while (v19);
            v12 = v21 * v20;
            if (v14 == NumResults)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        v14 = 0;
      }

      v12 = 1;
LABEL_21:
      v15 = v6 + v14;
      v16 = NumResults - v14;
      do
      {
        v12 *= *(Shape + 8 * v15++);
        --v16;
      }

      while (v16);
LABEL_23:
      if (v30 >= HIDWORD(v30))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v29 + v30) = v12;
      v17 = v30 + 1;
      LODWORD(v30) = v30 + 1;
      v6 += NumResults;
      if (++a2 == v7)
      {
        goto LABEL_34;
      }
    }
  }

  v17 = v30;
LABEL_34:
  v22 = v29;
  v23 = v17;
  ElementType = mlir::RankedTensorType::getElementType(&v28);
  result = mlir::RankedTensorType::get(v22, v23, ElementType, 0);
  if (v29 != v31)
  {
    v26 = result;
    free(v29);
    return v26;
  }

  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::build(mlir::MLIRContext **a1, mlir::Attribute *a2, uint64_t a3, unsigned int **a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v25 = a3;
  v13 = *(a3 + 8);
  mlir::convertReassociationIndicesToExprs(*a1, a4, a5, &v26);
  mlir::getSymbolLessAffineMaps(v26, v27, &v29);
  v24 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v13 & 0xFFFFFFFFFFFFFFF8, v29, v30);
  if (v29 != v31)
  {
    free(v29);
  }

  v14 = v26;
  if (v27)
  {
    v15 = v26 + 32 * v27 - 16;
    v16 = -32 * v27;
    do
    {
      v17 = *(v15 - 2);
      if (v15 != v17)
      {
        free(v17);
      }

      v15 -= 32;
      v16 += 32;
    }

    while (v16);
    v14 = v26;
  }

  if (v14 != v28)
  {
    free(v14);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a4, a5);
  Context = mlir::Attribute::getContext(a2);
  v28[8] = 261;
  v26 = "reassociation";
  v27 = 13;
  v21 = mlir::StringAttr::get(Context, &v26, v20);
  mlir::NamedAttribute::NamedAttribute(&v29, v21, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  v22 = mlir::TypeRange::TypeRange(&v26, &v24, 1uLL);
  return mlir::tensor::CollapseShapeOp::build(v22, a2, v26, v27, &v25, 1uLL, a6, a7);
}

uint64_t mlir::tensor::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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

void mlir::tensor::ExpandShapeOp::verify(mlir::tensor::ExpandShapeOp *this)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
}

BOOL mlir::tensor::CollapseShapeOp::verify(unsigned int **this)
{
  v151 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((*this)[9])
  {
    v3 = (*this - 4);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v124 = v1;
  v130 = v2;
  v131 = v1;
  v129 = v4;
  mlir::RankedTensorType::getShape(&v130);
  v6 = v5;
  mlir::RankedTensorType::getShape(&v129);
  if (v6 >= v7)
  {
    v27 = v7;
    v138 = *&v1[4 * ((v1[11] >> 23) & 1) + 16];
    mlir::ArrayAttr::getValue(&v138);
    if (v27 != v28)
    {
      v134 = "expected collapsed rank (";
      v137 = 259;
      mlir::OpState::emitOpError(&v131, &v134, &v138);
      if (v138)
      {
        LODWORD(v126) = 5;
        *(&v126 + 1) = v27;
        if (v142 >= v143)
        {
          if (v141 > &v126 || v141 + 24 * v142 <= &v126)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v33 = v141 + 24 * v142;
        v34 = v126;
        *(v33 + 2) = v127;
        *v33 = v34;
        v35 = ++v142;
        if (v138)
        {
          LODWORD(v126) = 3;
          *(&v126 + 1) = ") to equal the number of reassociation maps (";
          v127 = 45;
          if (v35 >= v143)
          {
            if (v141 > &v126 || v141 + 24 * v35 <= &v126)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v36 = v141 + 24 * v142;
          v37 = v126;
          *(v36 + 2) = v127;
          *v36 = v37;
          ++v142;
        }
      }

      *&v132 = *(v131 + 2 * ((*(v131 + 11) >> 23) & 1) + 8);
      mlir::ArrayAttr::getValue(&v132);
      if (v138)
      {
        LODWORD(v126) = 5;
        *(&v126 + 1) = v38;
        if (v142 >= v143)
        {
          if (v141 > &v126 || v141 + 24 * v142 <= &v126)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v39 = v141 + 24 * v142;
        v40 = v126;
        *(v39 + 2) = v127;
        *v39 = v40;
        v41 = ++v142;
        if (v138)
        {
          LODWORD(v126) = 3;
          *(&v126 + 1) = ").";
          v127 = 2;
          if (v41 >= v143)
          {
            if (v141 > &v126 || v141 + 24 * v41 <= &v126)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v42 = v141 + 24 * v142;
          v43 = v126;
          *(v42 + 2) = v127;
          *v42 = v43;
          ++v142;
        }
      }

      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v150 == 1)
      {
        if (v149 != &v150)
        {
          free(v149);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v148;
          v47 = __p;
          if (v148 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v148 = v45;
          operator delete(v47);
        }

        v48 = v145;
        if (v145)
        {
          v49 = v146;
          v50 = v145;
          if (v146 != v145)
          {
            do
            {
              v52 = *--v49;
              v51 = v52;
              *v49 = 0;
              if (v52)
              {
                MEMORY[0x259C63150](v51, 0x1000C8077774924);
              }
            }

            while (v49 != v48);
            v50 = v145;
          }

          v146 = v48;
          operator delete(v50);
        }

        if (v141 != v144)
        {
          free(v141);
        }
      }

      if (v44)
      {
        goto LABEL_97;
      }

      return 0;
    }

    mlir::tensor::CollapseShapeOp::getReassociationExprs(&v131, &v138);
    mlir::getSymbolLessAffineMaps(v138, v139, &v134);
    v29 = v138;
    if (v139)
    {
      v30 = v138 + 32 * v139 - 16;
      v31 = -32 * v139;
      do
      {
        v32 = *(v30 - 2);
        if (v30 != v32)
        {
          free(v32);
        }

        v30 -= 32;
        v31 += 32;
      }

      while (v31);
      v29 = v138;
    }

    if (v29 != &v140)
    {
      free(v29);
    }

    v53 = v134;
    if (v135)
    {
      v54 = 0;
      v55 = 8 * v135;
      while (mlir::AffineMap::getNumDims(v53) == v6)
      {
        ++v54;
        v53 = (v53 + 8);
        v55 -= 8;
        if (!v55)
        {
          v125 = 0;
          if (mlir::isReassociationValid(v134, v135, &v125))
          {
            goto LABEL_131;
          }

          goto LABEL_71;
        }
      }

      *&v126 = "expected reassociation map #";
      v128 = 259;
      mlir::OpState::emitOpError(&v131, &v126, &v138);
      if (v138)
      {
        LODWORD(v132) = 5;
        *(&v132 + 1) = v54;
        if (v142 >= v143)
        {
          if (v141 > &v132 || v141 + 24 * v142 <= &v132)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v101 = v141 + 24 * v142;
        v102 = v132;
        *(v101 + 2) = v133;
        *v101 = v102;
        v103 = ++v142;
        if (v138)
        {
          LODWORD(v132) = 3;
          *(&v132 + 1) = " to have size equal to the expanded rank (";
          v133 = 42;
          if (v103 >= v143)
          {
            if (v141 > &v132 || v141 + 24 * v103 <= &v132)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v104 = v141 + 24 * v142;
          v105 = v132;
          *(v104 + 2) = v133;
          *v104 = v105;
          v106 = ++v142;
          if (v138)
          {
            LODWORD(v132) = 5;
            *(&v132 + 1) = v6;
            if (v106 >= v143)
            {
              if (v141 > &v132 || v141 + 24 * v106 <= &v132)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v107 = v141 + 24 * v142;
            v108 = v132;
            *(v107 + 2) = v133;
            *v107 = v108;
            v109 = ++v142;
            if (v138)
            {
              LODWORD(v132) = 3;
              *(&v132 + 1) = "), but it is  ";
              v133 = 14;
              if (v109 >= v143)
              {
                if (v141 > &v132 || v141 + 24 * v109 <= &v132)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v110 = v141 + 24 * v142;
              v111 = v132;
              *(v110 + 2) = v133;
              *v110 = v111;
              ++v142;
            }
          }
        }
      }

      NumDims = mlir::AffineMap::getNumDims(v53);
      if (v138)
      {
        LODWORD(v132) = 5;
        *(&v132 + 1) = NumDims;
        if (v142 >= v143)
        {
          if (v141 > &v132 || v141 + 24 * v142 <= &v132)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v113 = v141 + 24 * v142;
        v114 = v132;
        *(v113 + 2) = v133;
        *v113 = v114;
        ++v142;
        if (v138)
        {
          mlir::Diagnostic::operator<<(&v139, 46);
        }
      }

      v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v150)
      {
        if (v149 != &v150)
        {
          free(v149);
        }

        v115 = __p;
        if (__p)
        {
          v116 = v148;
          v117 = __p;
          if (v148 != __p)
          {
            do
            {
              v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v116 - 1);
            }

            while (v116 != v115);
            v117 = __p;
          }

          v148 = v115;
          operator delete(v117);
        }

        v118 = v145;
        if (v145)
        {
          v119 = v146;
          v120 = v145;
          if (v146 != v145)
          {
            do
            {
              v122 = *--v119;
              v121 = v122;
              *v119 = 0;
              if (v122)
              {
                MEMORY[0x259C63150](v121, 0x1000C8077774924);
              }
            }

            while (v119 != v118);
            v120 = v145;
          }

          v146 = v118;
          operator delete(v120);
        }

        v97 = v141;
        if (v141 != v144)
        {
          goto LABEL_167;
        }
      }

LABEL_168:
      if (v134 != v136)
      {
        free(v134);
      }

      if (v61)
      {
        goto LABEL_97;
      }

      return 0;
    }

    v125 = 0;
    if (mlir::isReassociationValid(v134, 0, &v125))
    {
LABEL_131:
      *&v126 = &v131;
      Shape = mlir::RankedTensorType::getShape(&v129);
      v93 = v92;
      v94 = mlir::RankedTensorType::getShape(&v130);
      v96 = v95;
      mlir::tensor::ExpandShapeOp::getReassociationIndices(&v131, &v138);
      v61 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, &v126, Shape, v93, v94, v96, v138, v139);
      v97 = v138;
      if (v139)
      {
        v98 = v138 + 32 * v139 - 16;
        v99 = -32 * v139;
        do
        {
          v100 = *(v98 - 2);
          if (v98 != v100)
          {
            free(v100);
          }

          v98 -= 32;
          v99 += 32;
        }

        while (v99);
        v97 = v138;
      }

      if (v97 == &v140)
      {
        goto LABEL_168;
      }
    }

    else
    {
LABEL_71:
      *&v126 = "expected reassociation map #";
      v128 = 259;
      mlir::OpState::emitOpError(&v131, &v126, &v138);
      if (v138)
      {
        LODWORD(v132) = 2;
        *(&v132 + 1) = v125;
        if (v142 >= v143)
        {
          if (v141 > &v132 || v141 + 24 * v142 <= &v132)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v56 = v141 + 24 * v142;
        v57 = v132;
        *(v56 + 2) = v133;
        *v56 = v57;
        v58 = ++v142;
        if (v138)
        {
          LODWORD(v132) = 3;
          *(&v132 + 1) = " to be valid and contiguous.";
          v133 = 28;
          if (v58 >= v143)
          {
            if (v141 > &v132 || v141 + 24 * v58 <= &v132)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v59 = v141 + 24 * v142;
          v60 = v132;
          *(v59 + 2) = v133;
          *v59 = v60;
          ++v142;
        }
      }

      v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
      if (v138)
      {
        mlir::InFlightDiagnostic::report(&v138);
      }

      if (v150 != 1)
      {
        goto LABEL_168;
      }

      if (v149 != &v150)
      {
        free(v149);
      }

      v62 = __p;
      if (__p)
      {
        v63 = v148;
        v64 = __p;
        if (v148 != __p)
        {
          do
          {
            v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
          }

          while (v63 != v62);
          v64 = __p;
        }

        v148 = v62;
        operator delete(v64);
      }

      v65 = v145;
      if (v145)
      {
        v66 = v146;
        v67 = v145;
        if (v146 != v145)
        {
          do
          {
            v69 = *--v66;
            v68 = v69;
            *v66 = 0;
            if (v69)
            {
              MEMORY[0x259C63150](v68, 0x1000C8077774924);
            }
          }

          while (v66 != v65);
          v67 = v145;
        }

        v146 = v65;
        operator delete(v67);
      }

      v97 = v141;
      if (v141 == v144)
      {
        goto LABEL_168;
      }
    }

LABEL_167:
    free(v97);
    goto LABEL_168;
  }

  v134 = "expected the expanded type, ";
  v137 = 259;
  mlir::OpState::emitOpError(&v131, &v134, &v138);
  if (v138)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v126, v130);
    if (v142 >= v143)
    {
      if (v141 > &v126 || v141 + 24 * v142 <= &v126)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v141 + 24 * v142;
    v9 = v126;
    *(v8 + 2) = v127;
    *v8 = v9;
    v10 = ++v142;
    if (v138)
    {
      LODWORD(v126) = 3;
      *(&v126 + 1) = " to have a higher (or same) rank ";
      v127 = 33;
      if (v10 >= v143)
      {
        if (v141 > &v126 || v141 + 24 * v10 <= &v126)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v141 + 24 * v142;
      v12 = v126;
      *(v11 + 2) = v127;
      *v11 = v12;
      v13 = ++v142;
      if (v138)
      {
        LODWORD(v126) = 3;
        *(&v126 + 1) = "than the collapsed type, ";
        v127 = 25;
        if (v13 >= v143)
        {
          if (v141 > &v126 || v141 + 24 * v13 <= &v126)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v141 + 24 * v142;
        v15 = v126;
        *(v14 + 2) = v127;
        *v14 = v15;
        ++v142;
        if (v138)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v126, v129);
          if (v142 >= v143)
          {
            if (v141 > &v126 || v141 + 24 * v142 <= &v126)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = v141 + 24 * v142;
          v17 = v126;
          *(v16 + 2) = v127;
          *v16 = v17;
          ++v142;
          if (v138)
          {
            mlir::Diagnostic::operator<<(&v139, 46);
          }
        }
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
  if (v138)
  {
    mlir::InFlightDiagnostic::report(&v138);
  }

  if (v150 == 1)
  {
    if (v149 != &v150)
    {
      free(v149);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v148;
      v21 = __p;
      if (v148 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v148 = v19;
      operator delete(v21);
    }

    v22 = v145;
    if (v145)
    {
      v23 = v146;
      v24 = v145;
      if (v146 != v145)
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
        v24 = v145;
      }

      v146 = v22;
      operator delete(v24);
    }

    if (v141 != v144)
    {
      free(v141);
    }
  }

  if (!v18)
  {
    return 0;
  }

LABEL_97:
  mlir::tensor::CollapseShapeOp::getReassociationExprs(&v124, &v138);
  mlir::getSymbolLessAffineMaps(v138, v139, &v134);
  v70 = v138;
  if (v139)
  {
    v71 = v138 + 32 * v139 - 16;
    v72 = -32 * v139;
    do
    {
      v73 = *(v71 - 2);
      if (v71 != v73)
      {
        free(v73);
      }

      v71 -= 32;
      v72 += 32;
    }

    while (v72);
    v70 = v138;
  }

  if (v70 != &v140)
  {
    free(v70);
  }

  v74 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v2, v134, v135);
  if (mlir::tensor::isSameTypeWithoutEncoding(v4, v74))
  {
    v75 = 1;
  }

  else
  {
    *&v126 = "expected collapsed type to be ";
    v128 = 259;
    mlir::OpState::emitOpError(&v124, &v126, &v138);
    if (v138)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v132, v74);
      if (v142 >= v143)
      {
        if (v141 > &v132 || v141 + 24 * v142 <= &v132)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v76 = v141 + 24 * v142;
      v77 = v132;
      *(v76 + 2) = v133;
      *v76 = v77;
      v78 = ++v142;
      if (v138)
      {
        LODWORD(v132) = 3;
        *(&v132 + 1) = ", but got ";
        v133 = 10;
        if (v78 >= v143)
        {
          if (v141 > &v132 || v141 + 24 * v78 <= &v132)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v79 = v141 + 24 * v142;
        v80 = v132;
        *(v79 + 2) = v133;
        *v79 = v80;
        ++v142;
        if (v138)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v132, v4);
          if (v142 >= v143)
          {
            if (v141 > &v132 || v141 + 24 * v142 <= &v132)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v81 = v141 + 24 * v142;
          v82 = v132;
          *(v81 + 2) = v133;
          *v81 = v82;
          ++v142;
        }
      }
    }

    v75 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
    if (v138)
    {
      mlir::InFlightDiagnostic::report(&v138);
    }

    if (v150 == 1)
    {
      if (v149 != &v150)
      {
        free(v149);
      }

      v83 = __p;
      if (__p)
      {
        v84 = v148;
        v85 = __p;
        if (v148 != __p)
        {
          do
          {
            v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
          }

          while (v84 != v83);
          v85 = __p;
        }

        v148 = v83;
        operator delete(v85);
      }

      v86 = v145;
      if (v145)
      {
        v87 = v146;
        v88 = v145;
        if (v146 != v145)
        {
          do
          {
            v90 = *--v87;
            v89 = v90;
            *v87 = 0;
            if (v90)
            {
              MEMORY[0x259C63150](v89, 0x1000C8077774924);
            }
          }

          while (v87 != v86);
          v88 = v145;
        }

        v146 = v86;
        operator delete(v88);
      }

      if (v141 != v144)
      {
        free(v141);
      }
    }
  }

  if (v134 != v136)
  {
    free(v134);
  }

  return v75;
}

uint64_t mlir::tensor::ExpandShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 56);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        mlir::tensor::ExpandShapeOp::fold();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Shape = mlir::RankedTensorType::getShape(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Shape;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Shape + 8 * v33);
  v34 = (Shape + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Shape + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v62, &v66);
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::RankedTensorType::getShape(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::RankedTensorType::getShape(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>(mlir::tensor::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 48);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        mlir::tensor::ExpandShapeOp::fold();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Shape = mlir::RankedTensorType::getShape(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Shape;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Shape + 8 * v33);
  v34 = (Shape + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Shape + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v62, &v66);
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::RankedTensorType::getShape(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::RankedTensorType::getShape(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>(mlir::tensor::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "extracted_slice", 15);
}

uint64_t mlir::tensor::ExtractSliceOp::inferResultType(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a1;
  ElementType = mlir::RankedTensorType::getElementType(&v10);
  Encoding = mlir::RankedTensorType::getEncoding(&v10);
  return mlir::RankedTensorType::get(a4, a5, ElementType, Encoding);
}

uint64_t mlir::tensor::ExtractSliceOp::inferResultType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v30[0] = v31;
  v30[1] = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  v25[0] = v26;
  v25[1] = 0x600000000;
  v23[0] = v24;
  v23[1] = 0x600000000;
  v21[0] = v22;
  v21[1] = 0x600000000;
  v19[0] = v20;
  v19[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a2, a3, v23, v30);
  mlir::dispatchIndexOpFoldResults(a4, a5, v21, &v27);
  mlir::dispatchIndexOpFoldResults(a6, a7, v19, v25);
  v12 = v27;
  v13 = v28;
  v18 = a1;
  ElementType = mlir::RankedTensorType::getElementType(&v18);
  Encoding = mlir::RankedTensorType::getEncoding(&v18);
  v16 = mlir::RankedTensorType::get(v12, v13, ElementType, Encoding);
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  return v16;
}

uint64_t mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v25 = a2;
  ElementType = mlir::RankedTensorType::getElementType(&v25);
  Encoding = mlir::RankedTensorType::getEncoding(&v25);
  v24 = mlir::RankedTensorType::get(a5, a6, ElementType, Encoding);
  mlir::RankedTensorType::getShape(&v24);
  v12 = (v11 - a1);
  if (v12 >= 1)
  {
    Shape = mlir::RankedTensorType::getShape(&v24);
    v15 = v14;
    mlir::getPositionsOfShapeOne(v12, Shape, v14, &v23);
    v25 = v27;
    v26 = 0x600000000;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        if (v23)
        {
          if (((1 << v17) & (v23 >> 1) & ~(-1 << (v23 >> 58))) == 0)
          {
LABEL_10:
            if (v16 >= HIDWORD(v26))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v25 + v16) = *(Shape + 8 * v17);
            v16 = v26 + 1;
            LODWORD(v26) = v26 + 1;
          }
        }

        else if ((*(*v23 + (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_10;
        }

        if (v15 == ++v17)
        {
          v18 = v25;
          v19 = v16;
          goto LABEL_14;
        }
      }
    }

    v19 = 0;
    v18 = v27;
LABEL_14:
    v20 = mlir::RankedTensorType::getElementType(&v24);
    v24 = mlir::RankedTensorType::get(v18, v19, v20, 0);
    if (v25 != v27)
    {
      free(v25);
    }

    v21 = v23;
    if ((v23 & 1) == 0 && v23)
    {
      if (*v23 != v23 + 2)
      {
        free(*v23);
      }

      MEMORY[0x259C63180](v21, 0x1080C40EF38A13ELL);
    }
  }

  return v24;
}

BOOL llvm::SmallBitVector::test(llvm::SmallBitVector *this, unsigned int a2)
{
  v2 = *this;
  if (*this)
  {
    return ((1 << a2) & (v2 >> 1) & ~(-1 << (v2 >> 58))) != 0;
  }

  else
  {
    return (*(*v2 + 8 * (a2 >> 6)) & (1 << a2)) != 0;
  }
}

void llvm::SmallBitVector::~SmallBitVector(void ***this)
{
  v1 = *this;
  if ((*this & 1) == 0 && v1)
  {
    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x259C63180](v1, 0x1080C40EF38A13ELL);
  }
}

uint64_t mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = v30;
  v29[1] = 0x600000000;
  v26 = v28;
  v27 = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  v22[0] = v23;
  v22[1] = 0x600000000;
  v20[0] = v21;
  v20[1] = 0x600000000;
  v18[0] = v19;
  v18[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, v22, v29);
  mlir::dispatchIndexOpFoldResults(a5, a6, v20, &v26);
  mlir::dispatchIndexOpFoldResults(a7, a8, v18, v24);
  v15 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(a1, a2, v13, v14, v26, v27);
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  return v15;
}

void mlir::tensor::ExtractSliceOp::build(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v40[6] = *MEMORY[0x277D85DE8];
  v39[0] = v40;
  v39[1] = 0x600000000;
  v36 = &v38;
  v37 = 0x600000000;
  v34[0] = &v35;
  v34[1] = 0x600000000;
  v31 = &v33;
  v32 = 0x600000000;
  v28 = &v30;
  v29 = 0x600000000;
  v25 = &v27;
  v26 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v31, v39);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v28, &v36);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v25, v34);
  if (a3)
  {
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a12 + v16 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = v36;
    v18 = v37;
    v24 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
    ElementType = mlir::RankedTensorType::getElementType(&v24);
    Encoding = mlir::RankedTensorType::getEncoding(&v24);
    mlir::RankedTensorType::get(v17, v18, ElementType, Encoding);
    *(a2 + 192) = 0;
    v16 = *(a2 + 120);
    if (a12 + v16 <= *(a2 + 124))
    {
LABEL_3:
      if (a12)
      {
        memcpy((*(a2 + 112) + 16 * v16), __src, 16 * a12);
        LODWORD(v16) = *(a2 + 120);
      }

      *(a2 + 120) = v16 + a12;
      mlir::ValueRange::ValueRange(&v24, v31, v32);
      mlir::ValueRange::ValueRange(&v23, v28, v29);
      mlir::ValueRange::ValueRange(&v22, v25, v26);
      mlir::Builder::getDenseI64ArrayAttr();
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::tensor::ExtractSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a4;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  result = mlir::OperationState::addOperands(a2, a9, a10);
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  v20[6] = 1;
  v20[7] = a6;
  v20[8] = a8;
  v20[9] = a10;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a11;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 8) = a12;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 16) = a13;
  v24 = *(a2 + 72);
  if (v24 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v24) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::tensor::ExtractSliceOp::build(int a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void *a6, uint64_t a7)
{
  v18 = *MEMORY[0x277D85DE8];
  mlir::getOffsetsSizesAndStrides(a4, a5, &v12);
  mlir::tensor::ExtractSliceOp::build(a1, a2, 0, a3, v12, v13, v14, v15, v16, v17, a6, a7);
}

void mlir::tensor::ExtractSliceOp::build(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unint64_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10)
{
  v36 = *MEMORY[0x277D85DE8];
  __src = &v33[2];
  *v33 = 0x400000000;
  if (a6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v34 = a5;
  v35 = xmmword_25736B790;
  if (a6)
  {
    v16 = 0;
    v17 = &v33[2];
    do
    {
      *v17 = mlir::ValueRange::dereference_iterator(&v34, v16) | 4;
      v17 += 2;
      v16 = v35 + 1;
      *&v35 = v16;
    }

    while (v16 != a6);
    v18 = v33[0];
    v19 = __src;
  }

  else
  {
    v18 = 0;
    v19 = &v33[2];
  }

  v34 = &v35 + 2;
  *&v35 = 0x600000000;
  v20 = v18 + a6;
  v33[0] = v20;
  if (v20)
  {
    if (v19 == &v33[2])
    {
      if (v20 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v34, v19, 8 * v20);
      v19 = __src;
      LODWORD(v35) = v20;
    }

    else
    {
      v34 = v19;
      *&v35 = __PAIR64__(v33[1], v20);
      __src = &v33[2];
      v33[1] = 0;
      v19 = &v33[2];
    }

    v33[0] = 0;
  }

  if (v19 != &v33[2])
  {
    free(v19);
  }

  __dst = v31 + 8;
  *&v31[0] = 0x400000000;
  if (a8 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __src = a7;
  *v33 = xmmword_25736B790;
  if (a8)
  {
    v21 = 0;
    v22 = v31 + 1;
    do
    {
      *v22++ = mlir::ValueRange::dereference_iterator(&__src, v21) | 4;
      v21 = *v33 + 1;
      *v33 = v21;
    }

    while (v21 != a8);
    v23 = v31[0];
    v24 = __dst;
  }

  else
  {
    v23 = 0;
    v24 = v31 + 8;
  }

  __src = &v33[2];
  *v33 = 0x600000000;
  v25 = v23 + a8;
  LODWORD(v31[0]) = v25;
  if (v25)
  {
    if (v24 == v31 + 8)
    {
      if (v25 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__src, v24, 8 * v25);
      v24 = __dst;
      v33[0] = v25;
    }

    else
    {
      __src = v24;
      v33[0] = v25;
      v33[1] = DWORD1(v31[0]);
      __dst = v31 + 8;
      DWORD1(v31[0]) = 0;
      v24 = v31 + 8;
    }

    LODWORD(v31[0]) = 0;
  }

  if (v24 != v31 + 8)
  {
    free(v24);
  }

  if (a10 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __dst = a9;
  v31[0] = xmmword_25736B790;
  if (a10)
  {
    v26 = 0;
    v27 = v29;
    do
    {
      *v27++ = mlir::ValueRange::dereference_iterator(&__dst, v26) | 4;
      v26 = *&v31[0] + 1;
      *&v31[0] = v26;
    }

    while (v26 != a10);
  }

  __dst = v31 + 8;
  *&v31[0] = 0x600000000;
  if (a10)
  {
    memcpy(__dst, v29, 8 * a10);
    LODWORD(v31[0]) = a10;
  }

  mlir::tensor::ExtractSliceOp::build(a1, a2, a3, a4, v34, v35, __src, v33[0], __dst, a10, 0, 0);
}

uint64_t produceSliceErrorMsg(int a1, mlir::Operation *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v38 = a3;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v36[0] = "expected type to be ";
      v37 = 259;
      mlir::Operation::emitError(v41, a2, v36);
      if (v41[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v39, a3);
        if (v43 >= v44)
        {
          if (v42 > &v39 || v42 + 24 * v43 <= &v39)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v5 = v42 + 24 * v43;
        v6 = v39;
        *(v5 + 2) = v40;
        *v5 = v6;
        v7 = ++v43;
        if (v41[0])
        {
          LODWORD(v39) = 3;
          *(&v39 + 1) = " or a rank-reduced version. (size mismatch) ";
          v40 = 44;
          if (v7 >= v44)
          {
            if (v42 > &v39 || v42 + 24 * v7 <= &v39)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v8 = v42 + 24 * v43;
          v9 = v39;
          *(v8 + 2) = v40;
          *v8 = v9;
          ++v43;
        }
      }

      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
      if (v41[0])
      {
        mlir::InFlightDiagnostic::report(v41);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v10 = __p;
        if (__p)
        {
          v11 = v49;
          v12 = __p;
          if (v49 != __p)
          {
            do
            {
              v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
            }

            while (v11 != v10);
            v12 = __p;
          }

          v49 = v10;
          operator delete(v12);
        }

        v13 = v46;
        if (!v46)
        {
          goto LABEL_66;
        }

        v14 = v47;
        v15 = v46;
        if (v47 == v46)
        {
          goto LABEL_65;
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
        goto LABEL_64;
      }
    }

    else
    {
      v36[0] = "expected element type to be ";
      v37 = 259;
      mlir::Operation::emitError(v41, a2, v36);
      ElementType = mlir::RankedTensorType::getElementType(&v38);
      if (v41[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v39, ElementType);
        if (v43 >= v44)
        {
          if (v42 > &v39 || v42 + 24 * v43 <= &v39)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v42 + 24 * v43;
        v28 = v39;
        *(v27 + 2) = v40;
        *v27 = v28;
        ++v43;
      }

      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
      if (v41[0])
      {
        mlir::InFlightDiagnostic::report(v41);
      }

      if (v51 == 1)
      {
        if (v50 != &v51)
        {
          free(v50);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v49;
          v31 = __p;
          if (v49 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v49 = v29;
          operator delete(v31);
        }

        v13 = v46;
        if (!v46)
        {
          goto LABEL_66;
        }

        v32 = v47;
        v15 = v46;
        if (v47 == v46)
        {
          goto LABEL_65;
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

        while (v32 != v13);
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return 1;
    }

    v36[0] = "expected rank to be smaller or equal to ";
    v37 = 259;
    mlir::Operation::emitError(v41, a2, v36);
    if (v41[0])
    {
      LODWORD(v39) = 3;
      *(&v39 + 1) = "the other rank. ";
      v40 = 16;
      if (v43 >= v44)
      {
        if (v42 > &v39 || v42 + 24 * v43 <= &v39)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v42 + 24 * v43;
      v19 = v39;
      *(v18 + 2) = v40;
      *v18 = v19;
      ++v43;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v49;
        v22 = __p;
        if (v49 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v49 = v20;
        operator delete(v22);
      }

      v13 = v46;
      if (!v46)
      {
        goto LABEL_66;
      }

      v23 = v47;
      v15 = v46;
      if (v47 == v46)
      {
LABEL_65:
        v47 = v13;
        operator delete(v15);
LABEL_66:
        if (v42 != &v45)
        {
          free(v42);
        }

        return v3;
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

      while (v23 != v13);
LABEL_64:
      v15 = v46;
      goto LABEL_65;
    }
  }

  return v3;
}

unint64_t *getDroppedDims(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  if (a5 >= 0x3A)
  {
    operator new();
  }

  v7 = (a5 << 58) | 1;
  *result = v7;
  if (a5)
  {
    v8 = a3 - 1;
    v9 = 8 * a5;
    v10 = a4 - 8;
    v11 = a5 - 1;
    do
    {
      v12 = *(v10 + v9);
      if ((v12 & 4) != 0)
      {
        if (v8 < 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = v12 & 0xFFFFFFFFFFFFFFF8;
        result = mlir::IntegerAttr::getInt(&v13);
        if (v8 < 0 || result == 1 && *(a2 + 8 * v8) != 1)
        {
LABEL_13:
          if (v7)
          {
            v7 = v7 & 0xFC00000000000001 | (2 * (((1 << v11) | (v7 >> 1)) & ~(-1 << (v7 >> 58))));
            *v6 = v7;
          }

          else
          {
            *(*v7 + 8 * (v11 >> 6)) |= 1 << v11;
          }

          goto LABEL_8;
        }
      }

      --v8;
LABEL_8:
      --v11;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

unint64_t mlir::tensor::ExtractSliceOp::rankReduceIfNeeded(mlir::IndexType **a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v7 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = 0;
  }

  v23 = v10;
  Shape = mlir::RankedTensorType::getShape(&v23);
  if (v12 == a5 && (v13 = Shape, v14 = v12, v15 = memcmp(Shape, a4, 8 * v12), v12 = v14, v16 = v15, Shape = v13, !v16))
  {
    v21 = v7 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    mlir::computeRankReductionMask(Shape, v12, a4, a5, 0, v32);
    if (v32[24] == 1)
    {
      v24 = v23;
      v25 = mlir::RankedTensorType::getShape(&v24);
      v26 = v17;
      v27 = &v29;
      v28 = 0x600000000;
      ElementType = mlir::RankedTensorType::getElementType(&v24);
      Encoding = mlir::RankedTensorType::getEncoding(&v24);
      v31 = Encoding;
      v25 = a4;
      v26 = a5;
      LODWORD(v28) = 0;
      if (a5)
      {
        v19 = a4;
      }

      else
      {
        v19 = v27;
      }

      v20 = mlir::RankedTensorType::get(v19, a5, ElementType, Encoding);
      mlir::tensor::createCanonicalRankReducingExtractSliceOp(a1, a2, v7, v20);
    }

    v21 = 0;
    LOBYTE(v7) = 0;
  }

  return v21 | v7;
}

void mlir::tensor::createCanonicalRankReducingExtractSliceOp(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v25 = a4;
  v26 = a3;
  v24 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::RankedTensorType::getShape(&v24);
  v8 = v7;
  v9 = v7;
  v10 = mlir::Builder::getIndexAttr(a1, 0) & 0xFFFFFFFFFFFFFFFBLL;
  v34 = &v36;
  v35 = 0x600000000;
  if (v9 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v9)
  {
    v11 = 0;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = &v37;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_2573686A0)));
      if (v14.i8[0])
      {
        *(v13 - 1) = v10;
        if (v14.i8[4])
        {
LABEL_10:
          *v13 = v10;
        }
      }

      else if (v14.i8[4])
      {
        goto LABEL_10;
      }

      v11 += 2;
      v13 += 2;
    }

    while (((v8 + 1) & 0xE) != v11);
  }

  LODWORD(v35) = v8;
  v27 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = &v33;
  v32 = 0x600000000;
  mlir::RankedTensorType::getShape(&v27);
  if (v15 >= 1)
  {
    for (i = 0; i < v18; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a1, a2, a3, i);
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v31 + v32) = MixedSize;
      LODWORD(v32) = v32 + 1;
      mlir::RankedTensorType::getShape(&v27);
    }
  }

  v19 = mlir::Builder::getIndexAttr(a1, 1) & 0xFFFFFFFFFFFFFFFBLL;
  v27 = &v29;
  v28 = 0x600000000;
  if (!v9)
  {
LABEL_25:
    LODWORD(v28) = v8;
    v38[0] = v39;
    v38[1] = 0x100000000;
    mlir::OpBuilder::createOrFold<mlir::tensor::ExtractSliceOp,mlir::RankedTensorType &,mlir::Value &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a1, v38, a2, &v25, &v26, &v34, &v31, &v27);
  }

  v20 = 0;
  v21 = vdupq_n_s64(v9 - 1);
  v22 = &v30;
  while (1)
  {
    v23 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(vdupq_n_s64(v20), xmmword_2573686A0)));
    if (v23.i8[0])
    {
      *(v22 - 1) = v19;
      if (v23.i8[4])
      {
LABEL_24:
        *v22 = v19;
      }
    }

    else if (v23.i8[4])
    {
      goto LABEL_24;
    }

    v20 += 2;
    v22 += 2;
    if (((v8 + 1) & 0xE) == v20)
    {
      goto LABEL_25;
    }
  }
}