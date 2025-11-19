BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
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
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::memref::TransposeOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::memref::TransposeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::memref::TransposeOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::memref::TransposeOp::verify(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::ViewOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::ViewOp>,mlir::OpTrait::OneResult<mlir::memref::ViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::ViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::ViewOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::memref::ViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::ViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::ViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::ViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::ViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::ViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::ViewOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v3 = v2;
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getDefaultDialect;
  {
    v10 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v3 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getViewSource;
  {
    v11 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CastOp>,mlir::OpTrait::OneResult<mlir::memref::CastOp>,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::memref::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CastOp>,mlir::OpTrait::OneOperand<mlir::memref::CastOp>,mlir::OpTrait::OpInvariants<mlir::memref::CastOp>,mlir::CastOpInterface::Trait<mlir::memref::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::memref::CastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::CastOp>>();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::ViewOp>::getSpeculatability;
  {
    v12 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v7 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::ViewOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v9, v8);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
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
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v68 = v1;
  v79 = a1;
  v58 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v58;
  v1 = v68;
  a1 = v79;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v43;
  v3 = v51;
  v2 = v60;
  v1 = v70;
  a1 = v81;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v32;
  v5 = v38;
  v4 = v45;
  v3 = v53;
  v2 = v62;
  v1 = v72;
  a1 = v83;
  v7 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
  v7 = v28;
  v6 = v33;
  v5 = v39;
  v4 = v46;
  v3 = v54;
  v2 = v63;
  v1 = v73;
  a1 = v84;
  v8 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v8 = v25;
  v7 = v29;
  v6 = v34;
  v5 = v40;
  v4 = v47;
  v3 = v55;
  v2 = v64;
  v1 = v74;
  a1 = v85;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_55;
  }

LABEL_11:
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::ViewOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::memref::ViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if (!mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2))
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::memref::ViewOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::memref::ViewOp::verify(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::~Model(uint64_t a1)
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

BOOL mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v11, a2, a3, a4, a5);
  if (v12 >= 8)
  {
    if ((v12 & 4) != 0)
    {
      v10 = v11[0];
      if ((v12 & 2) != 0)
      {
        v10 = v11;
      }

      (*((v12 & 0xFFFFFFFFFFFFFFF8) + 16))(v10, v6, v7, v8, v9);
    }

    if ((v12 & 2) == 0)
    {
      llvm::deallocate_buffer(v11[0], v11[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v5, a2, a3, a4, a5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::memref::SubViewOp::setInherentAttr(v5 + 64, Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::SubViewOp::populateInherentAttrs(Context, v6, a3);
}

double mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
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

void mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::SubViewOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::memref::SubViewOp>::compareProperties(uint64_t a1, void *a2, void *a3)
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

  return a3[3] == a2[3] && a3[4] == a2[4];
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::SubViewOp>,mlir::OpTrait::OneResult<mlir::memref::SubViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::SubViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::SubViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::SubViewOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::SubViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::SubViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::SubViewOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::writeProperties;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneResult<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OneOperand<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::OpInvariants<mlir::tensor::CollapseShapeOp>,mlir::BytecodeOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpAsmOpInterface::Trait<mlir::tensor::CollapseShapeOp>,mlir::ConditionallySpeculatable::Trait<mlir::tensor::CollapseShapeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::tensor::CollapseShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::tensor::CollapseShapeOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v2);
  v3 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v4 = v3;
  *v3 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getAsmResultNames;
  v3[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getAsmBlockArgumentNames;
  v3[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getAsmBlockNames;
  v3[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDefaultDialect;
  {
    v11 = v3;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::AllocOp>,mlir::OpTrait::OneResult<mlir::memref::AllocOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::AllocOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::AllocOp>,mlir::OpTrait::VariadicOperands<mlir::memref::AllocOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::AllocOp>,mlir::OpTrait::OpInvariants<mlir::memref::AllocOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::AllocOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::AllocOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::AllocOp>>();
    v4 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v6 = v5;
  *v5 = mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getViewSource;
  {
    v12 = v5;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::memref::CastOp>,mlir::OpTrait::OneResult<mlir::memref::CastOp>,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::memref::CastOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::CastOp>,mlir::OpTrait::OneOperand<mlir::memref::CastOp>,mlir::OpTrait::OpInvariants<mlir::memref::CastOp>,mlir::CastOpInterface::Trait<mlir::memref::CastOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::MemRefsNormalizable<mlir::memref::CastOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::CastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::CastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::CastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::memref::CastOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::CastOp>>();
    v6 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id, v6);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>>(a1);
  v7 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v8 = v7;
  *v7 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::memref::SubViewOp>::getSpeculatability;
  {
    v13 = v7;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v8 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v9 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getEffects;
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0xD0uLL, 0x80040B342C78EuLL);
  v3 = v2;
  *v2 = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getOffsetSizeAndStrideStartOperandIndex;
  v2[1] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getArrayAttrMaxRanks;
  v2[2] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getOffsets;
  v2[3] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getSizes;
  v2[4] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStrides;
  v2[5] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticOffsets;
  v2[6] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticSizes;
  v2[7] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticStrides;
  v2[8] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getMixedOffsets;
  v2[9] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getMixedSizes;
  v2[10] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getMixedStrides;
  v2[11] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isDynamicOffset;
  v2[12] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isDynamicSize;
  v2[13] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isDynamicStride;
  v2[14] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticOffset;
  v2[15] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticSize;
  v2[16] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getStaticStride;
  v2[17] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicOffset;
  v2[18] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicSize;
  v2[19] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getIndexOfDynamicStride;
  v2[20] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicOffset;
  v2[21] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicSize;
  v2[22] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getDynamicStride;
  v2[23] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isSameAs;
  v2[24] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasUnitStride;
  v2[25] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasZeroOffset;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::ReinterpretCastOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

unint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::getArrayAttrMaxRanks(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  ODSOperandIndexAndLength = mlir::memref::SubViewOp::getODSOperandIndexAndLength(&v5, 0);
  v6 = *(*(*(v5 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v6);
  return v3 | (v3 << 32);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::isSameAs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v6, a2, a3, a4, a5, a6);
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getMixedStrides(v2);
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::memref::SubViewOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getMixedOffsets(v2);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::memref::detail::SubViewOpGenericAdaptorBase::SubViewOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::memref::SubViewOp::fold(&v12);
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v119;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  v106 = v1;
  v120 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v106;
  a1 = v120;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v107 = v1;
  v121 = a1;
  v94 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v94;
  v1 = v107;
  a1 = v121;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v108 = v1;
  v122 = a1;
  v83 = v3;
  v95 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v83;
  v2 = v95;
  v1 = v108;
  a1 = v122;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  v109 = v1;
  v123 = a1;
  v84 = v3;
  v96 = v2;
  v73 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v73;
  v3 = v84;
  v2 = v96;
  v1 = v109;
  a1 = v123;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  v110 = v1;
  v124 = a1;
  v85 = v3;
  v97 = v2;
  v64 = v5;
  v74 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v5 = v64;
  v4 = v74;
  v3 = v85;
  v2 = v97;
  v1 = v110;
  a1 = v124;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  v111 = v1;
  v125 = a1;
  v86 = v3;
  v98 = v2;
  v65 = v5;
  v75 = v4;
  v56 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v6 = v56;
  v5 = v65;
  v4 = v75;
  v3 = v86;
  v2 = v98;
  v1 = v111;
  a1 = v125;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v112 = v1;
  v126 = a1;
  v87 = v3;
  v99 = v2;
  v66 = v5;
  v76 = v4;
  v49 = v7;
  v57 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v49;
  v6 = v57;
  v5 = v66;
  v4 = v76;
  v3 = v87;
  v2 = v99;
  v1 = v112;
  a1 = v126;
  v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v113 = v1;
  v127 = a1;
  v88 = v3;
  v100 = v2;
  v67 = v5;
  v77 = v4;
  v50 = v7;
  v58 = v6;
  v43 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v43;
  v7 = v50;
  v6 = v58;
  v5 = v67;
  v4 = v77;
  v3 = v88;
  v2 = v100;
  v1 = v113;
  a1 = v127;
  v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_68;
  }

LABEL_67:
  v114 = v1;
  v128 = a1;
  v89 = v3;
  v101 = v2;
  v68 = v5;
  v78 = v4;
  v51 = v7;
  v59 = v6;
  v38 = v9;
  v44 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::CastOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::ViewLikeOpInterface::Trait>();
  v9 = v38;
  v8 = v44;
  v7 = v51;
  v6 = v59;
  v5 = v68;
  v4 = v78;
  v3 = v89;
  v2 = v101;
  v1 = v114;
  a1 = v128;
  v10 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_69;
  }

LABEL_68:
  v115 = v1;
  v129 = a1;
  v90 = v3;
  v102 = v2;
  v69 = v5;
  v79 = v4;
  v52 = v7;
  v60 = v6;
  v39 = v9;
  v45 = v8;
  v34 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>();
  v10 = v34;
  v9 = v39;
  v8 = v45;
  v7 = v52;
  v6 = v60;
  v5 = v69;
  v4 = v79;
  v3 = v90;
  v2 = v102;
  v1 = v115;
  a1 = v129;
  v11 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

LABEL_70:
    v117 = v1;
    v131 = a1;
    v92 = v3;
    v104 = v2;
    v71 = v5;
    v81 = v4;
    v54 = v7;
    v62 = v6;
    v41 = v9;
    v47 = v8;
    v32 = v11;
    v36 = v10;
    v29 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v12 = v29;
    v11 = v32;
    v10 = v36;
    v9 = v41;
    v8 = v47;
    v7 = v54;
    v6 = v62;
    v5 = v71;
    v4 = v81;
    v3 = v92;
    v2 = v104;
    v1 = v117;
    a1 = v131;
    v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_71;
  }

LABEL_69:
  v116 = v1;
  v130 = a1;
  v91 = v3;
  v103 = v2;
  v70 = v5;
  v80 = v4;
  v53 = v7;
  v61 = v6;
  v40 = v9;
  v46 = v8;
  v31 = v11;
  v35 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v11 = v31;
  v10 = v35;
  v9 = v40;
  v8 = v46;
  v7 = v53;
  v6 = v61;
  v5 = v70;
  v4 = v80;
  v3 = v91;
  v2 = v103;
  v1 = v116;
  a1 = v130;
  v12 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_70;
  }

LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_71:
  v118 = v1;
  v132 = a1;
  v93 = v3;
  v105 = v2;
  v72 = v5;
  v82 = v4;
  v55 = v7;
  v63 = v6;
  v42 = v9;
  v48 = v8;
  v33 = v11;
  v37 = v10;
  v28 = v13;
  v30 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v13 = v28;
  v12 = v30;
  v11 = v33;
  v10 = v37;
  v9 = v42;
  v8 = v48;
  v7 = v55;
  v6 = v63;
  v5 = v72;
  v4 = v82;
  v3 = v93;
  v2 = v105;
  v1 = v118;
  a1 = v132;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::SubViewOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::memref::SubViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ViewLikeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if ((mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::SubViewOp>,mlir::OpTrait::OneResult<mlir::memref::SubViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::SubViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::SubViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::SubViewOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::SubViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::SubViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::SubViewOp>>(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1;
  return mlir::memref::SubViewOp::verify(&v4);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::memref::SubViewOp>,mlir::OpTrait::OneResult<mlir::memref::SubViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::memref::SubViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::memref::SubViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::memref::SubViewOp>,mlir::OpTrait::OpInvariants<mlir::memref::SubViewOp>,mlir::BytecodeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OpAsmOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::memref::SubViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::SubViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::memref::SubViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::memref::SubViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::memref::SubViewOp>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) && (v6 = a1, (mlir::memref::SubViewOp::verifyInvariantsImpl(&v6) & 1) != 0))
  {
    return mlir::op_definition_impl::verifyTrait<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::tensor::ExtractSliceOp>>(a1) & 1;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::MemRefInlinerInterface::~MemRefInlinerInterface(_anonymous_namespace_::MemRefInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::MemRefInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

const char *llvm::getTypeName<mlir::ConvertToLLVMPatternInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ConvertToLLVMPatternInterface]";
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

const char *llvm::getTypeName<mlir::bufferization::AllocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::bufferization::AllocationOpInterface]";
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

const char *llvm::getTypeName<mlir::DestructurableTypeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestructurableTypeInterface]";
  v6 = 83;
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

double mlir::memref::AllocaOp::getPromotableSlots@<D0>(mlir::memref::AllocaOp *this@<X0>, void *a2@<X8>)
{
  v12 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::MemRefType::getElementType(&v12);
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (v13[0] = mlir::Type::getContext(&ElementType), memset(&v13[1], 0, 24), mlir::Builder::getZeroAttr(v13, ElementType)))
  {
    if (mlir::BaseMemRefType::hasRank(&v12))
    {
      Shape = mlir::MemRefType::getShape(&v12);
      if (v5)
      {
        v6 = 8 * v5;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v6 -= 8;
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = mlir::MemRefType::getShape(&v12);
        if (mlir::ShapedType::getNumElements(v7, v8) == 1)
        {
          v9 = *this - 16;
          v10 = mlir::MemRefType::getElementType(&v12);
          a2[2] = v9;
          *a2 = a2 + 2;
          a2[3] = v10;
          *&result = 0x300000001;
          a2[1] = 0x300000001;
          return result;
        }
      }
    }
  }

  *a2 = a2 + 2;
  *&result = 0x300000000;
  a2[1] = 0x300000000;
  return result;
}

uint64_t mlir::memref::AllocaOp::getDefaultValue(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v4 = *(a2 + 8);
  v5 = *(*a1 + 24);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v8[0] = v4;
    mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(a3, v5, v8);
  }

  v9 = v4;
  v8[0] = mlir::Builder::getZeroAttr(a3, v4);
  v8[1] = v6;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr>(a3, v5, &v9, v8) - 16;
}

void mlir::memref::AllocaOp::handlePromotionComplete(mlir::Operation **a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = a2;
  if (!*a2)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v6);
    mlir::Operation::erase(DefiningOp);
  }

  mlir::Operation::erase(*a1);
  *a3 = 0;
  a3[16] = 0;
}

double mlir::memref::AllocaOp::getDestructurableSlots@<D0>(mlir::memref::AllocaOp *this@<X0>, void *a2@<X8>)
{
  v9[0] = llvm::DefaultDoCastIfPossible<mlir::DestructurableTypeInterface,mlir::MemRefType,llvm::CastInfo<mlir::DestructurableTypeInterface,mlir::MemRefType,void>>::doCastIfPossible((*(*this - 8) & 0xFFFFFFFFFFFFFFF8));
  v9[1] = v4;
  if (v9[0])
  {
    mlir::DestructurableTypeInterface::getSubelementIndexMap(&__src, v9);
    if (v8 == 1)
    {
      if (*(*this + 36))
      {
        v5 = *this - 16;
      }

      else
      {
        v5 = 0;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
      llvm::deallocate_buffer(0, 0);
    }
  }

  *a2 = a2 + 2;
  *&result = 0x100000000;
  a2[1] = 0x100000000;
  return result;
}

void sub_256D45B0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  *(v9 + 48) = v12;
  if (v12)
  {
    v13 = (16 * v12);
    buffer = llvm::allocate_buffer(16 * v12, 8uLL);
    *(v9 + 32) = buffer;
    *(v9 + 40) = a9;
    memcpy(buffer, v10, 16 * *(v9 + 48));
  }

  else
  {
    v13 = 0;
    *v11 = 0;
    v11[1] = 0;
  }

  ++*(v9 + 8);
  llvm::deallocate_buffer(v10, v13);
}

void sub_256D45B68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, llvm *a11, uint64_t a12, unsigned int a13, int a14, char a15)
{
  if (a15)
  {
    llvm::deallocate_buffer(a11, (16 * a13));
  }

  JUMPOUT(0x256D45AACLL);
}

void mlir::memref::AllocaOp::destructure(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(v8 + 16);
  v10 = *(llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v8) + 8);
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  v11 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = *v11;
  {
    mlir::memref::AllocaOp::destructure();
    v13 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_14;
  }

  v22 = v16[1];
LABEL_15:
  v31[0] = v11;
  v31[1] = v22;
  v23 = a2[1];
  v24 = 16;
  if (v23 == *a2)
  {
    v24 = 20;
  }

  v25 = *(a2 + v24);
  if (v25)
  {
    v26 = 8 * v25;
    for (i = a2[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v26 -= 8;
      if (!v26)
      {
        return;
      }
    }
  }

  else
  {
    i = a2[1];
  }

  if (i != (v23 + 8 * v25))
  {
    v30 = *i;
    TypeAtIndex = mlir::DestructurableTypeInterface::getTypeAtIndex(v31, v30);
    v29 = mlir::MemRefType::get(0, 0, TypeAtIndex, 0, 0, 0);
    mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(a3, *(*a1 + 24), &v29);
  }
}

void mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12[38] = *MEMORY[0x277D85DE8];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v12, a2, v7);
    mlir::memref::AllocaOp::build(a1, v12, *a3);
  }

  mlir::OpBuilder::create<mlir::memref::AllocaOp,mlir::MemRefType &>(v12, v11, v10);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>,mlir::Attribute,mlir::MemorySlot,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::MemorySlot>>::try_emplace<mlir::MemorySlot>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = *result + 24 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 24 * (v16 & v7);
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 24 * v5;
  *(a4 + 16) = v11;
  return result;
}

void mlir::memref::AllocaOp::handleDestructuringComplete(mlir::Operation **a1@<X0>, _BYTE *a2@<X8>)
{
  mlir::Operation::erase(*a1);
  *a2 = 0;
  a2[16] = 0;
}

BOOL mlir::memref::LoadOp::canUsesBeRemoved(uint64_t *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 20) - *(a3 + 24) != 1)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  v4 = 16;
  if (v3 == *a3)
  {
    v4 = 20;
  }

  v5 = *(a3 + v4);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = v3 + 8 * v5;
    while (*v3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 += 8;
      v6 -= 8;
      if (!v6)
      {
        v3 = v7;
        break;
      }
    }
  }

  v8 = *(*v3 + 24);
  if (v8 != *a2)
  {
    return 0;
  }

  v10 = *a1;
  if (*(*(*a1 + 72) + 24) != v8)
  {
    return 0;
  }

  v11 = *(v10 + 36);
  v12 = v10 - 16;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a2[1] == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::LoadOp::removeBlockingUses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  while (1)
  {
    v8 = *NextResultAtOffset;
    if (!*NextResultAtOffset)
    {
      break;
    }

    v9 = v8[1];
    if (v9)
    {
      v10 = *v8;
      *v9 = *v8;
      if (v10)
      {
        *(v10 + 8) = v9;
      }
    }

    v8[3] = a5;
    v11 = *a5;
    *v8 = *a5;
    v8[1] = a5;
    if (v11)
    {
      *(v11 + 8) = v8;
    }

    *a5 = v8;
  }

  return 1;
}

uint64_t mlir::memref::LoadOp::canRewire(mlir::memref::LoadOp *a1, void *a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (*a2 != *(*(*a1 + 72) + 24))
  {
    return 0;
  }

  Context = mlir::Attribute::getContext((*a1 + 24));
  ODSOperandIndexAndLength = mlir::memref::LoadOp::getODSOperandIndexAndLength(a1, 1u);
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v8 = *(*a1 + 72);
  }

  else
  {
    v8 = 0;
  }

  mlir::ValueRange::ValueRange(v13, v8 + 32 * ODSOperandIndexAndLength, (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength);
  result = getAttributeIndexFromIndexOperands(Context, v13[0], v13[1], *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v9 = *a3;
    if (*(a3 + 8) != *a3)
    {
      goto LABEL_7;
    }

    v10 = *(a3 + 20);
    if (v10)
    {
      v11 = 8 * v10;
      v12 = *a3;
      while (*v12 != result)
      {
        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_14;
        }
      }

      return 1;
    }

LABEL_14:
    if (v10 < *(a3 + 16))
    {
      *(a3 + 20) = v10 + 1;
      v9[v10] = result;
    }

    else
    {
LABEL_7:
      llvm::SmallPtrSetImplBase::insert_imp_big(a3, result);
    }

    return 1;
  }

  return result;
}

uint64_t getAttributeIndexFromIndexOperands(mlir::MLIRContext *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[6] = *MEMORY[0x277D85DE8];
  v26 = a4;
  v30 = v32;
  v31 = 0x600000000;
  Shape = mlir::MemRefType::getShape(&v26);
  v27 = a2;
  v28 = 0;
  v29 = Shape;
  if (!a3 || (v9 = v8) == 0)
  {
    v17 = v31;
LABEL_17:
    v19 = mlir::ArrayAttr::get(a1, v30, v17);
    v20 = v30;
    if (v30 == v32)
    {
      return v19;
    }

LABEL_18:
    free(v20);
    return v19;
  }

  v10 = 0;
  v11 = Shape + 8 * v9;
  while (1)
  {
    v12 = mlir::ValueRange::dereference_iterator(&v27, v10);
    v13 = v29;
    v24 = &v25;
    v25 = 0;
    v22 = v12;
    DefiningOp = mlir::Value::getDefiningOp(&v22);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v24, DefiningOp) & 1) == 0)
    {
      break;
    }

    mlir::IntegerAttr::getValue(&v25, &v22);
    v15 = v23;
    if (v23 >= 0x41)
    {
      if (v15 - llvm::APInt::countLeadingZerosSlowCase(&v22) > 0x40)
      {
        if (v22)
        {
          MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        }

        break;
      }

      v16 = *v22;
      MEMORY[0x259C63150]();
      if (v16 >= *v13)
      {
        break;
      }
    }

    else if (v22 >= *v13)
    {
      break;
    }

    if (v31 >= HIDWORD(v31))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v30 + v31) = v25;
    v17 = v31 + 1;
    LODWORD(v31) = v31 + 1;
    v10 = v28 + 1;
    v18 = v29 + 1;
    v28 = v10;
    ++v29;
    if (v10 == a3 || v18 == v11)
    {
      goto LABEL_17;
    }
  }

  v19 = 0;
  v20 = v30;
  if (v30 != v32)
  {
    goto LABEL_18;
  }

  return v19;
}

BOOL mlir::memref::StoreOp::canUsesBeRemoved(mlir::memref::StoreOp *a1, void *a2, uint64_t a3)
{
  if (*(a3 + 20) - *(a3 + 24) != 1)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  v4 = 16;
  if (v3 == *a3)
  {
    v4 = 20;
  }

  v5 = *(a3 + v4);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = v3 + 8 * v5;
    while (*v3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 += 8;
      v6 -= 8;
      if (!v6)
      {
        v3 = v7;
        break;
      }
    }
  }

  v8 = *(*v3 + 24);
  return v8 == *a2 && *(*(*a1 + 72) + 56) == v8 && *(*(*a1 + 72) + 32 * mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 0) + 24) != *a2 && a2[1] == (*(*(*(*a1 + 72) + 32 * mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::StoreOp::canRewire(mlir::memref::StoreOp *a1, uint64_t a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (*a2 != *(*(*a1 + 72) + 56) || *(*(*a1 + 72) + 32 * mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 0) + 24) == *a2)
  {
    return 0;
  }

  Context = mlir::Attribute::getContext((*a1 + 24));
  ODSOperandIndexAndLength = mlir::memref::StoreOp::getODSOperandIndexAndLength(a1, 2u);
  if ((*(*a1 + 46) & 0x80) != 0)
  {
    v9 = *(*a1 + 72);
  }

  else
  {
    v9 = 0;
  }

  mlir::ValueRange::ValueRange(v21, v9 + 32 * ODSOperandIndexAndLength, (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength);
  result = getAttributeIndexFromIndexOperands(Context, v21[0], v21[1], *(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    v10 = *(a2 + 32);
    if (v10)
    {
      v11 = *(a2 + 16);
      v12 = v10 - 1;
      v13 = v12 & ((result >> 4) ^ (result >> 9));
      v14 = *(v11 + 16 * v13);
      if (v14 == result)
      {
LABEL_10:
        v15 = *a3;
        if (*(a3 + 8) != *a3)
        {
          goto LABEL_11;
        }

        v16 = *(a3 + 20);
        if (v16)
        {
          v17 = 8 * v16;
          v18 = *a3;
          while (*v18 != result)
          {
            ++v18;
            v17 -= 8;
            if (!v17)
            {
              goto LABEL_17;
            }
          }

          return 1;
        }

LABEL_17:
        if (v16 < *(a3 + 16))
        {
          *(a3 + 20) = v16 + 1;
          v15[v16] = result;
        }

        else
        {
LABEL_11:
          llvm::SmallPtrSetImplBase::insert_imp_big(a3, result);
        }

        return 1;
      }

      v19 = 1;
      while (v14 != -4096)
      {
        v20 = v13 + v19++;
        v13 = v20 & v12;
        v14 = *(v11 + 16 * (v20 & v12));
        if (v14 == result)
        {
          goto LABEL_10;
        }
      }
    }

    return 0;
  }

  return result;
}

void *llvm::DefaultDoCastIfPossible<mlir::DestructurableTypeInterface,mlir::MemRefType,llvm::CastInfo<mlir::DestructurableTypeInterface,mlir::MemRefType,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::memref::AllocaOp::destructure();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    mlir::memref::AllocaOp::destructure();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
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
  return result;
}

void mlir::memref::registerMemorySlotExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v1 = mlir::AbstractType::lookupMutable(&mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id, a1);
  if (!v1)
  {
    llvm::report_fatal_error("Registering an interface for an attribute/type that is not itself registered.", 1);
  }

  v2 = v1;
  v3 = *v1;
  v4 = v2[17];
  {
    v10 = v3;
    v8 = v4;
    mlir::memref::AllocaOp::destructure();
    v4 = v8;
    v3 = v10;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v3, v4, mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v6 = v5;
  {
    v9 = v5;
    mlir::memref::AllocaOp::destructure();
    v6 = v9;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::DestructurableTypeInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert((v2 + 1), v7, v6);
}

uint64_t mlir::detail::DestructurableTypeInterfaceInterfaceTraits::FallbackModel<anonymous namespace::MemRefDestructurableTypeExternalModel>::getSubelementIndexMap@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v28 = a1;
  result = mlir::BaseMemRefType::hasRank(&v28);
  if (result)
  {
    result = mlir::MemRefType::getShape(&v28);
    if (v4)
    {
      v5 = 8 * v4;
      while (*result != 0x8000000000000000)
      {
        result += 8;
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
      Shape = mlir::MemRefType::getShape(&v28);
      result = mlir::ShapedType::getNumElements(Shape, v7);
      if (result <= 16)
      {
        v8 = mlir::MemRefType::getShape(&v28);
        result = mlir::ShapedType::getNumElements(v8, v9);
        if (result != 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          Context = mlir::Type::getContext(&v28);
          v11 = mlir::MemRefType::getShape(&v28);
          v13 = v12;
          v14 = mlir::IndexType::get(Context, v12);
          v35 = v38;
          v37 = 6;
          if (v13 >= 7)
          {
            v36 = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v13)
          {
            bzero(v38, 8 * v13);
          }

          v15 = v38;
          v16 = v13;
          v36 = v13;
          v32 = v34;
          v33 = 0x600000000;
          if (!v13)
          {
            goto LABEL_19;
          }

          while (1)
          {
            v17 = 8 * v16;
            do
            {
              v18 = mlir::IntegerAttr::get(v14, *v15);
              if (v33 >= HIDWORD(v33))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v32 + v33) = v18;
              v19 = (v33 + 1);
              LODWORD(v33) = v33 + 1;
              ++v15;
              v17 -= 8;
            }

            while (v17);
            for (i = v32; ; i = v34)
            {
              v21 = mlir::ArrayAttr::get(Context, i, v19);
              ElementType = mlir::MemRefType::getElementType(&v28);
              v30 = v21;
              v31 = ElementType;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(&v25, &v30, &v31, v29);
              if (v32 != v34)
              {
                free(v32);
              }

              v15 = v35;
              if (!v13)
              {
LABEL_29:
                if (v15 != v38)
                {
                  free(v15);
                }

                *a2 = v25;
                *(a2 + 8) = v26;
                v25 = 0;
                v26 = 0;
                *(a2 + 16) = v27;
                v27 = 0;
                *(a2 + 24) = 1;
                llvm::deallocate_buffer(0, 0);
              }

              v23 = 0;
              while (1)
              {
                v24 = v15[v23] + 1;
                v15[v23] = v24;
                if (v24 < *(v11 + 8 * v23))
                {
                  break;
                }

                v15[v23++] = 0;
                if (v13 == v23)
                {
                  goto LABEL_29;
                }
              }

              v16 = v36;
              v32 = v34;
              v33 = 0x600000000;
              if (v36)
              {
                break;
              }

LABEL_19:
              v19 = 0;
            }
          }
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t mlir::detail::DestructurableTypeInterfaceInterfaceTraits::FallbackModel<anonymous namespace::MemRefDestructurableTypeExternalModel>::getTypeAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  v23 = v3;
  if (v3)
  {
    mlir::ArrayAttr::getValue(&v23);
    v5 = v4;
    mlir::MemRefType::getShape(&v24);
    if (v5 == v6)
    {
      Context = mlir::Type::getContext(&v24);
      v9 = mlir::IndexType::get(Context, v8);
      Shape = mlir::MemRefType::getShape(&v24);
      v12 = v11;
      Value = mlir::ArrayAttr::getValue(&v23);
      v14 = mlir::ArrayAttr::getValue(&v23);
      v16 = v14 + 8 * v15;
      if (Value == v16 || !v12)
      {
        return mlir::MemRefType::getElementType(&v24);
      }

      v17 = 8 * v12 - 8;
      v18 = Value + 8;
      while (1)
      {
        v19 = *(v18 - 8);
        if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v19 = 0;
        }

        v22 = v19;
        if (!v19 || mlir::IntegerAttr::getType(&v22) != v9 || mlir::IntegerAttr::getInt(&v22) < 0 || mlir::IntegerAttr::getInt(&v22) >= *Shape)
        {
          break;
        }

        if (v18 != v16)
        {
          ++Shape;
          v20 = v17;
          v17 -= 8;
          v18 += 8;
          if (v20)
          {
            continue;
          }
        }

        return mlir::MemRefType::getElementType(&v24);
      }
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ConstantOp::build(a1, v17, *a3, *a4, a4[1]);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
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

void mlir::DialectRegistry::addExtension<mlir::BuiltinDialect>(void (*)(mlir::MLIRContext *,mlir::BuiltinDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  JUMPOUT(0x259C63180);
}

unint64_t *OUTLINED_FUNCTION_1_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, unint64_t a3)
{

  return mlir::ValueRange::ValueRange(&a3, a2 + 32 * a1, (HIDWORD(a1) + a1) - a1);
}

uint64_t OUTLINED_FUNCTION_5_9@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;

  return getAttributeIndexFromIndexOperands(v3, a2, a3, v5);
}

uint64_t mlir::memref::getTensorTypeFromMemRefType(uint64_t a1)
{
  v14 = a1;
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v13 = v2;
  if (v2)
  {
    Shape = mlir::MemRefType::getShape(&v13);
    v5 = v4;
    ElementType = mlir::MemRefType::getElementType(&v13);
    return mlir::RankedTensorType::get(Shape, v5, ElementType, 0);
  }

  else
  {
    v8 = v1 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
    if (v1 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;
    if (v8)
    {
      v12 = mlir::UnrankedMemRefType::getElementType(&v13);
      return mlir::UnrankedTensorType::get(v12);
    }

    else
    {
      Context = mlir::Type::getContext(&v14);
      return mlir::NoneType::get(Context, v11);
    }
  }
}

unint64_t mlir::memref::getMixedSize(mlir::IndexType **a1, uint64_t a2, uint64_t a3, mlir::OperationState *a4)
{
  v4 = a4;
  v19[1] = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a3;
  v12 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v17;
  v16 = 0x600000000;
  if (*(mlir::MemRefType::getShape(&v12) + 8 * a4) != 0x8000000000000000)
  {
    Shape = mlir::MemRefType::getShape(&v12);
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
  mlir::OpBuilder::createOrFold<mlir::memref::DimOp,mlir::Value &,long long &>(a1, v18, a2, &v14, &v13);
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

uint64_t mlir::memref::getMixedSizes@<X0>(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  *a4 = a4 + 16;
  *(a4 + 8) = 0x600000000;
  result = mlir::MemRefType::getShape(&v14);
  if (v9 >= 1)
  {
    for (i = 0; i < v13; i = (i + 1))
    {
      MixedSize = mlir::memref::getMixedSize(a1, a2, a3, i);
      v12 = *(a4 + 8);
      if (v12 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a4 + 8 * v12) = MixedSize;
      ++*(a4 + 8);
      result = mlir::MemRefType::getShape(&v14);
    }
  }

  return result;
}

BOOL mlir::memref::AllocOp::verify(unsigned int **this)
{
  v70 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v55 = v1;
  v54 = *(v1 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!v54)
  {
    v52[0] = "result must be a memref";
    v53 = 259;
    mlir::OpState::emitOpError(&v55, v52, &Layout);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v67;
        v11 = __p;
        if (v67 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v67 = v9;
        operator delete(v11);
      }

      v12 = v64;
      if (!v64)
      {
        goto LABEL_75;
      }

      v13 = v65;
      v14 = v64;
      if (v65 == v64)
      {
        goto LABEL_74;
      }

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
      goto LABEL_73;
    }

    return v8;
  }

  v2 = v1[4 * ((v1[11] >> 23) & 1) + 18];
  Shape = mlir::MemRefType::getShape(&v54);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_28;
  }

  v5 = (v4 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 >= 3)
  {
    v17 = v5 + 1;
    v18 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v7 = (Shape + 8 * v18);
    v19 = (Shape + 16);
    v20 = 0uLL;
    v21 = vnegq_f64(0);
    v22 = v18;
    v23 = 0uLL;
    do
    {
      v20 = vsubq_s64(v20, vceqq_s64(v19[-1], v21));
      v23 = vsubq_s64(v23, vceqq_s64(*v19, v21));
      v19 += 2;
      v22 -= 4;
    }

    while (v22);
    v6 = vaddvq_s64(vaddq_s64(v23, v20));
    if (v17 == v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v6 = 0;
    v7 = Shape;
  }

  do
  {
    v24 = *v7++;
    if (v24 == 0x8000000000000000)
    {
      ++v6;
    }
  }

  while (v7 != (Shape + 8 * v4));
LABEL_28:
  if (v6 == v2)
  {
    Layout = mlir::MemRefType::getLayout(&v54);
    v59 = v25;
    if (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout))
    {
      NumSymbols = 0;
    }

    else
    {
      Layout = mlir::MemRefType::getLayout(&v54);
      v59 = v33;
      v52[0] = mlir::MemRefLayoutAttrInterface::getAffineMap(&Layout);
      NumSymbols = mlir::AffineMap::getNumSymbols(v52);
    }

    v34 = v55 + 16 * ((*(v55 + 11) >> 23) & 1);
    if ((*(v34 + 19) + *(v34 + 18)) - *(v34 + 18) == NumSymbols)
    {
      return 1;
    }

    v52[0] = "symbol operand count does not equal memref symbol count: expected ";
    v53 = 259;
    mlir::OpState::emitOpError(&v55, v52, &Layout);
    if (Layout)
    {
      LODWORD(v56) = 5;
      *(&v56 + 1) = NumSymbols;
      if (v61 >= v62)
      {
        if (v60 > &v56 || v60 + 24 * v61 <= &v56)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v35 = v60 + 24 * v61;
      v36 = v56;
      *(v35 + 2) = v57;
      *v35 = v36;
      v37 = ++v61;
      if (Layout)
      {
        LODWORD(v56) = 3;
        *(&v56 + 1) = ", got ";
        v57 = 6;
        if (v37 >= v62)
        {
          if (v60 > &v56 || v60 + 24 * v37 <= &v56)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v38 = v60 + 24 * v61;
        v39 = v56;
        *(v38 + 2) = v57;
        *v38 = v39;
        v40 = ++v61;
        if (Layout)
        {
          v41 = *(v55 + 4 * ((*(v55 + 11) >> 23) & 1) + 18);
          v42 = (v41 + *(v55 + 4 * ((*(v55 + 11) >> 23) & 1) + 19)) - v41;
          LODWORD(v56) = 5;
          *(&v56 + 1) = v42;
          if (v40 >= v62)
          {
            if (v60 > &v56 || v60 + 24 * v40 <= &v56)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v43 = v60 + 24 * v61;
          v44 = v56;
          *(v43 + 2) = v57;
          *v43 = v44;
          ++v61;
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v67;
        v47 = __p;
        if (v67 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v67 = v45;
        operator delete(v47);
      }

      v12 = v64;
      if (!v64)
      {
        goto LABEL_75;
      }

      v48 = v65;
      v14 = v64;
      if (v65 == v64)
      {
LABEL_74:
        v65 = v12;
        operator delete(v14);
LABEL_75:
        if (v60 != &v63)
        {
          free(v60);
        }

        return v8;
      }

      do
      {
        v50 = *--v48;
        v49 = v50;
        *v48 = 0;
        if (v50)
        {
          MEMORY[0x259C63150](v49, 0x1000C8077774924);
        }
      }

      while (v48 != v12);
LABEL_73:
      v14 = v64;
      goto LABEL_74;
    }
  }

  else
  {
    v52[0] = "dimension operand count does not equal memref dynamic dimension count";
    v53 = 259;
    mlir::OpState::emitOpError(&v55, v52, &Layout);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v67;
        v29 = __p;
        if (v67 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v67 = v27;
        operator delete(v29);
      }

      v12 = v64;
      if (!v64)
      {
        goto LABEL_75;
      }

      v30 = v65;
      v14 = v64;
      if (v65 == v64)
      {
        goto LABEL_74;
      }

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

      while (v30 != v12);
      goto LABEL_73;
    }
  }

  return v8;
}

BOOL mlir::memref::AllocaOp::verify(mlir::Operation **this)
{
  v77 = *MEMORY[0x277D85DE8];
  if (!mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>(*this))
  {
    v59[0] = "requires an ancestor op with AutomaticAllocationScope trait";
    v60 = 259;
    mlir::OpState::emitOpError(this, v59, &Layout);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v74;
        v12 = __p;
        if (v74 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v74 = v10;
        operator delete(v12);
      }

      v13 = v71;
      if (!v71)
      {
        goto LABEL_92;
      }

      v14 = v72;
      v15 = v71;
      if (v72 == v71)
      {
        goto LABEL_91;
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
      goto LABEL_90;
    }

    return v9;
  }

  v2 = *this;
  v62 = v2;
  v61 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!v61)
  {
    v59[0] = "result must be a memref";
    v60 = 259;
    mlir::OpState::emitOpError(&v62, v59, &Layout);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v74;
        v20 = __p;
        if (v74 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v74 = v18;
        operator delete(v20);
      }

      v13 = v71;
      if (!v71)
      {
        goto LABEL_92;
      }

      v21 = v72;
      v15 = v71;
      if (v72 == v71)
      {
        goto LABEL_91;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x259C63150](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v13);
      goto LABEL_90;
    }

    return v9;
  }

  v3 = *(v2 + 4 * ((*(v2 + 11) >> 23) & 1) + 18);
  Shape = mlir::MemRefType::getShape(&v61);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_45;
  }

  v6 = (v5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v6 >= 3)
  {
    v24 = v6 + 1;
    v25 = (v6 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v8 = (Shape + 8 * v25);
    v26 = (Shape + 16);
    v27 = 0uLL;
    v28 = vnegq_f64(0);
    v29 = v25;
    v30 = 0uLL;
    do
    {
      v27 = vsubq_s64(v27, vceqq_s64(v26[-1], v28));
      v30 = vsubq_s64(v30, vceqq_s64(*v26, v28));
      v26 += 2;
      v29 -= 4;
    }

    while (v29);
    v7 = vaddvq_s64(vaddq_s64(v30, v27));
    if (v24 == v25)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v7 = 0;
    v8 = Shape;
  }

  do
  {
    v31 = *v8++;
    if (v31 == 0x8000000000000000)
    {
      ++v7;
    }
  }

  while (v8 != (Shape + 8 * v5));
LABEL_45:
  if (v7 == v3)
  {
    Layout = mlir::MemRefType::getLayout(&v61);
    v66 = v32;
    if (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout))
    {
      NumSymbols = 0;
    }

    else
    {
      Layout = mlir::MemRefType::getLayout(&v61);
      v66 = v40;
      v59[0] = mlir::MemRefLayoutAttrInterface::getAffineMap(&Layout);
      NumSymbols = mlir::AffineMap::getNumSymbols(v59);
    }

    v41 = v62 + 16 * ((*(v62 + 11) >> 23) & 1);
    if ((*(v41 + 19) + *(v41 + 18)) - *(v41 + 18) == NumSymbols)
    {
      return 1;
    }

    v59[0] = "symbol operand count does not equal memref symbol count: expected ";
    v60 = 259;
    mlir::OpState::emitOpError(&v62, v59, &Layout);
    if (Layout)
    {
      LODWORD(v63) = 5;
      *(&v63 + 1) = NumSymbols;
      if (v68 >= v69)
      {
        if (v67 > &v63 || v67 + 24 * v68 <= &v63)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v42 = v67 + 24 * v68;
      v43 = v63;
      *(v42 + 2) = v64;
      *v42 = v43;
      v44 = ++v68;
      if (Layout)
      {
        LODWORD(v63) = 3;
        *(&v63 + 1) = ", got ";
        v64 = 6;
        if (v44 >= v69)
        {
          if (v67 > &v63 || v67 + 24 * v44 <= &v63)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v67 + 24 * v68;
        v46 = v63;
        *(v45 + 2) = v64;
        *v45 = v46;
        v47 = ++v68;
        if (Layout)
        {
          v48 = *(v62 + 4 * ((*(v62 + 11) >> 23) & 1) + 18);
          v49 = (v48 + *(v62 + 4 * ((*(v62 + 11) >> 23) & 1) + 19)) - v48;
          LODWORD(v63) = 5;
          *(&v63 + 1) = v49;
          if (v47 >= v69)
          {
            if (v67 > &v63 || v67 + 24 * v47 <= &v63)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v50 = v67 + 24 * v68;
          v51 = v63;
          *(v50 + 2) = v64;
          *v50 = v51;
          ++v68;
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v74;
        v54 = __p;
        if (v74 != __p)
        {
          do
          {
            v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v74 = v52;
        operator delete(v54);
      }

      v13 = v71;
      if (!v71)
      {
        goto LABEL_92;
      }

      v55 = v72;
      v15 = v71;
      if (v72 == v71)
      {
LABEL_91:
        v72 = v13;
        operator delete(v15);
LABEL_92:
        if (v67 != &v70)
        {
          free(v67);
        }

        return v9;
      }

      do
      {
        v57 = *--v55;
        v56 = v57;
        *v55 = 0;
        if (v57)
        {
          MEMORY[0x259C63150](v56, 0x1000C8077774924);
        }
      }

      while (v55 != v13);
LABEL_90:
      v15 = v71;
      goto LABEL_91;
    }
  }

  else
  {
    v59[0] = "dimension operand count does not equal memref dynamic dimension count";
    v60 = 259;
    mlir::OpState::emitOpError(&v62, v59, &Layout);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v74;
        v36 = __p;
        if (v74 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v74 = v34;
        operator delete(v36);
      }

      v13 = v71;
      if (!v71)
      {
        goto LABEL_92;
      }

      v37 = v72;
      v15 = v71;
      if (v72 == v71)
      {
        goto LABEL_91;
      }

      do
      {
        v39 = *--v37;
        v38 = v39;
        *v37 = 0;
        if (v39)
        {
          MEMORY[0x259C63150](v38, 0x1000C8077774924);
        }
      }

      while (v37 != v13);
      goto LABEL_90;
    }
  }

  return v9;
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>(uint64_t ParentOp)
{
  while (1)
  {
    v2 = *(ParentOp + 16);
    if (!v2)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v2);
    if (ParentOp)
    {
      {
        mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

BOOL mlir::memref::ReallocOp::verify(mlir::Operation **this)
{
  v99 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v84 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v83 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  Layout = mlir::MemRefType::getLayout(&v84);
  v88 = v3;
  if (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout))
  {
    Layout = mlir::MemRefType::getLayout(&v83);
    v88 = v4;
    if (mlir::MemRefLayoutAttrInterface::isIdentity(&Layout))
    {
      MemorySpace = mlir::MemRefType::getMemorySpace(&v84);
      if (MemorySpace == mlir::MemRefType::getMemorySpace(&v83))
      {
        ElementType = mlir::MemRefType::getElementType(&v84);
        if (ElementType == mlir::MemRefType::getElementType(&v83))
        {
          Shape = mlir::MemRefType::getShape(&v83);
          if (!v8)
          {
            goto LABEL_106;
          }

          v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v9 >= 3)
          {
            v58 = v9 + 1;
            v59 = (v9 + 1) & 0x3FFFFFFFFFFFFFFCLL;
            v11 = (Shape + 8 * v59);
            v60 = (Shape + 16);
            v61 = 0uLL;
            v62 = vnegq_f64(0);
            v63 = v59;
            v64 = 0uLL;
            do
            {
              v61 = vsubq_s64(v61, vceqq_s64(v60[-1], v62));
              v64 = vsubq_s64(v64, vceqq_s64(*v60, v62));
              v60 += 2;
              v63 -= 4;
            }

            while (v63);
            v10 = vaddvq_s64(vaddq_s64(v64, v61));
            if (v58 == v59)
            {
              goto LABEL_103;
            }
          }

          else
          {
            v10 = 0;
            v11 = Shape;
          }

          do
          {
            v65 = *v11++;
            if (v65 == 0x8000000000000000)
            {
              ++v10;
            }
          }

          while (v11 != (Shape + 8 * v8));
LABEL_103:
          if (v10 && (*(*this + 17) == 1 || !*(*(*this + 9) + 56)))
          {
            v71 = "missing dimension operand for result type ";
LABEL_120:
            v81[0] = v71;
            v82 = 259;
            mlir::OpState::emitError(this, v81, &Layout);
            mlir::InFlightDiagnostic::append<mlir::Type const&>(&Layout, &v83);
            v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&Layout);
            return v14;
          }

LABEL_106:
          v66 = mlir::MemRefType::getShape(&v83);
          if (!v67)
          {
LABEL_117:
            if (*(*this + 17) != 1 && *(*(*this + 9) + 56))
            {
              v71 = "unnecessary dimension operand for result type ";
              goto LABEL_120;
            }

            return 1;
          }

          v68 = (v67 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          if (v68 >= 3)
          {
            v72 = v68 + 1;
            v73 = (v68 + 1) & 0x3FFFFFFFFFFFFFFCLL;
            v70 = (v66 + 8 * v73);
            v74 = (v66 + 16);
            v75 = 0uLL;
            v76 = vnegq_f64(0);
            v77 = v73;
            v78 = 0uLL;
            do
            {
              v75 = vsubq_s64(v75, vceqq_s64(v74[-1], v76));
              v78 = vsubq_s64(v78, vceqq_s64(*v74, v76));
              v74 += 2;
              v77 -= 4;
            }

            while (v77);
            v69 = vaddvq_s64(vaddq_s64(v78, v75));
            if (v72 == v73)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v69 = 0;
            v70 = v66;
          }

          do
          {
            v79 = *v70++;
            if (v79 == 0x8000000000000000)
            {
              ++v69;
            }
          }

          while (v70 != (v66 + 8 * v67));
LABEL_116:
          if (v69)
          {
            return 1;
          }

          goto LABEL_117;
        }

        v81[0] = "different element types specified for source memref type ";
        v82 = 259;
        mlir::OpState::emitError(this, v81, &Layout);
        if (Layout)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v85, v84);
          if (v90 >= v91)
          {
            if (v89 > &v85 || v89 + 24 * v90 <= &v85)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v44 = v89 + 24 * v90;
          v45 = v85;
          *(v44 + 2) = v86;
          *v44 = v45;
          v46 = ++v90;
          if (Layout)
          {
            LODWORD(v85) = 3;
            *(&v85 + 1) = " and result memref type ";
            v86 = 24;
            if (v46 >= v91)
            {
              if (v89 > &v85 || v89 + 24 * v46 <= &v85)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v47 = v89 + 24 * v90;
            v48 = v85;
            *(v47 + 2) = v86;
            *v47 = v48;
            ++v90;
            if (Layout)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v85, v83);
              if (v90 >= v91)
              {
                if (v89 > &v85 || v89 + 24 * v90 <= &v85)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v49 = v89 + 24 * v90;
              v50 = v85;
              *(v49 + 2) = v86;
              *v49 = v50;
              ++v90;
            }
          }
        }

        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
        if (Layout)
        {
          mlir::InFlightDiagnostic::report(&Layout);
        }

        if (v98 == 1)
        {
          if (v97 != &v98)
          {
            free(v97);
          }

          v51 = __p;
          if (__p)
          {
            v52 = v96;
            v53 = __p;
            if (v96 != __p)
            {
              do
              {
                v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
              }

              while (v52 != v51);
              v53 = __p;
            }

            v96 = v51;
            operator delete(v53);
          }

          v18 = v93;
          if (!v93)
          {
            goto LABEL_94;
          }

          v54 = v94;
          v20 = v93;
          if (v94 == v93)
          {
LABEL_93:
            v94 = v18;
            operator delete(v20);
LABEL_94:
            if (v89 != &v92)
            {
              free(v89);
            }

            return v14;
          }

          do
          {
            v56 = *--v54;
            v55 = v56;
            *v54 = 0;
            if (v56)
            {
              MEMORY[0x259C63150](v55, 0x1000C8077774924);
            }
          }

          while (v54 != v18);
LABEL_92:
          v20 = v93;
          goto LABEL_93;
        }
      }

      else
      {
        v81[0] = "different memory spaces specified for source memref type ";
        v82 = 259;
        mlir::OpState::emitError(this, v81, &Layout);
        if (Layout)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v85, v84);
          if (v90 >= v91)
          {
            if (v89 > &v85 || v89 + 24 * v90 <= &v85)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v31 = v89 + 24 * v90;
          v32 = v85;
          *(v31 + 2) = v86;
          *v31 = v32;
          v33 = ++v90;
          if (Layout)
          {
            LODWORD(v85) = 3;
            *(&v85 + 1) = " and result memref type ";
            v86 = 24;
            if (v33 >= v91)
            {
              if (v89 > &v85 || v89 + 24 * v33 <= &v85)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v34 = v89 + 24 * v90;
            v35 = v85;
            *(v34 + 2) = v86;
            *v34 = v35;
            ++v90;
            if (Layout)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v85, v83);
              if (v90 >= v91)
              {
                if (v89 > &v85 || v89 + 24 * v90 <= &v85)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v36 = v89 + 24 * v90;
              v37 = v85;
              *(v36 + 2) = v86;
              *v36 = v37;
              ++v90;
            }
          }
        }

        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
        if (Layout)
        {
          mlir::InFlightDiagnostic::report(&Layout);
        }

        if (v98 == 1)
        {
          if (v97 != &v98)
          {
            free(v97);
          }

          v38 = __p;
          if (__p)
          {
            v39 = v96;
            v40 = __p;
            if (v96 != __p)
            {
              do
              {
                v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
              }

              while (v39 != v38);
              v40 = __p;
            }

            v96 = v38;
            operator delete(v40);
          }

          v18 = v93;
          if (!v93)
          {
            goto LABEL_94;
          }

          v41 = v94;
          v20 = v93;
          if (v94 == v93)
          {
            goto LABEL_93;
          }

          do
          {
            v43 = *--v41;
            v42 = v43;
            *v41 = 0;
            if (v43)
            {
              MEMORY[0x259C63150](v42, 0x1000C8077774924);
            }
          }

          while (v41 != v18);
          goto LABEL_92;
        }
      }
    }

    else
    {
      v81[0] = "unsupported layout for result memref type ";
      v82 = 259;
      mlir::OpState::emitError(this, v81, &Layout);
      if (Layout)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v85, v83);
        if (v90 >= v91)
        {
          if (v89 > &v85 || v89 + 24 * v90 <= &v85)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v89 + 24 * v90;
        v24 = v85;
        *(v23 + 2) = v86;
        *v23 = v24;
        ++v90;
      }

      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
      if (Layout)
      {
        mlir::InFlightDiagnostic::report(&Layout);
      }

      if (v98 == 1)
      {
        if (v97 != &v98)
        {
          free(v97);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v96;
          v27 = __p;
          if (v96 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v96 = v25;
          operator delete(v27);
        }

        v18 = v93;
        if (!v93)
        {
          goto LABEL_94;
        }

        v28 = v94;
        v20 = v93;
        if (v94 == v93)
        {
          goto LABEL_93;
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

        while (v28 != v18);
        goto LABEL_92;
      }
    }
  }

  else
  {
    v81[0] = "unsupported layout for source memref type ";
    v82 = 259;
    mlir::OpState::emitError(this, v81, &Layout);
    if (Layout)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v85, v84);
      if (v90 >= v91)
      {
        if (v89 > &v85 || v89 + 24 * v90 <= &v85)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v89 + 24 * v90;
      v13 = v85;
      *(v12 + 2) = v86;
      *v12 = v13;
      ++v90;
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Layout);
    if (Layout)
    {
      mlir::InFlightDiagnostic::report(&Layout);
    }

    if (v98 == 1)
    {
      if (v97 != &v98)
      {
        free(v97);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v96;
        v17 = __p;
        if (v96 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v96 = v15;
        operator delete(v17);
      }

      v18 = v93;
      if (!v93)
      {
        goto LABEL_94;
      }

      v19 = v94;
      v20 = v93;
      if (v94 == v93)
      {
        goto LABEL_93;
      }

      do
      {
        v22 = *--v19;
        v21 = v22;
        *v19 = 0;
        if (v22)
        {
          MEMORY[0x259C63150](v21, 0x1000C8077774924);
        }
      }

      while (v19 != v18);
      goto LABEL_92;
    }
  }

  return v14;
}

uint64_t mlir::memref::AllocaScopeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
    v6 = *(*this + 9);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
    v6 = *(*this + 9);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = v7[4];
  if ((v7[3] - v8) > 4)
  {
    *(v8 + 4) = 40;
    *v8 = 540945696;
    v7[4] += 5;
  }

  else
  {
    llvm::raw_ostream::write(v7, " -> (", 5uLL);
  }

  v9 = *(*this + 9);
  v10 = *this - 16;
  if (!v9)
  {
    v10 = 0;
  }

  v29[0] = v10;
  v29[1] = v9;
  mlir::ResultRange::getTypes(v29, &AttrDictionary);
  v11 = v27;
  v12 = v28;
  if (v27 != v28)
  {
    v13 = AttrDictionary;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v27);
    (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    for (i = v11 + 1; v12 != i; ++i)
    {
      v24 = (*(*a2 + 16))(a2);
      v25 = v24[4];
      if (v24[3] - v25 <= 1uLL)
      {
        llvm::raw_ostream::write(v24, ", ", 2uLL);
      }

      else
      {
        *v25 = 8236;
        v24[4] += 2;
      }

      v23 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, i);
      (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = v16[4];
  if (v16[3] == v17)
  {
    llvm::raw_ostream::write(v16, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++v16[4];
  }

LABEL_15:
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, v6 != 0, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return (*(*a2 + 192))(a2, Value, v21, 0, 0);
}

__n128 mlir::memref::AllocaScopeOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(*a1 + 36);
    if (v4)
    {
      v5 = *a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    v10.n128_u64[0] = 0;
    mlir::ValueRange::ValueRange(&v10.n128_u64[1], v5, v4);
    v6 = *(a3 + 8);
    v7 = *a3;
    if (v6 >= *(a3 + 12))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    mlir::ValueRange::ValueRange(&v10.n128_u64[1], 0, 0);
    v6 = *(a3 + 8);
    v7 = *a3;
    if (v6 >= *(a3 + 12))
    {
LABEL_9:
      if (v7 <= &v10 && v7 + 24 * v6 > &v10)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v8 = (v7 + 24 * *(a3 + 8));
  result = v10;
  v8[1].n128_u64[0] = v11;
  *v8 = result;
  ++*(a3 + 8);
  return result;
}

BOOL mlir::memref::AssumeAlignmentOp::verify(mlir::Operation **this)
{
  v25 = *MEMORY[0x277D85DE8];
  v13[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  mlir::IntegerAttr::getValue(v13, &v15);
  if (v16 > 0x40)
  {
    v11 = *v15;
    MEMORY[0x259C63150]();
    if ((v11 ^ (v11 - 1)) <= v11 - 1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if ((v15 ^ (v15 - 1)) > v15 - 1)
  {
    return 1;
  }

LABEL_3:
  v13[0] = "alignment must be power of 2";
  v14 = 259;
  mlir::OpState::emitOpError(this, v13, &v15);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v15);
  if (v15)
  {
    mlir::InFlightDiagnostic::report(&v15);
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v22;
      v5 = __p;
      if (v22 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v22 = v3;
      operator delete(v5);
    }

    v6 = v19;
    if (v19)
    {
      v7 = v20;
      v8 = v19;
      if (v20 != v19)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v19;
      }

      v20 = v6;
      operator delete(v8);
    }

    if (v17 != &v18)
    {
      free(v17);
    }
  }

  return v2;
}

uint64_t *mlir::memref::AssumeAlignmentOp::getAlignment(mlir::memref::AssumeAlignmentOp *this)
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

uint64_t mlir::memref::CastOp::canFoldIntoConsumerOp(uint64_t a1)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v1 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v1 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v1 = 0;
  }

  v30 = v1;
  v2 = *(a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v2 = 0;
  }

  v29 = v2;
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  ElementType = mlir::MemRefType::getElementType(&v30);
  if (ElementType != mlir::MemRefType::getElementType(&v29))
  {
    return 0;
  }

  mlir::MemRefType::getShape(&v30);
  v6 = v5;
  mlir::MemRefType::getShape(&v29);
  if (v6 != v7)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  v34 = v36;
  v35 = 0x400000000;
  v31 = v33;
  v32 = 0x400000000;
  if (mlir::getStridesAndOffset(v30, &v34, &v28) & 1) != 0 && (mlir::getStridesAndOffset(v29, &v31, &v27))
  {
    Shape = mlir::MemRefType::getShape(&v30);
    v10 = v9;
    v11 = mlir::MemRefType::getShape(&v29);
    if (v10 && v12)
    {
      v13 = 8 * v12 - 8;
      v14 = 8 * v10 - 8;
      while (*Shape != 0x8000000000000000 || *v11 == 0x8000000000000000)
      {
        if (v14)
        {
          ++Shape;
          ++v11;
          v16 = v13;
          v13 -= 8;
          v14 -= 8;
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
LABEL_23:
      if (v28 != 0x8000000000000000 || v27 == 0x8000000000000000)
      {
        result = 1;
        if (v35 && v32)
        {
          v19 = v34;
          v20 = v31;
          v21 = 8 * v32 - 8;
          v22 = 8 * v35 - 8;
          do
          {
            v23 = *v19 != 0x8000000000000000 || *v20 == 0x8000000000000000;
            result = v23;
            if (!v23)
            {
              break;
            }

            result = 1;
            if (!v22)
            {
              break;
            }

            ++v19;
            ++v20;
            v24 = v21;
            v21 -= 8;
            v22 -= 8;
          }

          while (v24);
        }

        goto LABEL_45;
      }
    }
  }

  result = 0;
LABEL_45:
  if (v31 != v33)
  {
    v25 = result;
    free(v31);
    result = v25;
  }

  if (v34 != v36)
  {
    v26 = result;
    free(v34);
    return v26;
  }

  return result;
}

BOOL mlir::memref::CastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v49[4] = *MEMORY[0x277D85DE8];
  if (a2 == 1 && a4 == 1)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v43 = v9;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v42 = v10;
    v11 = *(*v7 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v41 = v12;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v40 = v13;
    if (v9)
    {
      if (v10)
      {
        ElementType = mlir::MemRefType::getElementType(&v43);
        if (ElementType == mlir::MemRefType::getElementType(&v42))
        {
          Layout = mlir::MemRefType::getLayout(&v43);
          if (Layout == mlir::MemRefType::getLayout(&v42))
          {
            goto LABEL_19;
          }

          v38 = 0;
          v39 = 0;
          v47 = v49;
          v48 = 0x400000000;
          v44 = v46;
          v45 = 0x400000000;
          if ((mlir::getStridesAndOffset(v43, &v47, &v39) & 1) != 0 && (mlir::getStridesAndOffset(v42, &v44, &v38) & 1) != 0 && v48 == v45 && (v39 == 0x8000000000000000 || v38 == 0x8000000000000000 || v39 == v38))
          {
            v29 = v47;
            if (v48)
            {
              v30 = 8 * v48;
              v31 = v44;
              v32 = v47;
              while (*v32 == 0x8000000000000000 || *v31 == 0x8000000000000000 || *v32 == *v31)
              {
                ++v32;
                ++v31;
                v30 -= 8;
                if (!v30)
                {
                  goto LABEL_67;
                }
              }

              v34 = 0;
            }

            else
            {
LABEL_67:
              v34 = 1;
            }

            if (v44 != v46)
            {
              free(v44);
              v29 = v47;
            }

            if (v29 != v49)
            {
              free(v29);
            }

            if (v34)
            {
LABEL_19:
              MemorySpace = mlir::MemRefType::getMemorySpace(&v43);
              if (MemorySpace == mlir::MemRefType::getMemorySpace(&v42))
              {
                mlir::MemRefType::getShape(&v43);
                v18 = v17;
                mlir::MemRefType::getShape(&v42);
                if (v18 == v19)
                {
                  mlir::MemRefType::getShape(&v43);
                  if (!v20)
                  {
                    return 1;
                  }

                  v21 = 0;
                  v22 = 8 * v20;
                  while (1)
                  {
                    v23 = *(mlir::MemRefType::getShape(&v43) + v21);
                    Shape = mlir::MemRefType::getShape(&v42);
                    if (v23 != 0x8000000000000000)
                    {
                      v25 = *(Shape + v21);
                      if (v25 != 0x8000000000000000 && v23 != v25)
                      {
                        break;
                      }
                    }

                    v21 += 8;
                    result = 1;
                    if (v22 == v21)
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v44 != v46)
            {
              free(v44);
            }

            if (v47 != v49)
            {
              free(v47);
            }
          }
        }

        return 0;
      }

      if (v13)
      {
        v27 = v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return 0;
      }

      v28 = mlir::MemRefType::getElementType(&v43);
      if (v42)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!v12)
      {
        return 0;
      }

      if (v10)
      {
        if (v13)
        {
          return 0;
        }
      }

      else
      {
        if (v13)
        {
          v35 = v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          return 0;
        }
      }

      v28 = mlir::UnrankedMemRefType::getElementType(&v41);
      if (v42)
      {
LABEL_39:
        if (v28 != mlir::MemRefType::getElementType(&v42))
        {
          return 0;
        }

        goto LABEL_60;
      }
    }

    if (v28 != mlir::UnrankedMemRefType::getElementType(&v40))
    {
      return 0;
    }

LABEL_60:
    if (v43)
    {
      v36 = mlir::MemRefType::getMemorySpace(&v43);
      if (v42)
      {
LABEL_62:
        v37 = mlir::MemRefType::getMemorySpace(&v42);
        return v36 == v37;
      }
    }

    else
    {
      v36 = mlir::UnrankedMemRefType::getMemorySpace(&v41);
      if (v42)
      {
        goto LABEL_62;
      }
    }

    v37 = mlir::UnrankedMemRefType::getMemorySpace(&v40);
    return v36 == v37;
  }

  return result;
}

uint64_t mlir::memref::DimOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

void mlir::memref::DimOp::build(mlir::IndexType **a1, uint64_t *a2, uint64_t a3, mlir::OperationState *a4)
{
  v8 = a4;
  v7 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, *a2, &v8);
  mlir::memref::DimOp::build(a1, a2, a3, v7 - 16);
}

void mlir::memref::DimOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::memref::DimOp::getSpeculatability(mlir::memref::DimOp *this)
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(*this + 72) + 56) | 4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v4 = 0;
  }

  v8 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = ConstantIntValue;
  mlir::MemRefType::getShape(&v8);
  return v6 > v5;
}

void mlir::memref::SubViewOp::getDroppedDims(mlir::memref::SubViewOp *this)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getMixedSizes(this);
}

void computeMemRefRankReductionMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80[6] = *MEMORY[0x277D85DE8];
  v73 = a3;
  v74 = a2;
  mlir::MemRefType::getShape(&v74);
  if (v8 > 0x39)
  {
    operator new();
  }

  v9 = (v8 << 58) | 1;
  mlir::MemRefType::getShape(&v74);
  v11 = v10;
  mlir::MemRefType::getShape(&v73);
  if (v11 == v12)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    v13 = 0;
    v14 = 8 * a5;
    do
    {
      v15 = *(a4 + 8 * v13);
      if ((v15 & 4) == 0)
      {
        v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v16)
        {
          v78 = v16;
          if (mlir::IntegerAttr::getInt(&v78) == 1)
          {
            if (v9)
            {
              v9 = v9 & 0xFC00000000000001 | (2 * (((1 << v13) | (v9 >> 1)) & ~(-1 << (v9 >> 58))));
            }

            else
            {
              *(*v9 + 8 * (v13 >> 6)) |= 1 << v13;
            }
          }
        }
      }

      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  if (v9)
  {
    v22 = vcnt_s8(((v9 >> 1) & ~(-1 << (v9 >> 58))));
    v22.i16[0] = vaddlv_u8(v22);
    v23 = v22.u32[0];
    goto LABEL_26;
  }

  v17 = *(v9 + 8);
  if (!v17)
  {
    v23 = 0;
    goto LABEL_26;
  }

  v18 = *v9;
  v19 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v19 >= 7)
  {
    v24 = v19 + 1;
    v25 = (v19 + 1) & 0x3FFFFFFFFFFFFFF8;
    v21 = &v18[v25];
    v26 = &v18[4];
    v27 = 0uLL;
    v28 = v25;
    v29 = 0uLL;
    do
    {
      v30 = v26[-2];
      v31 = v26[-1];
      v32 = *v26;
      v33 = v26[1];
      v26 += 4;
      v27 = vaddq_s32(v27, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v30)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v31))))));
      v29 = vaddq_s32(v29, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v32)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v33))))));
      v28 -= 8;
    }

    while (v28);
    v20 = vaddvq_s32(vaddq_s32(v29, v27));
    if (v24 == v25)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = 0;
    v21 = *v9;
  }

  v34 = &v18[v17];
  do
  {
    v35 = *v21++;
    v36 = vcnt_s8(v35);
    v36.i16[0] = vaddlv_u8(v36);
    v20 += v36.i32[0];
  }

  while (v21 != v34);
LABEL_25:
  v23 = v20;
LABEL_26:
  mlir::MemRefType::getShape(&v73);
  v38 = v37 + v23;
  mlir::MemRefType::getShape(&v74);
  if (v38 == v39)
  {
LABEL_27:
    *a1 = v9;
    *(a1 + 8) = 1;
    return;
  }

  v78 = v80;
  v79 = 0x600000000;
  v75 = v77;
  v76 = 0x600000000;
  v71 = 0;
  v72 = 0;
  if (mlir::getStridesAndOffset(v74, &v78, &v72) & 1) != 0 && (mlir::getStridesAndOffset(v73, &v75, &v71))
  {
    v70[0] = 0;
    v70[1] = 0;
    v69 = v70;
    if (v79)
    {
      operator new();
    }

    v68[0] = 0;
    v68[1] = 0;
    v67 = v68;
    if (v76)
    {
      operator new();
    }

    if (v9)
    {
      v41 = v9 >> 58;
      if (!(v9 >> 58))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v41 = *(v9 + 64);
      if (!*(v9 + 64))
      {
LABEL_55:
        if (v9)
        {
          v49 = vcnt_s8(((v9 >> 1) & ~(-1 << (v9 >> 58))));
          v49.i16[0] = vaddlv_u8(v49);
          v50 = v49.u32[0];
          v44 = a1;
          goto LABEL_67;
        }

        v43 = *(v9 + 8);
        v44 = a1;
        if (!v43)
        {
          v50 = 0;
          goto LABEL_67;
        }

        v45 = *v9;
        v46 = (v43 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v46 >= 7)
        {
          v51 = v46 + 1;
          v52 = (v46 + 1) & 0x3FFFFFFFFFFFFFF8;
          v48 = &v45[v52];
          v53 = &v45[4];
          v54 = 0uLL;
          v55 = v52;
          v56 = 0uLL;
          do
          {
            v57 = v53[-2];
            v58 = v53[-1];
            v59 = *v53;
            v60 = v53[1];
            v53 += 4;
            v54 = vaddq_s32(v54, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v57)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v58))))));
            v56 = vaddq_s32(v56, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v59)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v60))))));
            v55 -= 8;
          }

          while (v55);
          v47 = vaddvq_s32(vaddq_s32(v56, v54));
          if (v51 == v52)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v47 = 0;
          v48 = *v9;
        }

        v61 = &v45[v43];
        do
        {
          v62 = *v48++;
          v63 = vcnt_s8(v62);
          v63.i16[0] = vaddlv_u8(v63);
          v47 += v63.i32[0];
        }

        while (v48 != v61);
LABEL_66:
        v50 = v47;
LABEL_67:
        mlir::MemRefType::getShape(&v73);
        v65 = v64 + v50;
        mlir::MemRefType::getShape(&v74);
        if (v65 == v66)
        {
          *v44 = v9;
          v9 = 1;
          *(v44 + 8) = 1;
        }

        else
        {
          *v44 = 0;
          *(v44 + 8) = 0;
        }

        std::__tree<long long>::destroy(&v67, v68[0]);
        std::__tree<long long>::destroy(&v69, v70[0]);
        v40 = v75;
        if (v75 == v77)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v42 = 0;
    while (1)
    {
      if (v9)
      {
        if (((v9 >> 1) & ~(-1 << (v9 >> 58)) & (1 << v42)) != 0)
        {
LABEL_54:
          operator new();
        }
      }

      else if ((*(*v9 + 8 * (v42 >> 6)) & (1 << v42)) != 0)
      {
        goto LABEL_54;
      }

      if (++v42 == v41)
      {
        goto LABEL_55;
      }
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v40 = v75;
  if (v75 != v77)
  {
LABEL_34:
    free(v40);
  }

LABEL_35:
  if (v78 != v80)
  {
    free(v78);
  }

  if ((v9 & 1) == 0 && v9)
  {
    if (*v9 != v9 + 16)
    {
      free(*v9);
    }

    MEMORY[0x259C63180](v9, 0x1080C40EF38A13ELL);
  }
}

mlir::IndexType **mlir::memref::DimOp::fold(uint64_t a1, uint64_t a2)
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

  v23 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v3 = 0;
  }

  v22 = v3;
  if (!v3)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v23);
  if (Int < 0)
  {
    return 0;
  }

  v6 = Int;
  mlir::MemRefType::getShape(&v22);
  if (v6 >= v7)
  {
    return 0;
  }

  v8 = mlir::IntegerAttr::getInt(&v23);
  if (*(mlir::MemRefType::getShape(&v22) + 8 * v8) != 0x8000000000000000)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    Shape = mlir::MemRefType::getShape(&v22);
    v11 = mlir::IntegerAttr::getInt(&v23);
    return (mlir::Builder::getIndexAttr(&Context, *(Shape + 8 * v11)) & 0xFFFFFFFFFFFFFFFBLL);
  }

  mlir::IntegerAttr::getValue(&v23, &Context);
  if (v21 > 0x40)
  {
    v9 = *Context;
    MEMORY[0x259C63150]();
  }

  else
  {
    v9 = Context;
  }

  Context = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  if (DefiningOp)
  {
    v14 = *(*(DefiningOp + 48) + 16);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id)
    {
      mlir::memref::DimOp::fold();
      return Context;
    }

    if (v14 == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      mlir::memref::DimOp::fold();
      return Context;
    }

    v15 = v14 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
    if (v14 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id)
    {
      v16 = DefiningOp;
    }

    else
    {
      v16 = 0;
    }

    Context = v16;
    if (v15)
    {
      mlir::memref::SubViewOp::getDroppedDims(&Context);
    }
  }

  Context = llvm::dyn_cast_or_null<mlir::OffsetSizeAndStrideOpInterface,mlir::Operation>(DefiningOp);
  v21 = v17;
  if (Context)
  {
    return (mlir::OffsetSizeAndStrideOpInterface::getDynamicSize(&Context, v9) | 4);
  }

  mlir::memref::foldMemRefCast();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if (*(*a1 + 36))
  {
    v19 = *a1 - 16;
  }

  else
  {
    v19 = 0;
  }

  return (mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0) | 4);
}

uint64_t llvm::dyn_cast_or_null<mlir::OffsetSizeAndStrideOpInterface,mlir::Operation>(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  return a1;
}

uint64_t mlir::memref::DmaStartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a6;
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  v22 = a9;
  v23 = a10;
  mlir::ValueRange::ValueRange(&v24, &v22, 2uLL);
  mlir::OperationState::addOperands(a2, v24, v25);
  result = mlir::OperationState::addOperands(a2, a11, a12);
  if (a13)
  {
    v22 = a13;
    v23 = a14;
    mlir::ValueRange::ValueRange(&v24, &v22, 2uLL);
    return mlir::OperationState::addOperands(a2, v24, v25);
  }

  return result;
}

uint64_t mlir::memref::DmaStartOp::print(mlir::memref::DmaStartOp *this, mlir::OpAsmPrinter *a2)
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
  }

  if ((*(*this + 44) & 0x800000) != 0)
  {
    v8 = *(*this + 72);
  }

  else
  {
    v8 = 0;
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  v10 = v9;
  v11 = (*(*a2 + 16))(a2);
  if (v10)
  {
    v12 = v11;
    (*(*a2 + 160))(a2, *(v8 + 56));
    v13 = v10 - 1;
    if (v13)
    {
      v67 = (v8 + 88);
      do
      {
        v69 = v12[4];
        if (v12[3] - v69 > 1uLL)
        {
          *v69 = 8236;
          v12[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        v68 = *v67;
        v67 += 4;
        (*(*a2 + 160))(a2, v68);
        --v13;
      }

      while (v13);
    }
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if ((v14[3] - v15) > 2)
  {
    *(v15 + 2) = 32;
    *v15 = 11357;
    v14[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v14, "], ", 3uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  (*(*a2 + 160))(a2, *(*(*this + 72) + 32 * (v16 + 1) + 24));
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 91);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 91;
  }

  if ((*(*this + 44) & 0x800000) != 0)
  {
    v19 = *(*this + 72);
  }

  else
  {
    v19 = 0;
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  v21 = v20;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  v23 = v22;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v24 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  v26 = v25;
  v27 = v25 + v23 - v21;
  v28 = (*(*a2 + 16))(a2);
  if (v27)
  {
    v29 = v28;
    v30 = v19 + 32 * v21;
    (*(*a2 + 160))(a2, *(v30 + 88));
    if (v27 != 1)
    {
      v70 = ~v21 + v23 + v26;
      v71 = (v30 + 120);
      do
      {
        v73 = v29[4];
        if (v29[3] - v73 > 1uLL)
        {
          *v73 = 8236;
          v29[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v29, ", ", 2uLL);
        }

        v72 = *v71;
        v71 += 4;
        (*(*a2 + 160))(a2, v72);
        --v70;
      }

      while (v70);
    }
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = v31[4];
  if ((v31[3] - v32) > 2)
  {
    *(v32 + 2) = 32;
    *v32 = 11357;
    v31[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v31, "], ", 3uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  v34 = v33;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v35 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  (*(*a2 + 160))(a2, *(*(*this + 72) + 32 * (v34 + v36 + 2) + 24));
  v37 = (*(*a2 + 16))(a2);
  v38 = v37[4];
  if (v37[3] - v38 > 1uLL)
  {
    *v38 = 8236;
    v37[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v37, ", ", 2uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  v40 = v39;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v41 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  (*(*a2 + 160))(a2, *(*(*this + 72) + 32 * (v40 + v42 + 3) + 24));
  v43 = (*(*a2 + 16))(a2);
  v44 = *(v43 + 4);
  if (v44 >= *(v43 + 3))
  {
    llvm::raw_ostream::write(v43, 91);
  }

  else
  {
    *(v43 + 4) = v44 + 1;
    *v44 = 91;
  }

  TagIndices = mlir::memref::DmaStartOp::getTagIndices(this);
  v47 = v46;
  v48 = (*(*a2 + 16))(a2);
  if (v47)
  {
    v49 = v48;
    (*(*a2 + 160))(a2, *(TagIndices + 24));
    v50 = v47 - 1;
    if (v50)
    {
      v74 = (TagIndices + 56);
      do
      {
        v76 = v49[4];
        if (v49[3] - v76 > 1uLL)
        {
          *v76 = 8236;
          v49[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v49, ", ", 2uLL);
        }

        v75 = *v74;
        v74 += 4;
        (*(*a2 + 160))(a2, v75);
        --v50;
      }

      while (v50);
    }
  }

  v51 = (*(*a2 + 16))(a2);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 93);
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_38;
    }
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 93;
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_38;
    }
  }

  v77 = (*(*a2 + 16))(a2);
  v78 = v77[4];
  if (v77[3] - v78 > 1uLL)
  {
    *v78 = 8236;
    v77[4] += 2;
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_65;
    }
  }

  else
  {
    llvm::raw_ostream::write(v77, ", ", 2uLL);
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
LABEL_65:
      v79 = 0;
      goto LABEL_70;
    }
  }

  v80 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v81 = (*(v80 + 68) - 2);
  }

  else
  {
    v81 = 4294967294;
  }

  v79 = *(*(v80 + 72) + 32 * v81 + 24);
LABEL_70:
  (*(*a2 + 160))(a2, v79);
  v82 = (*(*a2 + 16))(a2);
  v83 = v82[4];
  if (v82[3] - v83 > 1uLL)
  {
    *v83 = 8236;
    v82[4] += 2;
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_72;
    }

LABEL_74:
    v85 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v86 = (*(v85 + 68) - 1);
    }

    else
    {
      v86 = 0xFFFFFFFFLL;
    }

    v84 = *(*(v85 + 72) + 32 * v86 + 24);
    goto LABEL_77;
  }

  llvm::raw_ostream::write(v82, ", ", 2uLL);
  if (mlir::memref::DmaStartOp::isStrided(this))
  {
    goto LABEL_74;
  }

LABEL_72:
  v84 = 0;
LABEL_77:
  (*(*a2 + 160))(a2, v84);
LABEL_38:
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v54, 0, 0);
  v55 = (*(*a2 + 16))(a2);
  v56 = v55[4];
  if ((v55[3] - v56) > 2)
  {
    *(v56 + 2) = 32;
    *v56 = 14880;
    v55[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v55, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v57 = (*(*a2 + 16))(a2);
  v58 = v57[4];
  if (v57[3] - v58 > 1uLL)
  {
    *v58 = 8236;
    v57[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v57, ", ", 2uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 32 * (v59 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v60 = (*(*a2 + 16))(a2);
  v61 = v60[4];
  if (v60[3] - v61 > 1uLL)
  {
    *v61 = 8236;
    v60[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v60, ", ", 2uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  v63 = v62;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v64 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&AttrDictionary);
  return (*(*a2 + 32))(a2, *(*(*(*this + 72) + 32 * (v63 + v65 + 3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::DmaStartOp::getDstIndices(mlir::memref::DmaStartOp *this)
{
  if ((*(*this + 44) & 0x800000) != 0)
  {
    v2 = *(*this + 72);
  }

  else
  {
    v2 = 0;
  }

  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  v4 = v3;
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  v7 = *(*(*(*this + 72) + 32 * (v5 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  return v2 + 32 * v4 + 64;
}

uint64_t mlir::memref::DmaStartOp::getNumElements(mlir::memref::DmaStartOp *this)
{
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  v3 = v2;
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  v7 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  return *(*(*this + 72) + 32 * (v3 + v5 + 2) + 24);
}

uint64_t mlir::memref::DmaStartOp::getTagMemRef(mlir::memref::DmaStartOp *this)
{
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  v3 = v2;
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  v7 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v7);
  return *(*(*this + 72) + 32 * (v3 + v5 + 3) + 24);
}

uint64_t mlir::memref::DmaStartOp::getTagIndices(mlir::memref::DmaStartOp *this)
{
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v13);
  v3 = v2;
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v13);
  v13 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v13);
  if ((*(*this + 44) & 0x800000) != 0)
  {
    v6 = *(*this + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = (v3 + v5 + 4);
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v13);
  v9 = v8;
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v13);
  v13 = *(*(*(*this + 72) + 32 * (v10 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v13);
  v13 = *(*(*(*this + 72) + 32 * (v9 + v11 + 3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v13);
  return v6 + 32 * v7;
}

BOOL mlir::memref::DmaStartOp::parse(mlir::memref::DmaStartOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v43[16] = *MEMORY[0x277D85DE8];
  memset(v27, 0, 24);
  v41 = v43;
  v42 = 0x400000000;
  memset(v26, 0, 24);
  v38 = v40;
  v39 = 0x400000000;
  memset(v25, 0, 24);
  memset(v24, 0, 24);
  v35 = v37;
  v36 = 0x400000000;
  v32 = v34;
  v33 = 0x200000000;
  v29 = v31;
  v30 = 0x300000000;
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  if (((*(*this + 704))(this, v27, 1) & 1) == 0 || ((*(*this + 720))(this, &v41, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 704))(this, v26, 1) & 1) == 0 || ((*(*this + 720))(this, &v38, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 704))(this, v25, 1) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || ((*(*this + 704))(this, v24, 1) & 1) == 0 || ((*(*this + 720))(this, &v35, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || (mlir::OpAsmParser::parseTrailingOperandList(this, &v32, 0) & 1) == 0)
  {
    goto LABEL_37;
  }

  v8 = v33;
  if ((v33 | 2) != 2)
  {
    v18 = (*(*this + 16))(this);
    v19 = "expected two stride related operands";
LABEL_51:
    v22 = v19;
    v23 = 259;
    (*(*this + 24))(v28, this, v18, &v22);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v28);
    goto LABEL_38;
  }

  if (((*(*this + 584))(this, &v29) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v30 != 3)
  {
    v18 = (*(*this + 16))(this);
    v19 = "fewer/more types expected";
    goto LABEL_51;
  }

  v20 = v8;
  if (((*(*this + 728))(this, v27, *v29, a2 + 16) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v42)
  {
    v9 = v41;
    v10 = 32 * v42;
    while (((*(*this + 728))(this, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_37;
  }

LABEL_20:
  if (((*(*this + 728))(this, v26, *(v29 + 1), a2 + 16) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v39)
  {
    v11 = v38;
    v12 = 32 * v39;
    while (((*(*this + 728))(this, v11, IndexType, a2 + 16) & 1) != 0)
    {
      v11 += 32;
      v12 -= 32;
      if (!v12)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_37;
  }

LABEL_25:
  if (((*(*this + 728))(this, v25, IndexType, a2 + 16) & 1) == 0 || ((*(*this + 728))(this, v24, *(v29 + 2), a2 + 16) & 1) == 0)
  {
LABEL_37:
    v16 = 0;
    goto LABEL_38;
  }

  if (v36)
  {
    v13 = v35;
    v14 = 32 * v36;
    while (((*(*this + 728))(this, v13, IndexType, a2 + 16) & 1) != 0)
    {
      v13 += 32;
      v14 -= 32;
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_37;
  }

LABEL_31:
  if (v20 == 2 && v33)
  {
    v15 = v32;
    v21 = 32 * v33;
    while (((*(*this + 728))(this, v15, IndexType, a2 + 16) & 1) != 0)
    {
      v15 += 32;
      v16 = 1;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  v16 = 1;
LABEL_38:
  if (v29 != v31)
  {
    free(v29);
  }

  if (v32 != v34)
  {
    free(v32);
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

  return v16;
}

uint64_t mlir::memref::DmaStartOp::verify(mlir::Operation **this)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0 || (v3 = *(v2 + 17), v3 <= 3))
  {
    mlir::memref::DmaStartOp::verify(this, &v76);
    return v76;
  }

  v4 = *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    TagIndices = "expected source to be of memref type";
    v73 = 259;
    mlir::OpState::emitOpError(this, &TagIndices, &v76);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
    if (v76)
    {
      mlir::InFlightDiagnostic::report(&v76);
    }

    if (v87 == 1)
    {
      if (v86 != &v87)
      {
        free(v86);
      }

      v6 = v84;
      if (v84)
      {
        v7 = v85;
        v8 = v84;
        if (v85 != v84)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = v84;
        }

        v85 = v6;
        operator delete(v8);
      }

      v9 = v82;
      if (!v82)
      {
        goto LABEL_72;
      }

      v10 = v83;
      v11 = v82;
      if (v83 == v82)
      {
LABEL_71:
        v83 = v9;
        operator delete(v11);
LABEL_72:
        if (v78 != &v81)
        {
          free(v78);
        }

        return v5;
      }

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
LABEL_70:
      v11 = v82;
      goto LABEL_71;
    }

    return v5;
  }

  v76 = v4;
  mlir::MemRefType::getShape(&v76);
  if (v3 >= v14 + 4)
  {
    v76 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    if (v29)
    {
      v30 = (*(*this + 11) & 0x800000) != 0 ? *(*this + 9) : 0;
      *&v74 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::MemRefType::getShape(&v74);
      TagIndices = (v30 + 32);
      v72 = v31;
      mlir::OperandRange::getTypes(&TagIndices, &v76);
      v32 = (v78 - v77);
      if (v78 != v77)
      {
        v33 = v76 + 32 * v77 + 24;
        while (1)
        {
          *&v74 = *(*v33 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (!mlir::Type::isIndex(&v74))
          {
            break;
          }

          v33 += 32;
          if (!--v32)
          {
            goto LABEL_53;
          }
        }

        TagIndices = "expected source indices to be of index type";
        v73 = 259;
        mlir::OpState::emitOpError(this, &TagIndices, &v76);
        goto LABEL_85;
      }
    }

LABEL_53:
    v76 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    v35 = *(*this + 9);
    if (*(*(*(*(v35 + 32 * (v34 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      TagIndices = "expected destination to be of memref type";
      v73 = 259;
      mlir::OpState::emitOpError(this, &TagIndices, &v76);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }

      if (v87 == 1)
      {
        if (v86 != &v87)
        {
          free(v86);
        }

        v36 = v84;
        if (v84)
        {
          v37 = v85;
          v38 = v84;
          if (v85 != v84)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = v84;
          }

          v85 = v36;
          operator delete(v38);
        }

        v9 = v82;
        if (!v82)
        {
          goto LABEL_72;
        }

        v39 = v83;
        v11 = v82;
        if (v83 == v82)
        {
          goto LABEL_71;
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

        while (v39 != v9);
        goto LABEL_70;
      }

      return v5;
    }

    v76 = *(*(v35 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    v44 = v43;
    v76 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    v76 = *(*(*(*this + 9) + 32 * (v45 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    v47 = (v44 + v46 + 4);
    v70 = v47;
    if (v3 < v47)
    {
      v73 = 257;
      mlir::OpState::emitOpError(this, &TagIndices, &v76);
      if (v76)
      {
        LODWORD(v74) = 3;
        *(&v74 + 1) = "expected at least ";
        v75 = 18;
        if (v79 >= v80)
        {
          if (v78 > &v74 || v78 + 24 * v79 <= &v74)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v48 = v78 + 24 * v79;
        v49 = v74;
        *(v48 + 2) = v75;
        *v48 = v49;
        v50 = ++v79;
        if (v76)
        {
          LODWORD(v74) = 5;
          *(&v74 + 1) = v47;
          if (v50 >= v80)
          {
            if (v78 > &v74 || v78 + 24 * v50 <= &v74)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v51 = v78 + 24 * v79;
          v52 = v74;
          *(v51 + 2) = v75;
          *v51 = v52;
          v53 = ++v79;
          if (v76)
          {
            LODWORD(v74) = 3;
            *(&v74 + 1) = " operands";
            v75 = 9;
            if (v53 >= v80)
            {
              if (v78 > &v74 || v78 + 24 * v53 <= &v74)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v54 = v78 + 24 * v79;
            v55 = v74;
            *(v54 + 2) = v75;
            *v54 = v55;
            ++v79;
          }
        }
      }

LABEL_85:
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }

      if (v87 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v77);
      }

      return v5;
    }

    v76 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    v57 = v56;
    v76 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    v59 = v58;
    v76 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    v76 = *(*(*(*this + 9) + 32 * (v60 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::MemRefType::getShape(&v76);
    if (v59 - v57 + v61 && (TagIndices = mlir::memref::DmaStartOp::getDstIndices(this), v72 = v62, mlir::OperandRange::getTypes(&TagIndices, &v76), !llvm::all_of<mlir::ValueTypeRange<mlir::OperandRange>,mlir::memref::DmaStartOp::verify(void)::$_1>(&v76)))
    {
      v63 = "expected destination indices to be of index type";
    }

    else
    {
      v76 = *(mlir::memref::DmaStartOp::getNumElements(this) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (mlir::Type::isIndex(&v76))
      {
        if (*(*(*(mlir::memref::DmaStartOp::getTagMemRef(this) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
        {
          v65 = v47 + mlir::memref::DmaStartOp::getTagMemRefRank(this);
          v70 = v65;
          if (v3 < v65)
          {
            v73 = 257;
            mlir::OpState::emitOpError(this, &TagIndices, &v76);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v76, "expected at least ");
            mlir::InFlightDiagnostic::operator<<<unsigned int &>(v66, &v70);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v67, " operands");
            goto LABEL_97;
          }

          mlir::memref::DmaStartOp::getTagIndices(this);
          if (v68 && (TagIndices = mlir::memref::DmaStartOp::getTagIndices(this), v72 = v69, mlir::OperandRange::getTypes(&TagIndices, &v76), !llvm::all_of<mlir::ValueTypeRange<mlir::OperandRange>,mlir::memref::DmaStartOp::verify(void)::$_1>(&v76)))
          {
            v63 = "expected tag indices to be of index type";
          }

          else if (v3 == v65 || v3 == v65 + 2)
          {
            if (!mlir::memref::DmaStartOp::isStrided(this))
            {
              return 1;
            }

            v76 = *(mlir::memref::DmaStartOp::getStride(this) + 8) & 0xFFFFFFFFFFFFFFF8;
            if (mlir::Type::isIndex(&v76))
            {
              TagIndices = (*(mlir::memref::DmaStartOp::getNumElementsPerStride(this) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (mlir::Type::isIndex(&TagIndices))
              {
                return 1;
              }
            }

            v63 = "expected stride and num elements per stride to be of type index";
          }

          else
          {
            v63 = "incorrect number of operands";
          }
        }

        else
        {
          v63 = "expected tag to be of memref type";
        }
      }

      else
      {
        v63 = "expected num elements to be of index type";
      }
    }

    TagIndices = v63;
    v73 = 259;
    mlir::OpState::emitOpError(this, &TagIndices, &v76);
    v64 = &v76;
LABEL_97:
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
    return v5;
  }

  v73 = 257;
  mlir::OpState::emitOpError(this, &TagIndices, &v76);
  if (v76)
  {
    LODWORD(v74) = 3;
    *(&v74 + 1) = "expected at least ";
    v75 = 18;
    if (v79 >= v80)
    {
      if (v78 > &v74 || v78 + 24 * v79 <= &v74)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v78 + 24 * v79;
    v16 = v74;
    *(v15 + 2) = v75;
    *v15 = v16;
    ++v79;
  }

  *&v74 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v74);
  if (v76)
  {
    LODWORD(v74) = 5;
    *(&v74 + 1) = (v17 + 4);
    if (v79 >= v80)
    {
      if (v78 > &v74 || v78 + 24 * v79 <= &v74)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = v78 + 24 * v79;
    v19 = v74;
    *(v18 + 2) = v75;
    *v18 = v19;
    v20 = ++v79;
    if (v76)
    {
      LODWORD(v74) = 3;
      *(&v74 + 1) = " operands";
      v75 = 9;
      if (v20 >= v80)
      {
        if (v78 > &v74 || v78 + 24 * v20 <= &v74)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v21 = v78 + 24 * v79;
      v22 = v74;
      *(v21 + 2) = v75;
      *v21 = v22;
      ++v79;
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v76);
  if (v76)
  {
    mlir::InFlightDiagnostic::report(&v76);
  }

  if (v87 == 1)
  {
    if (v86 != &v87)
    {
      free(v86);
    }

    v23 = v84;
    if (v84)
    {
      v24 = v85;
      v25 = v84;
      if (v85 != v84)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = v84;
      }

      v85 = v23;
      operator delete(v25);
    }

    v9 = v82;
    if (!v82)
    {
      goto LABEL_72;
    }

    v26 = v83;
    v11 = v82;
    if (v83 == v82)
    {
      goto LABEL_71;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x259C63150](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v9);
    goto LABEL_70;
  }

  return v5;
}

BOOL llvm::all_of<mlir::ValueTypeRange<mlir::OperandRange>,mlir::memref::DmaStartOp::verify(void)::$_1>(void *a1)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v3 == v4)
  {
    return 1;
  }

  v11[3] = v1;
  v11[4] = v2;
  v6 = ~v3 + v4;
  v7 = (*a1 + 32 * v3 + 24);
  do
  {
    v8 = *v7;
    v7 += 4;
    v11[0] = *(v8 + 8) & 0xFFFFFFFFFFFFFFF8;
    result = mlir::Type::isIndex(v11);
    v10 = v6-- != 0;
  }

  while (result && v10);
  return result;
}

uint64_t mlir::memref::DmaStartOp::getTagMemRefRank(mlir::memref::DmaStartOp *this)
{
  v8 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v8);
  v3 = v2;
  v8 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v8);
  v8 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v8);
  v8 = *(*(*(*this + 72) + 32 * (v3 + v5 + 3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::MemRefType::getShape(&v8);
  return v6;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(mlir::IndexType *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v20[0] = *(a4 + 40);
  v20[1] = 0;
  v7 = *(mlir::ValueRange::dereference_iterator(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v7 = 0;
  }

  v20[0] = v7;
  if (!v7)
  {
    return 0;
  }

  mlir::MemRefType::getShape(v20);
  v9 = v8;
  v10 = mlir::IndexType::get(a1, v8);
  ElementType = mlir::MemRefType::getElementType(v20);
  MemorySpace = mlir::MemRefType::getMemorySpace(v20);
  v13 = mlir::MemRefType::get(0, 0, ElementType, 0, 0, MemorySpace);
  v14 = *(a5 + 8);
  if (v14 >= *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a5 + 8 * v14) = v13;
  v15 = *(a5 + 12);
  v16 = *(a5 + 8) + 1;
  *(a5 + 8) = v16;
  if (v16 >= v15)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a5 + 8 * v16) = v10;
  v17 = *(a5 + 8) + 1;
  *(a5 + 8) = v17;
  for (i = 2 * v9; i; --i)
  {
    if (v17 >= *(a5 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a5 + 8 * v17) = v10;
    v17 = *(a5 + 8) + 1;
    *(a5 + 8) = v17;
  }

  return 1;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "base_buffer", 11);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  a2(a3, v9, "offset", 6);
  v10 = *(*a1 + 36);
  if (v10)
  {
    v11 = *a1 - 16;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 2);
  if ((v10 & 0xFFFFFFFE) != 2)
  {
    if (*(*a1 + 36))
    {
      v13 = *a1 - 16;
    }

    else
    {
      v13 = 0;
    }

    v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 2);
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
    a2(a3, v15, "sizes", 5);
    v16 = *(*a1 + 36);
    if (v16)
    {
      v17 = *a1 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, ((v16 - 2) >> 1) + 2);
    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);

    return (a2)(a3, v19, "strides", 7);
  }

  return result;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::fold(mlir::memref::ExtractStridedMetadataOp *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v39[0] = mlir::Attribute::getContext((*a1 + 24));
  v39[1] = 0;
  v39[2] = *(v2 + 16);
  v39[3] = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v2);
  v3 = *(*a1 + 24);
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  ConstifiedMixedOffset = mlir::memref::ExtractStridedMetadataOp::getConstifiedMixedOffset(a1);
  if (*v6 && (v8 = ConstifiedMixedOffset, ConstifiedMixedOffset != mlir::getAsOpFoldResult(v6)) && (v43 = v8 & 0xFFFFFFFFFFFFFFF8, Int = mlir::IntegerAttr::getInt(&v43), v9 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(v39, v3, &Int), (v10 = *v6) != 0))
  {
    v11 = (v9 - 16);
    do
    {
      v12 = *v10;
      mlir::Operation::replaceUsesOfWith(v10[2], v6, v11);
      v10 = v12;
    }

    while (v12);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*a1 + 24);
  v15 = *(*a1 + 36);
  if (v15)
  {
    v16 = *a1 - 16;
  }

  else
  {
    v16 = 0;
  }

  v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 2);
  v18 = (v15 - 2) >> 1;
  v19 = *(*a1 + 36);
  if (v19)
  {
    v20 = *a1 - 16;
  }

  else
  {
    v20 = 0;
  }

  v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 2);
  mlir::ValueRange::ValueRange(&v43, v21, (v19 - 2) >> 1);
  mlir::getAsOpFoldResult(v43, v44, &Int);
  v22 = *(*(*(*a1 + 72) + 24) + 8);
  Context = mlir::Attribute::getContext((*a1 + 24));
  constifyIndexValues(&Int, v22 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantSizes, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  v24 = replaceConstantUsesOf<mlir::ResultRange>(v39, v14, v17, v18, Int, v41);
  if (Int != v42)
  {
    free(Int);
  }

  v25 = *(*a1 + 24);
  v26 = *(*a1 + 36);
  v27 = (v26 - 2) >> 1;
  if (v26)
  {
    v28 = *a1 - 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = mlir::detail::OpResultImpl::getNextResultAtOffset(v28, v27 + 2);
  v30 = *(*a1 + 36);
  v31 = (v30 - 2) >> 1;
  if (v30)
  {
    v32 = *a1 - 16;
  }

  else
  {
    v32 = 0;
  }

  v33 = mlir::detail::OpResultImpl::getNextResultAtOffset(v32, v31 + 2);
  mlir::ValueRange::ValueRange(&v43, v33, v31 + 2 + v31 - (v31 + 2));
  mlir::getAsOpFoldResult(v43, v44, &Int);
  v34 = *a1;
  v35 = *(*(*(*a1 + 72) + 24) + 8);
  v36 = mlir::Attribute::getContext((v34 + 24));
  constifyIndexValues(&Int, v35 & 0xFFFFFFFFFFFFFFF8, v36, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantStrides, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  v37 = replaceConstantUsesOf<mlir::ResultRange>(v39, v25, v29, v27 + 2 + v27 - (v27 + 2), Int, v41);
  if (Int != v42)
  {
    free(Int);
  }

  return v13 | v24 | v37;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::getConstifiedMixedOffset(mlir::memref::ExtractStridedMetadataOp *this)
{
  v11[6] = *MEMORY[0x277D85DE8];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 1);
  v4 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v10[0] = v11;
  v11[0] = mlir::getAsOpFoldResult(v4);
  v10[1] = 0x600000001;
  v5 = *this;
  v6 = *(*(*(*this + 72) + 24) + 8);
  Context = mlir::Attribute::getContext((v5 + 24));
  constifyIndexValues(v10, v6 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantOffset, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  v8 = *v10[0];
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return v8;
}

uint64_t replaceConstantUsesOf<mlir::ResultRange>(mlir::IndexType **a1, uint64_t a2, mlir::detail::OpResultImpl *this, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = 0;
  if (a6 && a4)
  {
    v8 = a5;
    v6 = 0;
    v12 = 0;
    v13 = &a5[a6];
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v12);
      if (*NextResultAtOffset)
      {
        v15 = NextResultAtOffset;
        v16 = *v8;
        if (v16 != mlir::getAsOpFoldResult(NextResultAtOffset))
        {
          v22 = *v8 & 0xFFFFFFFFFFFFFFF8;
          Int = mlir::IntegerAttr::getInt(&v22);
          v17 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &Int);
          v18 = *v15;
          if (*v15)
          {
            v19 = (v17 - 16);
            do
            {
              v20 = *v18;
              mlir::Operation::replaceUsesOfWith(v18[2], v15, v19);
              v18 = v20;
            }

            while (v20);
            v6 = 1;
          }
        }
      }

      if (++v8 == v13)
      {
        break;
      }

      ++v12;
    }

    while (v12 != a4);
  }

  return v6 & 1;
}

void mlir::memref::ExtractStridedMetadataOp::getConstifiedMixedSizes(mlir::memref::ExtractStridedMetadataOp *this@<X0>, unint64_t **a2@<X8>)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *(*this + 36);
  if (v4)
  {
    v5 = *this - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 2);
  mlir::ValueRange::ValueRange(v10, NextResultAtOffset, (v4 - 2) >> 1);
  mlir::getAsOpFoldResult(v10[0], v10[1], a2);
  v7 = *this;
  v8 = *(*(*(*this + 72) + 24) + 8);
  Context = mlir::Attribute::getContext((v7 + 24));
  constifyIndexValues(a2, v8 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantSizes, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
}

void mlir::memref::ExtractStridedMetadataOp::getConstifiedMixedStrides(mlir::memref::ExtractStridedMetadataOp *this@<X0>, unint64_t **a2@<X8>)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *(*this + 36);
  v5 = (v4 - 2) >> 1;
  if (v4)
  {
    v6 = *this - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v5 + 2);
  mlir::ValueRange::ValueRange(v11, NextResultAtOffset, v5 + 2 + v5 - (v5 + 2));
  mlir::getAsOpFoldResult(v11[0], v11[1], a2);
  v8 = *this;
  v9 = *(*(*(*this + 72) + 24) + 8);
  Context = mlir::Attribute::getContext((v8 + 24));
  constifyIndexValues(a2, v9 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantStrides, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
}

void constifyIndexValues(uint64_t a1, uint64_t a2, mlir::IndexType *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, mlir::MLIRContext *), uint64_t a7)
{
  v26[6] = *MEMORY[0x277D85DE8];
  a4(&v24, a5);
  v23 = a3;
  if (v25)
  {
    v11 = 0;
    v12 = v24;
    v13 = 8 * v25;
    do
    {
      v14 = *&v12[v11];
      if ((a6(a7, v14) & 1) == 0)
      {
        *(*a1 + v11) = mlir::Builder::getIndexAttr(&v23, v14) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v11 += 8;
    }

    while (v13 != v11);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = *a1;
    for (i = 8 * v15; i; i -= 8)
    {
      v19 = *v16;
      if ((*v16 & 4) != 0)
      {
        ConstantIntValue = mlir::getConstantIntValue(v19 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v21 & 1) == 0)
        {
          goto LABEL_10;
        }

        Int = ConstantIntValue;
      }

      else
      {
        v22 = v19 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v22);
      }

      *v16 = mlir::Builder::getIndexAttr(&v23, Int) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_10:
      ++v16;
    }
  }

  if (v24 != v26)
  {
    free(v24);
  }
}

void *getConstantSizes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  result = mlir::MemRefType::getShape(&v7);
  v5 = v4;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (((8 * v4) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = 0;
  if (v4)
  {
    result = memcpy(*a2, result, 8 * v4);
    v6 = *(a2 + 8);
  }

  *(a2 + 8) = v6 + v5;
  return result;
}

void getConstantStrides(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v6 = 0;
  __src = v9;
  v8 = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, &__src, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (StridesAndOffset)
  {
    v4 = v8;
    if (v8)
    {
      if (&__src != a2)
      {
        if (__src == v9)
        {
          if (v8 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(*a2, __src, 8 * v8);
          *(a2 + 8) = v4;
        }

        else
        {
          *a2 = __src;
          v5 = HIDWORD(v8);
          *(a2 + 8) = v4;
          *(a2 + 12) = v5;
          __src = v9;
          HIDWORD(v8) = 0;
        }

        LODWORD(v8) = 0;
      }
    }
  }

  if (__src != v9)
  {
    free(__src);
  }
}

void getConstantOffset(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = v7;
  v3 = 0x600000000;
  v6[1] = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, v6, &v5);
  *a2 = a2 + 2;
  if (StridesAndOffset)
  {
    a2[2] = v5;
    v3 = 0x600000001;
  }

  a2[1] = v3;
  if (v6[0] != v7)
  {
    free(v6[0]);
  }
}

uint64_t mlir::memref::GenericAtomicRMWOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v15[0] = a3;
  v8 = a1 + 16;
  v13 = *(a1 + 16);
  mlir::OperationState::addOperands(a2, v15, 1uLL);
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v10 = *(v15[0] + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v10 = 0;
  }

  v14 = v10;
  if (v10)
  {
    ElementType = mlir::MemRefType::getElementType(&v14);
    v12 = *(a2 + 72);
    if (v12 >= *(a2 + 76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 64) + 8 * v12) = ElementType;
    ++*(a2 + 72);
    mlir::OperationState::addRegion(a2);
  }

  if (v13)
  {
    *v8 = v13;
  }

  else
  {
    *v8 = 0;
    *(v8 + 8) = 0;
  }

  return result;
}

BOOL mlir::memref::GenericAtomicRMWOp::verify(mlir::Operation **this)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v2 == v2 || ((v3 = v2[1]) != 0 ? (v4 = v3 - 8) : (v4 = 0), ((*(v4 + 56) - *(v4 + 48)) & 0x7FFFFFFF8) != 8))
  {
    v34[0] = "expected single number of entry block arguments";
    v35 = 259;
    mlir::OpState::emitOpError(this, v34, v36);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v44 != 1)
    {
      return v33;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v42;
      v20 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v42 = v18;
      operator delete(v20);
    }

    v21 = v39;
    if (v39)
    {
      v22 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        goto LABEL_53;
      }

LABEL_54:
      v40 = v21;
      operator delete(v23);
    }

LABEL_55:
    if (v37 != &v38)
    {
      free(v37);
    }

    return v33;
  }

  v6 = *(v1 + 9);
  v7 = v1 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v10 = v2[1];
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if ((*(*v11[6] + 8) ^ *(NextResultAtOffset + 8)) >= 8)
  {
    v34[0] = "expected block argument of the same type result type";
    v35 = 259;
    mlir::OpState::emitOpError(this, v34, v36);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v44 != 1)
    {
      return v33;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v42;
      v28 = __p;
      if (v42 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v42 = v26;
      operator delete(v28);
    }

    v21 = v39;
    if (v39)
    {
      v29 = v40;
      v23 = v39;
      if (v40 != v39)
      {
        do
        {
          v31 = *--v29;
          v30 = v31;
          *v29 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v29 != v21);
LABEL_53:
        v23 = v39;
        goto LABEL_54;
      }

      goto LABEL_54;
    }

    goto LABEL_55;
  }

  for (; v10 != v2; v10 = v10[1])
  {
    v12 = v10 - 1;
    if (!v10)
    {
      v12 = 0;
    }

    v13 = v12[5];
    v14 = v12 + 4;
    while (v13 != v14)
    {
      v15 = v13[1];
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
      v17 = mlir::detail::walk<mlir::ForwardIterator>(ValuePtr, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::memref::GenericAtomicRMWOp::verify(void)::$_0>, v36, 1);
      v13 = v15;
      if (!v17)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t mlir::memref::GenericAtomicRMWOp::parse(mlir::memref::GenericAtomicRMWOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v15[16] = *MEMORY[0x277D85DE8];
  memset(v12, 0, 24);
  v11 = 0;
  v13 = v15;
  v14 = 0x400000000;
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  if ((*(*this + 704))(this, v12, 1) & 1) != 0 && ((*(*this + 720))(this, &v13, 2, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 576))(this, &v11) & 1) != 0 && ((*(*this + 728))(this, v12, v11, a2 + 16))
  {
    if (!v14)
    {
LABEL_9:
      mlir::OperationState::addRegion(a2);
    }

    v8 = v13;
    v9 = 32 * v14;
    while (((*(*this + 728))(this, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (v13 != v15)
  {
    free(v13);
  }

  return 0;
}

BOOL mlir::memref::AtomicYieldOp::verify(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  ParentOp = *(*this + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  v3 = ParentOp[9];
  v4 = (ParentOp - 4);
  if (!v3)
  {
    v4 = 0;
  }

  v26[0] = v4;
  v26[1] = v3;
  mlir::ResultRange::getTypes(v26, v30);
  v5 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30[0], v30[1]) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v5 == v6)
  {
    return 1;
  }

  v27 = 257;
  mlir::OpState::emitOpError(this, v26, v30);
  if (v30[0])
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "types mismatch between yield op: ";
    v29 = 33;
    if (v32 >= v33)
    {
      if (v31 > &v28 || v31 + 24 * v32 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v31 + 24 * v32;
    v9 = v28;
    *(v8 + 2) = v29;
    *v8 = v9;
    ++v32;
    if (v30[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v28, v6);
      if (v32 >= v33)
      {
        if (v31 > &v28 || v31 + 24 * v32 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v31 + 24 * v32;
      v11 = v28;
      *(v10 + 2) = v29;
      *v10 = v11;
      v12 = ++v32;
      if (v30[0])
      {
        LODWORD(v28) = 3;
        *(&v28 + 1) = " and its parent: ";
        v29 = 17;
        if (v12 >= v33)
        {
          if (v31 > &v28 || v31 + 24 * v12 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v31 + 24 * v32;
        v14 = v28;
        *(v13 + 2) = v29;
        *v13 = v14;
        ++v32;
        if (v30[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v28, v5);
          if (v32 >= v33)
          {
            if (v31 > &v28 || v31 + 24 * v32 <= &v28)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v31 + 24 * v32;
          v16 = v28;
          *(v15 + 2) = v29;
          *v15 = v16;
          ++v32;
        }
      }
    }
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
  if (v30[0])
  {
    mlir::InFlightDiagnostic::report(v30);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v38;
      v19 = __p;
      if (v38 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v38 = v17;
      operator delete(v19);
    }

    v20 = v35;
    if (v35)
    {
      v21 = v36;
      v22 = v35;
      if (v36 != v35)
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
        v22 = v35;
      }

      v36 = v20;
      operator delete(v22);
    }

    if (v31 != &v34)
    {
      free(v31);
    }
  }

  return v7;
}

BOOL mlir::memref::GlobalOp::verify(mlir::Operation **this)
{
  v77 = *MEMORY[0x277D85DE8];
  v65 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 13);
  Value = mlir::TypeAttr::getValue(&v65);
  if (!Value || !mlir::BaseMemRefType::hasRank(&Value))
  {
    goto LABEL_18;
  }

  Shape = mlir::MemRefType::getShape(&Value);
  if (v3)
  {
    v4 = 8 * v3;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

LABEL_18:
    v60[0] = "type should be static shaped memref, but got ";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &v65);
    *&v63 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 13);
    v18 = mlir::TypeAttr::getValue(&v63);
    if (v65)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v63, v18);
      if (v68 >= v69)
      {
        if (v67 > &v63 || v67 + 24 * v68 <= &v63)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v67 + 24 * v68;
      v20 = v63;
      *(v19 + 2) = v64;
      *v19 = v20;
      ++v68;
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v76 == 1)
    {
      if (v75 != &v76)
      {
        free(v75);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v74;
        v24 = __p;
        if (v74 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v74 = v22;
        operator delete(v24);
      }

      v25 = v71;
      if (!v71)
      {
        goto LABEL_89;
      }

      v26 = v72;
      v27 = v71;
      if (v72 == v71)
      {
        goto LABEL_88;
      }

      do
      {
        v29 = *--v26;
        v28 = v29;
        *v26 = 0;
        if (v29)
        {
          MEMORY[0x259C63150](v28, 0x1000C8077774924);
        }
      }

      while (v26 != v25);
      goto LABEL_87;
    }

    return v21;
  }

LABEL_7:
  v5 = *this;
  v6 = (*(*this + 11) >> 23) & 1;
  v7 = *(*this + 2 * v6 + 10);
  if (v7)
  {
    v8 = *v7;
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_52;
    }

    {
      v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_44;
      }
    }

    else
    {
      mlir::memref::GlobalOp::verify();
      v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_44;
      }
    }

    v12 = v10;
    v13 = v11;
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[2 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 2;
      v13 += ~(v13 >> 1);
      if (v17 < v9)
      {
        v12 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
    if (v12 != &v10[2 * v11] && *v12 == v9 && v12[1])
    {
LABEL_52:
      v59[0] = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
      v59[1] = v33;
      if (!v59[0] || (Type = mlir::ElementsAttr::getType(v59), TensorTypeFromMemRefType = mlir::memref::getTensorTypeFromMemRefType(Value), Type == TensorTypeFromMemRefType))
      {
        v5 = *this;
        v6 = (*(*this + 11) >> 23) & 1;
        goto LABEL_55;
      }

      v53 = TensorTypeFromMemRefType;
      v60[0] = "initial value expected to be of type ";
      v61 = 259;
      mlir::OpState::emitOpError(this, v60, &v65);
      if (v65)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v63, v53);
        if (v68 >= v69)
        {
          if (v67 > &v63 || v67 + 24 * v68 <= &v63)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v54 = v67 + 24 * v68;
        v55 = v63;
        *(v54 + 2) = v64;
        *v54 = v55;
        v56 = ++v68;
        if (v65)
        {
          LODWORD(v63) = 3;
          *(&v63 + 1) = ", but was of type ";
          v64 = 18;
          if (v56 >= v69)
          {
            if (v67 > &v63 || v67 + 24 * v56 <= &v63)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v57 = v67 + 24 * v68;
          v58 = v63;
          *(v57 + 2) = v64;
          *v57 = v58;
          ++v68;
          if (v65)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v63, Type);
            v30 = v67;
            if (v68 >= v69)
            {
              if (v67 > &v63 || v67 + 24 * v68 <= &v63)
              {
LABEL_103:
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

LABEL_119:
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

LABEL_46:
            v31 = &v30[24 * v68];
            v32 = v63;
            *(v31 + 2) = v64;
            *v31 = v32;
            ++v68;
            goto LABEL_47;
          }
        }
      }

      goto LABEL_47;
    }

LABEL_44:
    v60[0] = "initial value should be a unit or elements attribute, but got ";
    v61 = 259;
    mlir::OpState::emitOpError(this, v60, &v65);
    if (v65)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v63, v7);
      v30 = v67;
      if (v68 >= v69)
      {
        if (v67 > &v63 || v67 + 24 * v68 <= &v63)
        {
          goto LABEL_103;
        }

        goto LABEL_119;
      }

      goto LABEL_46;
    }

LABEL_47:
    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v76 == 1)
    {
      mlir::Diagnostic::~Diagnostic(v66);
    }

    return v21;
  }

LABEL_55:
  v60[0] = *(v5 + 2 * v6 + 8);
  if (!v60[0])
  {
    return 1;
  }

  mlir::IntegerAttr::getValue(v60, &v65);
  if (v66[0] >= 0x41)
  {
    v36 = v65;
  }

  else
  {
    v36 = &v65;
  }

  v37 = *v36;
  if (v66[0] >= 0x41 && v65)
  {
    MEMORY[0x259C63150](v65, 0x1000C8000313F17);
  }

  if ((v37 ^ (v37 - 1)) > v37 - 1)
  {
    return 1;
  }

  v61 = 257;
  mlir::OpState::emitError(this, v60, &v65);
  if (v65)
  {
    LODWORD(v63) = 3;
    *(&v63 + 1) = "alignment attribute value ";
    v64 = 26;
    if (v68 >= v69)
    {
      if (v67 > &v63 || v67 + 24 * v68 <= &v63)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v38 = v67 + 24 * v68;
    v39 = v63;
    *(v38 + 2) = v64;
    *v38 = v39;
    v40 = ++v68;
    if (v65)
    {
      LODWORD(v63) = 5;
      *(&v63 + 1) = v37;
      if (v40 >= v69)
      {
        if (v67 > &v63 || v67 + 24 * v40 <= &v63)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v67 + 24 * v68;
      v42 = v63;
      *(v41 + 2) = v64;
      *v41 = v42;
      v43 = ++v68;
      if (v65)
      {
        LODWORD(v63) = 3;
        *(&v63 + 1) = " is not a power of 2";
        v64 = 20;
        if (v43 >= v69)
        {
          if (v67 > &v63 || v67 + 24 * v43 <= &v63)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v44 = v67 + 24 * v68;
        v45 = v63;
        *(v44 + 2) = v64;
        *v44 = v45;
        ++v68;
      }
    }
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v76)
  {
    if (v75 != &v76)
    {
      free(v75);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v74;
      v48 = __p;
      if (v74 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v74 = v46;
      operator delete(v48);
    }

    v25 = v71;
    if (!v71)
    {
      goto LABEL_89;
    }

    v49 = v72;
    v27 = v71;
    if (v72 == v71)
    {
LABEL_88:
      v72 = v25;
      operator delete(v27);
LABEL_89:
      if (v67 != &v70)
      {
        free(v67);
      }

      return v21;
    }

    do
    {
      v51 = *--v49;
      v50 = v51;
      *v49 = 0;
      if (v51)
      {
        MEMORY[0x259C63150](v50, 0x1000C8077774924);
      }
    }

    while (v49 != v25);
LABEL_87:
    v27 = v71;
    goto LABEL_88;
  }

  return v21;
}

BOOL llvm::isa<mlir::ElementsAttr,mlir::Attribute>(uint64_t **a1)
{
  v1 = **a1;
  {
    v12 = v1;
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v12 + 8);
    v4 = *(v12 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4])
  {
    return 0;
  }

  return *v5 == v2 && v5[1] != 0;
}

uint64_t mlir::memref::GlobalOp::getAlignment(mlir::memref::GlobalOp *this)
{
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v7)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v7, &v5);
  if (v6 >= 0x41)
  {
    v1 = v5;
  }

  else
  {
    v1 = &v5;
  }

  result = *v1;
  if (v6 >= 0x41 && v5 != 0)
  {
    v4 = *v1;
    MEMORY[0x259C63150](v5, 0x1000C8000313F17);
    return v4;
  }

  return result;
}

void *mlir::memref::GlobalOp::getConstantInitValue(mlir::memref::GlobalOp *this)
{
  v1 = (*(*this + 44) >> 23) & 1;
  v3 = *(*this + 16 * v1 + 72);
  result = *(*this + 16 * v1 + 80);
  if (v3)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = *result;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
    result = v16;
    v6 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
  return result;
}

BOOL mlir::memref::GetGlobalOp::verifySymbolUses(mlir::SymbolTable **this, mlir::SymbolTableCollection *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *this, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  if (v3 && (v4 = v3, *(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id))
  {
    if (*(*this + 9))
    {
      v18 = *this - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v46 = *(v4 + 64 + 16 * ((*(v4 + 44) >> 23) & 1) + 40);
    if (mlir::TypeAttr::getValue(&v46) == v19)
    {
      return 1;
    }

    v40[0] = "result type ";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v46);
    if (v46)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v19);
      if (v49 >= v50)
      {
        if (v48 > &v43 || v48 + 24 * v49 <= &v43)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v48 + 24 * v49;
      v21 = v43;
      *(v20 + 2) = v44;
      *v20 = v21;
      v22 = ++v49;
      if (v46)
      {
        LODWORD(v43) = 3;
        *(&v43 + 1) = " does not match type ";
        v44 = 21;
        if (v22 >= v50)
        {
          if (v48 > &v43 || v48 + 24 * v22 <= &v43)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v48 + 24 * v49;
        v24 = v43;
        *(v23 + 2) = v44;
        *v23 = v24;
        ++v49;
      }
    }

    *&v43 = *(v4 + 64 + 16 * ((*(v4 + 44) >> 23) & 1) + 40);
    Value = mlir::TypeAttr::getValue(&v43);
    if (v46)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, Value);
      if (v49 >= v50)
      {
        if (v48 > &v43 || v48 + 24 * v49 <= &v43)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = v48 + 24 * v49;
      v27 = v43;
      *(v26 + 2) = v44;
      *v26 = v27;
      v28 = ++v49;
      if (v46)
      {
        LODWORD(v43) = 3;
        *(&v43 + 1) = " of the global memref @";
        v44 = 23;
        if (v28 >= v50)
        {
          if (v48 > &v43 || v48 + 24 * v28 <= &v43)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = v48 + 24 * v49;
        v30 = v43;
        *(v29 + 2) = v44;
        *v29 = v30;
        ++v49;
      }
    }

    v42 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    *&v43 = mlir::SymbolRefAttr::getRootReference(&v42);
    v31 = mlir::StringAttr::getValue(&v43);
    if (v46)
    {
      v45 = 261;
      *&v43 = v31;
      *(&v43 + 1) = v32;
      mlir::Diagnostic::operator<<(v47, &v43);
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v55;
        v35 = __p;
        if (v55 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v55 = v33;
        operator delete(v35);
      }

      v13 = v52;
      if (!v52)
      {
        goto LABEL_58;
      }

      v36 = v53;
      v15 = v52;
      if (v53 == v52)
      {
        goto LABEL_57;
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

      while (v36 != v13);
      goto LABEL_56;
    }
  }

  else
  {
    v40[0] = "'";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, &v46);
    v42 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    *&v43 = mlir::SymbolRefAttr::getRootReference(&v42);
    v5 = mlir::StringAttr::getValue(&v43);
    if (v46)
    {
      v45 = 261;
      *&v43 = v5;
      *(&v43 + 1) = v6;
      mlir::Diagnostic::operator<<(v47, &v43);
      if (v46)
      {
        LODWORD(v43) = 3;
        *(&v43 + 1) = "' does not reference a valid global memref";
        v44 = 42;
        if (v49 >= v50)
        {
          if (v48 > &v43 || v48 + 24 * v49 <= &v43)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v48 + 24 * v49;
        v8 = v43;
        *(v7 + 2) = v44;
        *v7 = v8;
        ++v49;
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v46);
    if (v46)
    {
      mlir::InFlightDiagnostic::report(&v46);
    }

    if (v57 == 1)
    {
      if (v56 != &v57)
      {
        free(v56);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v55;
        v12 = __p;
        if (v55 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v55 = v10;
        operator delete(v12);
      }

      v13 = v52;
      if (!v52)
      {
        goto LABEL_58;
      }

      v14 = v53;
      v15 = v52;
      if (v53 == v52)
      {
LABEL_57:
        v53 = v13;
        operator delete(v15);
LABEL_58:
        if (v48 != &v51)
        {
          free(v48);
        }

        return v9;
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
LABEL_56:
      v15 = v52;
      goto LABEL_57;
    }
  }

  return v9;
}

uint64_t mlir::memref::GetGlobalOp::getName(mlir::memref::GetGlobalOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v2);
  return mlir::StringAttr::getValue(&RootReference);
}

BOOL mlir::memref::MemorySpaceCastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2 == 1 && a4 == 1)
  {
    v30[3] = v4;
    v30[4] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v30[0] = v12;
    v13 = *(*v10 + 136);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    if (v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v28 = v15;
    v29 = v14;
    v27 = v16;
    if (v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v13 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      ElementType = mlir::MemRefType::getElementType(v30);
      if (ElementType == mlir::MemRefType::getElementType(&v29))
      {
        Layout = mlir::MemRefType::getLayout(v30);
        if (Layout == mlir::MemRefType::getLayout(&v29))
        {
          Shape = mlir::MemRefType::getShape(v30);
          v24 = v23;
          v25 = mlir::MemRefType::getShape(&v29);
          if (v24 == v26 && !memcmp(Shape, v25, 8 * v24))
          {
            return 1;
          }
        }
      }
    }

    else if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id && v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v19 = mlir::UnrankedMemRefType::getElementType(&v28);
      return v19 == mlir::UnrankedMemRefType::getElementType(&v27);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::memref::MemorySpaceCastOp::fold(uint64_t *a1)
{
  v10 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::MemorySpaceCastOp,void>::id)
  {
    return 4;
  }

  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*(DefiningOp + 72) + 24);
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    *v7 = *v5;
    if (v8)
    {
      *(v8 + 8) = v7;
    }
  }

  v5[3] = v6;
  v9 = *v6;
  *v5 = *v6;
  v5[1] = v6;
  if (v9)
  {
    *(v9 + 8) = v5;
  }

  *v6 = v5;
  return (v4 - 16) | 4;
}

uint64_t *mlir::memref::PrefetchOp::getLocalityHint(mlir::memref::PrefetchOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::IntegerAttr::getValue(&v5, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

BOOL mlir::memref::PrefetchOp::parse(mlir::memref::PrefetchOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v68[16] = *MEMORY[0x277D85DE8];
  memset(v54, 0, 24);
  v66 = v68;
  v67 = 0x400000000;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v5 = (*(*this + 32))(this, a2, a3);
  IndexType = mlir::Builder::getIndexType(v5, v6);
  v8 = (*(*this + 32))(this);
  IntegerType = mlir::Builder::getIntegerType(v8, 32);
  if (((*(*this + 704))(this, v54, 1) & 1) == 0 || ((*(*this + 720))(this, &v66, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || !mlir::AsmParser::parseKeyword(this, &v50) || ((*(*this + 120))(this) & 1) == 0 || (v58 = 257, ((*(*this + 400))(this, "locality", 8, &v55) & 1) == 0) || ((*(*this + 152))(this) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(this, &v53, IntegerType, "localityHint", 0xCuLL, a2 + 112) || ((*(*this + 168))(this) & 1) == 0 || ((*(*this + 120))(this) & 1) == 0 || !mlir::AsmParser::parseKeyword(this, &v48) || !mlir::AsmParser::parseColonType<mlir::MemRefType>(this, &v52) || ((*(*this + 728))(this, v54, v52, a2 + 16) & 1) == 0)
  {
LABEL_34:
    v13 = 0;
    goto LABEL_35;
  }

  if (v67)
  {
    v10 = v66;
    v11 = 32 * v67;
    while (((*(*this + 728))(this, v10, IndexType, a2 + 16) & 1) != 0)
    {
      v10 += 32;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_34;
  }

LABEL_18:
  if (v51 == 5)
  {
    if (*v50 != 1953067639 || *(v50 + 4) != 101)
    {
LABEL_21:
      v12 = (*(*this + 16))(this);
      v45 = "rw specifier has to be 'read' or 'write'";
      v47 = 259;
      (*(*this + 24))(&v55, this, v12, &v45);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
      if (v55)
      {
        mlir::InFlightDiagnostic::report(&v55);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v63;
          v16 = __p;
          if (v63 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v63 = v14;
          operator delete(v16);
        }

        v17 = v60;
        if (!v60)
        {
          goto LABEL_75;
        }

        v18 = v61;
        v19 = v60;
        if (v61 == v60)
        {
LABEL_74:
          v61 = v17;
          operator delete(v19);
LABEL_75:
          if (v57 != &v59)
          {
            free(v57);
          }

          goto LABEL_35;
        }

        do
        {
          v22 = *--v18;
          v21 = v22;
          *v18 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
LABEL_73:
        v19 = v60;
        goto LABEL_74;
      }

      goto LABEL_35;
    }
  }

  else if (v51 != 4 || *v50 != 1684104562)
  {
    goto LABEL_21;
  }

  v24 = (*(*this + 32))(this);
  v26 = (v51 == 5 && *v50 == 1953067639 && *(v50 + 4) == 101);
  BoolAttr = mlir::Builder::getBoolAttr(v24, v26);
  Context = mlir::Attribute::getContext(a2);
  v58 = 261;
  v55 = "isWrite";
  v56 = 7;
  v30 = mlir::StringAttr::get(Context, &v55, v29);
  mlir::NamedAttribute::NamedAttribute(&v45, v30, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v45, v46);
  if (v49 != 5)
  {
    if (v49 != 4 || *v48 != 1635017060)
    {
      goto LABEL_57;
    }

LABEL_82:
    v39 = (*(*this + 32))(this);
    if (v49 == 4)
    {
      v40 = (*v48 == 1635017060);
    }

    else
    {
      v40 = 0;
    }

    v41 = mlir::Builder::getBoolAttr(v39, v40);
    v42 = mlir::Attribute::getContext(a2);
    v58 = 261;
    v55 = "isDataCache";
    v56 = 11;
    v44 = mlir::StringAttr::get(v42, &v55, v43);
    mlir::NamedAttribute::NamedAttribute(&v45, v44, v41);
    mlir::NamedAttrList::push_back(a2 + 112, v45, v46);
    v13 = 1;
    goto LABEL_35;
  }

  if (*v48 == 1953721961 && *(v48 + 4) == 114)
  {
    goto LABEL_82;
  }

LABEL_57:
  v31 = (*(*this + 16))(this);
  v45 = "cache type has to be 'data' or 'instr'";
  v47 = 259;
  (*(*this + 24))(&v55, this, v31, &v45);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v55);
  if (v55)
  {
    mlir::InFlightDiagnostic::report(&v55);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v63;
      v34 = __p;
      if (v63 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v63 = v32;
      operator delete(v34);
    }

    v17 = v60;
    if (!v60)
    {
      goto LABEL_75;
    }

    v35 = v61;
    v19 = v60;
    if (v61 == v60)
    {
      goto LABEL_74;
    }

    do
    {
      v37 = *--v35;
      v36 = v37;
      *v35 = 0;
      if (v37)
      {
        MEMORY[0x259C63150](v36, 0x1000C8077774924);
      }
    }

    while (v35 != v17);
    goto LABEL_73;
  }

LABEL_35:
  if (v66 != v68)
  {
    free(v66);
  }

  return v13;
}

void *mlir::memref::RankOp::fold(uint64_t a1)
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

uint64_t mlir::memref::ReinterpretCastOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "reinterpret_cast", 16);
}

void mlir::memref::ReinterpretCastOp::build(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, int a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v34[0] = a5;
  v32[0] = &v33;
  v32[1] = 0x600000000;
  v30[0] = &v31;
  v30[1] = 0x600000000;
  v28[0] = &v29;
  v28[1] = 0x600000000;
  v25 = &v27;
  v26 = 0x600000000;
  v22 = &v24;
  v23 = 0x600000000;
  v19 = &v21;
  v20 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(v34, 1, &v25, v32);
  mlir::dispatchIndexOpFoldResults(a6, a7, &v22, v30);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v19, v28);
  *(a2 + 192) = 0;
  v15 = *(a2 + 120);
  if (a12 + v15 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v15), __src, 16 * a12);
    LODWORD(v15) = *(a2 + 120);
  }

  *(a2 + 120) = v15 + a12;
  mlir::ValueRange::ValueRange(&v18, v25, v26);
  mlir::ValueRange::ValueRange(&v17, v22, v23);
  mlir::ValueRange::ValueRange(&v16, v19, v20);
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::memref::ReinterpretCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
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

void mlir::memref::ReinterpretCastOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, void *__src, uint64_t a10)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v52[0] = a4;
  v34 = a3;
  v37 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v50[0] = &v51;
  v50[1] = 0x600000000;
  v47 = &v49;
  v48 = 0x600000000;
  v44 = &v46;
  v45 = 0x600000000;
  v42[0] = &v43;
  v42[1] = 0x600000000;
  v40[0] = &v41;
  v40[1] = 0x600000000;
  v38[0] = &v39;
  v38[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(v52, 1, v42, v50);
  v35 = a5;
  v36 = a6;
  mlir::dispatchIndexOpFoldResults(a5, a6, v40, &v47);
  mlir::dispatchIndexOpFoldResults(a7, a8, v38, &v44);
  v15 = mlir::StridedLayoutAttr::get(*a1, *v50[0], v44, v45);
  v16 = v47;
  v17 = v48;
  ElementType = mlir::BaseMemRefType::getElementType(&v37);
  if (!v15)
  {
    goto LABEL_14;
  }

  v19 = *v15;
  {
    v20 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (!v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    mlir::memref::ReinterpretCastOp::build();
    v20 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (!v22)
    {
      goto LABEL_14;
    }
  }

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
    v29 = v23[1];
LABEL_15:
    MemorySpace = mlir::BaseMemRefType::getMemorySpace(&v37);
    v31 = mlir::MemRefType::get(v16, v17, ElementType, v15, v29, MemorySpace);
    mlir::memref::ReinterpretCastOp::build(a1, a2, v31, v34, v52[0], v35, v36, v32, a7, a8, __src, a10);
  }

LABEL_14:
  v29 = 0;
  goto LABEL_15;
}

void mlir::memref::ReinterpretCastOp::build(uint64_t **a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *a11, uint64_t a12)
{
  v38[6] = *MEMORY[0x277D85DE8];
  __src = v35;
  v34 = 0x400000000;
  if (((8 * a7) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = 0;
  v18 = v35;
  v19 = 8 * a7;
  if (a7)
  {
    v20 = v35;
    v21 = 8 * a7;
    do
    {
      v22 = *a6++;
      *v20++ = mlir::Builder::getI64IntegerAttr(a1, v22) & 0xFFFFFFFFFFFFFFFBLL;
      v21 -= 8;
    }

    while (v21);
    v17 = v34;
    v18 = __src;
  }

  __dst = v38;
  *v37 = 0x600000000;
  v23 = v17 + (v19 >> 3);
  LODWORD(v34) = v23;
  if (v23)
  {
    if (v18 == v35)
    {
      v24 = v17 + (v19 >> 3);
      if (v23 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__dst, v18, 8 * v24);
      v18 = __src;
      v37[0] = v23;
    }

    else
    {
      __dst = v18;
      v37[0] = v17 + (v19 >> 3);
      v37[1] = HIDWORD(v34);
      __src = v35;
      HIDWORD(v34) = 0;
      v18 = v35;
    }

    LODWORD(v34) = 0;
  }

  if (v18 != v35)
  {
    free(v18);
  }

  if (((8 * a10) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a10)
  {
    v26 = v32;
    v27 = 8 * a10;
    do
    {
      v28 = *a9++;
      *v26++ = mlir::Builder::getI64IntegerAttr(a1, v28) & 0xFFFFFFFFFFFFFFFBLL;
      v27 -= 8;
    }

    while (v27);
  }

  __src = v35;
  v34 = 0x600000000;
  if (a10)
  {
    if (a10 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(__src, v32, 8 * a10);
    LODWORD(v34) = a10;
  }

  I64IntegerAttr = mlir::Builder::getI64IntegerAttr(a1, a5);
  mlir::memref::ReinterpretCastOp::build(a1, a2, a3, a4, I64IntegerAttr & 0xFFFFFFFFFFFFFFFBLL, __dst, v37[0], v30, __src, v34, a11, a12);
}

void mlir::memref::ReinterpretCastOp::build(int a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6, unint64_t a7, int a8, void *a9, unint64_t a10, void *a11, uint64_t a12)
{
  v30 = *MEMORY[0x277D85DE8];
  __src = v27 + 8;
  *&v27[0] = 0x400000000;
  if (a7 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __dst = a6;
  *v29 = xmmword_25736B790;
  if (a7)
  {
    v17 = 0;
    v18 = v27 + 1;
    do
    {
      *v18++ = mlir::ValueRange::dereference_iterator(&__dst, v17) | 4;
      v17 = *v29 + 1;
      *v29 = v17;
    }

    while (v17 != a7);
    v19 = v27[0];
    v20 = __src;
  }

  else
  {
    v19 = 0;
    v20 = v27 + 8;
  }

  __dst = &v29[2];
  *v29 = 0x600000000;
  v21 = v19 + a7;
  LODWORD(v27[0]) = v21;
  if (v21)
  {
    if (v20 == v27 + 8)
    {
      if (v21 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(__dst, v20, 8 * v21);
      v20 = __src;
      v29[0] = v21;
    }

    else
    {
      __dst = v20;
      v29[0] = v21;
      v29[1] = DWORD1(v27[0]);
      __src = v27 + 8;
      DWORD1(v27[0]) = 0;
      v20 = v27 + 8;
    }

    LODWORD(v27[0]) = 0;
  }

  if (v20 != v27 + 8)
  {
    free(v20);
  }

  if (a10 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  __src = a9;
  v27[0] = xmmword_25736B790;
  if (a10)
  {
    v22 = 0;
    v23 = v25;
    do
    {
      *v23++ = mlir::ValueRange::dereference_iterator(&__src, v22) | 4;
      v22 = *&v27[0] + 1;
      *&v27[0] = v22;
    }

    while (v22 != a10);
  }

  __src = v27 + 8;
  *&v27[0] = 0x600000000;
  if (a10)
  {
    memcpy(__src, v25, 8 * a10);
    LODWORD(v27[0]) = a10;
  }

  mlir::memref::ReinterpretCastOp::build(a1, a2, a3, a4, a5 | 4, __dst, v29[0], a8, __src, a10, a11, a12);
}