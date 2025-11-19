void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));

  mlir::pdl::ReplaceOp::getPropertiesAsAttr(Context);
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ReplaceOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = *(a2 + 4);
  v3 = __ROR8__(v2 + 12, 12);
  v4 = (((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 47))) ^ v2) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((-348639895 * ((-348639895 * (v3 ^ (((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 32) >> 15) ^ (-348639895 * (*a2 ^ 0xED558CCD ^ v3)))) ^ (((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 32) >> 15))) ^ v2) + 8) ^ v4);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ReplaceOp>,mlir::OpTrait::ZeroResults<mlir::pdl::ReplaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ReplaceOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::pdl::ReplaceOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::pdl::ReplaceOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::ReplaceOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ReplaceOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ReplaceOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::writeProperties;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ReplaceOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    mlir::Attribute::getContext((a2 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 3);
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>(uint64_t a1)
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
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  v37 = v1;
  v45 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v1 = v37;
  a1 = v45;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants>();
  v3 = v26;
  v2 = v32;
  v1 = v39;
  a1 = v47;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v4 = v22;
  v3 = v27;
  v2 = v33;
  v1 = v40;
  a1 = v48;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v5 = v19;
  v4 = v23;
  v3 = v28;
  v2 = v34;
  v1 = v41;
  a1 = v49;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_40;
  }

LABEL_8:
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v7 = v16;
  v6 = v18;
  v5 = v21;
  v4 = v25;
  v3 = v30;
  v2 = v36;
  v1 = v43;
  a1 = v51;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::ReplaceOp>,mlir::OpTrait::ZeroResults<mlir::pdl::ReplaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ReplaceOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::pdl::ReplaceOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::pdl::ReplaceOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::ReplaceOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ReplaceOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ReplaceOp>>(a1, a2))
  {
    return 0;
  }

  v4 = a1;
  return mlir::pdl::ReplaceOp::verify(&v4);
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::ReplaceOp>,mlir::OpTrait::ZeroResults<mlir::pdl::ReplaceOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ReplaceOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::pdl::ReplaceOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::pdl::ReplaceOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::ReplaceOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ReplaceOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ReplaceOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) || !mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) || (mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::ApplyNativeRewriteOp>::verifyTrait(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  return mlir::pdl::ReplaceOp::verifyInvariantsImpl(&v6);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1701080681 ? (v7 = *(a3 + 4) == 120) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v12);
  if (v8 == 5 && *result == 1701080681 && *(result + 4) == 120)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "index", 5uLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl::ResultOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::pdl::ResultOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::getEffects;
  {
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl::ResultOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl::ResultOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1701080681 ? (v7 = *(a3 + 4) == 120) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v12);
  if (v8 == 5 && *result == 1701080681 && *(result + 4) == 120)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "index", 5uLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl::ResultsOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultsOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultsOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::pdl::ResultsOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultsOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultsOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultsOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultsOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultsOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::writeProperties;
  {
    v8 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v8;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultsOp>::getSpeculatability;
  {
    v9 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v5 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::getEffects;
  {
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v7, v6);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl::ResultsOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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
  if (!mlir::pdl::ResultsOp::verifyInvariantsImpl(&v7))
  {
    return 0;
  }

  v7 = a1;
  return mlir::pdl::ResultsOp::verify(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 21)
  {
    if (*a3 != 0x5F646E617265706FLL || a3[1] != 0x5F746E656D676573 || *(a3 + 13) != 0x73657A69735F746ELL)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (a4 == 19)
  {
    if (*a3 != 0x53646E617265706FLL || a3[1] != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
    {
      return 0;
    }

LABEL_22:
    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (a4 == 4 && *a3 == 1701667182)
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::pdl::RewriteOp::setInherentAttr(v5 + 64, Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "name", 4uLL, v5);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::pdl::RewriteOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47));
  v5 = *(a2 + 12) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (8 * *(a2 + 8) + 8));
  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v8 = __ROR8__(v7 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ 0xFF51AFD7ED558CCDLL ^ v8)))) >> 47))) ^ v7;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::pdl::RewriteOp>,mlir::OpTrait::ZeroResults<mlir::pdl::RewriteOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RewriteOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RewriteOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::RewriteOp>,mlir::OpTrait::NoTerminator<mlir::pdl::RewriteOp>,mlir::OpTrait::NoRegionArguments<mlir::pdl::RewriteOp>,mlir::OpTrait::SingleBlock<mlir::pdl::RewriteOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::pdl::RewriteOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RewriteOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::RewriteOp>,mlir::OpTrait::IsTerminator<mlir::pdl::RewriteOp>,mlir::OpAsmOpInterface::Trait<mlir::pdl::RewriteOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::writeProperties;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getDefaultDialect;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mpsx::ListPopBackOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::OpAsmOpInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NoTerminator<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::NoRegionArguments<Empty>]";
  v6 = 89;
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

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::pdl::RewriteOp>,mlir::OpTrait::ZeroResults<mlir::pdl::RewriteOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RewriteOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RewriteOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::RewriteOp>,mlir::OpTrait::NoTerminator<mlir::pdl::RewriteOp>,mlir::OpTrait::NoRegionArguments<mlir::pdl::RewriteOp>,mlir::OpTrait::SingleBlock<mlir::pdl::RewriteOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::pdl::RewriteOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RewriteOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::RewriteOp>,mlir::OpTrait::IsTerminator<mlir::pdl::RewriteOp>,mlir::OpAsmOpInterface::Trait<mlir::pdl::RewriteOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>::verifyTrait(a1) & 1) != 0 && mlir::OpTrait::impl::verifyNoRegionArguments(a1, v5) && (mlir::OpTrait::SingleBlock<mlir::ODIE::Compiler::CoreML::ClassOp>::verifyTrait(a1) & 1) != 0 && mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) && (v8 = a1, mlir::pdl::RewriteOp::verifyInvariantsImpl(&v8)))
  {
    return mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 12 && (*a3 == 0x746E6174736E6F63 ? (v7 = *(a3 + 8) == 1701869908) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v12);
  if (v8 == 12 && *result == 0x746E6174736E6F63 && *(result + 8) == 1701869908)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "constantType", 0xCuLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl::TypeOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::TypeOp>,mlir::OpTrait::OneResult<mlir::pdl::TypeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>::writeProperties;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v35;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  v29 = v1;
  v36 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v29;
  a1 = v36;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v30 = v1;
  v37 = a1;
  v24 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v24;
  v1 = v30;
  a1 = v37;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = v1;
  v38 = a1;
  v25 = v2;
  v20 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v20;
  v2 = v25;
  v1 = v31;
  a1 = v38;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

LABEL_35:
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_36;
  }

LABEL_34:
  v32 = v1;
  v39 = a1;
  v26 = v2;
  v17 = v4;
  v21 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v4 = v17;
  v3 = v21;
  v2 = v26;
  v1 = v32;
  a1 = v39;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_35;
  }

LABEL_7:
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_36:
  v34 = v1;
  v41 = a1;
  v28 = v2;
  v19 = v4;
  v23 = v3;
  v14 = v6;
  v16 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v6 = v14;
  v5 = v16;
  v4 = v19;
  v3 = v23;
  v2 = v28;
  v1 = v34;
  a1 = v41;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl::TypeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if ((mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::TypeOp>,mlir::OpTrait::OneResult<mlir::pdl::TypeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypeOp>>(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if (*&a1[4 * ((a1[11] >> 23) & 1) + 16])
  {
    return 1;
  }

  return verifyHasBindingUse(a1);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::TypeOp>,mlir::OpTrait::OneResult<mlir::pdl::TypeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypeOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypeOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if (!mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    return 0;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v10 = a1;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(v6, "constantType", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 13 && (*a3 == 0x746E6174736E6F63 ? (v7 = *(a3 + 5) == 0x7365707954746E61) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::StringAttr::getValue(&v12);
  if (v8 == 13 && *result == 0x746E6174736E6F63 && *(result + 5) == 0x7365707954746E61)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = mlir::Attribute::getContext((a2 + 24));
  v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v6)
  {

    return mlir::NamedAttrList::append(a3, "constantTypes", 0xDuLL, v6);
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::pdl::TypesOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::TypesOp>,mlir::OpTrait::OneResult<mlir::pdl::TypesOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypesOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::writeProperties;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicResults<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::pdl::ApplyNativeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ApplyNativeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ApplyNativeConstraintOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v35;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  v29 = v1;
  v36 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v1 = v29;
  a1 = v36;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v30 = v1;
  v37 = a1;
  v24 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v24;
  v1 = v30;
  a1 = v37;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = v1;
  v38 = a1;
  v25 = v2;
  v20 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v3 = v20;
  v2 = v25;
  v1 = v31;
  a1 = v38;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

LABEL_35:
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_36;
  }

LABEL_34:
  v32 = v1;
  v39 = a1;
  v26 = v2;
  v17 = v4;
  v21 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v4 = v17;
  v3 = v21;
  v2 = v26;
  v1 = v32;
  a1 = v39;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_35;
  }

LABEL_7:
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_36:
  v34 = v1;
  v41 = a1;
  v28 = v2;
  v19 = v4;
  v23 = v3;
  v14 = v6;
  v16 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
  v6 = v14;
  v5 = v16;
  v4 = v19;
  v3 = v23;
  v2 = v28;
  v1 = v34;
  a1 = v41;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::pdl::TypesOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if ((mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::TypesOp>,mlir::OpTrait::OneResult<mlir::pdl::TypesOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypesOp>>(a1, a2) & 1) == 0)
  {
    return 0;
  }

  if (*&a1[4 * ((a1[11] >> 23) & 1) + 16])
  {
    return 1;
  }

  return verifyHasBindingUse(a1);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::pdl::TypesOp>,mlir::OpTrait::OneResult<mlir::pdl::TypesOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::TypesOp>,mlir::OpTrait::ZeroOperands<mlir::pdl::TypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl::TypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::TypesOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if (!mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    return 0;
  }

  v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8);
  v10 = a1;
  if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v6, "constantTypes", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v7 = a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>(mlir::Operation ***a1, uint64_t a2)
{
  v8[26] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 48);
  if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8[0] = *(v3 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v8);
    if (!ReferencedDialect)
    {
      goto LABEL_6;
    }
  }

  else
  {
    ReferencedDialect = *(v3 + 24);
    if (!ReferencedDialect)
    {
LABEL_6:
      v7 = 259;
      mlir::OpState::emitOpError(v2, &v6, v8);
      mlir::Diagnostic::attachNote();
    }
  }

  if (*(ReferencedDialect + 24) != &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    goto LABEL_6;
  }

  return 1;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties]";
  v6 = 122;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties]";
  v6 = 119;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::PatternOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

const char *llvm::getTypeName<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties]";
  v6 = 108;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::RewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(**a1 + 24))(&v21);
  if (v21)
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "'";
    v19 = 1;
    if (v24 >= v25)
    {
      if (v23 > &v18 || v23 + 24 * v24 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v23 + 24 * v24;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v24;
  }

  *&v18 = *(*(a1[2] + 8) + 8);
  Value = mlir::StringAttr::getValue(&v18);
  if (v21)
  {
    v20 = 261;
    *&v18 = Value;
    *(&v18 + 1) = v7;
    mlir::Diagnostic::operator<<(&v22, &v18);
    if (v21)
    {
      LODWORD(v18) = 3;
      *(&v18 + 1) = "' op ";
      v19 = 5;
      if (v24 >= v25)
      {
        if (v23 > &v18 || v23 + 24 * v24 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v23 + 24 * v24;
      v9 = v18;
      *(v8 + 2) = v19;
      *v8 = v9;
      ++v24;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v21);
  if (v21)
  {
    mlir::InFlightDiagnostic::report(&v21);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v30;
      v12 = __p;
      if (v30 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v30 = v10;
      operator delete(v12);
    }

    v13 = v27;
    if (v27)
    {
      v14 = v28;
      v15 = v27;
      if (v28 != v27)
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
        v15 = v27;
      }

      v28 = v13;
      operator delete(v15);
    }

    if (v23 != &v26)
    {
      free(v23);
    }
  }
}

void OUTLINED_FUNCTION_2_3()
{
  *v0 = *(v1 + 56);
  *(v0 + 8) = *(v1 + 48);
  *(v0 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_5_2@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 58;
  ++*(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_2@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 2;
  return result;
}

__n128 OUTLINED_FUNCTION_49_2@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_60_2@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v16 = (a1 + 24 * a15);
  result = *v15;
  v16[1].n128_u64[0] = v15[1].n128_u64[0];
  *v16 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_2@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 1752459639;
  *(result + 32) += 4;
  return result;
}

void OUTLINED_FUNCTION_80_2()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

void OUTLINED_FUNCTION_81_2()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::pdl::RangeType::get(uint64_t a1)
{
  v4 = a1;
  Context = mlir::Type::getContext(&v4);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v5[0] = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v5[1] = &Context;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v10[1] = v5;
  v9 = v4;
  v2 = 0x9DDFEA08EB382D69 * ((8 * ((v4 >> 4) ^ (v4 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v8 = &v9;
  v7[0] = &v9;
  v7[1] = v10;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v2 ^ (v2 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v7);
}

uint64_t mlir::pdl::RangeType::getChecked(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v10 = a3;
  Context = mlir::Type::getContext(&v10);
  v6 = v10;
  if ((mlir::pdl::RangeType::verify(a1, a2, v10) & 1) == 0)
  {
    return 0;
  }

  v12 = Context;
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v11[1] = &v12;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v16[1] = v11;
  v15 = v6;
  v8 = 0x9DDFEA08EB382D69 * ((8 * ((v6 >> 4) ^ (v6 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v13[0] = &v15;
  v13[1] = v16;
  v14 = &v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v8 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t mlir::pdl::RangeType::verify(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(**a3 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id && *(*a3 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    return 1;
  }

  a1(v20, a2);
  if (v20[0])
  {
    LODWORD(v18) = 3;
    *(&v18 + 1) = "expected element of pdl.range to be one of [!pdl.attribute, !pdl.operation, !pdl.type, !pdl.value], but got ";
    v19 = 108;
    if (v22 >= v23)
    {
      if (v21 > &v18 || v21 + 24 * v22 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v21 + 24 * v22;
    v5 = v18;
    *(v4 + 2) = v19;
    *v4 = v5;
    ++v22;
    if (v20[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v18, a3);
      if (v22 >= v23)
      {
        if (v21 > &v18 || v21 + 24 * v22 <= &v18)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v21 + 24 * v22;
      v7 = v18;
      *(v6 + 2) = v19;
      *v6 = v7;
      ++v22;
    }
  }

  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v28;
      v11 = __p;
      if (v28 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v28 = v9;
      operator delete(v11);
    }

    v12 = v25;
    if (v25)
    {
      v13 = v26;
      v14 = v25;
      if (v26 != v25)
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
        v14 = v25;
      }

      v26 = v12;
      operator delete(v14);
    }

    if (v21 != &v24)
    {
      free(v21);
    }
  }

  return v8;
}

uint64_t mlir::pdl::PDLDialect::parseType(mlir::pdl::PDLDialect *this, mlir::DialectAsmParser *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v24 = 0uLL;
  v23 = 0;
  if ((generatedTypeParser(a2, &v24, &v23) & 0x100) != 0)
  {
    return v23;
  }

  v22[16] = 257;
  (*(*a2 + 24))(&v28, a2, v4, v22);
  if (v28)
  {
    LODWORD(v25) = 3;
    v26 = 15;
    if (v31 >= v32)
    {
      if (v30 > &v25 || v30 + 24 * v31 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v30 + 24 * v31;
    v6 = v25;
    *(v5 + 2) = v26;
    *v5 = v6;
    ++v31;
    if (v28)
    {
      v27 = 261;
      v25 = v24;
      mlir::Diagnostic::operator<<(v29, &v25);
      if (v28)
      {
        LODWORD(v25) = 3;
        v26 = 14;
        if (v31 >= v32)
        {
          if (v30 > &v25 || v30 + 24 * v31 <= &v25)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v30 + 24 * v31;
        v8 = v25;
        *(v7 + 2) = v26;
        *v7 = v8;
        ++v31;
        if (v28)
        {
          v9 = *(this + 1);
          v10 = *(this + 2);
          v27 = 261;
          *&v25 = v9;
          *(&v25 + 1) = v10;
          mlir::Diagnostic::operator<<(v29, &v25);
          if (v28)
          {
            LODWORD(v25) = 3;
            v26 = 1;
            if (v31 >= v32)
            {
              if (v30 > &v25 || v30 + 24 * v31 <= &v25)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v11 = v30 + 24 * v31;
            v12 = v25;
            *(v11 + 2) = v26;
            *v11 = v12;
            ++v31;
            if (v28)
            {
              mlir::InFlightDiagnostic::report(&v28);
            }
          }
        }
      }
    }
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v37;
      v15 = __p;
      if (v37 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v37 = v13;
      operator delete(v15);
    }

    v16 = v34;
    if (v34)
    {
      v17 = v35;
      v18 = v34;
      if (v35 != v34)
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
        v18 = v34;
      }

      v35 = v16;
      operator delete(v18);
    }

    if (v30 != &v33)
    {
      free(v30);
    }
  }

  return 0;
}

uint64_t generatedTypeParser(mlir::AsmParser *a1, llvm::StringRef *a2, mlir::Type *a3)
{
  v20[0] = a1;
  v6 = (*(*a1 + 40))(a1);
  v22[2] = 0;
  v21 = 0uLL;
  v20[1] = v6;
  v22[0] = 0;
  if ((*(*a1 + 640))(a1, &v21))
  {
    v23 = "attribute";
    v24 = 9;
    if ((v22[2] & 1) == 0)
    {
      if (*(&v21 + 1))
      {
        if (*(&v21 + 1) == 9 && *v21 == 0x7475626972747461 && *(v21 + 8) == 101)
        {
          Context = mlir::AsmParser::getContext(a1);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
          v13 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
          goto LABEL_50;
        }

        v23 = "operation";
        v24 = 9;
      }

      else
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "operation";
        v24 = 9;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }
      }

      if (*(&v21 + 1))
      {
        if (*(&v21 + 1) == 9 && *v21 == 0x6F6974617265706FLL && *(v21 + 8) == 110)
        {
          v16 = mlir::AsmParser::getContext(a1);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(v16);
          v13 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
          goto LABEL_50;
        }

        v23 = "range";
        v24 = 5;
      }

      else
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "range";
        v24 = 5;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }
      }

      if (*(&v21 + 1))
      {
        if (*(&v21 + 1) == 5 && *v21 == 1735287154 && *(v21 + 4) == 101)
        {
          SingletonImpl = mlir::pdl::RangeType::parse(a1, v7);
LABEL_51:
          *a3 = SingletonImpl;
          v22[0] = SingletonImpl != 0;
          *&v22[1] = 257;
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }

        v23 = "type";
        v24 = 4;
      }

      else
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "type";
        v24 = 4;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }
      }

      if (!*(&v21 + 1))
      {
        (*(*v20[0] + 648))(v20[0], &v23, 1);
        v23 = "value";
        v24 = 5;
        if (v22[2])
        {
          return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
        }

        goto LABEL_37;
      }

      if (*(&v21 + 1) != 4 || *v21 != 1701869940)
      {
        v23 = "value";
        v24 = 5;
LABEL_37:
        if (!*(&v21 + 1))
        {
          (*(*v20[0] + 648))(v20[0], &v23, 1);
          if (v22[2])
          {
            return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
          }

          goto LABEL_47;
        }

        if (*(&v21 + 1) != 5 || (*v21 == 1970037110 ? (v14 = *(v21 + 4) == 101) : (v14 = 0), !v14))
        {
LABEL_47:
          *a2 = v21;
          *v22 = 0;
          goto LABEL_13;
        }

        v15 = mlir::AsmParser::getContext(a1);
        TypeUniquer = mlir::MLIRContext::getTypeUniquer(v15);
        v13 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
        goto LABEL_50;
      }

      v18 = mlir::AsmParser::getContext(a1);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(v18);
      v13 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
LABEL_50:
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(TypeUniquer, v13);
      goto LABEL_51;
    }
  }

  else
  {
    if ((v22[2] & 1) == 0)
    {
      *v22 = 256;
LABEL_13:
      v22[2] = 1;
      return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
    }

    *v22 = 256;
    v23 = "attribute";
    v24 = 9;
  }

  return mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v20);
}

void *generatedTypePrinter(void *result, uint64_t a2)
{
  v3 = *(*result + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = result[4];
    if ((result[3] - v7) <= 8)
    {
      v8 = "attribute";
      v9 = 9;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    v10 = 101;
    v11 = "attribute";
    goto LABEL_20;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = result[4];
    if ((result[3] - v7) <= 8)
    {
      v8 = "operation";
      v9 = 9;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    v10 = 110;
    v11 = "operation";
LABEL_20:
    *(v7 + 8) = v10;
    *v7 = *v11;
    result[4] += 9;
    return result;
  }

  if (result && v3 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v4 = result;
    v5 = (*(*a2 + 16))(a2);
    v6 = v5[4];
    if ((v5[3] - v6) > 4)
    {
      *(v6 + 4) = 101;
      *v6 = 1735287154;
      v5[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v5, "range", 5uLL);
    }

    v12 = (*(*a2 + 16))(a2);
    v13 = v12[4];
    if (v12[3] == v13)
    {
      llvm::raw_ostream::write(v12, "<", 1uLL);
    }

    else
    {
      *v13 = 60;
      ++v12[4];
    }

    generatedTypePrinter(v4[1], a2);
    result = (*(*a2 + 16))(a2);
    v15 = result[4];
    if (result[3] != v15)
    {
      *v15 = 62;
      ++result[4];
      return result;
    }

    v8 = ">";
    v9 = 1;

    return llvm::raw_ostream::write(result, v8, v9);
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v14 = result[4];
    if (result[3] - v14 <= 3uLL)
    {
      v8 = "type";
      v9 = 4;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    *v14 = 1701869940;
    result[4] += 4;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v16 = result[4];
    if ((result[3] - v16) <= 4)
    {
      v8 = "value";
      v9 = 5;

      return llvm::raw_ostream::write(result, v8, v9);
    }

    *(v16 + 4) = 101;
    *v16 = 1970037110;
    result[4] += 5;
  }

  return result;
}

void mlir::pdl::PDLDialect::registerTypes(mlir::pdl::PDLDialect *this)
{
  mlir::Dialect::addType<mlir::pdl::AttributeType>(this);
  mlir::Dialect::addType<mlir::pdl::OperationType>(this);
  mlir::Dialect::addType<mlir::pdl::RangeType>(this);
}

void *mlir::pdl::getRangeElementTypeOrSelf(void *result)
{
  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      return result[1];
    }
  }

  return result;
}

uint64_t mlir::pdl::RangeType::parse(mlir::pdl::RangeType *this, mlir::AsmParser *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if (((*(*this + 152))(this, a2) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(*this + 40))(this);
  v32 = 0uLL;
  v35 = 0;
  if ((generatedTypeParser(this, &v32, &v35) & 0x100) == 0)
  {
    v4 = (*(*this + 16))(this);
    v31 = 259;
    (*(*this + 24))(&v39, this, v4, &v29);
    if (v39)
    {
      v38 = 261;
      v36 = v32;
      mlir::Diagnostic::operator<<(&v40, &v36);
      if (v39)
      {
        LODWORD(v36) = 3;
        *(&v36 + 1) = "'";
        v37 = 1;
        if (v42 >= v43)
        {
          if (v41 > &v36 || v41 + 24 * v42 <= &v36)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v5 = v41 + 24 * v42;
        v6 = v36;
        *(v5 + 2) = v37;
        *v5 = v6;
        ++v42;
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }
      }
    }

    if (v50 != 1)
    {
      return 0;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v48;
      v9 = __p;
      if (v48 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v48 = v7;
      operator delete(v9);
    }

    v10 = v45;
    if (!v45)
    {
      goto LABEL_48;
    }

    v11 = v46;
    v12 = v45;
    if (v46 == v45)
    {
      goto LABEL_47;
    }

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
    goto LABEL_46;
  }

  v15 = v35;
  if (v35 && ((*(*this + 168))(this) & 1) != 0)
  {
    if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v33 = v15;
      Context = mlir::Type::getContext(&v33);
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
      *&v29 = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
      *(&v29 + 1) = &Context;
      v39 = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
      v40 = &v29;
      *&v32 = v33;
      v17 = 0x9DDFEA08EB382D69 * ((8 * ((v33 >> 4) ^ (v33 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
      v35 = &v32;
      *&v36 = &v32;
      *(&v36 + 1) = &v39;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v17 ^ (v17 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v35, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v36);
    }

    v38 = 257;
    (*(*this + 24))(&v39, this, v3, &v36);
    if (v39)
    {
      LODWORD(v29) = 3;
      *(&v29 + 1) = "element of pdl.range cannot be another range, but got";
      v30 = 53;
      if (v42 >= v43)
      {
        if (v41 > &v29 || v41 + 24 * v42 <= &v29)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v41 + 24 * v42;
      v20 = v29;
      *(v19 + 2) = v30;
      *v19 = v20;
      ++v42;
      if (v39)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v29, v15);
        if (v42 >= v43)
        {
          if (v41 > &v29 || v41 + 24 * v42 <= &v29)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v21 = v41 + 24 * v42;
        v22 = v29;
        *(v21 + 2) = v30;
        *v21 = v22;
        ++v42;
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }
      }
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v48;
        v25 = __p;
        if (v48 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v48 = v23;
        operator delete(v25);
      }

      v10 = v45;
      if (!v45)
      {
        goto LABEL_48;
      }

      v26 = v46;
      v12 = v45;
      if (v46 == v45)
      {
LABEL_47:
        v46 = v10;
        operator delete(v12);
LABEL_48:
        if (v41 != &v44)
        {
          free(v41);
        }

        return 0;
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

      while (v26 != v10);
LABEL_46:
      v12 = v45;
      goto LABEL_47;
    }
  }

  return 0;
}

void *mlir::pdl::RangeType::print(mlir::pdl::RangeType *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  generatedTypePrinter(*(*this + 8), a2);
  result = (*(*a2 + 16))(a2);
  v7 = result[4];
  if (result[3] == v7)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v7 = 62;
    ++result[4];
  }

  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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

uint64_t _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::Dialect::addType<mlir::pdl::AttributeType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::AttributeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  v24 = "pdl.attribute";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::pdl::OperationType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::OperationType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v24 = "pdl.operation";
  v25 = 13;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

void mlir::Dialect::addType<mlir::pdl::RangeType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::pdl::RangeType,mlir::pdl::PDLType,mlir::pdl::detail::RangeTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSC_7PDLTypeENSC_6detail16RangeTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v21 = "pdl.range";
  v22 = 9;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, &v10);
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

uint64_t mlir::Dialect::addType<mlir::pdl::TypeType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::TypeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v24 = "pdl.type";
  v25 = 8;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t mlir::Dialect::addType<mlir::pdl::ValueType>(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::pdl::ValueType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v20 = v10;
  v21 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  v24 = "pdl.value";
  v25 = 9;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, &v13);
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
  v10[1] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  v13 = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v14 = v10;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSC_7PDLTypeENSC_6detail16RangeTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v7[0] = a5;
  v7[1] = a6;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::pdl::RangeType>(a2, v8, v7);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::pdl::RangeType>(uint64_t a1, uint64_t a2, uint64_t **a3)
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
  v9[0] = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v9[1] = &Context;
  v14[0] = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v14[1] = v9;
  v13 = v8;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((v8 >> 4) ^ (v8 >> 9)) + 8) ^ 0xFF51AFD7ED558CCDLL);
  v12 = &v13;
  v11[0] = &v13;
  v11[1] = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47) ^ 0xFF51AFD7ED558CCDLL)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v5 >> 47) ^ 0xED558CCD))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void sub_256712D1C()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::anec::BoxCoordinateModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v19 = a1;
  Type = mlir::IntegerAttr::getType(&v19);
  result = mlir::Type::isSignlessInteger(&Type, 64);
  if (result)
  {
    v18 = a1;
    if (mlir::IntegerAttr::getInt(&v18))
    {
      v17 = a1;
      result = mlir::IntegerAttr::getInt(&v17);
      if (result == 1)
      {
        return result;
      }

      v16 = a1;
      if (mlir::IntegerAttr::getInt(&v16) != 2)
      {
        v15 = a1;
        if (mlir::IntegerAttr::getInt(&v15) != 3)
        {
          v14 = a1;
          if (mlir::IntegerAttr::getInt(&v14) != 4)
          {
            v13 = a1;
            if (mlir::IntegerAttr::getInt(&v13) != 5)
            {
              v12 = a1;
              if (mlir::IntegerAttr::getInt(&v12) != 6)
              {
                v11 = a1;
                if (mlir::IntegerAttr::getInt(&v11) != 7)
                {
                  v10 = a1;
                  if (mlir::IntegerAttr::getInt(&v10) != 8)
                  {
                    v9 = a1;
                    if (mlir::IntegerAttr::getInt(&v9) != 9)
                    {
                      v8 = a1;
                      if (mlir::IntegerAttr::getInt(&v8) != 10)
                      {
                        v7 = a1;
                        if (mlir::IntegerAttr::getInt(&v7) != 11)
                        {
                          v6 = a1;
                          if (mlir::IntegerAttr::getInt(&v6) != 12)
                          {
                            v5 = a1;
                            if (mlir::IntegerAttr::getInt(&v5) != 13)
                            {
                              v4 = a1;
                              if (mlir::IntegerAttr::getInt(&v4) != 14)
                              {
                                v3 = a1;
                                return mlir::IntegerAttr::getInt(&v3) == 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t mlir::anec::PaddingModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v12 = a1;
  Type = mlir::IntegerAttr::getType(&v12);
  result = mlir::Type::isSignlessInteger(&Type, 64);
  if (result)
  {
    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11))
    {
      v10 = a1;
      result = mlir::IntegerAttr::getInt(&v10);
      if (result == 1)
      {
        return result;
      }

      v9 = a1;
      if (mlir::IntegerAttr::getInt(&v9) != 2)
      {
        v8 = a1;
        if (mlir::IntegerAttr::getInt(&v8) != 3)
        {
          v7 = a1;
          if (mlir::IntegerAttr::getInt(&v7) != 4)
          {
            v6 = a1;
            if (mlir::IntegerAttr::getInt(&v6) != 5)
            {
              v5 = a1;
              if (mlir::IntegerAttr::getInt(&v5) != 6)
              {
                v4 = a1;
                if (mlir::IntegerAttr::getInt(&v4) != 7)
                {
                  v3 = a1;
                  return mlir::IntegerAttr::getInt(&v3) == 8;
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t mlir::anec::ANECDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

void mlir::anec::fillZinIrCommonInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  mlir::anec::computeOpKeyString(a1, &__str);
  std::string::operator=((a2 + 8), &__str);
  *(a2 + 32) = a3;
  v12 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v60.__r_.__value_.__r.__words[0] = v12;
  v60.__r_.__value_.__l.__size_ = v13;
  ElementType = mlir::ShapedType::getElementType(&v60);
  v55 = a3;
  v54 = a1;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v15 = *(a1 + 68);
    if (v15)
    {
      v16 = 0;
      v17 = (*(a1 + 72) + 24);
      v56 = a4;
      v57 = a6;
      do
      {
        if ((a6 & (v16 >= a5)) != 0)
        {
          break;
        }

        v18 = a6;
        v19 = *v17;
        if (std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>((a4 + 488), &v58))
        {
          if (!std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>((a4 + 488), &v58))
          {
            v60.__r_.__value_.__s.__data_[0] = 0;
            v61 = 0;
            std::__throw_bad_optional_access[abi:nn200100]();
LABEL_91:
            abort();
          }

          v20 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>((a4 + 488), &v58);
          if (!v20)
          {
            goto LABEL_91;
          }

          if (*(v20 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&v60, v20[5], v20[6]);
          }

          else
          {
            v60 = *(v20 + 5);
          }

          v61 = 1;
          std::string::operator=(&v58, &v60);
          if (v61 == 1 && SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v60.__r_.__value_.__l.__data_);
          }
        }

        v21 = (*(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v21)
        {
          v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
        }

        else
        {
          v22 = 0;
        }

        v60.__r_.__value_.__r.__words[0] = v21;
        v60.__r_.__value_.__l.__size_ = v22;
        if (ElementType != mlir::ShapedType::getElementType(&v60))
        {
          ElementType = 0;
        }

        v24 = *(a2 + 48);
        v23 = *(a2 + 56);
        if (v24 >= v23)
        {
          v26 = v15;
          v27 = a5;
          v28 = *(a2 + 40);
          v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v28) >> 3) + 1;
          if (v29 > 0xAAAAAAAAAAAAAAALL)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v30 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v28) >> 3);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0x555555555555555)
          {
            v31 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            if (v31 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          v33 = (8 * ((v24 - v28) >> 3));
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v33, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v33->__r_.__value_.__l.__data_ = *&v58.__r_.__value_.__l.__data_;
            *(8 * ((v24 - v28) >> 3) + 0x10) = *(&v58.__r_.__value_.__l + 2);
          }

          v32 = v33 + 1;
          v34 = *(a2 + 40);
          v35 = *(a2 + 48) - v34;
          v36 = v33 - v35;
          memcpy(v36, v34, v35);
          *(a2 + 40) = v36;
          *(a2 + 48) = v32;
          *(a2 + 56) = 0;
          if (v34)
          {
            operator delete(v34);
          }

          a5 = v27;
          v15 = v26;
          a4 = v56;
          a6 = v57;
        }

        else
        {
          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(*(a2 + 48), v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
          }

          else
          {
            v25 = *&v58.__r_.__value_.__l.__data_;
            *(v24 + 16) = *(&v58.__r_.__value_.__l + 2);
            *v24 = v25;
          }

          v32 = (v24 + 24);
          a6 = v18;
        }

        *(a2 + 48) = v32;
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        ++v16;
        v17 += 4;
      }

      while (v15 != v16);
    }
  }

  if (ElementType)
  {
    v37 = *(*ElementType + 136);
    v38 = v54;
    if (v37 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v60.__r_.__value_.__r.__words[0] = ElementType;
      Width = mlir::IntegerType::getWidth(&v60);
      if (Width == 16)
      {
        if (mlir::IntegerType::getSignedness(&v60) == 2)
        {
          v40 = 10;
        }

        else
        {
          v40 = 9;
        }
      }

      else if (Width == 8)
      {
        if (mlir::IntegerType::getSignedness(&v60) == 2)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      if (v37 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
      {
        v39 = 11;
      }

      else
      {
        v39 = 0;
      }

      if (v37 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
      {
        v40 = 3;
      }

      else
      {
        v40 = v39;
      }
    }
  }

  else
  {
    v40 = 0;
    v38 = v54;
  }

  *(a2 + 64) = v40;
  *&v60.__r_.__value_.__l.__data_ = 0uLL;
  if (*(*(v38 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id)
  {
    v41 = (*(*(*(v38 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v41 = (*(v38 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
LABEL_56:
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
      goto LABEL_59;
    }
  }

  v42 = 0;
LABEL_59:
  v60.__r_.__value_.__r.__words[0] = v41;
  v60.__r_.__value_.__l.__size_ = v42;
  v43 = mlir::ShapedType::getElementType(&v60);
  v44 = *(*v43 + 136);
  if (v44 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v58.__r_.__value_.__r.__words[0] = v43;
    v47 = mlir::IntegerType::getWidth(&v58);
    v45 = v55;
    if (v47 == 16)
    {
      if (mlir::IntegerType::getSignedness(&v58) == 2)
      {
        v46 = 10;
      }

      else
      {
        v46 = 9;
      }
    }

    else if (v47 == 8)
    {
      if (mlir::IntegerType::getSignedness(&v58) == 2)
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v45 = v55;
    if (v44 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v46 = 3;
    }

    else if (v44 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v46 = 11;
    }

    else
    {
      v46 = 0;
    }
  }

  *(a2 + 68) = v46;
  if ((v45 - 23) > 0xFFFFFFFD)
  {
    v52 = 0;
  }

  else
  {
    mlir::ShapedType::getShape(&v60);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v49);
    if ((v51 & 1) == 0)
    {
      v53 = std::__throw_bad_optional_access[abi:nn200100]();
      return;
    }

    v52 = *(mlir::ShapedType::getShape(&v60) + 8 * IndexFromDim);
  }

  *(a2 + 72) = v52;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

BOOL mlir::anec::verifyANECBroadcastOp(mlir::anec *this, mlir::Operation *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  {
    return 0;
  }

  v3 = (*(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v33[0] = v3;
  v33[1] = v4;
  v6 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v32[0] = v6;
  v32[1] = v7;
  Shape = mlir::ShapedType::getShape(v32);
  if (!v9)
  {
    return 1;
  }

  v10 = Shape;
  v11 = 0;
  v12 = 8 * v9;
  while (1)
  {
    mlir::ShapedType::getShape(v32);
    DimFromIndex = mlir::anec::getDimFromIndex(v11, v13);
    if ((DimFromIndex & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
    }

    v15 = DimFromIndex;
    mlir::ShapedType::getShape(v33);
    IndexFromDim = mlir::anec::getIndexFromDim(v15, v16);
    if (v18)
    {
      v19 = IndexFromDim;
      v20 = *(v10 + 8 * v11);
      if (v20 != *(mlir::ShapedType::getShape(v33) + 8 * IndexFromDim) && *(mlir::ShapedType::getShape(v33) + 8 * v19) != 1)
      {
        break;
      }
    }

    v11 = (v11 + 1);
    v12 -= 8;
    if (!v12)
    {
      return 1;
    }
  }

  v30 = "failed: input cannot be broadcasted to the target shape";
  v31 = 259;
  mlir::Operation::emitOpError(v34, this, &v30);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  v21 = result;
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
    result = v21;
  }

  if (v42)
  {
    if (v41 != &v42)
    {
      free(v41);
      result = v21;
    }

    v22 = __p;
    if (__p)
    {
      v23 = v40;
      v24 = __p;
      if (v40 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v40 = v22;
      operator delete(v24);
      result = v21;
    }

    v25 = v37;
    if (v37)
    {
      v26 = v38;
      v27 = v37;
      if (v38 != v37)
      {
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
        v27 = v37;
      }

      v38 = v25;
      operator delete(v27);
      result = v21;
    }

    if (v35 != &v36)
    {
      free(v35);
      return v21;
    }
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::defaultVerifyANECOp(mlir::anec::_anonymous_namespace_ *this, mlir::Operation *a2)
{
  v128 = *MEMORY[0x277D85DE8];
  if (*(this + 47) && (InherentAttr = mlir::Operation::getInherentAttr(this, "kernel_palettized_LUT", 21), (v4 & 1) != 0))
  {
    if (InherentAttr)
    {
LABEL_4:
      v5 = 1;
      goto LABEL_10;
    }
  }

  else if (mlir::DictionaryAttr::contains(this + 56, "kernel_palettized_LUT", 0x15uLL))
  {
    goto LABEL_4;
  }

  if (*(this + 47) && (v6 = mlir::Operation::getInherentAttr(this, "kernel_mutable_palettized_LUT", 29), (v7 & 1) != 0))
  {
    v5 = v6 != 0;
  }

  else
  {
    v5 = mlir::DictionaryAttr::contains(this + 56, "kernel_mutable_palettized_LUT", 0x1DuLL);
  }

LABEL_10:
  if ((*(this + 46) & 0x80) != 0 && (v8 = *(this + 17), v8))
  {
    v9 = 0;
    v10 = 32 * v8;
    v11 = *(this + 9) + 24;
    v12 = v5 ^ 1;
    while (1)
    {
      v13 = (*(*(v11 + v9) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8))
      {
        break;
      }

      v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
      v91 = v13;
      v92 = v14;
      if (!v13)
      {
        goto LABEL_96;
      }

      ElementType = mlir::ShapedType::getElementType(&v91);
      if (v9 == 32)
      {
        v15 = v12;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType) && !mlir::Type::isInteger(&ElementType, 8) && !mlir::Type::isInteger(&ElementType, 16))
        {
          v89 = 257;
          mlir::Operation::emitError(v109, this, &v87);
          mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v109, "ANE-incompatible type: input type has to be fp32/fp16/ui8/i8/u16/i16");
          if (v109[0])
          {
            mlir::InFlightDiagnostic::report(v109);
          }

          if (v118 == 1)
          {
            if (v117 != &v118)
            {
              free(v117);
            }

            v16 = __p;
            if (__p)
            {
              v17 = v116;
              v18 = __p;
              if (v116 != __p)
              {
                do
                {
                  v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
                }

                while (v17 != v16);
                v18 = __p;
              }

              v116 = v16;
              operator delete(v18);
            }

            v19 = v113;
            if (v113)
            {
              v20 = v114;
              v21 = v113;
              if (v114 != v113)
              {
                do
                {
                  v62 = *--v20;
                  v61 = v62;
                  *v20 = 0;
                  if (v62)
                  {
                    MEMORY[0x259C63150](v61, 0x1000C8077774924);
                  }
                }

                while (v20 != v19);
LABEL_191:
                v21 = v113;
              }

LABEL_192:
              v114 = v19;
              operator delete(v21);
            }

LABEL_193:
            v66 = v110;
            v67 = v109;
LABEL_150:
            if (v66 != v67 + 5)
            {
              free(v66);
            }

            goto LABEL_152;
          }

          goto LABEL_152;
        }
      }

      else if (!mlir::Type::isUnsignedInteger(&ElementType, 2) && !mlir::Type::isUnsignedInteger(&ElementType, 4) && !mlir::Type::isUnsignedInteger(&ElementType, 6) && !mlir::Type::isUnsignedInteger(&ElementType, 8))
      {
        v89 = 257;
        mlir::Operation::emitError(v109, this, &v87);
        if (v109[0])
        {
          LODWORD(v93) = 3;
          *(&v93 + 1) = "ANE-incompatible type: input type of indices for palettized conv has to be ui2/ui6/ui4/ui8";
          v94 = 90;
          if (v111 >= v112)
          {
            if (v110 > &v93 || &v110[3 * v111] <= &v93)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v78 = &v110[3 * v111];
          v79 = v93;
          v78[2] = v94;
          *v78 = v79;
          ++v111;
          if (v109[0])
          {
            mlir::InFlightDiagnostic::report(v109);
          }
        }

        if (v118 == 1)
        {
          if (v117 != &v118)
          {
            free(v117);
          }

          v80 = __p;
          if (__p)
          {
            v81 = v116;
            v82 = __p;
            if (v116 != __p)
            {
              do
              {
                v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
              }

              while (v81 != v80);
              v82 = __p;
            }

            v116 = v80;
            operator delete(v82);
          }

          v19 = v113;
          if (v113)
          {
            v83 = v114;
            v21 = v113;
            if (v114 != v113)
            {
              do
              {
                v85 = *--v83;
                v84 = v85;
                *v83 = 0;
                if (v85)
                {
                  MEMORY[0x259C63150](v84, 0x1000C8077774924);
                }
              }

              while (v83 != v19);
              goto LABEL_191;
            }

            goto LABEL_192;
          }

          goto LABEL_193;
        }

        goto LABEL_152;
      }

      v9 += 32;
      if (v10 == v9)
      {
        goto LABEL_44;
      }
    }

    v91 = 0;
    v92 = 0;
LABEL_96:
    v109[0] = "Expecting input tensor to be ShapedType";
    LOWORD(v111) = 259;
    mlir::Operation::emitError(v119, this, v109);
    if (v119[0])
    {
      mlir::InFlightDiagnostic::report(v119);
    }

    if (v127 == 1)
    {
      if (v126 != &v127)
      {
        free(v126);
      }

      v43 = v124;
      if (v124)
      {
        v44 = v125;
        v45 = v124;
        if (v125 != v124)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = v124;
        }

        v125 = v43;
        operator delete(v45);
      }

      v46 = v122;
      if (v122)
      {
        v47 = v123;
        v48 = v122;
        if (v123 != v122)
        {
          do
          {
            v50 = *--v47;
            v49 = v50;
            *v47 = 0;
            if (v50)
            {
              MEMORY[0x259C63150](v49, 0x1000C8077774924);
            }
          }

          while (v47 != v46);
          v48 = v122;
        }

        v123 = v46;
        operator delete(v48);
      }

      v66 = v120;
      v67 = v119;
      goto LABEL_150;
    }
  }

  else
  {
LABEL_44:
    v22 = *(this + 9);
    if (v22)
    {
      v23 = this - 16;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
LABEL_71:
      if ((*(this + 46) & 0x80) != 0 && (v33 = *(this + 17), v33))
      {
        v34 = *(this + 9) + 24;
        while (1)
        {
          v35 = (*(*v34 + 8) & 0xFFFFFFFFFFFFFFF8);
          v36 = v35 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8) : 0;
          {
            break;
          }

          v34 += 32;
          if (!--v33)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
LABEL_79:
        {
        }

        if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::SupportConstantOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::SupportConstantOperands>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
          {
          }

          if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
          {
            if ((*(this + 46) & 0x80) == 0 || (v63 = *(this + 17), !v63))
            {
LABEL_194:
              return LOBYTE(v119[0]);
            }

            v64 = (*(this + 9) + 24);
            while (1)
            {
              v119[0] = *v64;
              DefiningOp = mlir::Value::getDefiningOp(v119);
              if (!DefiningOp)
              {
                break;
              }

              {
                v86 = DefiningOp;
                DefiningOp = v86;
              }

              if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
              {
                break;
              }

              v64 += 4;
              if (!--v63)
              {
                goto LABEL_194;
              }
            }
          }
        }

        v37 = *(this + 9);
        if (v37)
        {
          v38 = this - 16;
        }

        else
        {
          v38 = 0;
        }

        if (!v37)
        {
          return 1;
        }

        v39 = 0;
        while (1)
        {
          v40 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v38, v39) + 8) & 0xFFFFFFFFFFFFFFF8);
          v41 = v40 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v40 + 8) : 0;
          {
            break;
          }

          if (v37 == ++v39)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    v24 = 0;
    while (1)
    {
      v25 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8))
      {
        v87 = 0;
        v88 = 0;
LABEL_113:
        v109[0] = "Expecting output tensor to be ShapedType";
        LOWORD(v111) = 259;
        mlir::Operation::emitOpError(v102, this, v109);
        if (v102[0])
        {
          mlir::InFlightDiagnostic::report(v102);
        }

        if (v108 == 1)
        {
          if (v107 != &v108)
          {
            free(v107);
          }

          v51 = v105;
          if (v105)
          {
            v52 = v106;
            v53 = v105;
            if (v106 != v105)
            {
              do
              {
                v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
              }

              while (v52 != v51);
              v53 = v105;
            }

            v106 = v51;
            operator delete(v53);
          }

          v54 = v103;
          if (v103)
          {
            v55 = v104;
            v56 = v103;
            if (v104 != v103)
            {
              do
              {
                v58 = *--v55;
                v57 = v58;
                *v55 = 0;
                if (v58)
                {
                  MEMORY[0x259C63150](v57, 0x1000C8077774924);
                }
              }

              while (v55 != v54);
              v56 = v103;
            }

            v104 = v54;
            operator delete(v56);
          }

          v66 = v102[3];
          v67 = v102;
          goto LABEL_150;
        }

        goto LABEL_152;
      }

      v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
      v87 = v25;
      v88 = v26;
      if (!v25)
      {
        goto LABEL_113;
      }

      *&v93 = mlir::ShapedType::getElementType(&v87);
      if (!mlir::Type::isF16(&v93) && !mlir::Type::isF32(&v93) && !mlir::Type::isInteger(&v93, 8) && !mlir::Type::isInteger(&v93, 16))
      {
        break;
      }

      if (v22 == ++v24)
      {
        goto LABEL_71;
      }
    }

    v109[0] = "ANE-incompatible type: output type has to be fp32/fp16/ui8/i8/u16/i16";
    LOWORD(v111) = 259;
    mlir::Operation::emitOpError(v95, this, v109);
    if (v95[0])
    {
      mlir::InFlightDiagnostic::report(v95);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v27 = v98;
      if (v98)
      {
        v28 = v99;
        v29 = v98;
        if (v99 != v98)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = v98;
        }

        v99 = v27;
        operator delete(v29);
      }

      v30 = v96;
      if (v96)
      {
        v31 = v97;
        v32 = v96;
        if (v97 != v96)
        {
          do
          {
            v60 = *--v31;
            v59 = v60;
            *v31 = 0;
            if (v60)
            {
              MEMORY[0x259C63150](v59, 0x1000C8077774924);
            }
          }

          while (v31 != v30);
          v32 = v96;
        }

        v97 = v30;
        operator delete(v32);
      }

      v66 = v95[3];
      v67 = v95;
      goto LABEL_150;
    }
  }

LABEL_152:
  LOWORD(v111) = 257;
  mlir::Operation::emitOpError(v119, this, v109);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v119, "does not have ANE-compatible types");
  v42 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
  if (v119[0])
  {
    mlir::InFlightDiagnostic::report(v119);
  }

  if (v127 == 1)
  {
    if (v126 != &v127)
    {
      free(v126);
    }

    v69 = v124;
    if (v124)
    {
      v70 = v125;
      v71 = v124;
      if (v125 != v124)
      {
        do
        {
          v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
        }

        while (v70 != v69);
        v71 = v124;
      }

      v125 = v69;
      operator delete(v71);
    }

    v72 = v122;
    if (v122)
    {
      v73 = v123;
      v74 = v122;
      if (v123 != v122)
      {
        do
        {
          v76 = *--v73;
          v75 = v76;
          *v73 = 0;
          if (v76)
          {
            MEMORY[0x259C63150](v75, 0x1000C8077774924);
          }
        }

        while (v73 != v72);
        v74 = v122;
      }

      v123 = v72;
      operator delete(v74);
    }

    if (v120 != &v121)
    {
      free(v120);
    }
  }

  return v42;
}

BOOL mlir::anec::Broadcast::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    mlir::anec::Broadcast::getZinIrUnitInfo();
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

void mlir::anec::ANECIRNetwork::AddUnit(void *a1, __int128 *a2)
{
  v3 = a1[53];
  v4 = a1[54];
  if (v3 >= v4)
  {
    v7 = a1[52];
    v8 = (v3 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v12 + 16);
    v14 = a1[52];
    v15 = a1[53] - v14;
    v16 = v12 - v15;
    memcpy((v12 - v15), v14, v15);
    a1[52] = v16;
    a1[53] = v6;
    a1[54] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  a1[53] = v6;
}

uint64_t mlir::anec::Convolution::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v101 = *MEMORY[0x277D85DE8];
  v94 = a6;
  LOBYTE(v95) = 0;
  v96 = 0;
  v97 = a7;
  v98 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v94);
    if (v96 == 1)
    {
      v96 = 0;
    }

    mlir::OperationName::OperationName(&v95, "anec.convolution", 16, Context);
    v96 = 1;
    a1 = v15;
  }

  v99 = a4;
  v100 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::ConvolutionAdaptor::verify(&v94, v18) & 1) == 0)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid conv attributes");
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!v19)
  {
    v78 = 0;
    v79 = 0;
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input must be a ShapedType");
  }

  v20 = v19;
  v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  v78 = v20;
  v79 = v21;
  mlir::ShapedType::getShape(&v78);
  if (v22 >= 6)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input must be a tensor of rank 4 or 5");
  }

  Shape = mlir::ShapedType::getShape(&v78);
  v92[0] = v93;
  v92[1] = 0x300000000;
  v25 = mlir::DictionaryAttr::begin(&v94);
  v26 = mlir::DictionaryAttr::end(&v94);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v95 + 96) + 72));
  mlir::getValues<unsigned long>(v27, v92);
  v90[0] = v91;
  v90[1] = 0x300000000;
  v28 = mlir::DictionaryAttr::begin(&v94);
  v29 = mlir::DictionaryAttr::end(&v94);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 - 32), *(*(v95 + 96) + 8));
  mlir::getValues<unsigned long>(v30, v90);
  v88[0] = v89;
  v88[1] = 0x600000000;
  v31 = mlir::DictionaryAttr::begin(&v94);
  v32 = mlir::DictionaryAttr::end(&v94);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 16), (v32 - 16), *(*(v95 + 96) + 56));
  mlir::getValues<unsigned long>(v33, v88);
  v34 = mlir::TypeRange::dereference_iterator(a9, 1);
  v35 = v34;
  if (v34)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
  }

  v77[0] = v35;
  v77[1] = v34;
  v36 = mlir::ShapedType::getShape(v77);
  mlir::ShapedType::getShape(v77);
  if (v37 < 6)
  {
    mlir::ShapedType::getShape(v77);
    if (v38 == 4)
    {
      v39 = -1;
    }

    else
    {
      v39 = 4;
    }

    Groups = mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(&v94);
    mlir::ShapedType::getShape(&v78);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v40);
    if (v42)
    {
      v75 = Shape[IndexFromDim];
      if (v75 % Groups)
      {
        v81 = "input channels {0} should be divisible by groups {1}";
        v82 = 52;
        v83[0] = v87;
        v83[1] = 2;
        v84 = 1;
        v85[0] = &unk_28685E520;
        v85[1] = &v75;
        v86[0] = &unk_28685E520;
        v86[1] = &Groups;
        v87[0] = v85;
        v87[1] = v86;
LABEL_30:
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(a2, a3, &v81);
        goto LABEL_31;
      }

      v43 = mlir::DictionaryAttr::begin(&v94);
      v44 = mlir::DictionaryAttr::end(&v94);
      v45 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v43, (v44 - 48), **(v95 + 96));
      if (v45 && *(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v46 = v36[1] * *v36;
      }

      else
      {
        v46 = *v36;
      }

      v74 = v46;
      if (v46 % Groups)
      {
        llvm::formatv<long long &,long long &>("output channels {0} should be divisible by groups {1}", 1, &v74, &Groups, &v81);
        goto LABEL_30;
      }

      mlir::ShapedType::getShape(&v78);
      mlir::anec::getIndexFromDim(1, v48);
      if (v49)
      {
        if (v36[1] * Groups == v75)
        {
          mlir::ShapedType::getShape(&v78);
          v51 = mlir::anec::getIndexFromDim(3, v50);
          if (v52)
          {
            v53 = v51;
            mlir::ShapedType::getShape(&v78);
            v55 = mlir::anec::getIndexFromDim(4, v54);
            if (v56)
            {
              v57 = v90[0];
              v58 = (*(v88[0] + 2) + Shape[v53] + *(v88[0] + 3) - v36[2] + v57[1] - 1 - (v57[1] - 1) * v36[2]) / *(v92[0] + 1) + 1;
              v59 = (*(v88[0] + 4) + Shape[v55] + *(v88[0] + 5) - v36[3] + v57[2] - 1 - (v57[2] - 1) * v36[3]) / *(v92[0] + 2) + 1;
              v60 = *Shape;
              mlir::ShapedType::getShape(&v78);
              v62 = mlir::anec::getIndexFromDim(2, v61);
              if (v63)
              {
                v64 = (*v88[0] + Shape[v62] + *(v88[0] + 1) - v36[v39] + *v90[0] - 1 - (*v90[0] - 1) * v36[v39]) / *v92[0] + 1;
              }

              else
              {
                v64 = 0;
              }

              v80[0] = v60;
              v80[1] = v46;
              v80[2] = v58;
              v80[3] = v59;
              llvm::SmallVector<long long,6u>::SmallVector(&v81, v80, 4);
              if (v64)
              {
                v80[0] = v64;
                llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v81, v81 + 1, v80);
              }

              v66 = v81;
              v67 = v82;
              ElementType = mlir::ShapedType::getElementType(&v78);
              v69 = mlir::MemRefType::get(v66, v67, ElementType, 0, 0, 0);
              llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v69);
              if (v81 != v83)
              {
                free(v81);
              }

              result = 1;
              goto LABEL_31;
            }
          }
        }

        else if (a3)
        {
          llvm::formatv<long long const&,long long &,long long &>("Filter shape Cin {0} * groups {1} must match input Cin {2}", 1, (v36 + 1), &Groups, &v75, v80);
          v73 = 263;
          v72 = v80;
          mlir::emitError(a2, &v72, &v81);
          v65 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
          result = v65;
          goto LABEL_31;
        }
      }
    }

    v70 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::ConvolutionAdaptor::verify(v70, v71);
  }

  result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "filter must be a tensor of rank 4 or 5");
LABEL_31:
  v47 = result;
  if (v88[0] != v89)
  {
    free(v88[0]);
    result = v47;
  }

  if (v90[0] != v91)
  {
    free(v90[0]);
    result = v47;
  }

  if (v92[0] != v93)
  {
    free(v92[0]);
    return v47;
  }

  return result;
}

uint64_t mlir::anec::ConvolutionAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v157 = *MEMORY[0x277D85DE8];
  v144 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v144);
  if (v4 == mlir::DictionaryAttr::end(&v144))
  {
LABEL_7:
    v141 = "'anec.convolution' op requires attribute 'dilation'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v154;
      v9 = __p;
      if (v154 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v154 = v7;
      operator delete(v9);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v11 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

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
    goto LABEL_118;
  }

  v5 = 0;
  while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 8))
  {
    if (mlir::NamedAttribute::getName(v4) == **(a1[1] + 96))
    {
      v5 = v4[1];
    }

    v4 += 2;
    if (v4 == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_7;
    }
  }

  v15 = v4[1];
  if (v4 == mlir::DictionaryAttr::end(&v144))
  {
LABEL_37:
    v141 = "'anec.convolution' op requires attribute 'padding'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v154;
      v23 = __p;
      if (v154 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v154 = v21;
      operator delete(v23);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v24 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

    do
    {
      v26 = *--v24;
      v25 = v26;
      *v24 = 0;
      if (v26)
      {
        MEMORY[0x259C63150](v25, 0x1000C8077774924);
      }
    }

    while (v24 != v10);
    goto LABEL_118;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 56))
  {
    if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
    {
      v16 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 24))
    {
      v17 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 32))
    {
      v18 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 40))
    {
      v19 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 48))
    {
      v20 = v4[1];
    }

    v4 += 2;
    if (v4 == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_37;
    }
  }

  v120 = v20;
  v121 = v4[1];
  if (v4 == mlir::DictionaryAttr::end(&v144))
  {
LABEL_59:
    v141 = "'anec.convolution' op requires attribute 'stride'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v154;
      v30 = __p;
      if (v154 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v154 = v28;
      operator delete(v30);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v31 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

    do
    {
      v33 = *--v31;
      v32 = v33;
      *v31 = 0;
      if (v33)
      {
        MEMORY[0x259C63150](v32, 0x1000C8077774924);
      }
    }

    while (v31 != v10);
LABEL_118:
    v12 = v151;
    goto LABEL_119;
  }

  v27 = 0;
  while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 72))
  {
    if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 64))
    {
      v27 = v4[1];
    }

    v4 += 2;
    if (v4 == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_59;
    }
  }

  v34 = v4[1];
  if (v34)
  {
    if (!mlir::DenseIntElementsAttr::classof(v4[1]))
    {
      goto LABEL_102;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v34 + 8);
    v141 = v34;
    v142 = v35;
    Type = mlir::ElementsAttr::getType(&v141);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v147 = v37;
    v148 = Type;
    Shape = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v39 != 1 || *Shape != v145 || (v135 = v34, v139 = mlir::DenseElementsAttr::getType(&v135), v140 = v40, ElementType = mlir::ShapedType::getElementType(&v139), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
    {
LABEL_102:
      v141 = "'anec.convolution' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v143 = 259;
      mlir::emitError(a2, &v141, &v147);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
      if (v147)
      {
        mlir::InFlightDiagnostic::report(&v147);
      }

      if (v156 != 1)
      {
        return v6;
      }

      if (v155 != &v156)
      {
        free(v155);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v154;
        v57 = __p;
        if (v154 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v154 = v55;
        operator delete(v57);
      }

      v10 = v151;
      if (v151)
      {
        v58 = v152;
        v12 = v151;
        if (v152 != v151)
        {
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

          while (v58 != v10);
          goto LABEL_118;
        }

LABEL_119:
        v152 = v10;
        operator delete(v12);
      }

LABEL_120:
      if (v149 != &v150)
      {
        free(v149);
      }

      return v6;
    }
  }

  if (!v15)
  {
    goto LABEL_193;
  }

  if (mlir::DenseIntElementsAttr::classof(v15))
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
    v141 = v15;
    v142 = v41;
    v42 = mlir::ElementsAttr::getType(&v141);
    v43 = v42;
    if (v42)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    }

    v147 = v43;
    v148 = v42;
    v44 = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v45 == 1 && *v44 == v145)
    {
      v135 = v15;
      v139 = mlir::DenseElementsAttr::getType(&v135);
      v140 = v46;
      ElementType = mlir::ShapedType::getElementType(&v139);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
LABEL_193:
        if (!v121)
        {
          goto LABEL_97;
        }

        if (mlir::DenseIntElementsAttr::classof(v121))
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v121 + 8);
          v141 = v121;
          v142 = v47;
          v48 = mlir::ElementsAttr::getType(&v141);
          v49 = v48;
          if (v48)
          {
            v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
          }

          v147 = v49;
          v148 = v48;
          v50 = mlir::ShapedType::getShape(&v147);
          v145 = 6;
          if (v51 == 1 && *v50 == v145)
          {
            v135 = v121;
            v139 = mlir::DenseElementsAttr::getType(&v135);
            v140 = v52;
            ElementType = mlir::ShapedType::getElementType(&v139);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
LABEL_97:
              if (v27 && (mlir::anec::PaddingModeAttr::classof(v27) & 1) == 0)
              {
                v54 = "'anec.convolution' op attribute 'padding_mode' failed to satisfy constraint: valid PaddingMode";
                goto LABEL_128;
              }

              if (v16)
              {
                v53 = v120;
                if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v141 = v16, v147 = mlir::IntegerAttr::getType(&v141), !mlir::Type::isUnsignedInteger(&v147, 64)))
                {
                  v54 = "'anec.convolution' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
LABEL_128:
                  v141 = v54;
                  v143 = 259;
                  mlir::emitError(a2, &v141, &v147);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v147);
                  return v6;
                }
              }

              else
              {
                v53 = v120;
              }

              if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                if (!v19)
                {
                  goto LABEL_194;
                }

                if (!mlir::DenseFPElementsAttr::classof(v19))
                {
                  goto LABEL_187;
                }

                v62 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                v141 = v19;
                v142 = v62;
                v63 = mlir::ElementsAttr::getType(&v141);
                v64 = v63;
                if (v63)
                {
                  v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
                }

                v147 = v64;
                v148 = v63;
                mlir::ShapedType::getShape(&v147);
                if (v65)
                {
                  v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                  v145 = v19;
                  v146 = v66;
                  v67 = mlir::ElementsAttr::getType(&v145);
                  v68 = v67;
                  if (v67)
                  {
                    v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                  }

                  v139 = v68;
                  v140 = v67;
                  mlir::ShapedType::getShape(&v139);
                  v53 = v120;
                  if (v69 != 1)
                  {
                    v70 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                    v135 = v19;
                    v136 = v70;
                    v71 = mlir::ElementsAttr::getType(&v135);
                    v72 = v71;
                    if (v71)
                    {
                      v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
                    }

                    ElementType = v72;
                    v138 = v71;
                    mlir::ShapedType::getShape(&ElementType);
                    v53 = v120;
                    if (v73 != 4)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v129[0] = v19;
                v133 = mlir::DenseElementsAttr::getType(v129);
                v134 = v74;
                v130[0] = mlir::ShapedType::getElementType(&v133);
                if (mlir::Type::isF16(v130) || (v127[0] = v19, v131 = mlir::DenseElementsAttr::getType(v127), v132 = v75, v128[0] = mlir::ShapedType::getElementType(&v131), mlir::Type::isF32(v128)))
                {
LABEL_194:
                  if (!v53)
                  {
                    goto LABEL_195;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v53))
                  {
                    goto LABEL_188;
                  }

                  v76 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v53 + 8);
                  v141 = v53;
                  v142 = v76;
                  v77 = mlir::ElementsAttr::getType(&v141);
                  v78 = v77;
                  if (v77)
                  {
                    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
                  }

                  v147 = v78;
                  v148 = v77;
                  mlir::ShapedType::getShape(&v147);
                  v79 = v120;
                  if (v80)
                  {
                    v81 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                    v145 = v120;
                    v146 = v81;
                    v82 = mlir::ElementsAttr::getType(&v145);
                    v83 = v82;
                    if (v82)
                    {
                      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
                    }

                    v139 = v83;
                    v140 = v82;
                    mlir::ShapedType::getShape(&v139);
                    v79 = v120;
                    if (v84 != 1)
                    {
                      v85 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                      v135 = v120;
                      v136 = v85;
                      v86 = mlir::ElementsAttr::getType(&v135);
                      v87 = v86;
                      if (v86)
                      {
                        v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
                      }

                      ElementType = v87;
                      v138 = v86;
                      mlir::ShapedType::getShape(&ElementType);
                      v79 = v120;
                      if (v88 != 4)
                      {
                        goto LABEL_188;
                      }
                    }
                  }

                  v129[0] = v79;
                  v133 = mlir::DenseElementsAttr::getType(v129);
                  v134 = v89;
                  v130[0] = mlir::ShapedType::getElementType(&v133);
                  if (mlir::Type::isSignedInteger(v130, 8) || (v127[0] = v79, v131 = mlir::DenseElementsAttr::getType(v127), v132 = v90, v128[0] = mlir::ShapedType::getElementType(&v131), mlir::Type::isUnsignedInteger(v128, 8)))
                  {
LABEL_195:
                    if (!v18)
                    {
                      goto LABEL_185;
                    }

                    if (!mlir::DenseElementsAttr::classof(v18))
                    {
                      goto LABEL_189;
                    }

                    v91 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                    v141 = v18;
                    v142 = v91;
                    v92 = mlir::ElementsAttr::getType(&v141);
                    v93 = v92;
                    if (v92)
                    {
                      v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
                    }

                    v147 = v93;
                    v148 = v92;
                    mlir::ShapedType::getShape(&v147);
                    if (v94)
                    {
                      v95 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                      v145 = v18;
                      v146 = v95;
                      v96 = mlir::ElementsAttr::getType(&v145);
                      v97 = v96;
                      if (v96)
                      {
                        v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
                      }

                      v139 = v97;
                      v140 = v96;
                      mlir::ShapedType::getShape(&v139);
                      if (v98 != 1)
                      {
                        v99 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                        v135 = v18;
                        v136 = v99;
                        v100 = mlir::ElementsAttr::getType(&v135);
                        v101 = v100;
                        if (v100)
                        {
                          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
                        }

                        ElementType = v101;
                        v138 = v100;
                        mlir::ShapedType::getShape(&ElementType);
                        if (v102 != 2)
                        {
                          v103 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                          v131 = v18;
                          v132 = v103;
                          v104 = mlir::ElementsAttr::getType(&v131);
                          v105 = v104;
                          if (v104)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
                          }

                          v133 = v105;
                          v134 = v104;
                          mlir::ShapedType::getShape(&v133);
                          if (v106 != 3)
                          {
                            v107 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                            v129[0] = v18;
                            v129[1] = v107;
                            v108 = mlir::ElementsAttr::getType(v129);
                            v109 = v108;
                            if (v108)
                            {
                              v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v108 + 8);
                            }

                            v130[0] = v109;
                            v130[1] = v108;
                            mlir::ShapedType::getShape(v130);
                            if (v110 != 4)
                            {
                              v111 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                              v127[0] = v18;
                              v127[1] = v111;
                              v112 = mlir::ElementsAttr::getType(v127);
                              v113 = v112;
                              if (v112)
                              {
                                v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v112 + 8);
                              }

                              v128[0] = v113;
                              v128[1] = v112;
                              mlir::ShapedType::getShape(v128);
                              if (v114 != 5)
                              {
                                v115 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                                v125[0] = v18;
                                v125[1] = v115;
                                v116 = mlir::ElementsAttr::getType(v125);
                                v117 = v116;
                                if (v116)
                                {
                                  v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
                                }

                                v126[0] = v117;
                                v126[1] = v116;
                                mlir::ShapedType::getShape(v126);
                                if (v118 != 6)
                                {
                                  goto LABEL_189;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v122 = v18;
                    v123[0] = mlir::DenseElementsAttr::getType(&v122);
                    v123[1] = v119;
                    v124 = mlir::ShapedType::getElementType(v123);
                    if (mlir::Type::isF16(&v124))
                    {
LABEL_185:
                      if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
                      {
                        return 1;
                      }

                      v54 = "'anec.convolution' op attribute 'kernel_mutable_palettized_LUT' failed to satisfy constraint: dictionary of named attribute values";
                    }

                    else
                    {
LABEL_189:
                      v54 = "'anec.convolution' op attribute 'kernel_palettized_LUT' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
                    }
                  }

                  else
                  {
LABEL_188:
                    v54 = "'anec.convolution' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4";
                  }
                }

                else
                {
LABEL_187:
                  v54 = "'anec.convolution' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4";
                }
              }

              else
              {
                v54 = "'anec.convolution' op attribute 'channel_wise' failed to satisfy constraint: unit attribute";
              }

              goto LABEL_128;
            }
          }
        }

        v54 = "'anec.convolution' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        goto LABEL_128;
      }
    }
  }

  v141 = "'anec.convolution' op attribute 'dilation' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v143 = 259;
  mlir::emitError(a2, &v141, &v147);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
  if (v147)
  {
    mlir::InFlightDiagnostic::report(&v147);
  }

  if (v156 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v148);
  }

  return v6;
}

BOOL mlir::emitOptionalError<char const(&)[39]>(uint64_t a1, char a2, char *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, v15);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, a3);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v4);
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

  return v5;
}

uint64_t *mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(mlir::anec::detail::ConvolutionGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v2 + 16), (v3 - 32), *(*(*(this + 1) + 96) + 16));
  if (v4)
  {
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v5 = v4;
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

  v10 = v5;
  mlir::IntegerAttr::getValue(&v10, &v8);
  if (v9 <= 0x40)
  {
    return v8;
  }

  v6 = *v8;
  MEMORY[0x259C63150]();
  return v6;
}

BOOL mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(uint64_t a1, char a2, void **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v16);
  if (v16)
  {
    v15 = 263;
    v14 = a3;
    mlir::Diagnostic::operator<<(&v17, &v14);
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v23;
      v7 = __p;
      if (v23 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v23 = v5;
      operator delete(v7);
    }

    v8 = v20;
    if (v20)
    {
      v9 = v21;
      v10 = v20;
      if (v21 != v20)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v20;
      }

      v21 = v8;
      operator delete(v10);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v4;
}

uint64_t mlir::anec::anonymous namespace::defaultMixedDataTypesIsCompatibleReturnType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    if (a4 == v8)
    {
      return 1;
    }

    v9 = mlir::TypeRange::dereference_iterator(a1, v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, v8);
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v20 = v9;
      v21 = v11;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      if (!v10)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
LABEL_9:
    v19[0] = v10;
    v19[1] = v12;
    if (!mlir::ShapedType::hasRank(&v20))
    {
      return 0;
    }

    if (!mlir::ShapedType::hasRank(v19))
    {
      return 0;
    }

    Shape = mlir::ShapedType::getShape(&v20);
    v15 = v14;
    v16 = mlir::ShapedType::getShape(v19);
    if (v15 != v17 || memcmp(Shape, v16, 8 * v15))
    {
      return 0;
    }

    if (a2 == ++v8)
    {
      return 1;
    }
  }
}

uint64_t mlir::anec::anonymous namespace::doAttributesVerificationWithANEC(uint64_t a1, uint64_t a2)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v34 = 0x300000000;
  if ((*(a1 + 46) & 0x80) != 0 && (v4 = *(a1 + 68), v4))
  {
    v5 = *(a1 + 72) + 24;
    while (1)
    {
      v6 = (*(*v5 + 8) & 0xFFFFFFFFFFFFFFF8);
      v7 = v6 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8) : 0;
      *&v23 = mlir::getRankPromotionTypeForANE(v6, v7);
      *(&v23 + 1) = v8;
      mlir::ShapedType::getShape(&v23);
      if (v9 >= 6)
      {
        break;
      }

      if (v34 >= HIDWORD(v34))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v33[v34] = v23;
      LODWORD(v34) = v34 + 1;
      v5 += 32;
      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    v21 = "unsupported operand with rank > 5";
    v22 = 259;
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v30;
        v15 = __p;
        if (v30 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v30 = v13;
        operator delete(v15);
      }

      v16 = v27;
      if (v27)
      {
        v17 = v28;
        v18 = v27;
        if (v28 != v27)
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
          v18 = v27;
        }

        v28 = v16;
        operator delete(v18);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  else
  {
LABEL_12:
    InterfaceFor = mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor(a1);
    v11 = (*InterfaceFor)(InterfaceFor, a1, v33, v34, a2);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  return v11;
}

uint64_t mlir::anec::anonymous namespace::doCustomVerificationWithANEC(mlir::anec::_anonymous_namespace_ *this, mlir::Operation *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(this + 46) & 0x80) == 0)
  {
    goto LABEL_12;
  }

  v3 = *(this + 17);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = *(this + 9) + 24;
  do
  {
    v6 = (*(*v5 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
      v4 = v14;
    }

    else
    {
      v7 = 0;
    }

    if (v4 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = &v15[v4];
    *v8 = v6;
    v8[1] = v7;
    v4 = ++v14;
    v5 += 32;
    --v3;
  }

  while (v3);
  if (!this)
  {
    InterfaceFor = 0;
  }

  else
  {
LABEL_12:
    InterfaceFor = mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor(this);
    v4 = v14;
  }

  v10 = v4;
  v11 = *(*(mlir::Block::getParentOp(*(this + 2)) + 48) + 16);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id)
  {
    v12 = 0;
  }

  else if (v11 == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id)
  {
    v12 = 1;
  }

  else if (v11 == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id)
  {
    v12 = 2;
  }

  else if (v11 == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id)
  {
    v12 = 3;
  }

  else if (v11 == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id)
  {
    v12 = 4;
  }

  else if (v11 == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id)
  {
    v12 = 5;
  }

  else if (v11 == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  return (*InterfaceFor)(InterfaceFor, this, v15, v10, v12);
}

BOOL mlir::anec::Convolution::verifyWithANEC(mlir::Operation **a1, void *a2, unint64_t a3)
{
  v171 = *MEMORY[0x277D85DE8];
  ANECConvLayerDescInitialize();
  v6 = *a2;
  if (*a2)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v151[0] = v6;
  v151[1] = v7;
  v8 = a2[2];
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v150[0] = v8;
  v150[1] = v9;
  mlir::ShapedType::getShape(v151);
  v11 = v10;
  mlir::ShapedType::getShape(v151);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v12);
  if ((v14 & 1) == 0)
  {
    v158 = "Failed to get channel index for Conv";
    v160[8] = 259;
    mlir::OpState::emitOpError(a1, &v158, &AttrDictionary);
    v45 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v170 == 1)
    {
      if (v169 != &v170)
      {
        free(v169);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v168;
        v48 = __p;
        if (v168 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v168 = v46;
        operator delete(v48);
      }

      v49 = v165;
      if (v165)
      {
        v50 = v166;
        v51 = v165;
        if (v166 != v165)
        {
          do
          {
            v53 = *--v50;
            v52 = v53;
            *v50 = 0;
            if (v53)
            {
              MEMORY[0x259C63150](v52, 0x1000C8077774924);
            }
          }

          while (v50 != v49);
          v51 = v165;
        }

        v166 = v49;
        operator delete(v51);
      }

      if (v163 != v164)
      {
        free(v163);
      }
    }

    if (!v45)
    {
      return 0;
    }

    return mlir::anec::verifyConvolutionWithANEC(&v124, *a1, a2, a3);
  }

  v15 = IndexFromDim;
  v155 = v157;
  v156 = 0x300000000;
  v152 = v154;
  v153 = 0x300000000;
  v158 = v160;
  v159 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v17 + 16 * v18), *(*(*(*a1 + 6) + 96) + 72));
  mlir::getValues<int>(v19, &v155);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v20 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v21 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v20, (v21 + 16 * v22 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<int>(v23, &v152);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v24 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v25 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v24 + 16), (v25 + 16 * v26 - 16), *(*(*(*a1 + 6) + 96) + 56));
  mlir::getValues<int>(v27, &v158);
  Shape = mlir::ShapedType::getShape(v151);
  v29 = mlir::ShapedType::getShape(v150);
  v30 = *(Shape + 8 * v15);
  if (!v153)
  {
    v34 = 0;
    if (v11 == 5)
    {
      goto LABEL_16;
    }

LABEL_50:
    v54 = (v29 + 24);
    v115 = v29;
    v55 = (v29 + 16);
    v56 = 1;
    goto LABEL_51;
  }

  v31 = 4 * v153 - 4;
  v32 = v152;
  do
  {
    v33 = *v32++;
    v34 = v33 != 1;
    v35 = v33 != 1 || v31 == 0;
    v31 -= 4;
  }

  while (!v35);
  if (v11 != 5)
  {
    goto LABEL_50;
  }

LABEL_16:
  if (v156 <= 2)
  {
    v148[0] = "failed: found 2 strides, but the convolution op is 3d";
    v149 = 259;
    mlir::OpState::emitOpError(a1, v148, &AttrDictionary);
    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v170 == 1)
    {
      if (v169 != &v170)
      {
        free(v169);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v168;
        v39 = __p;
        if (v168 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v168 = v37;
        operator delete(v39);
      }

      v40 = v165;
      if (!v165)
      {
        goto LABEL_120;
      }

      v41 = v166;
      v42 = v165;
      if (v166 == v165)
      {
LABEL_119:
        v166 = v40;
        operator delete(v42);
LABEL_120:
        if (v163 != v164)
        {
          free(v163);
        }

        goto LABEL_169;
      }

      do
      {
        v44 = *--v41;
        v43 = v44;
        *v41 = 0;
        if (v44)
        {
          MEMORY[0x259C63150](v43, 0x1000C8077774924);
        }
      }

      while (v41 != v40);
LABEL_118:
      v42 = v165;
      goto LABEL_119;
    }

    goto LABEL_169;
  }

  if (v153 > 2)
  {
    if (v159 <= 5)
    {
      v79 = "failed: found 4 paddings, but the convolution op is 3d";
LABEL_165:
      v148[0] = v79;
      v149 = 259;
      mlir::OpState::emitOpError(a1, v148, &AttrDictionary);
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v170 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v162);
      }

      goto LABEL_169;
    }

    v54 = (v29 + 32);
    v55 = (v29 + 24);
    v115 = v29;
    v56 = *(v29 + 16);
LABEL_51:
    v118 = *v55;
    v119 = *v54;
    v117 = *(v155 + 2);
    v57 = *v155;
    v122 = *(v152 + 1);
    v123 = *(v152 + 2);
    v121 = *v152;
    v116 = *(v158 + 2);
    v120 = *v158;
    IncPadAttr = mlir::anec::AveragePool::getIncPadAttr(a1);
    if (!IncPadAttr || !v34)
    {
      if (IncPadAttr)
      {
        v60 = 0;
      }

      else
      {
        v60 = v34;
      }

      if (v60)
      {
        v59 = @"DilatedConv";
      }

      else
      {
        if (IncPadAttr)
        {
          v68 = v34;
        }

        else
        {
          v68 = 1;
        }

        if (v68)
        {
          v59 = @"Conv";
        }

        else
        {
          v59 = @"ChannelWiseConv";
        }
      }
    }

    else
    {
      v59 = @"ChannelWiseDilatedConv";
    }

    v124 = v59;
    v69 = *a1;
    if (*(*a1 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(*a1, "kernel_palettized_LUT", 21), (v71 & 1) != 0))
    {
      v72 = InherentAttr != 0;
    }

    else
    {
      v72 = mlir::DictionaryAttr::contains(v69 + 56, "kernel_palettized_LUT", 0x15uLL);
    }

    v73 = *a1;
    if (*(*a1 + 47) && (v74 = mlir::Operation::getInherentAttr(*a1, "kernel_mutable_palettized_LUT", 29), (v75 & 1) != 0))
    {
      if (!(v72 & 1 | (v74 != 0)))
      {
LABEL_95:
        v125 = @"Dense";
        AttrDictionary = mlir::ShapedType::getElementType(v150);
        if (mlir::Type::isF16(&AttrDictionary))
        {
          v76 = @"Float16";
        }

        else if (mlir::Type::isF32(&AttrDictionary))
        {
          v76 = @"Float32";
        }

        else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
        {
          v76 = @"UInt8";
        }

        else
        {
          mlir::Type::isInteger(&AttrDictionary, 8);
          v76 = @"Int8";
        }

        v126 = v76;
        goto LABEL_141;
      }
    }

    else if (((v72 | mlir::DictionaryAttr::contains(v73 + 56, "kernel_mutable_palettized_LUT", 0x1DuLL)) & 1) == 0)
    {
      goto LABEL_95;
    }

    v77 = v150[0];
    if (v150[0])
    {
      v78 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150[0] + 8);
    }

    else
    {
      v78 = 0;
    }

    v147[0] = v77;
    v147[1] = v78;
    AttrDictionary = mlir::ShapedType::getElementType(v147);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    v81 = IntOrFloatBitWidth;
    if (v72)
    {
      v82 = IntOrFloatBitWidth;
      v83 = a3;
      v84 = v56;
      v85 = *a1;
      if (!*(*a1 + 47) || (v86 = mlir::Operation::getInherentAttr(*a1, "kernel_palettized_LUT", 21), (v87 & 1) == 0))
      {
        v86 = mlir::DictionaryAttr::get(v85 + 56, "kernel_palettized_LUT", 0x15uLL);
      }

      v88 = v86;
      v56 = v84;
      if (v86)
      {
        v89 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v86 + 8);
      }

      else
      {
        v89 = 0;
      }

      a3 = v83;
      v148[0] = v88;
      v148[1] = v89;
      Type = mlir::ElementsAttr::getType(v148);
      v96 = Type;
      v81 = v82;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v96;
      v162 = Type;
      ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
    }

    else
    {
      v90 = *a1;
      if (!*(*a1 + 47) || (v91 = mlir::Operation::getInherentAttr(*a1, "kernel_mutable_palettized_LUT", 29), (v92 & 1) == 0))
      {
        v91 = mlir::DictionaryAttr::get(v90 + 56, "kernel_mutable_palettized_LUT", 0x1DuLL);
      }

      v148[0] = v91;
      v93 = mlir::DictionaryAttr::get(v148, "type", 4uLL);
      if (v93)
      {
        if (*(*v93 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v94 = v93;
        }

        else
        {
          v94 = 0;
        }
      }

      else
      {
        v94 = 0;
      }

      v146 = v94;
      v98 = mlir::TypeAttr::getValue(&v146);
      v99 = v98;
      if (v98)
      {
        v98 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v98 + 8);
      }

      AttrDictionary = v99;
      v162 = v98;
      ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
    }

    AttrDictionary = ElementType;
    if (mlir::Type::isF16(&AttrDictionary))
    {
      v100 = @"Float16";
    }

    else if (mlir::Type::isF32(&AttrDictionary))
    {
      v100 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
    {
      v100 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(&AttrDictionary, 8);
      v100 = @"Int8";
    }

    v126 = v100;
    v114 = v81 - 2;
    if ((v81 - 2) >= 7 || ((0x55u >> v114) & 1) == 0)
    {
      v79 = "failed: only 2-bit, 4-bit, 6-bit and 8-bit palettization is supported";
      goto LABEL_165;
    }

    v125 = off_279839FA8[v114];
LABEL_141:
    AttrDictionary = mlir::anec::Convolution::getPaddingModeAttr(a1);
    v127 = off_27983A090[mlir::IntegerAttr::getInt(&AttrDictionary)];
    v101 = mlir::anec::AveragePool::getIncPadAttr(a1);
    v102 = v30;
    if (!v101)
    {
      v102 = *v115;
    }

    v128 = v102;
    if (!mlir::anec::AveragePool::getIncPadAttr(a1))
    {
      v148[0] = mlir::anec::Convolution::getGroupsAttr(a1);
      mlir::IntegerAttr::getValue(v148, &AttrDictionary);
      if (v162 > 0x40)
      {
        v30 = *AttrDictionary;
        MEMORY[0x259C63150]();
      }

      else
      {
        v30 = AttrDictionary;
      }
    }

    v129 = v30;
    v130 = 0;
    v131 = v119;
    v132 = v118;
    v133 = v56;
    v134 = v117;
    *&v103 = vrev64_s32(v57);
    *(&v103 + 1) = v116;
    v135 = v103;
    v136 = vextq_s8(v120, v120, 8uLL);
    v137 = 0;
    v138 = v123;
    v139 = v122;
    v140 = v121;
    if (mlir::anec::Convolution::getKernelScaleAttr(a1))
    {
      KernelScaleAttr = mlir::anec::Convolution::getKernelScaleAttr(a1);
      if (KernelScaleAttr)
      {
        v105 = KernelScaleAttr;
        v106 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
        SplatFloat = mlir::getSplatFloatValue<float>(v105, v106);
        if ((SplatFloat & 0x100000000) == 0)
        {
LABEL_150:
          v141 = 1;
          v108 = mlir::anec::Convolution::getKernelScaleAttr(a1);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v108);
          goto LABEL_153;
        }
      }

      else
      {
        SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
        if ((SplatFloat & 0x100000000) == 0)
        {
          goto LABEL_150;
        }
      }

      v142 = SplatFloat;
    }

LABEL_153:
    if (!mlir::anec::Convolution::getKernelZeroPointAttr(a1))
    {
      v36 = 1;
      goto LABEL_169;
    }

    KernelZeroPointAttr = mlir::anec::Convolution::getKernelZeroPointAttr(a1);
    if (KernelZeroPointAttr)
    {
      v111 = KernelZeroPointAttr;
      v112 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPointAttr + 8);
      SplatInt = mlir::getSplatIntValue<int>(v111, v112);
      if ((SplatInt & 0x100000000) == 0)
      {
LABEL_156:
        v36 = 1;
        v144 = 1;
        goto LABEL_169;
      }
    }

    else
    {
      SplatInt = mlir::getSplatIntValue<int>(0, 0);
      if ((SplatInt & 0x100000000) == 0)
      {
        goto LABEL_156;
      }
    }

    v145 = SplatInt;
    v36 = 1;
    goto LABEL_169;
  }

  v148[0] = "failed: found 2 dilations, but the convolution op is 3d";
  v149 = 259;
  mlir::OpState::emitOpError(a1, v148, &AttrDictionary);
  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v170 == 1)
  {
    if (v169 != &v170)
    {
      free(v169);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v168;
      v63 = __p;
      if (v168 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v168 = v61;
      operator delete(v63);
    }

    v40 = v165;
    if (!v165)
    {
      goto LABEL_120;
    }

    v64 = v166;
    v42 = v165;
    if (v166 == v165)
    {
      goto LABEL_119;
    }

    do
    {
      v66 = *--v64;
      v65 = v66;
      *v64 = 0;
      if (v66)
      {
        MEMORY[0x259C63150](v65, 0x1000C8077774924);
      }
    }

    while (v64 != v40);
    goto LABEL_118;
  }

LABEL_169:
  if (v158 != v160)
  {
    free(v158);
  }

  if (v152 != v154)
  {
    free(v152);
  }

  if (v155 != v157)
  {
    free(v155);
  }

  if (v36)
  {
    return mlir::anec::verifyConvolutionWithANEC(&v124, *a1, a2, a3);
  }

  return 0;
}

BOOL mlir::anec::verifyConvolutionWithANEC(uint64_t a1, mlir::anec::_anonymous_namespace_ *a2, uint64_t a3, unint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v26[0] = v27;
  v26[1] = 0x100000000;
  v18 = 0;
  v19 = 0;
  v5 = 1;
  *buffer = 1;
  v20[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidateConvLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v20);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "Invalid configuration", 21);
    std::stringbuf::str();
    v20[0] = *MEMORY[0x277D82818];
    v6 = *(MEMORY[0x277D82818] + 72);
    *(v20 + *(v20[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v21 = v6;
    v22 = MEMORY[0x277D82878] + 16;
    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    v22 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v23);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v25);
    LOWORD(v23[0].__locale_) = 260;
    v20[0] = &v16;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
      }

      v7 = v33;
      if (v33)
      {
        v8 = v34;
        v9 = v33;
        if (v34 != v33)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = v33;
        }

        v34 = v7;
        operator delete(v9);
      }

      v10 = v31;
      if (v31)
      {
        v11 = v32;
        v12 = v31;
        if (v32 != v31)
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
          v12 = v31;
        }

        v32 = v10;
        operator delete(v12);
      }

      if (v29 != &v30)
      {
        free(v29);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }
  }

  ANECUnitValidatorDelete();
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  return v5;
}

BOOL mlir::anec::Convolution::addOpToNetwork(mlir::Operation **a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v57 = *a1;
  if (a2)
  {
    v6 = *(v3 + 9);
    v7 = *(v6 + 24);
    v8 = *(v6 + 56);
    if (*(v3 + 9))
    {
      v9 = v3 - 16;
    }

    else
    {
      v9 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
    v64[0] = mlir::Operation::getAttrDictionary(v3);
    Value = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v11 = mlir::DictionaryAttr::getValue(v64);
    v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v11 + 16 * v12 - 32), *(*(*(v57 + 6) + 96) + 16));
    if (v13)
    {
      if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v58[0] = v14;
    mlir::IntegerAttr::getValue(v58, v64);
    if (LODWORD(v64[1]) > 0x40)
    {
      MEMORY[0x259C63150]();
    }

    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v24 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v25 = mlir::DictionaryAttr::getValue(v64);
    mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, (v25 + 16 * v26 - 48), **(*(v57 + 6) + 96));
    v62[0] = v63;
    v62[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v27 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v28 = mlir::DictionaryAttr::getValue(v64);
    v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v27 + 32), (v28 + 16 * v29), *(*(*(v57 + 6) + 96) + 72));
    mlir::getValues<unsigned long>(v30, v62);
    __src[0] = v61;
    __src[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v31 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v32 = mlir::DictionaryAttr::getValue(v64);
    v34 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v31, (v32 + 16 * v33 - 32), *(*(*(v57 + 6) + 96) + 8));
    mlir::getValues<unsigned long>(v34, __src);
    v58[0] = v59;
    v58[1] = 0x400000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v35 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v36 = mlir::DictionaryAttr::getValue(v64);
    v38 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v35 + 16), (v36 + 16 * v37 - 16), *(*(*(v57 + 6) + 96) + 56));
    mlir::getValues<unsigned long>(v38, v58);
    v39 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
    }

    else
    {
      v40 = 0;
    }

    v55[0] = v39;
    v55[1] = v40;
    mlir::ShapedType::getShape(v55);
    v41 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    }

    else
    {
      v42 = 0;
    }

    v54[0] = v41;
    v54[1] = v42;
    mlir::ShapedType::getShape(v54);
    v43 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
    if (v43)
    {
      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
    }

    else
    {
      v44 = 0;
    }

    v53[0] = v43;
    v53[1] = v44;
    mlir::ShapedType::getShape(v53);
    v52[0] = 0;
    v52[1] = 0;
    v48 = v52;
    v64[0] = v8;
    DefiningOp = mlir::Value::getDefiningOp(v64);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, DefiningOp);
    }

    v50 = 0;
    v51 = 0;
    v49 = 0;
    v15 = 0;
    {
      operator new();
    }

    if (v58[0] != v59)
    {
      free(v58[0]);
    }

    if (__src[0] != v61)
    {
      free(__src[0]);
    }

    v46 = v62[0];
    if (v62[0] != v63)
    {
LABEL_50:
      free(v46);
    }
  }

  else
  {
    v58[0] = "network should not be nullptr";
    v59[8] = 259;
    mlir::Operation::emitError(v64, v3, v58);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
    if (v64[0])
    {
      mlir::InFlightDiagnostic::report(v64);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v70;
        v18 = __p;
        if (v70 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v70 = v16;
        operator delete(v18);
      }

      v19 = v67;
      if (v67)
      {
        v20 = v68;
        v21 = v67;
        if (v68 != v67)
        {
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
          v21 = v67;
        }

        v68 = v19;
        operator delete(v21);
      }

      v46 = v65;
      if (v65 != &v66)
      {
        goto LABEL_50;
      }
    }
  }

  return v15;
}