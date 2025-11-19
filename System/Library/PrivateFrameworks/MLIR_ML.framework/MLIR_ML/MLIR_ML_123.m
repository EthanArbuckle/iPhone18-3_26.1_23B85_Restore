uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::WhileOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mps::serialization::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    a1 = v27;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  v22 = v1;
  v28 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v1 = v22;
  a1 = v28;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v23 = v1;
  v29 = a1;
  v18 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v18;
  v1 = v23;
  a1 = v29;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

LABEL_30:
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
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_31;
  }

LABEL_29:
  v24 = v1;
  v30 = a1;
  v15 = v3;
  v19 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v3 = v15;
  v2 = v19;
  v1 = v24;
  a1 = v30;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_31:
  v26 = v1;
  v32 = a1;
  v17 = v3;
  v21 = v2;
  v12 = v5;
  v14 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v5 = v12;
  v4 = v14;
  v3 = v17;
  v2 = v21;
  v1 = v26;
  a1 = v32;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::mps::serialization::WhileOp::print(&v8, a3);
}

uint64_t mlir::Op<mlir::mps::serialization::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(mlir::OpTrait::impl *a1)
{
  if (!mlir::OpTrait::impl::verifyNRegions(a1, 2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2))
  {
    return 0;
  }

  v4 = a1;
  if ((mlir::mps::serialization::WhileOp::verifyInvariantsImpl(&v4) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  return mlir::mps::serialization::WhileOp::verify(&v4) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::serialization::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::serialization::YieldOp>,mlir::OpTrait::ZeroResults<mlir::mps::serialization::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::serialization::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::mps::serialization::YieldOp>,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::mps::serialization::YieldOp>,mlir::OpTrait::OpInvariants<mlir::mps::serialization::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::mps::serialization::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::mps::serialization::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::serialization::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::mps::serialization::YieldOp>,mlir::OpTrait::ReturnLike<mlir::mps::serialization::YieldOp>,mlir::OpTrait::IsTerminator<mlir::mps::serialization::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::serialization::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::mps::serialization::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::serialization::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::serialization::ConditionOp>,mlir::OpTrait::HasParent<mlir::mps::serialization::WhileOp>::Impl<mlir::mps::serialization::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::mps::serialization::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::mps::serialization::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::mps::serialization::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::mps::serialization::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::serialization::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::mps::serialization::ConditionOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getMutableSuccessorOperands;
  v5[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getSuccessorRegions;
  {
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::mps::serialization::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait>();
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
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::DowngraderInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp, mlir::mps::serialization::IfOp, mlir::mps::serialization::WhileOp>::Impl<Empty>]";
  v6 = 187;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::mps::serialization::YieldOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::mps::serialization::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::mps::serialization::YieldOp>::verifyTrait(a1) & 1) != 0 && (v7 = a1, (mlir::mps::serialization::YieldOp::verifyInvariantsImpl(&v7) & 1) != 0))
  {
    return mlir::OpTrait::impl::verifyIsTerminator(a1, v5);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::HasParent<mlir::mps::serialization::ForOp,mlir::mps::serialization::IfOp,mlir::mps::serialization::WhileOp>::Impl<mlir::mps::serialization::YieldOp>::verifyTrait(mlir::Block **a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(a1[2]);
    a1 = v1;
    if (ParentOp)
    {
      v3 = *(*(ParentOp + 48) + 16);
      if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ForOp,void>::id)
      {
        return 1;
      }

      if (v3 == &mlir::detail::TypeIDResolver<mlir::mps::serialization::IfOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::mps::serialization::WhileOp,void>::id)
      {
        return 1;
      }
    }
  }

  v23 = 257;
  mlir::Operation::emitOpError(&v30, a1, &v22);
  if (!v30)
  {
    goto LABEL_18;
  }

  LODWORD(v26) = 3;
  *(&v26 + 1) = "expects parent op ";
  *&v27 = 18;
  if (v33 >= v34)
  {
    if (v32 > &v26 || v32 + 24 * v33 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = v32 + 24 * v33;
  v7 = v26;
  *(v6 + 2) = v27;
  *v6 = v7;
  v8 = ++v33;
  if (v30)
  {
    LODWORD(v26) = 3;
    *(&v26 + 1) = "to be one of '";
    *&v27 = 14;
    if (v8 >= v34)
    {
      if (v32 > &v26 || v32 + 24 * v8 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = v32 + 24 * v33;
    v10 = v26;
    *(v9 + 2) = v27;
    *v9 = v10;
    ++v33;
    v26 = xmmword_27983A9D8;
    v27 = *&off_27983A9E8;
    v28 = xmmword_27983A9F8;
    if (v30)
    {
      *&v24 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v26, &v29, v31, v31, &v24);
      if (v30)
      {
        LODWORD(v24) = 3;
        *(&v24 + 1) = "'";
        v25 = 1;
        if (v33 >= v34)
        {
          if (v32 > &v24 || v32 + 24 * v33 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v32 + 24 * v33;
        v12 = v24;
        *(v11 + 2) = v25;
        *v11 = v12;
        ++v33;
      }
    }
  }

  else
  {
LABEL_18:
    v26 = xmmword_27983A9D8;
    v27 = *&off_27983A9E8;
    v28 = xmmword_27983A9F8;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v39;
      v15 = __p;
      if (v39 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v39 = v13;
      operator delete(v15);
    }

    v16 = v36;
    if (v36)
    {
      v17 = v37;
      v18 = v36;
      if (v37 != v36)
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
        v18 = v36;
      }

      v37 = v16;
      operator delete(v18);
    }

    if (v32 != &v35)
    {
      free(v32);
    }
  }

  return v5;
}

void mlir::Dialect::addAttribute<mlir::mps::TensorDataLayoutAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::TensorDataLayoutAttr,mlir::Attribute,mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20TensorDataLayoutAttrES2_NSD_6detail27TensorDataLayoutAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20TensorDataLayoutAttrES2_NSC_6detail27TensorDataLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v21 = "mps.tensor_data_layout";
  v22 = 22;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::ReductionModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::ReductionModeAttr,mlir::Attribute,mlir::mps::detail::ReductionModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17ReductionModeAttrES2_NSD_6detail24ReductionModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17ReductionModeAttrES2_NSC_6detail24ReductionModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v21 = "mps.reduction_mode";
  v22 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::DeviceHintAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::DeviceHintAttr,mlir::Attribute,mlir::mps::detail::DeviceHintAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps14DeviceHintAttrES2_NSD_6detail21DeviceHintAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps14DeviceHintAttrES2_NSC_6detail21DeviceHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id;
  v21 = "mps.device_hint";
  v22 = 15;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::ScatterModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::ScatterModeAttr,mlir::Attribute,mlir::mps::detail::ScatterModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15ScatterModeAttrES2_NSD_6detail22ScatterModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15ScatterModeAttrES2_NSC_6detail22ScatterModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v21 = "mps.scatter_mode";
  v22 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::PaddingModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::PaddingModeAttr,mlir::Attribute,mlir::mps::detail::PaddingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15PaddingModeAttrES2_NSD_6detail22PaddingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15PaddingModeAttrES2_NSC_6detail22PaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v21 = "mps.padding_mode";
  v22 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::SamplingModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::SamplingModeAttr,mlir::Attribute,mlir::mps::detail::SamplingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16SamplingModeAttrES2_NSD_6detail23SamplingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16SamplingModeAttrES2_NSC_6detail23SamplingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v21 = "mps.sampling_mode";
  v22 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::NearestRoundingModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::NearestRoundingModeAttr,mlir::Attribute,mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23NearestRoundingModeAttrES2_NSD_6detail30NearestRoundingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23NearestRoundingModeAttrES2_NSC_6detail30NearestRoundingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id;
  v21 = "mps.nearest_rounding_mode";
  v22 = 25;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::SparseTensorStorageAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::SparseTensorStorageAttr,mlir::Attribute,mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23SparseTensorStorageAttrES2_NSD_6detail30SparseTensorStorageAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23SparseTensorStorageAttrES2_NSC_6detail30SparseTensorStorageAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id;
  v21 = "mps.sparse_tensor_storage";
  v22 = 25;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::MetalPixelFormatAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::MetalPixelFormatAttr,mlir::Attribute,mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20MetalPixelFormatAttrES2_NSD_6detail27MetalPixelFormatAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20MetalPixelFormatAttrES2_NSC_6detail27MetalPixelFormatAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id;
  v21 = "mps.texture_tensor_pixel_format";
  v22 = 31;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::NormalSamplingMethodAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::NormalSamplingMethodAttr,mlir::Attribute,mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps24NormalSamplingMethodAttrES2_NSD_6detail31NormalSamplingMethodAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps24NormalSamplingMethodAttrES2_NSC_6detail31NormalSamplingMethodAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v21 = "mps.random_normal_sampling_method";
  v22 = 33;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::PaddingStyleAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::PaddingStyleAttr,mlir::Attribute,mlir::mps::detail::PaddingStyleAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16PaddingStyleAttrES2_NSD_6detail23PaddingStyleAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16PaddingStyleAttrES2_NSC_6detail23PaddingStyleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v21 = "mps.padding_style";
  v22 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::PoolIndicesModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::PoolIndicesModeAttr,mlir::Attribute,mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19PoolIndicesModeAttrES2_NSD_6detail26PoolIndicesModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19PoolIndicesModeAttrES2_NSC_6detail26PoolIndicesModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v21 = "mps.pooling_indices_mode";
  v22 = 24;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::RNNActivationAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::RNNActivationAttr,mlir::Attribute,mlir::mps::detail::RNNActivationAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17RNNActivationAttrES2_NSD_6detail24RNNActivationAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17RNNActivationAttrES2_NSC_6detail24RNNActivationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v21 = "mps.rnn_activation";
  v22 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::LSTMGateLayoutAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::LSTMGateLayoutAttr,mlir::Attribute,mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18LSTMGateLayoutAttrES2_NSD_6detail25LSTMGateLayoutAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18LSTMGateLayoutAttrES2_NSC_6detail25LSTMGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v21 = "mps.lstm_gate_layout";
  v22 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::GRUGateLayoutAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::GRUGateLayoutAttr,mlir::Attribute,mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17GRUGateLayoutAttrES2_NSD_6detail24GRUGateLayoutAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17GRUGateLayoutAttrES2_NSC_6detail24GRUGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
  v21 = "mps.gru_gate_layout";
  v22 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::StencilPaddingModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::StencilPaddingModeAttr,mlir::Attribute,mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps22StencilPaddingModeAttrES2_NSD_6detail29StencilPaddingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps22StencilPaddingModeAttrES2_NSC_6detail29StencilPaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v21 = "mps.stencil_padding_mode";
  v22 = 24;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::CropResizeAlignmentModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::CropResizeAlignmentModeAttr,mlir::Attribute,mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps27CropResizeAlignmentModeAttrES2_NSD_6detail34CropResizeAlignmentModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps27CropResizeAlignmentModeAttrES2_NSC_6detail34CropResizeAlignmentModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
  v21 = "mps.crop_resize_alignment_mode";
  v22 = 30;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::CropResizeCoordinateModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::CropResizeCoordinateModeAttr,mlir::Attribute,mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps28CropResizeCoordinateModeAttrES2_NSD_6detail35CropResizeCoordinateModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps28CropResizeCoordinateModeAttrES2_NSC_6detail35CropResizeCoordinateModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
  v21 = "mps.crop_resize_coordinate_mode";
  v22 = 31;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::PruningMetricAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::PruningMetricAttr,mlir::Attribute,mlir::mps::detail::PruningMetricAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17PruningMetricAttrES2_NSD_6detail24PruningMetricAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17PruningMetricAttrES2_NSC_6detail24PruningMetricAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v21 = "mps.pruning_metric";
  v22 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::PruningStructureAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::PruningStructureAttr,mlir::Attribute,mlir::mps::detail::PruningStructureAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20PruningStructureAttrES2_NSD_6detail27PruningStructureAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20PruningStructureAttrES2_NSC_6detail27PruningStructureAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v21 = "mps.pruning_structure";
  v22 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::SimilarityTypeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::SimilarityTypeAttr,mlir::Attribute,mlir::mps::detail::SimilarityTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18SimilarityTypeAttrES2_NSD_6detail25SimilarityTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18SimilarityTypeAttrES2_NSC_6detail25SimilarityTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v21 = "mps.similarity_type";
  v22 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::FFTScalingModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::FFTScalingModeAttr,mlir::Attribute,mlir::mps::detail::FFTScalingModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18FFTScalingModeAttrES2_NSD_6detail25FFTScalingModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18FFTScalingModeAttrES2_NSC_6detail25FFTScalingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v21 = "mps.fft_scaling_mode";
  v22 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::mps::MPSBufferTensorAttr>(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::mps::MPSBufferTensorAttr>(a1, v8);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, v8);
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

void mlir::Dialect::addAttribute<mlir::mps::CallInlineModeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::mps::CallInlineModeAttr,mlir::Attribute,mlir::mps::detail::CallInlineModeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18CallInlineModeAttrES2_NSD_6detail25CallInlineModeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18CallInlineModeAttrES2_NSC_6detail25CallInlineModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v21 = "mps.call_inline_mode";
  v22 = 20;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, &v10);
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20TensorDataLayoutAttrES2_NSC_6detail27TensorDataLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17ReductionModeAttrES2_NSC_6detail24ReductionModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24ReductionModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17ReductionModeAttrEJNS2_13ReductionModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps14DeviceHintAttrES2_NSC_6detail21DeviceHintAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail21DeviceHintAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14DeviceHintAttrEJNS2_10DeviceHintEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::DeviceHintAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::DeviceHintAttrStorage,mlir::mps::DeviceHint>(llvm::function_ref<void ()(mlir::mps::detail::DeviceHintAttrStorage *)>,mlir::TypeID,mlir::mps::DeviceHint &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::DeviceHintAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::DeviceHintAttrStorage,mlir::mps::DeviceHint>(llvm::function_ref<void ()(mlir::mps::detail::DeviceHintAttrStorage *)>,mlir::TypeID,mlir::mps::DeviceHint &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15ScatterModeAttrES2_NSC_6detail22ScatterModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22ScatterModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15ScatterModeAttrEJNS2_11ScatterModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps15PaddingModeAttrES2_NSC_6detail22PaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail22PaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_15PaddingModeAttrEJNS2_11PaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16SamplingModeAttrES2_NSC_6detail23SamplingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23SamplingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16SamplingModeAttrEJNS2_12SamplingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23NearestRoundingModeAttrES2_NSC_6detail30NearestRoundingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30NearestRoundingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23NearestRoundingModeAttrEJNS2_19NearestRoundingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps23SparseTensorStorageAttrES2_NSC_6detail30SparseTensorStorageAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail30SparseTensorStorageAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_23SparseTensorStorageAttrEJNS2_19SparseTensorStorageEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SparseTensorStorageAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::mps::SparseTensorStorage>(llvm::function_ref<void ()(mlir::mps::detail::SparseTensorStorageAttrStorage *)>,mlir::TypeID,mlir::mps::SparseTensorStorage &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SparseTensorStorageAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::mps::SparseTensorStorage>(llvm::function_ref<void ()(mlir::mps::detail::SparseTensorStorageAttrStorage *)>,mlir::TypeID,mlir::mps::SparseTensorStorage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20MetalPixelFormatAttrES2_NSC_6detail27MetalPixelFormatAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27MetalPixelFormatAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20MetalPixelFormatAttrEJNS2_16MetalPixelFormatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MetalPixelFormatAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::mps::MetalPixelFormat>(llvm::function_ref<void ()(mlir::mps::detail::MetalPixelFormatAttrStorage *)>,mlir::TypeID,mlir::mps::MetalPixelFormat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MetalPixelFormatAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::mps::MetalPixelFormat>(llvm::function_ref<void ()(mlir::mps::detail::MetalPixelFormatAttrStorage *)>,mlir::TypeID,mlir::mps::MetalPixelFormat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps24NormalSamplingMethodAttrES2_NSC_6detail31NormalSamplingMethodAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps16PaddingStyleAttrES2_NSC_6detail23PaddingStyleAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19PoolIndicesModeAttrES2_NSC_6detail26PoolIndicesModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17RNNActivationAttrES2_NSC_6detail24RNNActivationAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18LSTMGateLayoutAttrES2_NSC_6detail25LSTMGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17GRUGateLayoutAttrES2_NSC_6detail24GRUGateLayoutAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps22StencilPaddingModeAttrES2_NSC_6detail29StencilPaddingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps27CropResizeAlignmentModeAttrES2_NSC_6detail34CropResizeAlignmentModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail34CropResizeAlignmentModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27CropResizeAlignmentModeAttrEJNS2_23CropResizeAlignmentModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps28CropResizeCoordinateModeAttrES2_NSC_6detail35CropResizeCoordinateModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps17PruningMetricAttrES2_NSC_6detail24PruningMetricAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps20PruningStructureAttrES2_NSC_6detail27PruningStructureAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18SimilarityTypeAttrES2_NSC_6detail25SimilarityTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18FFTScalingModeAttrES2_NSC_6detail25FFTScalingModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::AbstractAttribute::get<mlir::mps::MPSBufferTensorAttr>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::mps::MPSBufferTensorAttr>,mlir::ElementsAttr::Trait<mlir::mps::MPSBufferTensorAttr>>(&v11);
  *a2 = a1;
  *(a2 + 8) = a2 + 24;
  *(a2 + 16) = 0x300000000;
  if (v12)
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(a2 + 8, &v11);
  }

  *(a2 + 72) = mlir::detail::StorageUserBase<mlir::mps::MPSBufferTensorAttr,mlir::Attribute,mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  *(a2 + 80) = v10;
  *(a2 + 96) = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  *(a2 + 104) = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSD_6detail26MPSBufferTensorAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  *(a2 + 112) = &v9;
  *(a2 + 120) = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSC_6detail26MPSBufferTensorAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  *(a2 + 128) = &v8;
  *(a2 + 136) = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  *(a2 + 144) = "mps.buffer_tensor";
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

void mlir::detail::InterfaceMap::get<mlir::TypedAttr::Trait<mlir::mps::MPSBufferTensorAttr>,mlir::ElementsAttr::Trait<mlir::mps::MPSBufferTensorAttr>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::TypedAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getType;
  {
    v4 = v2;
    mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
  v3 = v2;
  *v2 = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getValuesImpl;
  v2[1] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::isSplat;
  v2[2] = mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getShapedType;
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
    mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>();
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
  mlir::mps::ConstantOp::getAsAttribute();
  v3 = v15;
LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v13, v3);
}

uint64_t mlir::detail::ElementsAttrInterfaceTraits::Model<mlir::mps::MPSBufferTensorAttr>::getValuesImpl@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(&v8, a2, v9);
  if (v11 == 1)
  {
    v6 = v9[0];
    *a3 = v9[0];
    *(a3 + 1) = v9[1];
    if (v6 == 1)
    {
      *(a3 + 8) = v10;
      *(a3 + 16) = 1;
      return result;
    }

    v7 = v10;
    v10 = 0;
    *(a3 + 8) = v7;
    *(a3 + 16) = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<llvm::APInt,llvm::APFloat,std::integral_constant<BOOL,false>>(&v8, a2, a3);
    if ((v11 & 1) != 0 && (v9[0] & 1) == 0)
    {
LABEL_9:
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned char,unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned char,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned short,unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned short,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<unsigned char>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned char]";
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

uint64_t mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(void **a1)
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
      mlir::mps::ConstantOp::getAsAttribute();
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned int,unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned int,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<unsigned short>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned short]";
  v6 = 64;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<unsigned long long,signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<unsigned long long,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<unsigned int>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned int]";
  v6 = 62;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<signed char,short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<signed char,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<unsigned long long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = unsigned long long]";
  v6 = 68;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<short,int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<short,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<signed char>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = signed char]";
  v6 = 61;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<int,long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<int,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<short>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = short]";
  v6 = 55;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<long long,half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<long long,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<int>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = int]";
  v6 = 53;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<half,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<half,float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<half,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<long long>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = long long]";
  v6 = 59;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<float,__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<float,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<half>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = __fp16]";
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<__emulated_bf16,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<__emulated_bf16,complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<__emulated_bf16,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<float>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = float]";
  v6 = 55;
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

void **mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<float,(void *)0>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:

      return _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN15complex_support10complex_fpIDhLPv0EEEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
    }
  }

  else
  {
    v4 = a3;
    v5 = a1;
    v6 = a2;
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<complex_support::complex_fp<float,(void *)0>,complex_support::complex_fp<half,(void *)0>,std::integral_constant<BOOL,true>>();
    a2 = v6;
    a1 = v5;
    a3 = v4;
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<float,(void *)0>,void>::resolveTypeID(void)::id != v6)
    {
      goto LABEL_3;
    }
  }

  v7 = a3;
  v8 = a1;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(a1);
  if (result)
  {
    v9 = *((*v8)[2] + 16);
    v10 = (*v8)[5];
    v15 = (*v8)[1];
    v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
    mlir::mps::getElementsAttrStorageSize(v11, v12);
    v13 = v10 + v9;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v8);
    v14 = result == 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *v7 = 1;
  *(v7 + 1) = v14;
  *(v7 + 8) = v13;
  *(v7 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<__emulated_bf16>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = __emulated_bf16]";
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

void **_ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN15complex_support10complex_fpIDhLPv0EEEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1_@<X0>(void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<half,(void *)0>,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      *(a3 + 16) = 0;
      return result;
    }
  }

  else
  {
    v4 = result;
    _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN15complex_support10complex_fpIDhLPv0EEEJENSt3__117integral_constantIbLb1EEEEEDaNS_6TypeIDET1__cold_1();
    result = v4;
    if (mlir::detail::TypeIDResolver<complex_support::complex_fp<half,(void *)0>,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v6 = result;
  result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(result);
  if (result)
  {
    v7 = *((*v6)[2] + 16);
    v8 = (*v6)[5];
    v13 = (*v6)[1];
    v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
    mlir::mps::getElementsAttrStorageSize(v9, v10);
    v11 = v8 + v7;
    result = mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v6);
    v12 = result == 1;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a3 = 1;
  *(a3 + 1) = v12;
  *(a3 + 8) = v11;
  *(a3 + 16) = 1;
  return result;
}

const char *llvm::getTypeName<complex_support::complex_fp<float,(void *)0>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = complex_support::complex_fp<float>]";
  v6 = 84;
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

const char *llvm::getTypeName<complex_support::complex_fp<half,(void *)0>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = complex_support::complex_fp<__fp16>]";
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

uint64_t mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getValueImpl<llvm::APInt,llvm::APFloat,std::integral_constant<BOOL,false>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = *(*a1 + 8);
    v7 = a1;
    ElementType = mlir::RankedTensorType::getElementType(&v11);
    v11 = (*v7)[1];
    v9 = mlir::TensorType::operator mlir::ShapedType(&v11);
    mlir::mps::getElementsAttrStorageSize(v9, v10);
    v11 = ElementType;
    mlir::Type::getIntOrFloatBitWidth(&v11);
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v7);
    operator new();
  }

  v4 = a3;
  v5 = a1;
  v6 = a2;
  mlir::ElementsAttr::try_value_begin<llvm::APInt>();
  a2 = v6;
  a1 = v5;
  a3 = v4;
  if (mlir::detail::TypeIDResolver<llvm::APInt,void>::resolveTypeID(void)::id == v6)
  {
    goto LABEL_7;
  }

LABEL_3:

  return _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN4llvm7APFloatEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_(a1, a2, a3);
}

uint64_t _ZNK4mlir6detail17ElementsAttrTraitINS_3mps19MPSBufferTensorAttrEE12getValueImplIN4llvm7APFloatEJENSt3__117integral_constantIbLb0EEEEEDaNS_6TypeIDET1_@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  {
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
LABEL_3:
      *a3 = 0;
      a3[16] = 0;
      return result;
    }
  }

  else
  {
    v6 = result;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>();
    result = v6;
    if (mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id != a2)
    {
      goto LABEL_3;
    }
  }

  v5 = result;
  result = mlir::mps::MPSBufferTensorAttr::try_value_begin_impl(result, v7);
  if (v9 == 1)
  {
    mlir::detail::ElementsAttrTrait<mlir::mps::MPSBufferTensorAttr>::getNumElements(v5);
    v10 = v7[0];
    v11 = v7[1];
    v12 = v8;
    operator new();
  }

  *a3 = 0;
  a3[16] = 0;
  return result;
}

void *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::mps::APIntElementIterator,llvm::APInt>::at@<X0>(void *result@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v3 = result[1];
  v4 = result[4];
  v5 = result[3] + a2;
  if (v4 == 1)
  {
    if (result[2])
    {
      v5 = 0;
    }

    v6 = *(v3 + (v5 >> 3)) >> (v5 & 7);
    *(a3 + 2) = 1;
    *a3 = v6 & 1;
  }

  else
  {
    if (result[2])
    {
      v7 = 0;
    }

    else
    {
      v7 = result[3] + a2;
    }

    *(a3 + 2) = v4;
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(a3);
    }

    *a3 = 0;
    if (v4)
    {
      v8 = ((v4 - (v4 != 0)) >> 3) + 1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      if (*(a3 + 2) >= 0x41u)
      {
        v9 = *a3;
      }

      else
      {
        v9 = a3;
      }

      return memmove(v9, (v3 + ((((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8) * v7) >> 3)), v8);
    }
  }

  return result;
}

uint64_t mlir::mps::MPSBufferTensorAttr::try_value_begin_impl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(*a1 + 8);
  ElementType = mlir::RankedTensorType::getElementType(&v14);
  v5 = *(*(*a1 + 16) + 16);
  v6 = *(*a1 + 40);
  v14 = *(*a1 + 8);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v14);
  mlir::mps::getElementsAttrStorageSize(v7, v8);
  v14 = ElementType;
  isF16 = mlir::Type::isF16(&v14);
  if (isF16)
  {
    v10 = llvm::APFloatBase::IEEEhalf(isF16);
  }

  else
  {
    isF32 = mlir::Type::isF32(&v14);
    v10 = llvm::APFloatBase::IEEEsingle(isF32);
  }

  v12 = v10;
  v14 = ElementType;
  result = mlir::Type::getIntOrFloatBitWidth(&v14);
  *a2 = v6 + v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = v12;
  *(a2 + 40) = 1;
  return result;
}

llvm::detail::IEEEFloat *mlir::detail::ElementsAttrIndexer::NonContiguousState::OpaqueIterator<mlir::mps::APFloatElementIterator,llvm::APFloat>::at@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = v3 + a2;
  return llvm::mapped_iterator_base<mlir::mps::APFloatElementIterator,mlir::mps::APIntElementIterator,llvm::APFloat>::operator*(&v5, a3);
}

llvm::detail::IEEEFloat *llvm::mapped_iterator_base<mlir::mps::APFloatElementIterator,mlir::mps::APIntElementIterator,llvm::APFloat>::operator*@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1[3];
  if (v4 == 1)
  {
    v5 = 1;
    if ((a1[1] & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = *a1;
    v7 = 0;
    if (v4 != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v8 = *(v6 + (v7 >> 3)) >> (v7 & 7);
    v15 = 1;
    v14 = (v8 & 1);
    goto LABEL_18;
  }

  v5 = (v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8;
  if (a1[1])
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = *a1;
  v7 = a1[2] * v5;
  if (v4 == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = a1[3];
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14);
  }

  v14 = 0;
  v9 = v4 - (v4 != 0);
  if (v4)
  {
    v10 = (v9 >> 3) + 1;
  }

  else
  {
    v10 = v9 >> 3;
  }

  if (v10)
  {
    if (v15 >= 0x41)
    {
      v11 = v14;
    }

    else
    {
      v11 = &v14;
    }

    a1 = memmove(v11, (v6 + (v7 >> 3)), v10);
  }

LABEL_18:
  v12 = v2[4];
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v12)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v12);
  }

  result = llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v12, &v14);
  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      return MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  return result;
}

BOOL mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  else
  {
    v5 = a1;
    mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
    a1 = v5;
    v1 = mlir::detail::TypeIDResolver<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }
  }

  v4 = v1;
  v6 = a1;
  mlir::detail::storage_user_base_impl::hasTrait<mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>();
  v1 = v4;
  a1 = v6;
  return v1 == a1 || mlir::detail::TypeIDResolver<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::TypedAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::TypedAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr::Trait<Empty>]";
  v6 = 79;
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

const char *llvm::getTypeName<mlir::ElementsAttr::Trait<mlir::TypeID mlir::TypeID::get<mlir::ElementsAttr::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ElementsAttr::Trait<Empty>]";
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

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSD_6detail26MPSBufferTensorAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps19MPSBufferTensorAttrES2_NSC_6detail26MPSBufferTensorAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitENS1_12ElementsAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::mps::MPSBufferTensorAttr>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::mps::MPSBufferTensorAttr>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(a1 + 8);
  v17 = *(a1 + 16);
  v4 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = a1;
  if (v3)
  {
    v5 = **a3;
  }

  else
  {
    v5 = 0;
  }

  Context = mlir::Attribute::getContext(&v19);
  v24 = v17;
  v25 = v18;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v20[1] = Context;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v27[1] = v20;
  v23 = v5;
  v26 = v4;
  v8 = 0x9DDFEA08EB382D69 * ((8 * v24 - 0xAE502812AA7333) ^ DWORD1(v24));
  v9 = 0x9DDFEA08EB382D69 * (DWORD1(v24) ^ (v8 >> 47) ^ v8);
  v10 = v9 ^ (v9 >> 47);
  v11 = 0x9DDFEA08EB382D69 * v10;
  v12 = 0xB492B66FBE98F273 * ((v5 >> 4) ^ (v5 >> 9));
  v13 = __ROR8__((0x9AE16A3B2F90404FLL * v4) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v10 + __ROR8__(v12 - 0x9DDFEA08EB382D69 * v10, 43);
  v14 = v12 - 0x9AE16A3B2F90404FLL * v4 - 0xAE502812AA7333 + __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) + 24;
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)));
  v21[0] = &v23;
  v21[1] = v27;
  v22 = &v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v15 >> 47) ^ v15), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps18CallInlineModeAttrES2_NSC_6detail25CallInlineModeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::mps::MPSInlinerInterface::~MPSInlinerInterface(mlir::mps::MPSInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::mps::MPSInlinerInterface::materializeCallConversion(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v59 = a4;
  v60 = a3;
  if (!a4)
  {
    goto LABEL_14;
  }

  v7 = *a4;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v50 = v7;
    v51 = a4;
    mlir::TensorType::operator mlir::ShapedType();
    a4 = v51;
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v50 + 8);
    v10 = *(v50 + 16);
    if (!v10)
    {
      goto LABEL_14;
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
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
LABEL_14:
    v57 = a4;
    v58 = 0;
    v17 = (*(v60 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v28 = v11[1];
  v57 = a4;
  v58 = v28;
  v17 = (*(v60 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  v18 = *v17;
  {
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v52 = v17;
    v29 = v18;
    mlir::TensorType::operator mlir::ShapedType();
    v17 = v52;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v29 + 8);
    v21 = *(v29 + 16);
    if (!v21)
    {
      goto LABEL_29;
    }
  }

  v22 = v20;
  v23 = v21;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[2 * (v23 >> 1)];
    v27 = *v25;
    v26 = v25 + 2;
    v23 += ~(v23 >> 1);
    if (v27 < v19)
    {
      v22 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  if (v22 != &v20[2 * v21] && *v22 == v19)
  {
    v30 = v22[1];
    goto LABEL_30;
  }

LABEL_29:
  v30 = 0;
LABEL_30:
  v56[0] = v17;
  v56[1] = v30;
  mlir::ShapedType::getShape(&v57);
  v32 = v31;
  mlir::ShapedType::getShape(v56);
  if (v32 == v33 || (v34 = mlir::ShapedType::getShape(&v57), NumElements = mlir::ShapedType::getNumElements(v34, v35), v37 = mlir::ShapedType::getShape(v56), NumElements != mlir::ShapedType::getNumElements(v37, v38)))
  {
    v46 = 0;
  }

  else
  {
    Shape = mlir::ShapedType::getShape(&v57);
    v41 = v40;
    ElementType = mlir::ShapedType::getElementType(v56);
    v55 = mlir::RankedTensorType::get(Shape, v41, ElementType, 0);
    mlir::RankedTensorType::getShape(&v55);
    v61[0] = v43;
    IntegerType = mlir::Builder::getIntegerType(a2, 64, 1);
    v54 = mlir::RankedTensorType::get(v61, 1, IntegerType, 0);
    v45 = mlir::TensorType::operator mlir::ShapedType(&v54);
    mlir::RankedTensorType::getShape(&v55);
    RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v45);
    v61[0] = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::RankedTensorType &,mlir::DenseIntElementsAttr>(a2, a5, &v54, &RawIntOrFloat) - 16;
    LOBYTE(RawIntOrFloat) = 0;
    v46 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,BOOL>(a2, a5, &v55, &v60, v61, &RawIntOrFloat);
    v60 = v46 - 16;
  }

  v47 = mlir::ShapedType::getElementType(&v57);
  if (v47 != mlir::ShapedType::getElementType(v56))
  {
    v48 = mlir::ShapedType::getElementType(&v57);
    v55 = mlir::TypeAttr::get(v48);
    return mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Type &,mlir::Value &,mlir::TypeAttr>(a2, a5, &v59, &v60, &v55);
  }

  return v46;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::RankedTensorType &,mlir::DenseIntElementsAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v19[38] = *MEMORY[0x277D85DE8];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConstantOp,int>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v12 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a4);
  mlir::mps::ConstantOp::build(v12, v19, v11, v12);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::ReshapeOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Type &,mlir::Value &,mlir::TypeAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[38] = *MEMORY[0x277D85DE8];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CastOp,mlir::Type &,mlir::Value &,mlir::TypeAttr>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  mlir::mps::CastOp::build(v13, v20, *a3, *a4, *a5);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CastOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

void mlir::mps::MPSOpAsmInterface::~MPSOpAsmInterface(mlir::mps::MPSOpAsmInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::OpAsmDialectInterface::getAlias()
{
  return 0;
}

{
  return 0;
}

uint64_t mlir::mps::MPSOpAsmInterface::declareResource@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = mlir::mps::MPSResourceBlobManagerInterface::contains(*(a1 + 24), a2, a3);
  v9 = *(a1 + 24);
  if (v8)
  {
    result = mlir::mps::MPSResourceBlobManagerInterface::lookup(v9, a2, a3);
    v11 = *(a1 + 8);
    {
      v13 = result;
      mlir::mps::MPSOpAsmInterface::declareResource();
      result = v13;
    }

    v12 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
    *a4 = result;
    *(a4 + 8) = v12;
    *(a4 + 16) = v11;
    *(a4 + 24) = 1;
  }

  else
  {
    result = mlir::mps::MPSResourceBlobManagerInterface::insertUndefinedEntry(v9, a2, a3, a4);
    *(a4 + 24) = 1;
  }

  return result;
}

void mlir::mps::MPSOpAsmInterface::getResourceKey(const void ***a1@<X1>, void *a2@<X8>)
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

uint64_t mlir::mps::MPSOpAsmInterface::parseResource(mlir::mps::MPSOpAsmInterface *this, mlir::AsmParsedResourceEntry *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v19 = this;
  (*(*a2 + 56))(&v26, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::mps::MPSOpAsmInterface::parseResource(mlir::AsmParsedResourceEntry &)::{lambda(unsigned long,unsigned long)#1}>, &v19);
  if (v32 != 1)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = (*(*a2 + 16))(a2);
  if ((*(mlir::mps::MPSResourceBlobManagerInterface::lookup(v4, v5, v6) + 96) & 1) == 0)
  {
    v7 = *(this + 3);
    v8 = (*(*a2 + 16))(a2);
    v10 = v9;
    v20 = v26;
    v21 = v27;
    v24 = v30;
    if (v30 >= 8)
    {
      if ((v30 & 2) != 0 && (v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 8))(&v22, &v28);
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 16))(&v28);
      }

      else
      {
        v22 = v28;
        v23 = v29;
      }

      v30 = 0;
    }

    v25 = v31;
    mlir::mps::MPSResourceBlobManagerInterface::defineEntryValue(v7, v8, v10, &v20);
    if (v24 >= 8)
    {
      v12 = (v24 & 2) != 0 ? &v22 : v22;
      (*(v24 & 0xFFFFFFFFFFFFFFF8))(v12, v20, *(&v20 + 1), v21);
      v13 = v24;
      if (v24 >= 8)
      {
        if ((v24 & 4) != 0)
        {
          if ((v24 & 2) != 0)
          {
            v14 = &v22;
          }

          else
          {
            v14 = v22;
          }

          (*((v24 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
        }

        if ((v13 & 2) == 0)
        {
          llvm::deallocate_buffer(v22, *(&v22 + 1));
        }
      }
    }
  }

  v11 = 1;
  if (v32 == 1 && v30 >= 8)
  {
    v15 = (v30 & 2) != 0 ? &v28 : v28;
    (*(v30 & 0xFFFFFFFFFFFFFFF8))(v15, v26, *(&v26 + 1), v27);
    v16 = v30;
    if (v30 >= 8)
    {
      if ((v30 & 4) != 0)
      {
        if ((v30 & 2) != 0)
        {
          v17 = &v28;
        }

        else
        {
          v17 = v28;
        }

        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
      }

      if ((v16 & 2) == 0)
      {
        llvm::deallocate_buffer(v28, *(&v28 + 1));
      }
    }
  }

  return v11;
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::insertUndefinedEntry@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  LOBYTE(v8[0]) = 0;
  v11 = 0;
  result = mlir::mps::MPSResourceBlobManagerInterface::insert(a1, a2, a3, v8, a4);
  if (v11 == 1 && v10 >= 8)
  {
    v5 = (v10 & 2) != 0 ? v9 : v9[0];
    result = (*(v10 & 0xFFFFFFFFFFFFFFF8))(v5, v8[0], v8[1], v8[2]);
    v6 = v10;
    if (v10 >= 8)
    {
      if ((v10 & 4) != 0)
      {
        if ((v10 & 2) != 0)
        {
          v7 = v9;
        }

        else
        {
          v7 = v9[0];
        }

        result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
      }

      if ((v6 & 2) == 0)
      {
        llvm::deallocate_buffer(v9[0], v9[1]);
      }
    }
  }

  return result;
}

void mlir::mps::MPSResourceBlobManagerInterface::buildResources(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 24 * a4;
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      {
        if (v7 == mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = v7;
        mlir::mps::MPSOpAsmInterface::declareResource();
        if (v9 == mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
        {
LABEL_6:
          v8 = *(v6 - 1);
          if (*(v8 + 80) == 1)
          {
            (*(*a2 + 32))(a2, *v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
          }
        }
      }

      v6 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

uint64_t mlir::Dialect::addType<mlir::mps::NF4Type>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps::NF4Type,mlir::FloatType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps7NF4TypeENS1_9FloatTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3mps7NF4TypeENS1_9FloatTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id;
  v24 = "mps.nf4";
  v25 = 7;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3mps7NF4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3mps7NF4TypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::$_3,std::allocator<mlir::mps::anonymous namespace::$_3>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4mlir3mps12_GLOBAL__N_13$_3E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4mlir3mps12_GLOBAL__N_13$_3E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4mlir3mps12_GLOBAL__N_13$_3E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4mlir3mps12_GLOBAL__N_13$_3E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::ConstantOp::verify(void)::$_0>(mlir::Operation ***a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::OpState::emitOpError(v2, &v3, a2);
}

BOOL mlir::mps::anonymous namespace::inferDepthToSpaceShape(uint64_t a1, char a2, void *__src, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned int a9, uint64_t a10)
{
  v30 = a6;
  v31 = a5;
  v28 = a4;
  v29 = a7;
  v27 = a9;
  v10 = (a4 & (a5 >> 63)) + a5;
  if (v10 < 0 || a4 <= v10)
  {
    v23 = "invalid width_axis (";
    v24 = &v31;
    return mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a1, a2, v23, v24, ") for shape of rank ", &v28);
  }

  v11 = (a4 & (a6 >> 63)) + a6;
  if (v11 < 0 || a4 <= v11)
  {
    return mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a1, a2, "invalid height_axis (", &v30, ") for shape of rank ", &v28);
  }

  v12 = (a4 & (a7 >> 63)) + a7;
  if (v12 < 0 || a4 <= v12)
  {
    v23 = "invalid depth_axis (";
    v24 = &v29;
    return mlir::emitOptionalError<char const(&)[15],long long &,char const(&)[21],long long &>(a1, a2, v23, v24, ") for shape of rank ", &v28);
  }

  if (!a9)
  {
    return mlir::emitOptionalError<char const(&)[21],long long &,char const(&)[2]>(a1, a2, "invalid block_size (", &v27, ")");
  }

  v14 = *(a10 + 8);
  if (a4 != v14)
  {
    if (a4 >= v14)
    {
      if (a4 > *(a10 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (a4 != v14)
      {
        v15 = __src;
        v16 = a4;
        bzero((*a10 + 8 * v14), 8 * (a4 - v14));
        a4 = v16;
        __src = v15;
      }
    }

    *(a10 + 8) = a4;
  }

  v17 = __src;
  memmove(*a10, __src, 8 * a4);
  v18 = v17[v10];
  v19 = v17[v11];
  v20 = v17[v12];
  if (a8)
  {
    v21 = v18 == 0x8000000000000000;
    v18 /= a9;
    if (v21)
    {
      v18 = 0x8000000000000000;
    }

    v21 = v19 == 0x8000000000000000;
    v19 /= a9;
    if (v21)
    {
      v19 = 0x8000000000000000;
    }

    if (v20 == 0x8000000000000000)
    {
      v22 = v17[v12];
    }

    else
    {
      v22 = v20 * a9 * a9;
    }
  }

  else
  {
    v22 = 0x8000000000000000;
    if (v18 != 0x8000000000000000)
    {
      v18 *= a9;
    }

    if (v19 != 0x8000000000000000)
    {
      v19 *= a9;
    }

    if (v20 != 0x8000000000000000)
    {
      v22 = v20 / (a9 * a9);
    }
  }

  v26 = *a10;
  *(*a10 + 8 * v10) = v18;
  v26[v11] = v19;
  v26[v12] = v22;
  return 1;
}

BOOL mlir::emitOptionalError<char const(&)[21],long long &,char const(&)[2]>(uint64_t a1, char a2, char *a3, uint64_t *a4, char *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v18);
  if (v18)
  {
    mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(&v19, a3, a4, a5);
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v18);
  if (v18)
  {
    mlir::InFlightDiagnostic::report(&v18);
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v25;
      v11 = __p;
      if (v25 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v25 = v9;
      operator delete(v11);
    }

    v12 = v22;
    if (v22)
    {
      v13 = v23;
      v14 = v22;
      if (v23 != v22)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v22;
      }

      v23 = v12;
      operator delete(v14);
    }

    if (v20 != &v21)
    {
      free(v20);
    }
  }

  return v8;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::GetCoordOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

uint64_t mlir::Diagnostic::append<char const(&)[15],long long &,char const(&)[8],char const(&)[42]>(uint64_t a1, char *__s, uint64_t *a3, char *a4, const char *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v13 = *(a1 + 16);
  a1 += 16;
  v12 = v13;
  LODWORD(v24) = 3;
  *(&v24 + 1) = __s;
  v25 = v10;
  v14 = *(a1 + 8);
  if (v14 >= *(a1 + 12))
  {
    if (v12 > &v24 || v12 + 24 * v14 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = v12 + 24 * *(v11 + 24);
  v16 = v24;
  *(v15 + 16) = v25;
  *v15 = v16;
  v17 = *(v11 + 28);
  v18 = *(v11 + 24) + 1;
  *(v11 + 24) = v18;
  v19 = *a3;
  LODWORD(v24) = 2;
  *(&v24 + 1) = v19;
  v20 = *(v11 + 16);
  if (v18 >= v17)
  {
    if (v20 > &v24 || v20 + 24 * v18 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v20 + 24 * *(v11 + 24);
  v22 = v24;
  *(v21 + 16) = v25;
  *v21 = v22;
  ++*(v11 + 24);
  return mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(v11, a4, a5);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 8);
  }

  v8 = v6 - 1;
  v9 = (37 * *a2) & (v6 - 1);
  v10 = (v7 + 8 * v9);
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
      v4 = *(result + 8);
      v12 = *(result + 16);
    }

    *a3 = v10;
    *(a3 + 8) = v4 + 8 * v12;
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == 0x8000000000000000;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = (v7 + 8 * (v18 & v8));
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
    v13 = *(result + 16);
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - *(result + 4) <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    --*(result + 4);
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 8);
    v14 = *(result + 16);
  }

  *a3 = v10;
  *(a3 + 8) = v4 + 8 * v14;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = (37 * *a2) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
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

void llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(uint64_t a1, unsigned int a2)
{
  v19[3] = *MEMORY[0x277D85DE8];
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
      v14 = a2;
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    v17 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(a1, v5, &v17[v5]);

    llvm::deallocate_buffer(v5, v17);
  }

  v7 = &v18;
  if ((*(a1 + 8) - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v18 = *(a1 + 8);
    v7 = v19;
    v8 = *(a1 + 16);
    if ((v8 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
LABEL_10:
      v9 = *(a1 + 24);
      if ((v9 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if ((v8 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
      goto LABEL_10;
    }
  }

  *v7++ = v8;
  v9 = *(a1 + 24);
  if ((v9 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
LABEL_11:
    v10 = *(a1 + 32);
    if ((v10 - 0x7FFFFFFFFFFFFFFFLL) < 2)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7++ = v10;
    if (a2 < 5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7++ = v9;
  v10 = *(a1 + 32);
  if ((v10 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
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
    v13 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

LABEL_14:
  llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(a1, &v18, v7);
}

void llvm::DenseMapBase<llvm::SmallDenseMap<long long,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::moveFromOldBuckets(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v8 = 4;
    v9 = a1 + 2;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = *(a1 + 1);
  }

  memset_pattern16(v9, &unk_257369640, 8 * v8);
LABEL_6:
  if (a2 != a3)
  {
    while (1)
    {
      v15 = *a2;
      if ((*a2 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
      {
        break;
      }

LABEL_14:
      if (++a2 == a3)
      {
        return;
      }
    }

    if (*a1)
    {
      v11 = 3;
      v10 = v7;
      v12 = (37 * v15) & 3;
      v13 = &v7[2 * v12];
      v14 = *v13;
      if (v15 == *v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *(a1 + 1);
      v11 = a1[4] - 1;
      v12 = v11 & (37 * v15);
      v13 = &v10[2 * v12];
      v14 = *v13;
      if (v15 == *v13)
      {
LABEL_13:
        *v13 = v15;
        *a1 += 2;
        goto LABEL_14;
      }
    }

    v16 = 0;
    v17 = 1;
    while (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 == 0x8000000000000000;
      }

      if (v18)
      {
        v16 = v13;
      }

      v19 = v12 + v17++;
      v12 = v19 & v11;
      v13 = &v10[2 * (v19 & v11)];
      v14 = *v13;
      if (v15 == *v13)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
      v13 = v16;
    }

    goto LABEL_13;
  }
}

BOOL std::__function::__func<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv2DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps8Conv2DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::mps::ShapeWithLayout::ShapeWithLayout(uint64_t result, uint64_t a2, int a3)
{
  *result = result + 16;
  *(result + 8) = 0x400000000;
  *(result + 48) = a3;
  v3 = *(a2 + 8);
  if (v3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3)
  {
    v4 = *a2;
    v5 = *(result + 8);
    v6 = 8 * v3;
    do
    {
      if (v5 >= *(result + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*result + 8 * v5) = *v4;
      v5 = *(result + 8) + 1;
      *(result + 8) = v5;
      ++v4;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::inferConv2DTransposeShape(uint64_t a1, uint64_t a2, void **a3, void **a4, void **a5, void **a6, int a7, int a8, uint64_t a9)
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 48);
  if (v11 == 3)
  {
    v19 = *a1;
    v12 = &v54;
    __dst = &v54;
    v20 = *v19;
    v54 = vextq_s8(v19[1], v19[1], 8uLL);
    v55 = v20;
LABEL_9:
    v53 = 0x400000004;
    goto LABEL_10;
  }

  if (v11 != 2)
  {
    v12 = &v54;
    __dst = &v54;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_9;
  }

  v12 = &v54;
  __dst = &v54;
  v53 = 0x400000000;
  if (&__dst != a1)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = a3;
      v15 = a4;
      v16 = a5;
      v17 = a6;
      v18 = a7;
      if (v13 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(&v54, *a1, 8 * *(a1 + 8));
      LODWORD(v53) = v13;
      v12 = __dst;
      a7 = v18;
      a6 = v17;
      a5 = v16;
      a4 = v15;
      a3 = v14;
    }
  }

LABEL_10:
  v48[0] = &v49;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48[1] = 0x400000004;
  v21 = *a3;
  *&v49 = **a3;
  *(&v49 + 1) = v12->i64[1] * a2;
  v22 = *a4;
  if (a7 > 1)
  {
    if (a7 != 2 && a7 != 4)
    {
      goto LABEL_28;
    }

    v32 = v21[2];
    if (v32 != 0x8000000000000000)
    {
      v32 *= *v22;
    }

    *&v50 = v32;
    v33 = v21[3];
    v34 = v22[1] * v33;
    if (v33 == 0x8000000000000000)
    {
      v25 = v21[3];
    }

    else
    {
      v25 = v34;
    }
  }

  else
  {
    v23 = *a5;
    if (a7)
    {
      if (a7 == 1)
      {
        v24 = v21[2];
        v25 = 0x8000000000000000;
        v26 = 0x8000000000000000;
        if (v24 != 0x8000000000000000)
        {
          v27 = v12[1].i64[0];
          v28 = *v22 * (v24 - 1) + *v23 * (v27 - 1);
          if (v27 == 0x8000000000000000)
          {
            v26 = v12[1].u64[0];
          }

          else
          {
            v26 = v28 + 1;
          }
        }

        *&v50 = v26;
        v29 = v21[3];
        if (v29 != 0x8000000000000000)
        {
          v30 = v12[1].i64[1];
          v31 = v22[1] * (v29 - 1) + v23[1] * (v30 - 1);
          if (v30 == 0x8000000000000000)
          {
            v25 = 0x8000000000000000;
          }

          else
          {
            v25 = v31 + 1;
          }
        }

        goto LABEL_37;
      }

LABEL_28:
      v25 = 0x8000000000000000;
      *&v50 = 0x8000000000000000;
      goto LABEL_37;
    }

    v35 = *a6;
    v36 = v21[2];
    v25 = 0x8000000000000000;
    if (v36 == 0x8000000000000000 || (v37 = v12[1].i64[0], v37 == 0x8000000000000000))
    {
      *&v50 = 0x8000000000000000;
      v38 = v21[3];
      if (v38 == 0x8000000000000000)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *&v50 = *v22 * (v36 - 1) + *v23 * (v37 - 1) - (*v35 + v35[1]) + 1;
      v38 = v21[3];
      if (v38 == 0x8000000000000000)
      {
        goto LABEL_37;
      }
    }

    v39 = v12[1].i64[1];
    if (v39 != 0x8000000000000000)
    {
      v25 = v22[1] * (v38 - 1) + v23[1] * (v39 - 1) - (v35[2] + v35[3]) + 1;
    }
  }

LABEL_37:
  *(&v50 + 1) = v25;
  mlir::mps::ShapeWithLayout::toLayout(v48, a8, &__src);
  v40 = __src;
  if (&__src == a9)
  {
    goto LABEL_52;
  }

  if (__src != v47)
  {
    if (*a9 != a9 + 16)
    {
      free(*a9);
      v40 = __src;
    }

    *a9 = v40;
    *(a9 + 8) = v46;
    __src = v47;
    HIDWORD(v46) = 0;
    goto LABEL_51;
  }

  v41 = v46;
  v42 = *(a9 + 8);
  if (v42 >= v46)
  {
    if (v46)
    {
      memmove(*a9, __src, 8 * v46);
    }

    goto LABEL_50;
  }

  if (*(a9 + 12) < v46)
  {
    *(a9 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v42)
  {
    v42 = 0;
    v43 = v46;
    if (!v46)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  memmove(*a9, __src, 8 * v42);
  v43 = v46 - v42;
  if (v46 != v42)
  {
LABEL_49:
    memcpy((*a9 + 8 * v42), __src + 8 * v42, 8 * v43);
  }

LABEL_50:
  *(a9 + 8) = v41;
LABEL_51:
  LODWORD(v46) = 0;
  v40 = __src;
LABEL_52:
  if (v40 != v47)
  {
    free(v40);
  }

  if (v48[0] != &v49)
  {
    free(v48[0]);
  }

  if (__dst != &v54)
  {
    free(__dst);
  }

  return 1;
}

uint64_t mlir::mps::ShapeWithLayout::ShapeWithLayout(uint64_t result, uint64_t a2)
{
  *result = result + 16;
  *(result + 8) = 0x400000000;
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (v3 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = result;
      memcpy((result + 16), *a2, 8 * *(a2 + 8));
      result = v4;
      *(v4 + 8) = v3;
    }
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t mlir::mps::anonymous namespace::inferConvDataGradShape(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = a4;
  v18 = a8;
  if (a4 == a8)
  {
    v8 = *(a7 + 8);
    if (v8 < a8)
    {
      if (*(a7 + 12) < a8)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (a8 != v8)
      {
        v9 = a7;
        v10 = a5;
        v11 = a3;
        v12 = a8;
        bzero((*a7 + 8 * v8), 8 * (a8 - v8));
        a8 = v12;
        a3 = v11;
        a5 = v10;
        a7 = v9;
      }
    }

    *(a7 + 8) = 0;
    if (a8)
    {
      v13 = 0;
      v14 = 8 * a8;
      v15 = a3;
      do
      {
        if (v13 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a7 + 8 * v13) = *v15;
        v13 = *(a7 + 8) + 1;
        *(a7 + 8) = v13;
        ++v15;
        v14 -= 8;
      }

      while (v14);
    }

    if (*a3 == 0x8000000000000000 && *a5 >= 1)
    {
      **a7 = *a5;
    }

    return 1;
  }

  else if (a8 == 4)
  {
    return mlir::emitOptionalError<char const(&)[19],unsigned long &,char const(&)[11]>(a1, a2, "conv2D input rank ", &v17, " must be 4 ");
  }

  else
  {
    return mlir::emitOptionalError<char const(&)[18],unsigned long &,char const(&)[3],unsigned long &>(a1, a2, "convolution input rank ", &v17, " must be ", &v18);
  }
}

int8x16_t **mlir::mps::ShapeWithLayout::toLayout@<X0>(int8x16_t **result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6 = *(result + 12);
      if (v6 == 3)
      {
        v13 = **result;
        *(a3 + 16) = vextq_s8((*result)[1], (*result)[1], 8uLL);
        *a3 = a3 + 16;
        *(a3 + 32) = v13;
LABEL_35:
        *(a3 + 8) = 0x400000004;
        return result;
      }

      if (v6 == 2)
      {
        v4 = (a3 + 16);
        *a3 = a3 + 16;
        *(a3 + 8) = 0x400000000;
        if (a3 != result)
        {
          v5 = *(result + 2);
          if (v5)
          {
            if (v5 >= 5)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            goto LABEL_37;
          }
        }

        return result;
      }
    }

    else
    {
      v8 = *(result + 12);
      if (v8 == 2)
      {
        v15 = **result;
        *(a3 + 16) = (*result)[1];
        *a3 = a3 + 16;
        v9 = vextq_s8(v15, v15, 8uLL);
        goto LABEL_34;
      }

      if (v8 == 3)
      {
        v4 = (a3 + 16);
        *a3 = a3 + 16;
        *(a3 + 8) = 0x400000000;
        if (a3 != result)
        {
          v5 = *(result + 2);
          if (v5)
          {
            if (v5 >= 5)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            goto LABEL_37;
          }
        }

        return result;
      }
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    v3 = *(result + 12);
    if (v3 != 1)
    {
      if (!v3)
      {
        v4 = (a3 + 16);
        *a3 = a3 + 16;
        *(a3 + 8) = 0x400000000;
        if (a3 != result)
        {
          v5 = *(result + 2);
          if (v5)
          {
            if (v5 >= 5)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

LABEL_37:
            result = memcpy(v4, *result, 8 * *(result + 2));
            *(a3 + 8) = v5;
            return result;
          }
        }

        return result;
      }

      goto LABEL_28;
    }

    v10 = *result;
    v11 = (*result)->i64[1];
    *(a3 + 16) = (*result)->i64[0];
    *a3 = a3 + 16;
    v12 = vextq_s8(v10[1], v10[1], 8uLL);
    goto LABEL_32;
  }

  v7 = *(result + 12);
  if (!v7)
  {
    v14 = *result;
    v11 = (*result)->i64[1];
    *(a3 + 16) = (*result)->i64[0];
    *a3 = a3 + 16;
    v12 = v14[1];
LABEL_32:
    *(a3 + 24) = v12;
    *(a3 + 40) = v11;
    goto LABEL_35;
  }

  if (v7 != 1)
  {
LABEL_28:
    v9 = 0uLL;
    *(a3 + 16) = 0u;
    *a3 = a3 + 16;
LABEL_34:
    *(a3 + 32) = v9;
    goto LABEL_35;
  }

  v4 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x400000000;
  if (a3 != result)
  {
    v5 = *(result + 2);
    if (v5)
    {
      if (v5 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      goto LABEL_37;
    }
  }

  return result;
}

BOOL std::__function::__func<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps8Conv3DOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL std::__function::__func<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DDataGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps20Conv3DDataGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL std::__function::__func<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::Conv3DWeightsGradientOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps23Conv3DWeightsGradientOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::mps::inferPool4DReturnType<mlir::mps::PoolAvgOpAdaptor>(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4, uint64_t *a5)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a3);
  v23[0] = v8;
  v23[1] = v9;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a3);
  if (!v8 || *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a5 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    return 1;
  }

  else
  {
    v11 = ElementTypeOrSelf;
    v34[0] = v35;
    v34[1] = 0x400000000;
    v32[0] = v33;
    v32[1] = 0x400000000;
    v30[0] = v31;
    v30[1] = 0x800000000;
    v28[0] = v29;
    v28[1] = 0x400000000;
    v26[0] = v27;
    v26[1] = 0x400000000;
    v22 = 0;
    v21 = 2;
    Shape = mlir::ShapedType::getShape(v23);
    v13 = a4[5];
    v25[3] = a4[4];
    v25[4] = v13;
    v25[5] = a4[6];
    v14 = a4[1];
    *v24 = *a4;
    v25[0] = v14;
    v15 = a4[3];
    v25[1] = a4[2];
    v25[2] = v15;
    mlir::mps::getPool4dParams<mlir::mps::PoolAvgOpAdaptor>(Shape, v16, v24, v34, v32, v30, v28, v26, &v21, &v22 + 1, &v22);
    v24[0] = v25;
    v24[1] = 0x400000000;
    v19 = 0;
    if (mlir::mps::inferPool4DShape(v17, v18, v32, v34, v28, v26, v30, v21, HIBYTE(v22), v24))
    {
      *a5 = mlir::RankedTensorType::get(v24[0], LODWORD(v24[1]), v11, 0);
      v19 = 1;
    }

    if (v24[0] != v25)
    {
      free(v24[0]);
    }

    if (v26[0] != v27)
    {
      free(v26[0]);
    }

    if (v28[0] != v29)
    {
      free(v28[0]);
    }

    if (v30[0] != v31)
    {
      free(v30[0]);
    }

    if (v32[0] != v33)
    {
      free(v32[0]);
    }

    if (v34[0] != v35)
    {
      free(v34[0]);
    }
  }

  return v19;
}

void mlir::mps::getPool4dParams<mlir::mps::PoolAvgOpAdaptor>(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, BOOL *a10, BOOL *a11)
{
  v18 = a3[9];
  v55 = a3[8];
  v56 = v18;
  v19 = a3[5];
  v46 = a3[4];
  v53 = v19;
  v54 = v46;
  *a9 = 2;
  v20 = a3[7];
  if (v20)
  {
    *a9 = *(v20 + 8);
  }

  *a10 = a3[3] != 0;
  *a11 = a3[6] != 0;
  v21 = *(a6 + 8);
  if (v21 == 8)
  {
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 == 4)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v23)
    {
      *(a7 + 8) = 4;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (*(a7 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16((*a7 + 8 * v22), &unk_257369660, 32 - 8 * v22);
      *(a7 + 8) = 4;
      v24 = *(a8 + 8);
      v25 = v24 > 4;
      if (v24 != 4)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 == 4)
    {
      goto LABEL_7;
    }

LABEL_26:
    if (v27)
    {
      *(a5 + 8) = 4;
      if (a2 <= *(a4 + 12))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (*(a5 + 12) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memset_pattern16((*a5 + 8 * v26), &unk_257369660, 32 - 8 * v26);
      *(a5 + 8) = 4;
      if (a2 <= *(a4 + 12))
      {
        goto LABEL_32;
      }
    }

LABEL_8:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21 <= 8)
  {
    if (*(a6 + 12) <= 7u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    bzero((*a6 + 8 * v21), 64 - 8 * v21);
    *(a6 + 8) = 8;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(a6 + 8) = 8;
    v22 = *(a7 + 8);
    v23 = v22 > 4;
    if (v22 != 4)
    {
      goto LABEL_14;
    }
  }

LABEL_5:
  v24 = *(a8 + 8);
  v25 = v24 > 4;
  if (v24 == 4)
  {
    goto LABEL_6;
  }

LABEL_20:
  if (v25)
  {
    *(a8 + 8) = 4;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*(a8 + 12) <= 3u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memset_pattern16((*a8 + 8 * v24), &unk_257369660, 32 - 8 * v24);
    *(a8 + 8) = 4;
    v26 = *(a5 + 8);
    v27 = v26 > 4;
    if (v26 != 4)
    {
      goto LABEL_26;
    }
  }

LABEL_7:
  if (a2 > *(a4 + 12))
  {
    goto LABEL_8;
  }

LABEL_32:
  if (a2)
  {
    v28 = *(a4 + 8);
    v29 = 8 * a2;
    do
    {
      if (v28 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v28) = *a1;
      v28 = *(a4 + 8) + 1;
      *(a4 + 8) = v28;
      ++a1;
      v29 -= 8;
    }

    while (v29);
    v18 = v56;
  }

  if (v18)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v56) == 4)
    {
      *(a5 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v56, 0);
      v30 = v56;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v56);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v30, NumElements);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v38 = *v47;
        }

        else if (v48)
        {
          v38 = (v47 << -v48) >> -v48;
        }

        else
        {
          v38 = 0;
        }

        v39 = *(a5 + 8);
        if (v39 >= *(a5 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a5 + 8 * v39) = v38;
        ++*(a5 + 8);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x259C63150](v47, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v55)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v55) == 4)
    {
      *(a7 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v55, 0);
      v32 = v55;
      v33 = mlir::DenseElementsAttr::getNumElements(&v55);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v32, v33);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v40 = *v47;
        }

        else if (v48)
        {
          v40 = (v47 << -v48) >> -v48;
        }

        else
        {
          v40 = 0;
        }

        v41 = *(a7 + 8);
        if (v41 >= *(a7 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a7 + 8 * v41) = v40;
        ++*(a7 + 8);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x259C63150](v47, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v46)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v54) == 4)
    {
      *(a8 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v54, 0);
      v34 = v54;
      v35 = mlir::DenseElementsAttr::getNumElements(&v54);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v34, v35);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v42 = *v47;
        }

        else if (v48)
        {
          v42 = (v47 << -v48) >> -v48;
        }

        else
        {
          v42 = 0;
        }

        v43 = *(a8 + 8);
        if (v43 >= *(a8 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a8 + 8 * v43) = v42;
        ++*(a8 + 8);
        if (v48 >= 0x41 && v47)
        {
          MEMORY[0x259C63150](v47, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v19)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v53) == 8)
    {
      *(a6 + 8) = 0;
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v51, v53, 0);
      v36 = v53;
      v37 = mlir::DenseElementsAttr::getNumElements(&v53);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v49, v36, v37);
      for (; v52 != v50; ++v52)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(v51, &v47);
        if (v48 > 0x40)
        {
          v44 = *v47;
        }

        else if (v48)
        {
          v44 = (v47 << -v48) >> -v48;
        }

        else
        {
          v44 = 0;
        }

        v45 = *(a6 + 8);
        if (v45 >= *(a6 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a6 + 8 * v45) = v44;
        ++*(a6 + 8);
        if (v48 >= 0x41)
        {
          if (v47)
          {
            MEMORY[0x259C63150](v47, 0x1000C8000313F17);
          }
        }
      }
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::CallOpGenericAdaptorBase::Properties]";
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

BOOL std::__function::__func<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return 1;
  }

  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v20 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::BiasAddOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps9BiasAddOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::verifyQuantizeOp<mlir::mps::QuantizeOp>(mlir::mps::QuantizeOp)::{lambda(char const*,mlir::Value)#1}::operator()(uint64_t a1, const char *a2, uint64_t a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v71 = a2;
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v70[0] = v5;
  v70[1] = v6;
  if (*(*a1 + 4) == 1)
  {
    if (mlir::ShapedType::hasRank(v70))
    {
      mlir::ShapedType::getShape(v70);
      if (v7 >= 2)
      {
        v8 = *(a1 + 8);
        v69 = 257;
        mlir::OpState::emitOpError(v8, v68, &v74);
        if (v74)
        {
          if (a2)
          {
            v9 = strlen(a2);
          }

          else
          {
            v9 = 0;
          }

          LODWORD(v72) = 3;
          *(&v72 + 1) = a2;
          v73 = v9;
          if (v77 >= v78)
          {
            if (v76 > &v72 || v76 + 24 * v77 <= &v72)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v29 = v76 + 24 * v77;
          v30 = v72;
          *(v29 + 2) = v73;
          *v29 = v30;
          v31 = ++v77;
          if (v74)
          {
            LODWORD(v72) = 3;
            *(&v72 + 1) = " rank must be 0 or 1";
            v73 = 20;
            if (v31 >= v78)
            {
              if (v76 > &v72 || v76 + 24 * v31 <= &v72)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v32 = v76 + 24 * v77;
            v33 = v72;
            *(v32 + 2) = v73;
            *v32 = v33;
            ++v77;
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
        v34 = result;
        if (v74)
        {
          mlir::InFlightDiagnostic::report(&v74);
          result = v34;
        }

        if (v85 == 1)
        {
          if (v84 != &v85)
          {
            free(v84);
            result = v34;
          }

          v35 = __p;
          if (__p)
          {
            v36 = v83;
            v37 = __p;
            if (v83 != __p)
            {
              do
              {
                v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
              }

              while (v36 != v35);
              v37 = __p;
            }

            v83 = v35;
            operator delete(v37);
            result = v34;
          }

          v38 = v80;
          if (!v80)
          {
            goto LABEL_79;
          }

          v39 = v81;
          v40 = v80;
          if (v81 == v80)
          {
LABEL_78:
            v81 = v38;
            operator delete(v40);
            result = v34;
LABEL_79:
            if (v76 != &v79)
            {
              free(v76);
              return v34;
            }

            return result;
          }

          do
          {
            v42 = *--v39;
            v41 = v42;
            *v39 = 0;
            if (v42)
            {
              MEMORY[0x259C63150](v41, 0x1000C8077774924);
            }
          }

          while (v39 != v38);
LABEL_77:
          v40 = v80;
          goto LABEL_78;
        }

        return result;
      }
    }

    if (v70[0] && **(a1 + 16) != 0x8000000000000000 && mlir::ShapedType::hasRank(v70))
    {
      Shape = mlir::ShapedType::getShape(v70);
      if (v23)
      {
        v24 = 8 * v23;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        v25 = mlir::ShapedType::getShape(v70);
        if (mlir::ShapedType::getNumElements(v25, v26) != **(a1 + 16))
        {
          v43 = mlir::ShapedType::getShape(v70);
          result = mlir::ShapedType::getNumElements(v43, v44);
          if (result != 1)
          {
            v45 = *(a1 + 8);
            v69 = 257;
            mlir::OpState::emitOpError(v45, v68, &v74);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v74, "input and ");
            mlir::InFlightDiagnostic::operator<<<char const*&>(v46, &v71);
            v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v48);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
            return v49;
          }

          return result;
        }
      }
    }

    return 1;
  }

  if (!v5 || !mlir::ShapedType::hasRank(v70))
  {
    return 1;
  }

  v10 = mlir::ShapedType::getShape(v70);
  if (v11)
  {
    v12 = 8 * v11;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    return 1;
  }

LABEL_13:
  mlir::ShapedType::getShape(v70);
  if (v13 > 1)
  {
    v27 = *(a1 + 8);
    v69 = 257;
    mlir::OpState::emitOpError(v27, v68, &v74);
    if (v74)
    {
      if (a2)
      {
        v28 = strlen(a2);
      }

      else
      {
        v28 = 0;
      }

      LODWORD(v72) = 3;
      *(&v72 + 1) = a2;
      v73 = v28;
      if (v77 >= v78)
      {
        if (v76 > &v72 || v76 + 24 * v77 <= &v72)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v50 = v76 + 24 * v77;
      v51 = v72;
      *(v50 + 2) = v73;
      *v50 = v51;
      v52 = ++v77;
      if (v74)
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = " rank must be 0 or 1";
        v73 = 20;
        if (v52 >= v78)
        {
          if (v76 > &v72 || v76 + 24 * v52 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v53 = v76 + 24 * v77;
        v54 = v72;
        *(v53 + 2) = v73;
        *v53 = v54;
        ++v77;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
    v34 = result;
    if (v74)
    {
      mlir::InFlightDiagnostic::report(&v74);
      result = v34;
    }

    if (v85 == 1)
    {
      if (v84 != &v85)
      {
        free(v84);
        result = v34;
      }

      v55 = __p;
      if (__p)
      {
        v56 = v83;
        v57 = __p;
        if (v83 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v83 = v55;
        operator delete(v57);
        result = v34;
      }

      v38 = v80;
      if (!v80)
      {
        goto LABEL_79;
      }

      v58 = v81;
      v40 = v80;
      if (v81 == v80)
      {
        goto LABEL_78;
      }

      do
      {
        v60 = *--v58;
        v59 = v60;
        *v58 = 0;
        if (v60)
        {
          MEMORY[0x259C63150](v59, 0x1000C8077774924);
        }
      }

      while (v58 != v38);
      goto LABEL_77;
    }
  }

  else
  {
    v14 = mlir::ShapedType::getShape(v70);
    result = mlir::ShapedType::getNumElements(v14, v15);
    if (result != 1)
    {
      v17 = *(a1 + 8);
      v69 = 257;
      mlir::OpState::emitOpError(v17, v68, &v74);
      if (v74)
      {
        LODWORD(v72) = 3;
        v73 = 29;
        if (v77 >= v78)
        {
          if (v76 > &v72 || v76 + 24 * v77 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v18 = v76 + 24 * v77;
        v19 = v72;
        *(v18 + 2) = v73;
        *v18 = v19;
        v20 = ++v77;
        if (v74)
        {
          if (a2)
          {
            v21 = strlen(a2);
          }

          else
          {
            v21 = 0;
          }

          LODWORD(v72) = 3;
          *(&v72 + 1) = a2;
          v73 = v21;
          if (v20 >= v78)
          {
            if (v76 > &v72 || v76 + 24 * v20 <= &v72)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v61 = v76 + 24 * v77;
          v62 = v72;
          *(v61 + 2) = v73;
          *v61 = v62;
          v63 = ++v77;
          if (v74)
          {
            LODWORD(v72) = 3;
            v73 = 21;
            if (v63 >= v78)
            {
              if (v76 > &v72 || v76 + 24 * v63 <= &v72)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v64 = v76 + 24 * v77;
            v65 = v72;
            *(v64 + 2) = v73;
            *v64 = v65;
            ++v77;
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v74);
      if (v74)
      {
        v66 = result;
        mlir::InFlightDiagnostic::report(&v74);
        result = v66;
      }

      if (v85 == 1)
      {
        v67 = result;
        mlir::Diagnostic::~Diagnostic(&v75);
        return v67;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::verifyQuantizeOp<mlir::mps::DequantizeOp>(mlir::mps::DequantizeOp)::{lambda(char const*,mlir::Value)#1}::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v116 = *MEMORY[0x277D85DE8];
  __s = a2;
  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a3 + 8) & 0xFFFFFFFFFFFFFFF8));
  v100[0] = v4;
  v100[1] = v5;
  if (*(*a1 + 4) == 1)
  {
    if (mlir::ShapedType::hasRank(v100))
    {
      mlir::ShapedType::getShape(v100);
      if (v6 >= 2)
      {
        v7 = *(a1 + 8);
        v99 = 257;
        mlir::OpState::emitOpError(v7, v98, &v104);
        if (v104)
        {
          if (__s)
          {
            v8 = strlen(__s);
          }

          else
          {
            v8 = 0;
          }

          LODWORD(v102) = 3;
          *(&v102 + 1) = __s;
          v103 = v8;
          if (v107 >= v108)
          {
            if (v106 > &v102 || v106 + 24 * v107 <= &v102)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v44 = v106 + 24 * v107;
          v45 = v102;
          *(v44 + 2) = v103;
          *v44 = v45;
          v46 = ++v107;
          if (v104)
          {
            LODWORD(v102) = 3;
            *(&v102 + 1) = " rank must be 0 or 1";
            v103 = 20;
            if (v46 >= v108)
            {
              if (v106 > &v102 || v106 + 24 * v46 <= &v102)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v47 = v106 + 24 * v107;
            v48 = v102;
            *(v47 + 2) = v103;
            *v47 = v48;
            ++v107;
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v104);
        v49 = result;
        if (v104)
        {
          mlir::InFlightDiagnostic::report(&v104);
          result = v49;
        }

        if (v115 == 1)
        {
          if (v114 != &v115)
          {
            free(v114);
            result = v49;
          }

          v50 = __p;
          if (__p)
          {
            v51 = v113;
            v52 = __p;
            if (v113 != __p)
            {
              do
              {
                v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
              }

              while (v51 != v50);
              v52 = __p;
            }

            v113 = v50;
            operator delete(v52);
            result = v49;
          }

          v53 = v110;
          if (!v110)
          {
            goto LABEL_112;
          }

          v54 = v111;
          v55 = v110;
          if (v111 == v110)
          {
LABEL_111:
            v111 = v53;
            operator delete(v55);
            result = v49;
LABEL_112:
            if (v106 != &v109)
            {
              free(v106);
              return v49;
            }

            return result;
          }

          do
          {
            v57 = *--v54;
            v56 = v57;
            *v54 = 0;
            if (v57)
            {
              MEMORY[0x259C63150](v56, 0x1000C8077774924);
            }
          }

          while (v54 != v53);
LABEL_110:
          v55 = v110;
          goto LABEL_111;
        }

        return result;
      }
    }

    if (v100[0] && **(a1 + 16) != 0x8000000000000000 && mlir::ShapedType::hasRank(v100))
    {
      Shape = mlir::ShapedType::getShape(v100);
      if (v22)
      {
        v23 = 8 * v22;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v23 -= 8;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

        return 1;
      }

LABEL_27:
      v24 = mlir::ShapedType::getShape(v100);
      if (mlir::ShapedType::getNumElements(v24, v25) != **(a1 + 16))
      {
        v26 = mlir::ShapedType::getShape(v100);
        result = mlir::ShapedType::getNumElements(v26, v27);
        if (result == 1)
        {
          return result;
        }

        v28 = *(a1 + 8);
        v99 = 257;
        mlir::OpState::emitOpError(v28, v98, &v104);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v104, "input and ");
        mlir::InFlightDiagnostic::operator<<<char const*&>(v29, &__s);
LABEL_67:
        v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v104);
        return v61;
      }
    }

    return 1;
  }

  if (!v4 || !mlir::ShapedType::hasRank(v100))
  {
    return 1;
  }

  v9 = mlir::ShapedType::getShape(v100);
  if (v10)
  {
    v11 = 8 * v10;
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    return 1;
  }

LABEL_13:
  mlir::ShapedType::getShape(v100);
  if (v12 <= 1)
  {
    v13 = mlir::ShapedType::getShape(v100);
    result = mlir::ShapedType::getNumElements(v13, v14);
    if (result != 1)
    {
      v16 = *(a1 + 8);
      v99 = 257;
      mlir::OpState::emitOpError(v16, v98, &v104);
      if (v104)
      {
        LODWORD(v102) = 3;
        v103 = 29;
        if (v107 >= v108)
        {
          if (v106 > &v102 || v106 + 24 * v107 <= &v102)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = v106 + 24 * v107;
        v18 = v102;
        *(v17 + 2) = v103;
        *v17 = v18;
        v19 = ++v107;
        if (v104)
        {
          if (__s)
          {
            v20 = strlen(__s);
          }

          else
          {
            v20 = 0;
          }

          LODWORD(v102) = 3;
          *(&v102 + 1) = __s;
          v103 = v20;
          if (v19 >= v108)
          {
            if (v106 > &v102 || v106 + 24 * v19 <= &v102)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v62 = v106 + 24 * v107;
          v63 = v102;
          *(v62 + 2) = v103;
          *v62 = v63;
          v64 = ++v107;
          if (v104)
          {
            LODWORD(v102) = 3;
            v103 = 21;
            if (v64 >= v108)
            {
              if (v106 > &v102 || v106 + 24 * v64 <= &v102)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v65 = v106 + 24 * v107;
            v66 = v102;
            *(v65 + 2) = v103;
            *v65 = v66;
            ++v107;
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v104);
      if (v104)
      {
        v67 = result;
        mlir::InFlightDiagnostic::report(&v104);
        result = v67;
      }

      if (v115 == 1)
      {
        v68 = result;
        mlir::Diagnostic::~Diagnostic(&v105);
        return v68;
      }
    }

    return result;
  }

  if (mlir::ShapedType::hasRank(*(a1 + 24)))
  {
    mlir::ShapedType::getShape(*(a1 + 24));
    v33 = v32;
    mlir::ShapedType::getShape(v100);
    if (v33 != v34)
    {
      v58 = *(a1 + 8);
      v99 = 257;
      mlir::OpState::emitOpError(v58, v98, &v104);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v104, "ND ");
      mlir::InFlightDiagnostic::operator<<<char const*&>(v59, &__s);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v60, " rank differs from input rank");
      goto LABEL_67;
    }
  }

  mlir::ShapedType::getShape(*(a1 + 24));
  if (v35 < 1)
  {
    return 1;
  }

  v36 = 0;
  while (1)
  {
    v38 = 8 * v36;
    v39 = *(mlir::ShapedType::getShape(*(a1 + 24)) + v38);
    v40 = *(mlir::ShapedType::getShape(v100) + v38);
    v41 = v39 == 0x8000000000000000 || v40 == 0x8000000000000000;
    if (!v41 && v39 % v40)
    {
      break;
    }

    ++v36;
    mlir::ShapedType::getShape(*(a1 + 24));
    result = 1;
    if (v36 >= v37)
    {
      return result;
    }
  }

  v42 = *(a1 + 8);
  v99 = 257;
  mlir::OpState::emitOpError(v42, v98, &v104);
  if (v104)
  {
    if (__s)
    {
      v43 = strlen(__s);
    }

    else
    {
      v43 = 0;
    }

    LODWORD(v102) = 3;
    *(&v102 + 1) = __s;
    v103 = v43;
    if (v107 >= v108)
    {
      if (v106 > &v102 || v106 + 24 * v107 <= &v102)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v69 = v106 + 24 * v107;
    v70 = v102;
    *(v69 + 2) = v103;
    *v69 = v70;
    v71 = ++v107;
    if (v104)
    {
      LODWORD(v102) = 3;
      *(&v102 + 1) = " shape not compatible with input for axis ";
      v103 = 42;
      if (v71 >= v108)
      {
        if (v106 > &v102 || v106 + 24 * v71 <= &v102)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v72 = v106 + 24 * v107;
      v73 = v102;
      *(v72 + 2) = v103;
      *v72 = v73;
      v74 = ++v107;
      if (v104)
      {
        LODWORD(v102) = 2;
        *(&v102 + 1) = v36;
        if (v74 >= v108)
        {
          if (v106 > &v102 || v106 + 24 * v74 <= &v102)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v75 = v106 + 24 * v107;
        v76 = v102;
        *(v75 + 2) = v103;
        *v75 = v76;
        v77 = ++v107;
        if (v104)
        {
          LODWORD(v102) = 3;
          *(&v102 + 1) = ": ";
          v103 = 2;
          if (v77 >= v108)
          {
            if (v106 > &v102 || v106 + 24 * v77 <= &v102)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v78 = v106 + 24 * v107;
          v79 = v102;
          *(v78 + 2) = v103;
          *v78 = v79;
          v80 = ++v107;
          if (v104)
          {
            LODWORD(v102) = 2;
            *(&v102 + 1) = v39;
            if (v80 >= v108)
            {
              if (v106 > &v102 || v106 + 24 * v80 <= &v102)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v81 = v106 + 24 * v107;
            v82 = v102;
            *(v81 + 2) = v103;
            *v81 = v82;
            v83 = ++v107;
            if (v104)
            {
              LODWORD(v102) = 3;
              *(&v102 + 1) = " % ";
              v103 = 3;
              if (v83 >= v108)
              {
                if (v106 > &v102 || v106 + 24 * v83 <= &v102)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v84 = v106 + 24 * v107;
              v85 = v102;
              *(v84 + 2) = v103;
              *v84 = v85;
              v86 = ++v107;
              if (v104)
              {
                LODWORD(v102) = 2;
                *(&v102 + 1) = v40;
                if (v86 >= v108)
                {
                  if (v106 > &v102 || v106 + 24 * v86 <= &v102)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v87 = v106 + 24 * v107;
                v88 = v102;
                *(v87 + 2) = v103;
                *v87 = v88;
                v89 = ++v107;
                if (v104)
                {
                  LODWORD(v102) = 3;
                  *(&v102 + 1) = " != 0";
                  v103 = 5;
                  if (v89 >= v108)
                  {
                    if (v106 > &v102 || v106 + 24 * v89 <= &v102)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v90 = v106 + 24 * v107;
                  v91 = v102;
                  *(v90 + 2) = v103;
                  *v90 = v91;
                  ++v107;
                }
              }
            }
          }
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v104);
  v49 = result;
  if (v104)
  {
    mlir::InFlightDiagnostic::report(&v104);
    result = v49;
  }

  if (v115)
  {
    if (v114 != &v115)
    {
      free(v114);
      result = v49;
    }

    v92 = __p;
    if (__p)
    {
      v93 = v113;
      v94 = __p;
      if (v113 != __p)
      {
        do
        {
          v93 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v93 - 1);
        }

        while (v93 != v92);
        v94 = __p;
      }

      v113 = v92;
      operator delete(v94);
      result = v49;
    }

    v53 = v110;
    if (!v110)
    {
      goto LABEL_112;
    }

    v95 = v111;
    v55 = v110;
    if (v111 == v110)
    {
      goto LABEL_111;
    }

    do
    {
      v97 = *--v95;
      v96 = v97;
      *v95 = 0;
      if (v97)
      {
        MEMORY[0x259C63150](v96, 0x1000C8077774924);
      }
    }

    while (v95 != v53);
    goto LABEL_110;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::$_0,std::allocator<mlir::mps::anonymous namespace::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4mlir3mps12_GLOBAL__N_13$_0E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4mlir3mps12_GLOBAL__N_13$_0E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4mlir3mps12_GLOBAL__N_13$_0E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4mlir3mps12_GLOBAL__N_13$_0E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::$_2,std::allocator<mlir::mps::anonymous namespace::$_2>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4mlir3mps12_GLOBAL__N_13$_2E")
  {
    return a1 + 8;
  }

  if (((v2 & "N4mlir3mps12_GLOBAL__N_13$_2E" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4mlir3mps12_GLOBAL__N_13$_2E"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4mlir3mps12_GLOBAL__N_13$_2E" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL std::__function::__func<mlir::mps::ImToColOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::ImToColOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  v21 = v20 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  if (!v21 && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::ImToColOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::ImToColOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps9ImToColOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps9ImToColOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps9ImToColOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps9ImToColOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL std::__function::__func<mlir::mps::ColToImOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::ColToImOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(**a2 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  v20 = *(**a3 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  result = 1;
  v21 = v20 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  if (!v21 && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return v20 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  }

  return result;
}

uint64_t std::__function::__func<mlir::mps::ColToImOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0,std::allocator<mlir::mps::ColToImOp::isCompatibleReturnTypes(mlir::TypeRange,mlir::TypeRange)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps9ColToImOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps9ColToImOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps9ColToImOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps9ColToImOp23isCompatibleReturnTypesENS_9TypeRangeES2_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ReductionModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ReductionModeAttrStorage,mlir::mps::ReductionMode>(llvm::function_ref<void ()(mlir::mps::detail::ReductionModeAttrStorage *)>,mlir::TypeID,mlir::mps::ReductionMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::DeviceHintAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::DeviceHintAttrStorage,mlir::mps::DeviceHint>(llvm::function_ref<void ()(mlir::mps::detail::DeviceHintAttrStorage *)>,mlir::TypeID,mlir::mps::DeviceHint &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::ScatterModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::ScatterModeAttrStorage,mlir::mps::ScatterMode>(llvm::function_ref<void ()(mlir::mps::detail::ScatterModeAttrStorage *)>,mlir::TypeID,mlir::mps::ScatterMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingModeAttrStorage,mlir::mps::PaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::PaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SamplingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SamplingModeAttrStorage,mlir::mps::SamplingMode>(llvm::function_ref<void ()(mlir::mps::detail::SamplingModeAttrStorage *)>,mlir::TypeID,mlir::mps::SamplingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NearestRoundingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NearestRoundingModeAttrStorage,mlir::mps::NearestRoundingMode>(llvm::function_ref<void ()(mlir::mps::detail::NearestRoundingModeAttrStorage *)>,mlir::TypeID,mlir::mps::NearestRoundingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SparseTensorStorageAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SparseTensorStorageAttrStorage,mlir::mps::SparseTensorStorage>(llvm::function_ref<void ()(mlir::mps::detail::SparseTensorStorageAttrStorage *)>,mlir::TypeID,mlir::mps::SparseTensorStorage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MetalPixelFormatAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MetalPixelFormatAttrStorage,mlir::mps::MetalPixelFormat>(llvm::function_ref<void ()(mlir::mps::detail::MetalPixelFormatAttrStorage *)>,mlir::TypeID,mlir::mps::MetalPixelFormat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
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