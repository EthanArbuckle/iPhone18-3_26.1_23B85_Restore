uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseAndOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseAndOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseAndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseAndOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseAndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseAndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseAndOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseAndOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseAndOp>,mlir::OpTrait::IsCommutative<mlir::mps::BitwiseAndOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseAndOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseAndOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseAndOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseAndOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseAndOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseAndOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseAndOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseAndOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseAndOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BitwiseAndOp>::refineReturnTypes(mlir::Float32Type *a1, uint64_t a2, char a3, mlir::MLIRContext *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.bitwise_and";
    v25[1] = 15;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseAndOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseAndOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseAndOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseAndOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseAndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseAndOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseAndOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseAndOp>,mlir::OpTrait::IsCommutative<mlir::mps::BitwiseAndOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseAndOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseAndOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseAndOp>>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(a1, *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) != 0 && (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), (NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0), (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) != 0) && mlir::OpTrait::impl::verifySameOperandsAndResultElementType(a1, v7)))
  {
    return mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v8) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseLeftShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseLeftShiftOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseLeftShiftOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseLeftShiftOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseLeftShiftOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseLeftShiftOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseLeftShiftOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseLeftShiftOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseLeftShiftOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseLeftShiftOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseLeftShiftOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseLeftShiftOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseLeftShiftOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BitwiseLeftShiftOp>::refineReturnTypes(mlir::Float32Type *a1, uint64_t a2, char a3, mlir::MLIRContext *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.bitwise_left_shift";
    v25[1] = 22;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseLeftShiftOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseNotOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseNotOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseNotOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneOperand<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseNotOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseNotOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseNotOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::BitwiseNotOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseNotOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseNotOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseNotOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::getEffects;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseNotOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BitwiseNotOp>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20[0] = v21;
  v20[1] = 0x400000001;
  v24 = a4;
  v25 = a5;
  v21[0] = 0;
  v21[0] = *(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v19, v21, 1uLL);
  mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
  v22[0] = &unk_28687EE30;
  v23 = v22;
  v26 = &v24;
  v24 = &unk_28687EE30;
  if (v26 == &v24)
  {
    (*(*v26 + 4))(v26);
    v14 = v23;
    if (v23 != v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    (*(*v26 + 5))(v26);
  }

  v14 = v23;
  if (v23 == v22)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  if (v13)
  {
LABEL_8:
    v15 = 1;
    v16 = v20[0];
    if (v20[0] == v21)
    {
      return v15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = "mps.bitwise_not";
  v25 = 15;
  v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v24, "' op inferred type(s) ", v20, " are incompatible with return type(s) of operation ", a11);
  v16 = v20[0];
  if (v20[0] != v21)
  {
LABEL_13:
    free(v16);
  }

  return v15;
}

unint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseNotOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OneOperand<mlir::mps::BitwiseNotOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseNotOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseNotOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseNotOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::BitwiseNotOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseNotOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseNotOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseNotOp>>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0), (mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) != 0) && mlir::OpTrait::impl::verifySameOperandsAndResultElementType(a1, v8)))
  {
    return mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v9) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseOrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseOrOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseOrOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseOrOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseOrOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseOrOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseOrOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseOrOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseOrOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseOrOp>,mlir::OpTrait::IsCommutative<mlir::mps::BitwiseOrOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseOrOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseOrOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseOrOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseOrOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseOrOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseOrOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseOrOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseOrOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseOrOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BitwiseOrOp>::refineReturnTypes(mlir::Float32Type *a1, uint64_t a2, char a3, mlir::MLIRContext *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.bitwise_or";
    v25[1] = 14;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseOrOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwisePopcountOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwisePopcountOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OneResult<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OneOperand<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwisePopcountOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::BitwisePopcountOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwisePopcountOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwisePopcountOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwisePopcountOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::getEffects;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwisePopcountOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BitwisePopcountOp>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20[0] = v21;
  v20[1] = 0x400000001;
  v24 = a4;
  v25 = a5;
  v21[0] = 0;
  v21[0] = *(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v19, v21, 1uLL);
  mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
  v22[0] = &unk_28687EE30;
  v23 = v22;
  v26 = &v24;
  v24 = &unk_28687EE30;
  if (v26 == &v24)
  {
    (*(*v26 + 4))(v26);
    v14 = v23;
    if (v23 != v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    (*(*v26 + 5))(v26);
  }

  v14 = v23;
  if (v23 == v22)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  if (v13)
  {
LABEL_8:
    v15 = 1;
    v16 = v20[0];
    if (v20[0] == v21)
    {
      return v15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = "mps.bitwise_popcount";
  v25 = 20;
  v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v24, "' op inferred type(s) ", v20, " are incompatible with return type(s) of operation ", a11);
  v16 = v20[0];
  if (v20[0] != v21)
  {
LABEL_13:
    free(v16);
  }

  return v15;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseRightShiftOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseRightShiftOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseRightShiftOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseRightShiftOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseRightShiftOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseRightShiftOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseRightShiftOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseRightShiftOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseRightShiftOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseRightShiftOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseRightShiftOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseRightShiftOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseRightShiftOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BitwiseRightShiftOp>::refineReturnTypes(mlir::Float32Type *a1, uint64_t a2, char a3, mlir::MLIRContext *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.bitwise_right_shift";
    v25[1] = 23;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseRightShiftOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BitwiseXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::IsCommutative,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BitwiseXorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BitwiseXorOp>,mlir::OpTrait::OneResult<mlir::mps::BitwiseXorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BitwiseXorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BitwiseXorOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BitwiseXorOp>,mlir::OpTrait::OpInvariants<mlir::mps::BitwiseXorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BitwiseXorOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::BitwiseXorOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::BitwiseXorOp>,mlir::OpTrait::IsCommutative<mlir::mps::BitwiseXorOp>,mlir::OpTrait::Stitchable<mlir::mps::BitwiseXorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BitwiseXorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BitwiseXorOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseXorOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseXorOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseXorOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseXorOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseXorOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BitwiseXorOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BitwiseXorOp>::refineReturnTypes(mlir::Float32Type *a1, uint64_t a2, char a3, mlir::MLIRContext *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.bitwise_xor";
    v25[1] = 15;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BitwiseXorOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BroadcastGradientArgsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastGradientArgsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OneResult<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OpInvariants<mlir::mps::BroadcastGradientArgsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BroadcastGradientArgsOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BroadcastGradientArgsOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BroadcastGradientArgsOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastGradientArgsOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastGradientArgsOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastGradientArgsOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastGradientArgsOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BroadcastGradientArgsOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastGradientArgsOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BroadcastGradientArgsOp>::refineReturnTypes(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x400000000;
  if (mlir::mps::BroadcastGradientArgsOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &v22))
  {
    mlir::TypeRange::TypeRange(v21, v22, v23);
    mlir::TypeRange::TypeRange(v20, *a11, *(a11 + 8));
    v25[0] = &unk_28687EE30;
    v26 = v25;
    v28 = v27;
    v27[0] = &unk_28687EE30;
    if (v28 == v27)
    {
      (*(*v28 + 32))(v28);
      v14 = v26;
      if (v26 != v25)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v28)
      {
        (*(*v28 + 40))(v28);
      }

      v14 = v26;
      if (v26 != v25)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v22;
          if (v22 == v24)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v27[0] = "mps.broadcast_gradient_args";
    v27[1] = 27;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v27, "' op inferred type(s) ", &v22, " are incompatible with return type(s) of operation ", a11);
    v16 = v22;
    if (v22 == v24)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v22;
  if (v22 != v24)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BroadcastGradientArgsOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OneResult<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BroadcastGradientArgsOp>,mlir::OpTrait::OpInvariants<mlir::mps::BroadcastGradientArgsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BroadcastGradientArgsOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BroadcastGradientArgsOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BroadcastGradientArgsOp>>(uint64_t a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 2) || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(a1, *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(a1, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::BroadcastToOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::BroadcastToOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BroadcastToOp>,mlir::OpTrait::OneResult<mlir::mps::BroadcastToOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BroadcastToOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BroadcastToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BroadcastToOp>,mlir::OpTrait::OpInvariants<mlir::mps::BroadcastToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BroadcastToOp>,mlir::OpTrait::Stitchable<mlir::mps::BroadcastToOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BroadcastToOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BroadcastToOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastToOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastToOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastToOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastToOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BroadcastToOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::BroadcastToOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::BroadcastToOp>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x400000000;
  if (mlir::mps::BroadcastToOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &v22))
  {
    mlir::TypeRange::TypeRange(v21, v22, v23);
    mlir::TypeRange::TypeRange(v20, *a11, *(a11 + 8));
    v25[0] = &unk_28687EE30;
    v26 = v25;
    v28 = v27;
    v27[0] = &unk_28687EE30;
    if (v28 == v27)
    {
      (*(*v28 + 32))(v28);
      v14 = v26;
      if (v26 != v25)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v28)
      {
        (*(*v28 + 40))(v28);
      }

      v14 = v26;
      if (v26 != v25)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v22;
          if (v22 == v24)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v27[0] = "mps.broadcast_to";
    v27[1] = 16;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v27, "' op inferred type(s) ", &v22, " are incompatible with return type(s) of operation ", a11);
    v16 = v22;
    if (v22 == v24)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v22;
  if (v22 != v24)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::BroadcastToOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mps::BroadcastToOp>,mlir::OpTrait::OneResult<mlir::mps::BroadcastToOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BroadcastToOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BroadcastToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::BroadcastToOp>,mlir::OpTrait::OpInvariants<mlir::mps::BroadcastToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BroadcastToOp>,mlir::OpTrait::Stitchable<mlir::mps::BroadcastToOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BroadcastToOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BroadcastToOp>>(uint64_t a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 2) || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    v5 = a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(a1, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 != 10)
  {
    return 0;
  }

  v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64;
  if (*a3 != 0x6F4D656E696C6E69 || *(a3 + 8) != 25956)
  {
    if (*a3 != 0x614E6C6F626D7973 || *(a3 + 8) != 25965)
    {
      return 0;
    }

    v7 = a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72;
  }

  return *v7;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v15);
  if (v8 == 10)
  {
    v9 = a2 + 16 * ((v6 >> 23) & 1);
    if (*result == 0x6F4D656E696C6E69 && *(result + 8) == 25956)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }

        *(v9 + 64) = v12;
      }

      else
      {
        *(v9 + 64) = 0;
      }
    }

    else if (*result == 0x614E6C6F626D7973 && *(result + 8) == 25965)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }

        v16 = v13;
        if (v13)
        {
          result = mlir::SymbolRefAttr::getNestedReferences(&v16);
          if (v14)
          {
            v13 = 0;
          }

          else
          {
            v13 = a4;
          }
        }

        *(v9 + 72) = v13;
      }

      else
      {
        *(v9 + 72) = 0;
      }
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  if (v9)
  {
    result = mlir::NamedAttrList::append(a3, "inlineMode", 0xAuLL, v7);
  }

  v10 = *(v8 + 8);
  if (v10)
  {

    return mlir::NamedAttrList::append(a3, "symbolName", 0xAuLL, v10);
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::get(a3, **(a2 + 96));
  result = 0;
  if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(v9, "inlineMode", 10, a4, a5) & 1) != 0)
  {
    v10 = mlir::NamedAttrList::get(a3, *(*(a2 + 96) + 8));
    if (!v10 || (mlir::silc::__mlir_ods_local_attr_constraint_SilcOps7(v10, "symbolName", 10, a4, a5) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::mps::CallOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::mps::CallOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = HIDWORD(a2[1]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = __ROR8__(v7 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) >> 47))) ^ v7;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CallOp>,mlir::OpTrait::VariadicResults<mlir::mps::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CallOp>,mlir::OpTrait::VariadicOperands<mlir::mps::CallOp>,mlir::OpTrait::OpInvariants<mlir::mps::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CallOp>,mlir::CallOpInterface::Trait<mlir::mps::CallOp>,mlir::DowngraderInterface::Trait<mlir::mps::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::writeProperties;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneResult<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OpInvariants<mlir::mps::BatchToSpaceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BatchToSpaceOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>>(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::downgradeToVersion;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::AssignVariableOp>,mlir::OpTrait::ZeroResults<mlir::mps::AssignVariableOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::AssignVariableOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::AssignVariableOp>,mlir::OpTrait::OpInvariants<mlir::mps::AssignVariableOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::AssignVariableOp>,mlir::DowngraderInterface::Trait<mlir::mps::AssignVariableOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::resolveCallable;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "symbolName", 10), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(a2 + 56, "symbolName", 0xAuLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      return result & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "symbolName";
  v8[1] = 10;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a3;
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v4;
    a2 = InterfaceFor;
  }

  return mlir::call_interface_impl::resolveCallable(v3, a2, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::mps::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

uint64_t mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::foldHook<mlir::mps::CallOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = v8;
  v18 = 1;
  v9 = *(a1 + 44);
  v10 = a1 + 16 * ((v9 >> 23) & 1);
  v19 = *(v10 + 64);
  v11 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v12 = ((v10 + 64 + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::RegionRange::RegionRange(&v20, v12, v11);
  v21 = a2;
  v22 = a3;
  if (!mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    v14 = 0;
    InterfaceFor = 0;
    return 0;
  }

  v14 = a1;
  InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(a1);
  if (!a1)
  {
    return 0;
  }

  return mlir::ExternalFoldInterface::externalFoldMultipleResults(&v14, v21, v22, a4);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v44;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  v37 = v1;
  v45 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v1 = v37;
  a1 = v45;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  v38 = v1;
  v46 = a1;
  v31 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v31;
  v1 = v38;
  a1 = v46;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  v39 = v1;
  v47 = a1;
  v32 = v2;
  v26 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v3 = v26;
  v2 = v32;
  v1 = v39;
  a1 = v47;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  v40 = v1;
  v48 = a1;
  v33 = v2;
  v22 = v4;
  v27 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v4 = v22;
  v3 = v27;
  v2 = v33;
  v1 = v40;
  a1 = v48;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

LABEL_40:
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
    v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_41;
  }

LABEL_39:
  v41 = v1;
  v49 = a1;
  v34 = v2;
  v23 = v4;
  v28 = v3;
  v19 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v5 = v19;
  v4 = v23;
  v3 = v28;
  v2 = v34;
  v1 = v41;
  a1 = v49;
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_40;
  }

LABEL_8:
  v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_41:
  v43 = v1;
  v51 = a1;
  v36 = v2;
  v25 = v4;
  v30 = v3;
  v18 = v6;
  v21 = v5;
  v16 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v7 = v16;
  v6 = v18;
  v5 = v21;
  v4 = v25;
  v3 = v30;
  v2 = v36;
  v1 = v43;
  a1 = v51;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallOpInterface::Trait<Empty>]";
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

uint64_t mlir::Op<mlir::mps::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    return 0;
  }

  v5 = a1;
  return mlir::mps::CallOp::verifyInvariantsImpl(&v5) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 17 && (*a3 == 0x6C45746C75736572 ? (v7 = *(a3 + 8) == 0x707954746E656D65) : (v7 = 0), v7 ? (v8 = *(a3 + 16) == 101) : (v8 = 0), v8))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v13);
  if (v8 == 17)
  {
    v9 = *result == 0x6C45746C75736572 && *(result + 8) == 0x707954746E656D65;
    if (v9 && *(result + 16) == 101)
    {
      v11 = a2 + 16 * ((v6 >> 23) & 1);
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

        *(v11 + 64) = v12;
      }

      else
      {
        *(v11 + 64) = 0;
      }
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "resultElementType", 0x11uLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::mps::CastOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::mps::CastOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CastOp>,mlir::OpTrait::OneResult<mlir::mps::CastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CastOp>,mlir::OpTrait::OneOperand<mlir::mps::CastOp>,mlir::OpTrait::OpInvariants<mlir::mps::CastOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::mps::CastOp>,mlir::OpTrait::TypeChanger<mlir::mps::CastOp>,mlir::OpTrait::Stitchable<mlir::mps::CastOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CastOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CastOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneResult<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OpInvariants<mlir::mps::BatchToSpaceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BatchToSpaceOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::getEffects;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::isCompatibleReturnTypes;
  {
    v12 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v7 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::CastOp>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  if (mlir::mps::CastOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v20))
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.cast";
    v25[1] = 8;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::CastOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
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
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
    v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mps::CastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::TypeChanger,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, mlir::mps::CastOp::verifyInvariantsImpl(&v8)))
  {
    return mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::CeilOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::CeilOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CeilOp>,mlir::OpTrait::OneResult<mlir::mps::CeilOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CeilOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CeilOp>,mlir::OpTrait::OneOperand<mlir::mps::CeilOp>,mlir::OpTrait::OpInvariants<mlir::mps::CeilOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CeilOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::CeilOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::CeilOp>,mlir::OpTrait::Stitchable<mlir::mps::CeilOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CeilOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CeilOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::getEffects;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::CeilOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::CeilOp>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20[0] = v21;
  v20[1] = 0x400000001;
  v24 = a4;
  v25 = a5;
  v21[0] = 0;
  v21[0] = *(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TypeRange::TypeRange(v19, v21, 1uLL);
  mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
  v22[0] = &unk_28687EE30;
  v23 = v22;
  v26 = &v24;
  v24 = &unk_28687EE30;
  if (v26 == &v24)
  {
    (*(*v26 + 4))(v26);
    v14 = v23;
    if (v23 != v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    (*(*v26 + 5))(v26);
  }

  v14 = v23;
  if (v23 == v22)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  if (v13)
  {
LABEL_8:
    v15 = 1;
    v16 = v20[0];
    if (v20[0] == v21)
    {
      return v15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = "mps.ceil";
  v25 = 8;
  v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v24, "' op inferred type(s) ", v20, " are incompatible with return type(s) of operation ", a11);
  v16 = v20[0];
  if (v20[0] != v21)
  {
LABEL_13:
    free(v16);
  }

  return v15;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ClampOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ClampOp>,mlir::OpTrait::OneResult<mlir::mps::ClampOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ClampOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ClampOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::ClampOp>,mlir::OpTrait::OpInvariants<mlir::mps::ClampOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ClampOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::ClampOp>,mlir::OpTrait::Stitchable<mlir::mps::ClampOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ClampOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ClampOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ClampOp>::getEffects;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v5 = v4;
  *v4 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ClampOp>::inferReturnTypes;
  v4[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ClampOp>::refineReturnTypes;
  v4[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ClampOp>::isCompatibleReturnTypes;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ClampOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ClampOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::ClampOp>::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.clamp";
    v25[1] = 9;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ClampOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v77;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  v67 = v1;
  v78 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v67;
  a1 = v78;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v69 = v1;
  v80 = a1;
  v50 = v3;
  v59 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v50;
  v2 = v59;
  v1 = v69;
  a1 = v80;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v70 = v1;
  v81 = a1;
  v51 = v3;
  v60 = v2;
  v43 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v71 = v1;
  v82 = a1;
  v52 = v3;
  v61 = v2;
  v44 = v4;
  v37 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v37;
  v4 = v44;
  v3 = v52;
  v2 = v61;
  v1 = v71;
  a1 = v82;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v72 = v1;
  v83 = a1;
  v53 = v3;
  v62 = v2;
  v45 = v4;
  v32 = v6;
  v38 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v73 = v1;
  v84 = a1;
  v54 = v3;
  v63 = v2;
  v46 = v4;
  v33 = v6;
  v39 = v5;
  v28 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ResultsBroadcastableShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ResultsBroadcastableShape>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

LABEL_55:
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
    v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_56;
  }

LABEL_54:
  v74 = v1;
  v85 = a1;
  v55 = v3;
  v64 = v2;
  v47 = v4;
  v34 = v6;
  v40 = v5;
  v25 = v8;
  v29 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_56:
  v76 = v1;
  v87 = a1;
  v57 = v3;
  v66 = v2;
  v49 = v4;
  v36 = v6;
  v42 = v5;
  v27 = v8;
  v31 = v7;
  v22 = v10;
  v24 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v10 = v22;
  v9 = v24;
  v8 = v27;
  v7 = v31;
  v6 = v36;
  v5 = v42;
  v4 = v49;
  v3 = v57;
  v2 = v66;
  v1 = v76;
  a1 = v87;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::mps::ClampOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 3) && (v7 = a1, (mlir::mps::ClampOp::verifyInvariantsImpl(&v7) & 1) != 0))
  {
    return mlir::OpTrait::impl::verifyCompatibleOperandBroadcast(a1, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::mps::ColToImOp::setInherentAttr(v5 + 64, Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::mps::ColToImOp::populateInherentAttrs(Context, v6, a3);
}

double mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::mps::ColToImOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ColToImOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] != a2[1])
  {
    return 0;
  }

  if (a3[2] != a2[2])
  {
    return 0;
  }

  if (a3[3] == a2[3])
  {
    return a3[4] == a2[4];
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ColToImOp>,mlir::OpTrait::OneResult<mlir::mps::ColToImOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ColToImOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ColToImOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::ColToImOp>,mlir::OpTrait::OpInvariants<mlir::mps::ColToImOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ColToImOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ColToImOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ColToImOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ColToImOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneResult<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OpInvariants<mlir::mps::BatchToSpaceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BatchToSpaceOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::getEffects;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::isCompatibleReturnTypes;
  {
    v12 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v7 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 16))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  v5 = v4[12];
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687F2B0;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687F2B0;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::ColToImOp>::refineReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  if (mlir::mps::ColToImOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v20))
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687F2B0;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687F2B0;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.col_to_im";
    v25[1] = 13;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ColToImOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687F2B0;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687F2B0;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::foldSingleResultHook<mlir::mps::ColToImOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 44);
  v9 = a1 + 16 * ((v8 >> 23) & 1);
  v10 = *(v9 + 80);
  v22 = *(v9 + 64);
  v23 = v10;
  v11 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = v11;
  v21 = 1;
  v24 = *(v9 + 96);
  v12 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v13 = ((v9 + 64 + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::RegionRange::RegionRange(&v25, v13, v12);
  v26 = a2;
  v27 = a3;
  if (!mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    v17 = 0;
    InterfaceFor = 0;
    return 0;
  }

  v17 = a1;
  InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(a1);
  if (!a1)
  {
    return 0;
  }

  v14 = mlir::ExternalFoldInterface::externalFold(&v17, v26, v27);
  if (v14 < 8)
  {
    return 0;
  }

  if (a1 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v15 = *(a4 + 8);
    if (v15 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v15) = v14;
    ++*(a4 + 8);
  }

  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mps::ColToImOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::mps::ColToImOp::verifyInvariantsImpl(&v6))
  {
    return 0;
  }

  v6 = a1;
  return mlir::mps::ColToImOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 10 && (*a3 == 0x61656C7265746E69 ? (v7 = *(a3 + 8) == 25974) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v12);
  if (v8 == 10 && *result == 0x61656C7265746E69 && *(result + 8) == 25974)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "interleave", 0xAuLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::mps::ConcatOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConcatOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ConcatOp>,mlir::OpTrait::OneResult<mlir::mps::ConcatOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ConcatOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ConcatOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ConcatOp>,mlir::OpTrait::OpInvariants<mlir::mps::ConcatOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ConcatOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ConcatOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ConcatOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ConcatOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::writeProperties;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneResult<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::BatchToSpaceOp>,mlir::OpTrait::OpInvariants<mlir::mps::BatchToSpaceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::BatchToSpaceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::BatchToSpaceOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::getEffects;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::isCompatibleReturnTypes;
  {
    v12 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
    v7 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::ConcatOp>::refineReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, char a3, char *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = 0x400000000;
  if (mlir::mps::ConcatOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v20))
  {
    mlir::TypeRange::TypeRange(v19, v20, v21);
    mlir::TypeRange::TypeRange(v18, *a11, *(a11 + 8));
    v23[0] = &unk_28687EE30;
    v24 = v23;
    v26 = v25;
    v25[0] = &unk_28687EE30;
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v14 = v24;
      if (v24 != v23)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26)
      {
        (*(*v26 + 40))(v26);
      }

      v14 = v24;
      if (v24 != v23)
      {
LABEL_6:
        if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        if (v13)
        {
LABEL_9:
          v15 = 1;
          v16 = v20;
          if (v20 == v22)
          {
            return v15;
          }

          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_16:
    v25[0] = "mps.concat";
    v25[1] = 10;
    v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", v25, "' op inferred type(s) ", &v20, " are incompatible with return type(s) of operation ", a11);
    v16 = v20;
    if (v20 == v22)
    {
      return v15;
    }

    goto LABEL_12;
  }

  v15 = 0;
  v16 = v20;
  if (v20 != v22)
  {
LABEL_12:
    free(v16);
  }

  return v15;
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ConcatOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mps::ConcatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::mps::ConcatOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::mps::ConcatOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::ConjugateOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Stitchable,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::ResultsBroadcastableShape,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ConjugateOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ConjugateOp>,mlir::OpTrait::OneResult<mlir::mps::ConjugateOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ConjugateOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ConjugateOp>,mlir::OpTrait::OneOperand<mlir::mps::ConjugateOp>,mlir::OpTrait::OpInvariants<mlir::mps::ConjugateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ConjugateOp>,mlir::OpTrait::Stitchable<mlir::mps::ConjugateOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ConjugateOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::ConjugateOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ConjugateOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ConjugateOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ConjugateOp>::getEffects;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ConjugateOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  *v5 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ConjugateOp>::inferReturnTypes;
  v5[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ConjugateOp>::refineReturnTypes;
  v5[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ConjugateOp>::isCompatibleReturnTypes;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}